.class public Landroid/icu/text/DecimalFormat;
.super Landroid/icu/text/NumberFormat;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DecimalFormat$AffixForCurrency;,
        Landroid/icu/text/DecimalFormat$Unit;
    }
.end annotation


# static fields
.field private static final CURRENCY_SIGN:C = '\u00a4'

.field private static final CURRENCY_SIGN_COUNT_IN_ISO_FORMAT:I = 0x2

.field private static final CURRENCY_SIGN_COUNT_IN_PLURAL_FORMAT:I = 0x3

.field private static final CURRENCY_SIGN_COUNT_IN_SYMBOL_FORMAT:I = 0x1

.field private static final CURRENCY_SIGN_COUNT_ZERO:I = 0x0

.field static final DOUBLE_FRACTION_DIGITS:I = 0x154

.field static final DOUBLE_INTEGER_DIGITS:I = 0x135

.field static final MAX_INTEGER_DIGITS:I = 0x77359400

.field static final MAX_SCIENTIFIC_INTEGER_DIGITS:I = 0x8

.field static final NULL_UNIT:Landroid/icu/text/DecimalFormat$Unit;

.field public static final PAD_AFTER_PREFIX:I = 0x1

.field public static final PAD_AFTER_SUFFIX:I = 0x3

.field public static final PAD_BEFORE_PREFIX:I = 0x0

.field public static final PAD_BEFORE_SUFFIX:I = 0x2

.field static final PATTERN_DECIMAL_SEPARATOR:C = '.'

.field static final PATTERN_DIGIT:C = '#'

.field static final PATTERN_EIGHT_DIGIT:C = '8'

.field static final PATTERN_EXPONENT:C = 'E'

.field static final PATTERN_FIVE_DIGIT:C = '5'

.field static final PATTERN_FOUR_DIGIT:C = '4'

.field static final PATTERN_GROUPING_SEPARATOR:C = ','

.field private static final PATTERN_MINUS:C = '-'

.field static final PATTERN_NINE_DIGIT:C = '9'

.field static final PATTERN_ONE_DIGIT:C = '1'

.field static final PATTERN_PAD_ESCAPE:C = '*'

.field private static final PATTERN_PERCENT:C = '%'

.field private static final PATTERN_PER_MILLE:C = '\u2030'

.field static final PATTERN_PLUS_SIGN:C = '+'

.field private static final PATTERN_SEPARATOR:C = ';'

.field static final PATTERN_SEVEN_DIGIT:C = '7'

.field static final PATTERN_SIGNIFICANT_DIGIT:C = '@'

.field static final PATTERN_SIX_DIGIT:C = '6'

.field static final PATTERN_THREE_DIGIT:C = '3'

.field static final PATTERN_TWO_DIGIT:C = '2'

.field static final PATTERN_ZERO_DIGIT:C = '0'

.field private static final QUOTE:C = '\''

.field private static final STATUS_INFINITE:I = 0x0

.field private static final STATUS_LENGTH:I = 0x3

.field private static final STATUS_POSITIVE:I = 0x1

.field private static final STATUS_UNDERFLOW:I = 0x2

.field private static final commaEquivalents:Landroid/icu/text/UnicodeSet;

.field static final currentSerialVersion:I = 0x4

.field private static final defaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

.field private static final dotEquivalents:Landroid/icu/text/UnicodeSet;

.field private static epsilon:D = 0.0

.field static final minusSigns:Landroid/icu/text/UnicodeSet;

.field static final plusSigns:Landroid/icu/text/UnicodeSet;

.field static final roundingIncrementEpsilon:D = 1.0E-9

.field private static final serialVersionUID:J = 0xbff0362d872303aL

.field static final skipExtendedSeparatorParsing:Z

.field private static final strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

.field private static final strictDefaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

.field private static final strictDotEquivalents:Landroid/icu/text/UnicodeSet;


# instance fields
.field private PARSE_MAX_EXPONENT:I

.field private transient actualRoundingIncrement:Ljava/math/BigDecimal;

.field private transient actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

.field private transient affixPatternsForCurrency:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/DecimalFormat$AffixForCurrency;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/text/FieldPosition;",
            ">;"
        }
    .end annotation
.end field

.field private currencyChoice:Ljava/text/ChoiceFormat;

.field private currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

.field private currencySignCount:I

.field private currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

.field private decimalSeparatorAlwaysShown:Z

.field private transient digitList:Landroid/icu/text/DigitList;

.field private exponentSignAlwaysShown:Z

.field private formatPattern:Ljava/lang/String;

.field private formatWidth:I

.field private groupingSize:B

.field private groupingSize2:B

.field private transient isReadyForParsing:Z

.field private mathContext:Landroid/icu/math/MathContext;

.field private maxSignificantDigits:I

.field private minExponentDigits:B

.field private minSignificantDigits:I

.field private multiplier:I

.field private negPrefixPattern:Ljava/lang/String;

.field private negSuffixPattern:Ljava/lang/String;

.field private negativePrefix:Ljava/lang/String;

.field private negativeSuffix:Ljava/lang/String;

.field private pad:C

.field private padPosition:I

.field private parseBigDecimal:Z

.field parseRequireDecimalPoint:Z

.field private posPrefixPattern:Ljava/lang/String;

.field private posSuffixPattern:Ljava/lang/String;

.field private positivePrefix:Ljava/lang/String;

.field private positiveSuffix:Ljava/lang/String;

.field private transient roundingDouble:D

.field private transient roundingDoubleReciprocal:D

.field private roundingIncrement:Ljava/math/BigDecimal;

.field private transient roundingIncrementICU:Landroid/icu/math/BigDecimal;

.field private roundingMode:I

.field private serialVersionOnStream:I

.field private style:I

.field private symbols:Landroid/icu/text/DecimalFormatSymbols;

.field private useExponentialNotation:Z

.field private useSignificantDigits:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    const/16 v2, 0xe

    #@4
    .line 1068
    const-wide v0, 0x3da5fd7fe1796495L    # 1.0E-11

    #@9
    sput-wide v0, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@b
    .line 2241
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@d
    new-array v1, v2, [I

    #@f
    fill-array-data v1, :array_0

    #@12
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@15
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Landroid/icu/text/DecimalFormat;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    #@1b
    .line 2251
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@1d
    const/16 v1, 0x10

    #@1f
    new-array v1, v1, [I

    #@21
    fill-array-data v1, :array_1

    #@24
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@27
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@2a
    move-result-object v0

    #@2b
    sput-object v0, Landroid/icu/text/DecimalFormat;->commaEquivalents:Landroid/icu/text/UnicodeSet;

    #@2d
    .line 2275
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2f
    new-array v1, v3, [I

    #@31
    fill-array-data v1, :array_2

    #@34
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@37
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@3a
    move-result-object v0

    #@3b
    sput-object v0, Landroid/icu/text/DecimalFormat;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    #@3d
    .line 2283
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@3f
    new-array v1, v3, [I

    #@41
    fill-array-data v1, :array_3

    #@44
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@47
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@4a
    move-result-object v0

    #@4b
    sput-object v0, Landroid/icu/text/DecimalFormat;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    #@4d
    .line 2307
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@4f
    const/16 v1, 0x28

    #@51
    new-array v1, v1, [I

    #@53
    fill-array-data v1, :array_4

    #@56
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@59
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@5c
    move-result-object v0

    #@5d
    .line 2304
    sput-object v0, Landroid/icu/text/DecimalFormat;->defaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    #@5f
    .line 2332
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@61
    const/16 v1, 0x26

    #@63
    new-array v1, v1, [I

    #@65
    fill-array-data v1, :array_5

    #@68
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@6b
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@6e
    move-result-object v0

    #@6f
    .line 2329
    sput-object v0, Landroid/icu/text/DecimalFormat;->strictDefaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    #@71
    .line 2354
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@73
    new-array v1, v2, [I

    #@75
    fill-array-data v1, :array_6

    #@78
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@7b
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@7e
    move-result-object v0

    #@7f
    .line 2353
    sput-object v0, Landroid/icu/text/DecimalFormat;->minusSigns:Landroid/icu/text/UnicodeSet;

    #@81
    .line 2364
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@83
    new-array v1, v2, [I

    #@85
    fill-array-data v1, :array_7

    #@88
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@8b
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@8e
    move-result-object v0

    #@8f
    .line 2363
    sput-object v0, Landroid/icu/text/DecimalFormat;->plusSigns:Landroid/icu/text/UnicodeSet;

    #@91
    .line 2375
    const-string/jumbo v0, "android.icu.text.DecimalFormat.SkipExtendedSeparatorParsing"

    #@94
    const-string/jumbo v1, "false"

    #@97
    .line 2374
    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    .line 2376
    const-string/jumbo v1, "true"

    #@9e
    .line 2374
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v0

    #@a2
    sput-boolean v0, Landroid/icu/text/DecimalFormat;->skipExtendedSeparatorParsing:Z

    #@a4
    .line 6060
    new-instance v0, Landroid/icu/text/DecimalFormat$Unit;

    #@a6
    const-string/jumbo v1, ""

    #@a9
    const-string/jumbo v2, ""

    #@ac
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat$Unit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@af
    sput-object v0, Landroid/icu/text/DecimalFormat;->NULL_UNIT:Landroid/icu/text/DecimalFormat$Unit;

    #@b1
    .line 609
    return-void

    #@b2
    .line 2241
    :array_0
    .array-data 4
        0x2e
        0x2e
        0x2024
        0x2024
        0x3002
        0x3002
        0xfe12
        0xfe12
        0xfe52
        0xfe52
        0xff0e
        0xff0e
        0xff61
        0xff61
    .end array-data

    #@d2
    .line 2251
    :array_1
    .array-data 4
        0x2c
        0x2c
        0x60c
        0x60c
        0x66b
        0x66b
        0x3001
        0x3001
        0xfe10
        0xfe11
        0xfe50
        0xfe51
        0xff0c
        0xff0c
        0xff64
        0xff64
    .end array-data

    #@f6
    .line 2275
    :array_2
    .array-data 4
        0x2e
        0x2e
        0x2024
        0x2024
        0xfe52
        0xfe52
        0xff0e
        0xff0e
        0xff61
        0xff61
    .end array-data

    #@10e
    .line 2283
    :array_3
    .array-data 4
        0x2c
        0x2c
        0x66b
        0x66b
        0xfe10
        0xfe10
        0xfe50
        0xfe50
        0xff0c
        0xff0c
    .end array-data

    #@126
    .line 2307
    :array_4
    .array-data 4
        0x20
        0x20
        0x27
        0x27
        0x2c
        0x2c
        0x2e
        0x2e
        0xa0
        0xa0
        0x60c
        0x60c
        0x66b
        0x66c
        0x2000
        0x200a
        0x2018
        0x2019
        0x2024
        0x2024
        0x202f
        0x202f
        0x205f
        0x205f
        0x3000
        0x3002
        0xfe10
        0xfe12
        0xfe50
        0xfe52
        0xff07
        0xff07
        0xff0c
        0xff0c
        0xff0e
        0xff0e
        0xff61
        0xff61
        0xff64
        0xff64
    .end array-data

    #@17a
    .line 2332
    :array_5
    .array-data 4
        0x20
        0x20
        0x27
        0x27
        0x2c
        0x2c
        0x2e
        0x2e
        0xa0
        0xa0
        0x66b
        0x66c
        0x2000
        0x200a
        0x2018
        0x2019
        0x2024
        0x2024
        0x202f
        0x202f
        0x205f
        0x205f
        0x3000
        0x3000
        0xfe10
        0xfe10
        0xfe50
        0xfe50
        0xfe52
        0xfe52
        0xff07
        0xff07
        0xff0c
        0xff0c
        0xff0e
        0xff0e
        0xff61
        0xff61
    .end array-data

    #@1ca
    .line 2354
    :array_6
    .array-data 4
        0x2d
        0x2d
        0x207b
        0x207b
        0x208b
        0x208b
        0x2212
        0x2212
        0x2796
        0x2796
        0xfe63
        0xfe63
        0xff0d
        0xff0d
    .end array-data

    #@1ea
    .line 2364
    :array_7
    .array-data 4
        0x2b
        0x2b
        0x207a
        0x207a
        0x208a
        0x208a
        0x2795
        0x2795
        0xfb29
        0xfb29
        0xfe62
        0xfe62
        0xff0b
        0xff0b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v5, 0x1

    #@2
    const-wide/16 v6, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    .line 626
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@9
    .line 2379
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@b
    .line 2386
    const/16 v2, 0x3e8

    #@d
    iput v2, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@f
    .line 5499
    new-instance v2, Landroid/icu/text/DigitList;

    #@11
    invoke-direct {v2}, Landroid/icu/text/DigitList;-><init>()V

    #@14
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16
    .line 5507
    const-string/jumbo v2, ""

    #@19
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@1b
    .line 5516
    const-string/jumbo v2, ""

    #@1e
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@20
    .line 5524
    const-string/jumbo v2, "-"

    #@23
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@25
    .line 5533
    const-string/jumbo v2, ""

    #@28
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2a
    .line 5594
    iput v5, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2c
    .line 5604
    iput-byte v8, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2e
    .line 5612
    iput-byte v3, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@30
    .line 5621
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@32
    .line 5632
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@34
    .line 5639
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@36
    .line 5647
    iput v5, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@38
    .line 5655
    const/4 v2, 0x6

    #@39
    iput v2, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@3b
    .line 5690
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3d
    .line 5702
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@3f
    .line 5713
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@41
    .line 5724
    const/4 v2, 0x6

    #@42
    iput v2, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@44
    .line 5735
    new-instance v2, Landroid/icu/math/MathContext;

    #@46
    invoke-direct {v2, v3, v3}, Landroid/icu/math/MathContext;-><init>(II)V

    #@49
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@4b
    .line 5743
    iput v3, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4d
    .line 5751
    const/16 v2, 0x20

    #@4f
    iput-char v2, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@51
    .line 5761
    iput v3, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@53
    .line 5772
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@55
    .line 5778
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@57
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@59
    .line 5806
    const/4 v2, 0x4

    #@5a
    iput v2, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@5c
    .line 5929
    new-instance v2, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@61
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@63
    .line 5946
    const-string/jumbo v2, ""

    #@66
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@68
    .line 5949
    iput v3, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@6a
    .line 5957
    iput v3, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@6c
    .line 6010
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@6e
    .line 6014
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@70
    .line 6017
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@72
    .line 6081
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@74
    .line 6082
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@76
    .line 6087
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@78
    .line 6093
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@7a
    .line 627
    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@7c
    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@7f
    move-result-object v0

    #@80
    .line 628
    .local v0, "def":Landroid/icu/util/ULocale;
    invoke-static {v0, v3}, Landroid/icu/text/DecimalFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    .line 630
    .local v1, "pattern":Ljava/lang/String;
    new-instance v2, Landroid/icu/text/DecimalFormatSymbols;

    #@86
    invoke-direct {v2, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@89
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@8b
    .line 631
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@92
    .line 632
    invoke-direct {p0, v1, v3}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@95
    .line 633
    iget v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@97
    if-ne v2, v8, :cond_0

    #@99
    .line 634
    new-instance v2, Landroid/icu/text/CurrencyPluralInfo;

    #@9b
    invoke-direct {v2, v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@9e
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@a0
    .line 626
    :goto_0
    return-void

    #@a1
    .line 638
    :cond_0
    invoke-direct {p0, v4}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    #@a4
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x1

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    .line 659
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@9
    .line 2379
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@b
    .line 2386
    const/16 v1, 0x3e8

    #@d
    iput v1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@f
    .line 5499
    new-instance v1, Landroid/icu/text/DigitList;

    #@11
    invoke-direct {v1}, Landroid/icu/text/DigitList;-><init>()V

    #@14
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16
    .line 5507
    const-string/jumbo v1, ""

    #@19
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@1b
    .line 5516
    const-string/jumbo v1, ""

    #@1e
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@20
    .line 5524
    const-string/jumbo v1, "-"

    #@23
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@25
    .line 5533
    const-string/jumbo v1, ""

    #@28
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2a
    .line 5594
    iput v6, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2c
    .line 5604
    iput-byte v7, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2e
    .line 5612
    iput-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@30
    .line 5621
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@32
    .line 5632
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@34
    .line 5639
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@36
    .line 5647
    iput v6, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@38
    .line 5655
    const/4 v1, 0x6

    #@39
    iput v1, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@3b
    .line 5690
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3d
    .line 5702
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@3f
    .line 5713
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@41
    .line 5724
    const/4 v1, 0x6

    #@42
    iput v1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@44
    .line 5735
    new-instance v1, Landroid/icu/math/MathContext;

    #@46
    invoke-direct {v1, v2, v2}, Landroid/icu/math/MathContext;-><init>(II)V

    #@49
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@4b
    .line 5743
    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4d
    .line 5751
    const/16 v1, 0x20

    #@4f
    iput-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@51
    .line 5761
    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@53
    .line 5772
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@55
    .line 5778
    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@57
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@59
    .line 5806
    const/4 v1, 0x4

    #@5a
    iput v1, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@5c
    .line 5929
    new-instance v1, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@61
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@63
    .line 5946
    const-string/jumbo v1, ""

    #@66
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@68
    .line 5949
    iput v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@6a
    .line 5957
    iput v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@6c
    .line 6010
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@6e
    .line 6014
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@70
    .line 6017
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@72
    .line 6081
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@74
    .line 6082
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@76
    .line 6087
    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@78
    .line 6093
    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@7a
    .line 661
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@7c
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@7f
    move-result-object v0

    #@80
    .line 662
    .local v0, "def":Landroid/icu/util/ULocale;
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    #@82
    invoke-direct {v1, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@85
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@87
    .line 663
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@8e
    .line 664
    invoke-direct {p0, p1, v2}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@91
    .line 665
    iget v1, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@93
    if-ne v1, v7, :cond_0

    #@95
    .line 666
    new-instance v1, Landroid/icu/text/CurrencyPluralInfo;

    #@97
    invoke-direct {v1, v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@9a
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@9c
    .line 659
    :goto_0
    return-void

    #@9d
    .line 668
    :cond_0
    invoke-direct {p0, v3}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    #@a0
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    const/4 v6, 0x6

    #@1
    const/4 v3, 0x1

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v1, 0x0

    #@6
    .line 690
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@9
    .line 2379
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@b
    .line 2386
    const/16 v0, 0x3e8

    #@d
    iput v0, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@f
    .line 5499
    new-instance v0, Landroid/icu/text/DigitList;

    #@11
    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    #@14
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16
    .line 5507
    const-string/jumbo v0, ""

    #@19
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@1b
    .line 5516
    const-string/jumbo v0, ""

    #@1e
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@20
    .line 5524
    const-string/jumbo v0, "-"

    #@23
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@25
    .line 5533
    const-string/jumbo v0, ""

    #@28
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2a
    .line 5594
    iput v3, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2c
    .line 5604
    const/4 v0, 0x3

    #@2d
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2f
    .line 5612
    iput-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@31
    .line 5621
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@33
    .line 5632
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@35
    .line 5639
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@37
    .line 5647
    iput v3, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@39
    .line 5655
    iput v6, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@3b
    .line 5690
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3d
    .line 5702
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@3f
    .line 5713
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@41
    .line 5724
    iput v6, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@43
    .line 5735
    new-instance v0, Landroid/icu/math/MathContext;

    #@45
    invoke-direct {v0, v1, v1}, Landroid/icu/math/MathContext;-><init>(II)V

    #@48
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@4a
    .line 5743
    iput v1, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4c
    .line 5751
    const/16 v0, 0x20

    #@4e
    iput-char v0, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@50
    .line 5761
    iput v1, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@52
    .line 5772
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@54
    .line 5778
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@56
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@58
    .line 5806
    const/4 v0, 0x4

    #@59
    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@5b
    .line 5929
    new-instance v0, Ljava/util/ArrayList;

    #@5d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@60
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@62
    .line 5946
    const-string/jumbo v0, ""

    #@65
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@67
    .line 5949
    iput v1, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@69
    .line 5957
    iput v1, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@6b
    .line 6010
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@6d
    .line 6014
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@6f
    .line 6017
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@71
    .line 6081
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@73
    .line 6082
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@75
    .line 6087
    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@77
    .line 6093
    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@79
    .line 691
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->createFromPatternAndSymbols(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    #@7c
    .line 690
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "inputSymbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p3, "style"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const-wide/16 v6, 0x0

    #@3
    const/4 v4, 0x6

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    .line 769
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@9
    .line 2379
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@b
    .line 2386
    const/16 v1, 0x3e8

    #@d
    iput v1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@f
    .line 5499
    new-instance v1, Landroid/icu/text/DigitList;

    #@11
    invoke-direct {v1}, Landroid/icu/text/DigitList;-><init>()V

    #@14
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16
    .line 5507
    const-string/jumbo v1, ""

    #@19
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@1b
    .line 5516
    const-string/jumbo v1, ""

    #@1e
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@20
    .line 5524
    const-string/jumbo v1, "-"

    #@23
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@25
    .line 5533
    const-string/jumbo v1, ""

    #@28
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2a
    .line 5594
    iput v5, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2c
    .line 5604
    const/4 v1, 0x3

    #@2d
    iput-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2f
    .line 5612
    iput-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@31
    .line 5621
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@33
    .line 5632
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@35
    .line 5639
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@37
    .line 5647
    iput v5, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@39
    .line 5655
    iput v4, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@3b
    .line 5690
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3d
    .line 5702
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@3f
    .line 5713
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@41
    .line 5724
    iput v4, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@43
    .line 5735
    new-instance v1, Landroid/icu/math/MathContext;

    #@45
    invoke-direct {v1, v2, v2}, Landroid/icu/math/MathContext;-><init>(II)V

    #@48
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@4a
    .line 5743
    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4c
    .line 5751
    const/16 v1, 0x20

    #@4e
    iput-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@50
    .line 5761
    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@52
    .line 5772
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@54
    .line 5778
    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@56
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@58
    .line 5806
    const/4 v1, 0x4

    #@59
    iput v1, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@5b
    .line 5929
    new-instance v1, Ljava/util/ArrayList;

    #@5d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@60
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@62
    .line 5946
    const-string/jumbo v1, ""

    #@65
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@67
    .line 5949
    iput v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@69
    .line 5957
    iput v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@6b
    .line 6010
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@6d
    .line 6014
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@6f
    .line 6017
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@71
    .line 6081
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@73
    .line 6082
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@75
    .line 6087
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@77
    .line 6093
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@79
    .line 770
    const/4 v0, 0x0

    #@7a
    .line 771
    .local v0, "info":Landroid/icu/text/CurrencyPluralInfo;
    if-ne p3, v4, :cond_0

    #@7c
    .line 772
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    #@7e
    .end local v0    # "info":Landroid/icu/text/CurrencyPluralInfo;
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@81
    move-result-object v1

    #@82
    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@85
    .line 774
    :cond_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/text/DecimalFormat;->create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V

    #@88
    .line 769
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p3, "infoInput"    # Landroid/icu/text/CurrencyPluralInfo;
    .param p4, "style"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const-wide/16 v6, 0x0

    #@3
    const/4 v4, 0x6

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    .line 735
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@9
    .line 2379
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@b
    .line 2386
    const/16 v1, 0x3e8

    #@d
    iput v1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@f
    .line 5499
    new-instance v1, Landroid/icu/text/DigitList;

    #@11
    invoke-direct {v1}, Landroid/icu/text/DigitList;-><init>()V

    #@14
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16
    .line 5507
    const-string/jumbo v1, ""

    #@19
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@1b
    .line 5516
    const-string/jumbo v1, ""

    #@1e
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@20
    .line 5524
    const-string/jumbo v1, "-"

    #@23
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@25
    .line 5533
    const-string/jumbo v1, ""

    #@28
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2a
    .line 5594
    iput v5, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2c
    .line 5604
    const/4 v1, 0x3

    #@2d
    iput-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2f
    .line 5612
    iput-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@31
    .line 5621
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@33
    .line 5632
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@35
    .line 5639
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@37
    .line 5647
    iput v5, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@39
    .line 5655
    iput v4, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@3b
    .line 5690
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3d
    .line 5702
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@3f
    .line 5713
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@41
    .line 5724
    iput v4, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@43
    .line 5735
    new-instance v1, Landroid/icu/math/MathContext;

    #@45
    invoke-direct {v1, v2, v2}, Landroid/icu/math/MathContext;-><init>(II)V

    #@48
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@4a
    .line 5743
    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4c
    .line 5751
    const/16 v1, 0x20

    #@4e
    iput-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@50
    .line 5761
    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@52
    .line 5772
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@54
    .line 5778
    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@56
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@58
    .line 5806
    const/4 v1, 0x4

    #@59
    iput v1, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@5b
    .line 5929
    new-instance v1, Ljava/util/ArrayList;

    #@5d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@60
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@62
    .line 5946
    const-string/jumbo v1, ""

    #@65
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@67
    .line 5949
    iput v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@69
    .line 5957
    iput v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@6b
    .line 6010
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@6d
    .line 6014
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@6f
    .line 6017
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@71
    .line 6081
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@73
    .line 6082
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@75
    .line 6087
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@77
    .line 6093
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@79
    .line 737
    move-object v0, p3

    #@7a
    .line 738
    .local v0, "info":Landroid/icu/text/CurrencyPluralInfo;
    if-ne p4, v4, :cond_0

    #@7c
    .line 739
    invoke-virtual {p3}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    #@7f
    move-result-object v0

    #@80
    .end local v0    # "info":Landroid/icu/text/CurrencyPluralInfo;
    check-cast v0, Landroid/icu/text/CurrencyPluralInfo;

    #@82
    .line 741
    .restart local v0    # "info":Landroid/icu/text/CurrencyPluralInfo;
    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Landroid/icu/text/DecimalFormat;->create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V

    #@85
    .line 736
    return-void
.end method

.method private _setMaximumFractionDigits(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5362
    const/16 v0, 0x154

    #@2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    #@9
    .line 5361
    return-void
.end method

.method private addAttribute(Landroid/icu/text/NumberFormat$Field;II)V
    .locals 2
    .param p1, "field"    # Landroid/icu/text/NumberFormat$Field;
    .param p2, "begin"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 4315
    new-instance v0, Ljava/text/FieldPosition;

    #@2
    invoke-direct {v0, p1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    #@5
    .line 4316
    .local v0, "pos":Ljava/text/FieldPosition;
    invoke-virtual {v0, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@8
    .line 4317
    invoke-virtual {v0, p3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@b
    .line 4318
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 4314
    return-void
.end method

.method private final addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V
    .locals 6
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "prefixLen"    # I
    .param p4, "suffixLen"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1895
    iget v3, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@3
    if-lez v3, :cond_2

    #@5
    .line 1896
    iget v3, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@a
    move-result v4

    #@b
    sub-int v1, v3, v4

    #@d
    .line 1897
    .local v1, "len":I
    if-lez v1, :cond_2

    #@f
    .line 1898
    new-array v2, v1, [C

    #@11
    .line 1899
    .local v2, "padding":[C
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@14
    .line 1900
    iget-char v3, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@16
    aput-char v3, v2, v0

    #@18
    .line 1899
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1902
    :cond_0
    iget v3, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@1d
    packed-switch v3, :pswitch_data_0

    #@20
    .line 1916
    :goto_1
    iget v3, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@22
    if-eqz v3, :cond_1

    #@24
    iget v3, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@26
    const/4 v4, 0x1

    #@27
    if-ne v3, v4, :cond_2

    #@29
    .line 1917
    :cond_1
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@2c
    move-result v3

    #@2d
    add-int/2addr v3, v1

    #@2e
    invoke-virtual {p2, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@31
    .line 1918
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    #@34
    move-result v3

    #@35
    add-int/2addr v3, v1

    #@36
    invoke-virtual {p2, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@39
    .line 1894
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "padding":[C
    :cond_2
    return-void

    #@3a
    .line 1904
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "padding":[C
    :pswitch_0
    invoke-virtual {p1, p3, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    #@3d
    goto :goto_1

    #@3e
    .line 1907
    :pswitch_1
    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    #@41
    goto :goto_1

    #@42
    .line 1910
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@45
    move-result v3

    #@46
    sub-int/2addr v3, p4

    #@47
    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    #@4a
    goto :goto_1

    #@4b
    .line 1913
    :pswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@4e
    goto :goto_1

    #@4f
    .line 1902
    nop

    #@50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I
    .locals 15
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "isNegative"    # Z
    .param p3, "isPrefix"    # Z
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p5, "parseAttr"    # Z

    #@0
    .prologue
    .line 4215
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    #@2
    if-eqz v1, :cond_3

    #@4
    .line 4216
    const/4 v10, 0x0

    #@5
    .line 4217
    .local v10, "affixPat":Ljava/lang/String;
    if-eqz p3, :cond_1

    #@7
    .line 4218
    if-eqz p2, :cond_0

    #@9
    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@b
    .line 4222
    .local v10, "affixPat":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    .line 4223
    .local v9, "affixBuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@11
    const/4 v2, 0x1

    #@12
    invoke-direct {p0, v10, v1, v9, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    #@15
    .line 4224
    move-object/from16 v0, p1

    #@17
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@1a
    .line 4225
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    #@1d
    move-result v1

    #@1e
    return v1

    #@1f
    .line 4218
    .end local v9    # "affixBuf":Ljava/lang/StringBuffer;
    .local v10, "affixPat":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@21
    .local v10, "affixPat":Ljava/lang/String;
    goto :goto_0

    #@22
    .line 4220
    .local v10, "affixPat":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    #@24
    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@26
    .local v10, "affixPat":Ljava/lang/String;
    goto :goto_0

    #@27
    .local v10, "affixPat":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@29
    .local v10, "affixPat":Ljava/lang/String;
    goto :goto_0

    #@2a
    .line 4228
    .end local v10    # "affixPat":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    #@2b
    .line 4230
    .local v8, "affix":Ljava/lang/String;
    if-eqz p3, :cond_c

    #@2d
    .line 4231
    if-eqz p2, :cond_a

    #@2f
    iget-object v8, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@31
    .line 4232
    .local v8, "affix":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_b

    #@33
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@35
    .line 4238
    .local v13, "pattern":Ljava/lang/String;
    :goto_2
    if-eqz p5, :cond_8

    #@37
    .line 4240
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@39
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@40
    move-result v5

    #@41
    .line 4241
    .local v5, "offset":I
    const/4 v1, -0x1

    #@42
    if-le v5, v1, :cond_4

    #@44
    .line 4242
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    #@46
    .line 4243
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@48
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@4f
    move-result v6

    #@50
    move-object v1, p0

    #@51
    move/from16 v2, p3

    #@53
    move-object/from16 v4, p1

    #@55
    .line 4242
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    #@58
    .line 4245
    :cond_4
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@5a
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@61
    move-result v5

    #@62
    .line 4246
    const/4 v1, -0x1

    #@63
    if-le v5, v1, :cond_5

    #@65
    .line 4247
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    #@67
    .line 4248
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@69
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@70
    move-result v6

    #@71
    move-object v1, p0

    #@72
    move/from16 v2, p3

    #@74
    move-object/from16 v4, p1

    #@76
    .line 4247
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    #@79
    .line 4251
    :cond_5
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@7b
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    #@7e
    move-result v1

    #@7f
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    #@82
    move-result v5

    #@83
    .line 4252
    const/4 v1, -0x1

    #@84
    if-le v5, v1, :cond_6

    #@86
    .line 4253
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    #@88
    .line 4254
    const/4 v6, 0x1

    #@89
    move-object v1, p0

    #@8a
    move/from16 v2, p3

    #@8c
    move-object/from16 v4, p1

    #@8e
    .line 4253
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    #@91
    .line 4256
    :cond_6
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@93
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    #@96
    move-result v1

    #@97
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    #@9a
    move-result v5

    #@9b
    .line 4257
    const/4 v1, -0x1

    #@9c
    if-le v5, v1, :cond_7

    #@9e
    .line 4258
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    #@a0
    .line 4259
    const/4 v6, 0x1

    #@a1
    move-object v1, p0

    #@a2
    move/from16 v2, p3

    #@a4
    move-object/from16 v4, p1

    #@a6
    .line 4258
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    #@a9
    .line 4261
    :cond_7
    const-string/jumbo v1, "\u00a4\u00a4\u00a4"

    #@ac
    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@af
    move-result v5

    #@b0
    .line 4262
    const/4 v1, -0x1

    #@b1
    if-le v5, v1, :cond_8

    #@b3
    .line 4263
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    #@b5
    .line 4264
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@b8
    move-result v1

    #@b9
    sub-int v6, v1, v5

    #@bb
    move-object v1, p0

    #@bc
    move/from16 v2, p3

    #@be
    move-object/from16 v4, p1

    #@c0
    .line 4263
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    #@c3
    .line 4270
    .end local v5    # "offset":I
    :cond_8
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@c6
    move-result-object v1

    #@c7
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    #@c9
    if-ne v1, v2, :cond_9

    #@cb
    .line 4271
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@cd
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@d0
    move-result-object v1

    #@d1
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d4
    move-result v1

    #@d5
    const/4 v2, -0x1

    #@d6
    if-le v1, v2, :cond_f

    #@d8
    .line 4272
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@da
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@dd
    move-result-object v7

    #@de
    .line 4273
    .local v7, "aff":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@e1
    move-result v12

    #@e2
    .line 4274
    .local v12, "firstPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@e5
    move-result v1

    #@e6
    add-int v14, v1, v12

    #@e8
    .line 4275
    .local v14, "start":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@eb
    move-result v1

    #@ec
    add-int v11, v14, v1

    #@ee
    .line 4276
    .local v11, "end":I
    move-object/from16 v0, p4

    #@f0
    invoke-virtual {v0, v14}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@f3
    .line 4277
    move-object/from16 v0, p4

    #@f5
    invoke-virtual {v0, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@f8
    .line 4295
    .end local v7    # "aff":Ljava/lang/String;
    .end local v11    # "end":I
    .end local v12    # "firstPos":I
    .end local v14    # "start":I
    :cond_9
    :goto_3
    move-object/from16 v0, p1

    #@fa
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@fd
    .line 4296
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@100
    move-result v1

    #@101
    return v1

    #@102
    .line 4231
    .end local v13    # "pattern":Ljava/lang/String;
    .local v8, "affix":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@104
    .local v8, "affix":Ljava/lang/String;
    goto/16 :goto_1

    #@106
    .line 4232
    :cond_b
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@108
    .restart local v13    # "pattern":Ljava/lang/String;
    goto/16 :goto_2

    #@10a
    .line 4234
    .end local v13    # "pattern":Ljava/lang/String;
    .local v8, "affix":Ljava/lang/String;
    :cond_c
    if-eqz p2, :cond_d

    #@10c
    iget-object v8, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@10e
    .line 4235
    .local v8, "affix":Ljava/lang/String;
    :goto_4
    if-eqz p2, :cond_e

    #@110
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@112
    .restart local v13    # "pattern":Ljava/lang/String;
    goto/16 :goto_2

    #@114
    .line 4234
    .end local v13    # "pattern":Ljava/lang/String;
    .local v8, "affix":Ljava/lang/String;
    :cond_d
    iget-object v8, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@116
    .local v8, "affix":Ljava/lang/String;
    goto :goto_4

    #@117
    .line 4235
    :cond_e
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@119
    .restart local v13    # "pattern":Ljava/lang/String;
    goto/16 :goto_2

    #@11b
    .line 4278
    :cond_f
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@11d
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@120
    move-result-object v1

    #@121
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@124
    move-result v1

    #@125
    const/4 v2, -0x1

    #@126
    if-le v1, v2, :cond_10

    #@128
    .line 4279
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@12a
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@12d
    move-result-object v7

    #@12e
    .line 4280
    .restart local v7    # "aff":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@131
    move-result v12

    #@132
    .line 4281
    .restart local v12    # "firstPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@135
    move-result v1

    #@136
    add-int v14, v1, v12

    #@138
    .line 4282
    .restart local v14    # "start":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@13b
    move-result v1

    #@13c
    add-int v11, v14, v1

    #@13e
    .line 4283
    .restart local v11    # "end":I
    move-object/from16 v0, p4

    #@140
    invoke-virtual {v0, v14}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@143
    .line 4284
    move-object/from16 v0, p4

    #@145
    invoke-virtual {v0, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@148
    goto :goto_3

    #@149
    .line 4285
    .end local v7    # "aff":Ljava/lang/String;
    .end local v11    # "end":I
    .end local v12    # "firstPos":I
    .end local v14    # "start":I
    :cond_10
    const-string/jumbo v1, "\u00a4\u00a4\u00a4"

    #@14c
    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@14f
    move-result v1

    #@150
    const/4 v2, -0x1

    #@151
    if-le v1, v2, :cond_9

    #@153
    .line 4287
    const-string/jumbo v1, "\u00a4\u00a4\u00a4"

    #@156
    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@159
    move-result v12

    #@15a
    .line 4288
    .restart local v12    # "firstPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@15d
    move-result v1

    #@15e
    add-int v14, v1, v12

    #@160
    .line 4289
    .restart local v14    # "start":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@163
    move-result v1

    #@164
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@167
    move-result v2

    #@168
    add-int v11, v1, v2

    #@16a
    .line 4290
    .restart local v11    # "end":I
    move-object/from16 v0, p4

    #@16c
    invoke-virtual {v0, v14}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@16f
    .line 4291
    move-object/from16 v0, p4

    #@171
    invoke-virtual {v0, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@174
    goto :goto_3
.end method

.method private appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V
    .locals 8
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "isNegative"    # Z
    .param p3, "isPrefix"    # Z
    .param p4, "localized"    # Z

    #@0
    .prologue
    const/16 v6, 0x27

    #@2
    .line 4367
    const/4 v1, 0x0

    #@3
    .line 4368
    .local v1, "affixPat":Ljava/lang/String;
    if-eqz p3, :cond_2

    #@5
    .line 4369
    if-eqz p2, :cond_1

    #@7
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@9
    .line 4375
    .local v1, "affixPat":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_8

    #@b
    .line 4376
    const/4 v0, 0x0

    #@c
    .line 4377
    .local v0, "affix":Ljava/lang/String;
    if-eqz p3, :cond_5

    #@e
    .line 4378
    if-eqz p2, :cond_4

    #@10
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@12
    .line 4383
    .local v0, "affix":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@15
    .line 4384
    const/4 v3, 0x0

    #@16
    .local v3, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v5

    #@1a
    if-ge v3, v5, :cond_7

    #@1c
    .line 4385
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v2

    #@20
    .line 4386
    .local v2, "ch":C
    if-ne v2, v6, :cond_0

    #@22
    .line 4387
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@25
    .line 4389
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@28
    .line 4384
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 4369
    .end local v0    # "affix":Ljava/lang/String;
    .end local v2    # "ch":C
    .end local v3    # "i":I
    .local v1, "affixPat":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@2d
    .local v1, "affixPat":Ljava/lang/String;
    goto :goto_0

    #@2e
    .line 4371
    .local v1, "affixPat":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    #@30
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@32
    .local v1, "affixPat":Ljava/lang/String;
    goto :goto_0

    #@33
    .local v1, "affixPat":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@35
    .local v1, "affixPat":Ljava/lang/String;
    goto :goto_0

    #@36
    .line 4378
    .local v0, "affix":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@38
    .local v0, "affix":Ljava/lang/String;
    goto :goto_1

    #@39
    .line 4380
    .local v0, "affix":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    #@3b
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@3d
    .local v0, "affix":Ljava/lang/String;
    goto :goto_1

    #@3e
    .local v0, "affix":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@40
    .local v0, "affix":Ljava/lang/String;
    goto :goto_1

    #@41
    .line 4391
    .restart local v3    # "i":I
    :cond_7
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@44
    .line 4392
    return-void

    #@45
    .line 4395
    .end local v0    # "affix":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_8
    if-nez p4, :cond_a

    #@47
    .line 4396
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    .line 4366
    :cond_9
    return-void

    #@4b
    .line 4399
    :cond_a
    const/4 v3, 0x0

    #@4c
    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@4f
    move-result v5

    #@50
    if-ge v3, v5, :cond_9

    #@52
    .line 4400
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v2

    #@56
    .line 4401
    .restart local v2    # "ch":C
    sparse-switch v2, :sswitch_data_0

    #@59
    .line 4421
    :goto_4
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@5b
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@5e
    move-result v5

    #@5f
    if-eq v2, v5, :cond_b

    #@61
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@63
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@66
    move-result v5

    #@67
    if-ne v2, v5, :cond_d

    #@69
    .line 4422
    :cond_b
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6c
    .line 4423
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6f
    .line 4424
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@72
    .line 4399
    :goto_5
    add-int/lit8 v3, v3, 0x1

    #@74
    goto :goto_3

    #@75
    .line 4403
    :sswitch_0
    add-int/lit8 v5, v3, 0x1

    #@77
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    #@7a
    move-result v4

    #@7b
    .line 4404
    .local v4, "j":I
    if-gez v4, :cond_c

    #@7d
    .line 4405
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@7f
    new-instance v6, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v7, "Malformed affix pattern: "

    #@87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@96
    throw v5

    #@97
    .line 4407
    :cond_c
    add-int/lit8 v5, v4, 0x1

    #@99
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a0
    .line 4408
    move v3, v4

    #@a1
    .line 4409
    goto :goto_5

    #@a2
    .line 4411
    .end local v4    # "j":I
    :sswitch_1
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@a4
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    #@a7
    move-result v2

    #@a8
    goto :goto_4

    #@a9
    .line 4414
    :sswitch_2
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@ab
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    #@ae
    move-result v2

    #@af
    goto :goto_4

    #@b0
    .line 4417
    :sswitch_3
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@b2
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    #@b5
    move-result v2

    #@b6
    goto :goto_4

    #@b7
    .line 4426
    :cond_d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@ba
    goto :goto_5

    #@bb
    .line 4401
    nop

    #@bc
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0x27 -> :sswitch_0
        0x2d -> :sswitch_3
        0x2030 -> :sswitch_1
    .end sparse-switch
.end method

.method private applyPattern(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "localized"    # Z

    #@0
    .prologue
    .line 4634
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@3
    .line 4635
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    #@7
    .line 4633
    return-void
.end method

.method private applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V
    .locals 60
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "localized"    # Z

    #@0
    .prologue
    .line 4650
    const/16 v56, 0x30

    #@2
    .line 4651
    .local v56, "zeroDigit":C
    const/16 v46, 0x40

    #@4
    .line 4652
    .local v46, "sigDigit":C
    const/16 v25, 0x2c

    #@6
    .line 4653
    .local v25, "groupingSeparator":C
    const/16 v12, 0x2e

    #@8
    .line 4654
    .local v12, "decimalSeparator":C
    const/16 v40, 0x25

    #@a
    .line 4655
    .local v40, "percent":C
    const/16 v39, 0x2030

    #@c
    .line 4656
    .local v39, "perMill":C
    const/16 v13, 0x23

    #@e
    .line 4657
    .local v13, "digit":C
    const/16 v45, 0x3b

    #@10
    .line 4658
    .local v45, "separator":C
    const/16 v58, 0x45

    #@12
    invoke-static/range {v58 .. v58}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@15
    move-result-object v21

    #@16
    .line 4659
    .local v21, "exponent":Ljava/lang/String;
    const/16 v41, 0x2b

    #@18
    .line 4660
    .local v41, "plus":C
    const/16 v36, 0x2a

    #@1a
    .line 4661
    .local v36, "padEscape":C
    const/16 v30, 0x2d

    #@1c
    .line 4662
    .local v30, "minus":C
    if-eqz p2, :cond_0

    #@1e
    .line 4663
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@22
    move-object/from16 v58, v0

    #@24
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    #@27
    move-result v56

    #@28
    .line 4664
    .local v56, "zeroDigit":C
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@2c
    move-object/from16 v58, v0

    #@2e
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    #@31
    move-result v46

    #@32
    .line 4665
    .local v46, "sigDigit":C
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@36
    move-object/from16 v58, v0

    #@38
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@3b
    move-result v25

    #@3c
    .line 4666
    .local v25, "groupingSeparator":C
    move-object/from16 v0, p0

    #@3e
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@40
    move-object/from16 v58, v0

    #@42
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@45
    move-result v12

    #@46
    .line 4667
    .local v12, "decimalSeparator":C
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@4a
    move-object/from16 v58, v0

    #@4c
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    #@4f
    move-result v40

    #@50
    .line 4668
    .local v40, "percent":C
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@54
    move-object/from16 v58, v0

    #@56
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    #@59
    move-result v39

    #@5a
    .line 4669
    .local v39, "perMill":C
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@5e
    move-object/from16 v58, v0

    #@60
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    #@63
    move-result v13

    #@64
    .line 4670
    .local v13, "digit":C
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@68
    move-object/from16 v58, v0

    #@6a
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    #@6d
    move-result v45

    #@6e
    .line 4671
    .local v45, "separator":C
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@72
    move-object/from16 v58, v0

    #@74
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    #@77
    move-result-object v21

    #@78
    .line 4672
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@7c
    move-object/from16 v58, v0

    #@7e
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    #@81
    move-result v41

    #@82
    .line 4673
    .local v41, "plus":C
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@86
    move-object/from16 v58, v0

    #@88
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getPadEscape()C

    #@8b
    move-result v36

    #@8c
    .line 4674
    .local v36, "padEscape":C
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@90
    move-object/from16 v58, v0

    #@92
    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    #@95
    move-result v30

    #@96
    .line 4676
    .end local v12    # "decimalSeparator":C
    .end local v13    # "digit":C
    .end local v25    # "groupingSeparator":C
    .end local v30    # "minus":C
    .end local v36    # "padEscape":C
    .end local v39    # "perMill":C
    .end local v40    # "percent":C
    .end local v41    # "plus":C
    .end local v45    # "separator":C
    .end local v46    # "sigDigit":C
    .end local v56    # "zeroDigit":C
    :cond_0
    add-int/lit8 v58, v56, 0x9

    #@98
    move/from16 v0, v58

    #@9a
    int-to-char v0, v0

    #@9b
    move/from16 v33, v0

    #@9d
    .line 4678
    .local v33, "nineDigit":C
    const/16 v22, 0x0

    #@9f
    .line 4680
    .local v22, "gotNegative":Z
    const/16 v42, 0x0

    #@a1
    .line 4683
    .local v42, "pos":I
    const/16 v38, 0x0

    #@a3
    .local v38, "part":I
    :goto_0
    const/16 v58, 0x2

    #@a5
    move/from16 v0, v38

    #@a7
    move/from16 v1, v58

    #@a9
    if-ge v0, v1, :cond_5a

    #@ab
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@ae
    move-result v58

    #@af
    move/from16 v0, v42

    #@b1
    move/from16 v1, v58

    #@b3
    if-ge v0, v1, :cond_5a

    #@b5
    .line 4688
    const/16 v52, 0x1

    #@b7
    .local v52, "subpart":I
    const/16 v50, 0x0

    #@b9
    .local v50, "sub0Start":I
    const/16 v49, 0x0

    #@bb
    .local v49, "sub0Limit":I
    const/16 v51, 0x0

    #@bd
    .line 4695
    .local v51, "sub2Limit":I
    new-instance v43, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    .line 4696
    .local v43, "prefix":Ljava/lang/StringBuilder;
    new-instance v53, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    .line 4697
    .local v53, "suffix":Ljava/lang/StringBuilder;
    const/4 v11, -0x1

    #@c8
    .line 4698
    .local v11, "decimalPos":I
    const/16 v31, 0x1

    #@ca
    .line 4699
    .local v31, "multpl":I
    const/4 v14, 0x0

    #@cb
    .local v14, "digitLeftCount":I
    const/16 v57, 0x0

    #@cd
    .local v57, "zeroDigitCount":I
    const/4 v15, 0x0

    #@ce
    .local v15, "digitRightCount":I
    const/16 v47, 0x0

    #@d0
    .line 4700
    .local v47, "sigDigitCount":I
    const/16 v23, -0x1

    #@d2
    .line 4701
    .local v23, "groupingCount":B
    const/16 v24, -0x1

    #@d4
    .line 4702
    .local v24, "groupingCount2":B
    const/16 v37, -0x1

    #@d6
    .line 4703
    .local v37, "padPos":I
    const/16 v35, 0x0

    #@d8
    .line 4704
    .local v35, "padChar":C
    const/16 v26, -0x1

    #@da
    .line 4705
    .local v26, "incrementPos":I
    const-wide/16 v28, 0x0

    #@dc
    .line 4706
    .local v28, "incrementVal":J
    const/16 v19, -0x1

    #@de
    .line 4707
    .local v19, "expDigits":B
    const/16 v20, 0x0

    #@e0
    .line 4708
    .local v20, "expSignAlways":Z
    const/4 v9, 0x0

    #@e1
    .line 4711
    .local v9, "currencySignCnt":I
    move-object/from16 v6, v43

    #@e3
    .line 4713
    .local v6, "affix":Ljava/lang/StringBuilder;
    move/from16 v48, v42

    #@e5
    .line 4715
    .end local v19    # "expDigits":B
    .end local v23    # "groupingCount":B
    .end local v24    # "groupingCount2":B
    .end local v35    # "padChar":C
    .local v48, "start":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@e8
    move-result v58

    #@e9
    move/from16 v0, v42

    #@eb
    move/from16 v1, v58

    #@ed
    if-ge v0, v1, :cond_2c

    #@ef
    .line 4716
    move-object/from16 v0, p1

    #@f1
    move/from16 v1, v42

    #@f3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@f6
    move-result v8

    #@f7
    .line 4717
    .local v8, "ch":C
    packed-switch v52, :pswitch_data_0

    #@fa
    .line 4715
    .end local v8    # "ch":C
    :cond_1
    :goto_2
    add-int/lit8 v42, v42, 0x1

    #@fc
    goto :goto_1

    #@fd
    .line 4727
    .restart local v8    # "ch":C
    :pswitch_0
    if-ne v8, v13, :cond_4

    #@ff
    .line 4728
    if-gtz v57, :cond_2

    #@101
    if-lez v47, :cond_3

    #@103
    .line 4729
    :cond_2
    add-int/lit8 v15, v15, 0x1

    #@105
    .line 4733
    :goto_3
    if-ltz v23, :cond_1

    #@107
    if-gez v11, :cond_1

    #@109
    .line 4734
    add-int/lit8 v58, v23, 0x1

    #@10b
    move/from16 v0, v58

    #@10d
    int-to-byte v0, v0

    #@10e
    move/from16 v23, v0

    #@110
    .local v23, "groupingCount":B
    goto :goto_2

    #@111
    .line 4731
    .end local v23    # "groupingCount":B
    :cond_3
    add-int/lit8 v14, v14, 0x1

    #@113
    goto :goto_3

    #@114
    .line 4736
    :cond_4
    move/from16 v0, v56

    #@116
    if-lt v8, v0, :cond_8

    #@118
    move/from16 v0, v33

    #@11a
    if-gt v8, v0, :cond_8

    #@11c
    .line 4737
    :cond_5
    if-lez v15, :cond_6

    #@11e
    .line 4738
    new-instance v58, Ljava/lang/StringBuilder;

    #@120
    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v59, "Unexpected \'"

    #@126
    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v58

    #@12a
    move-object/from16 v0, v58

    #@12c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v58

    #@130
    const/16 v59, 0x27

    #@132
    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@135
    move-result-object v58

    #@136
    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v58

    #@13a
    move-object/from16 v0, p0

    #@13c
    move-object/from16 v1, v58

    #@13e
    move-object/from16 v2, p1

    #@140
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@143
    .line 4740
    :cond_6
    move/from16 v0, v46

    #@145
    if-ne v8, v0, :cond_c

    #@147
    .line 4741
    add-int/lit8 v47, v47, 0x1

    #@149
    .line 4757
    :cond_7
    :goto_4
    if-ltz v23, :cond_1

    #@14b
    if-gez v11, :cond_1

    #@14d
    .line 4758
    add-int/lit8 v58, v23, 0x1

    #@14f
    move/from16 v0, v58

    #@151
    int-to-byte v0, v0

    #@152
    move/from16 v23, v0

    #@154
    .restart local v23    # "groupingCount":B
    goto :goto_2

    #@155
    .line 4736
    .end local v23    # "groupingCount":B
    :cond_8
    move/from16 v0, v46

    #@157
    if-eq v8, v0, :cond_5

    #@159
    .line 4760
    move/from16 v0, v25

    #@15b
    if-ne v8, v0, :cond_11

    #@15d
    .line 4764
    const/16 v58, 0x27

    #@15f
    move/from16 v0, v58

    #@161
    if-ne v8, v0, :cond_a

    #@163
    add-int/lit8 v58, v42, 0x1

    #@165
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@168
    move-result v59

    #@169
    move/from16 v0, v58

    #@16b
    move/from16 v1, v59

    #@16d
    if-ge v0, v1, :cond_a

    #@16f
    .line 4765
    add-int/lit8 v58, v42, 0x1

    #@171
    move-object/from16 v0, p1

    #@173
    move/from16 v1, v58

    #@175
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@178
    move-result v7

    #@179
    .line 4766
    .local v7, "after":C
    if-eq v7, v13, :cond_a

    #@17b
    move/from16 v0, v56

    #@17d
    if-lt v7, v0, :cond_9

    #@17f
    move/from16 v0, v33

    #@181
    if-le v7, v0, :cond_a

    #@183
    .line 4770
    :cond_9
    const/16 v58, 0x27

    #@185
    move/from16 v0, v58

    #@187
    if-ne v7, v0, :cond_f

    #@189
    .line 4771
    add-int/lit8 v42, v42, 0x1

    #@18b
    .line 4787
    .end local v7    # "after":C
    :cond_a
    if-ltz v11, :cond_b

    #@18d
    .line 4788
    const-string/jumbo v58, "Grouping separator after decimal"

    #@190
    move-object/from16 v0, p0

    #@192
    move-object/from16 v1, v58

    #@194
    move-object/from16 v2, p1

    #@196
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@199
    .line 4790
    :cond_b
    move/from16 v24, v23

    #@19b
    .line 4791
    .local v24, "groupingCount2":B
    const/16 v23, 0x0

    #@19d
    .local v23, "groupingCount":B
    goto/16 :goto_2

    #@19f
    .line 4743
    .end local v23    # "groupingCount":B
    .end local v24    # "groupingCount2":B
    :cond_c
    add-int/lit8 v57, v57, 0x1

    #@1a1
    .line 4744
    move/from16 v0, v56

    #@1a3
    if-eq v8, v0, :cond_7

    #@1a5
    .line 4745
    add-int v58, v14, v57

    #@1a7
    add-int v34, v58, v15

    #@1a9
    .line 4746
    .local v34, "p":I
    if-ltz v26, :cond_d

    #@1ab
    .line 4747
    :goto_5
    move/from16 v0, v26

    #@1ad
    move/from16 v1, v34

    #@1af
    if-ge v0, v1, :cond_e

    #@1b1
    .line 4748
    const-wide/16 v58, 0xa

    #@1b3
    mul-long v28, v28, v58

    #@1b5
    .line 4749
    add-int/lit8 v26, v26, 0x1

    #@1b7
    goto :goto_5

    #@1b8
    .line 4752
    :cond_d
    move/from16 v26, v34

    #@1ba
    .line 4754
    :cond_e
    sub-int v58, v8, v56

    #@1bc
    move/from16 v0, v58

    #@1be
    int-to-long v0, v0

    #@1bf
    move-wide/from16 v58, v0

    #@1c1
    add-long v28, v28, v58

    #@1c3
    goto :goto_4

    #@1c4
    .line 4774
    .end local v34    # "p":I
    .restart local v7    # "after":C
    :cond_f
    if-gez v23, :cond_10

    #@1c6
    .line 4775
    const/16 v52, 0x3

    #@1c8
    goto/16 :goto_2

    #@1ca
    .line 4778
    :cond_10
    const/16 v52, 0x2

    #@1cc
    .line 4779
    move-object/from16 v6, v53

    #@1ce
    .line 4780
    move/from16 v49, v42

    #@1d0
    add-int/lit8 v42, v42, -0x1

    #@1d2
    goto/16 :goto_2

    #@1d4
    .line 4792
    .end local v7    # "after":C
    :cond_11
    if-ne v8, v12, :cond_13

    #@1d6
    .line 4793
    if-ltz v11, :cond_12

    #@1d8
    .line 4794
    const-string/jumbo v58, "Multiple decimal separators"

    #@1db
    move-object/from16 v0, p0

    #@1dd
    move-object/from16 v1, v58

    #@1df
    move-object/from16 v2, p1

    #@1e1
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@1e4
    .line 4799
    :cond_12
    add-int v58, v14, v57

    #@1e6
    add-int v11, v58, v15

    #@1e8
    goto/16 :goto_2

    #@1ea
    .line 4801
    :cond_13
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@1ed
    move-result v58

    #@1ee
    const/16 v59, 0x0

    #@1f0
    move-object/from16 v0, p1

    #@1f2
    move/from16 v1, v42

    #@1f4
    move-object/from16 v2, v21

    #@1f6
    move/from16 v3, v59

    #@1f8
    move/from16 v4, v58

    #@1fa
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@1fd
    move-result v58

    #@1fe
    if-eqz v58, :cond_19

    #@200
    .line 4802
    if-ltz v19, :cond_14

    #@202
    .line 4803
    const-string/jumbo v58, "Multiple exponential symbols"

    #@205
    move-object/from16 v0, p0

    #@207
    move-object/from16 v1, v58

    #@209
    move-object/from16 v2, p1

    #@20b
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@20e
    .line 4805
    :cond_14
    if-ltz v23, :cond_15

    #@210
    .line 4806
    const-string/jumbo v58, "Grouping separator in exponential"

    #@213
    move-object/from16 v0, p0

    #@215
    move-object/from16 v1, v58

    #@217
    move-object/from16 v2, p1

    #@219
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@21c
    .line 4808
    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@21f
    move-result v58

    #@220
    add-int v42, v42, v58

    #@222
    .line 4810
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@225
    move-result v58

    #@226
    move/from16 v0, v42

    #@228
    move/from16 v1, v58

    #@22a
    if-ge v0, v1, :cond_16

    #@22c
    move-object/from16 v0, p1

    #@22e
    move/from16 v1, v42

    #@230
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@233
    move-result v58

    #@234
    move/from16 v0, v58

    #@236
    move/from16 v1, v41

    #@238
    if-ne v0, v1, :cond_16

    #@23a
    .line 4811
    const/16 v20, 0x1

    #@23c
    .line 4812
    add-int/lit8 v42, v42, 0x1

    #@23e
    .line 4816
    :cond_16
    const/16 v19, 0x0

    #@240
    .line 4817
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@243
    move-result v58

    #@244
    move/from16 v0, v42

    #@246
    move/from16 v1, v58

    #@248
    if-ge v0, v1, :cond_17

    #@24a
    move-object/from16 v0, p1

    #@24c
    move/from16 v1, v42

    #@24e
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@251
    move-result v58

    #@252
    move/from16 v0, v58

    #@254
    move/from16 v1, v56

    #@256
    if-ne v0, v1, :cond_17

    #@258
    .line 4818
    add-int/lit8 v58, v19, 0x1

    #@25a
    move/from16 v0, v58

    #@25c
    int-to-byte v0, v0

    #@25d
    move/from16 v19, v0

    #@25f
    .line 4819
    .local v19, "expDigits":B
    add-int/lit8 v42, v42, 0x1

    #@261
    goto :goto_6

    #@262
    .line 4825
    .end local v19    # "expDigits":B
    :cond_17
    add-int v58, v14, v57

    #@264
    const/16 v59, 0x1

    #@266
    move/from16 v0, v58

    #@268
    move/from16 v1, v59

    #@26a
    if-ge v0, v1, :cond_1a

    #@26c
    .line 4826
    add-int v58, v47, v15

    #@26e
    const/16 v59, 0x1

    #@270
    move/from16 v0, v58

    #@272
    move/from16 v1, v59

    #@274
    if-ge v0, v1, :cond_1a

    #@276
    .line 4828
    :cond_18
    :goto_7
    const-string/jumbo v58, "Malformed exponential"

    #@279
    move-object/from16 v0, p0

    #@27b
    move-object/from16 v1, v58

    #@27d
    move-object/from16 v2, p1

    #@27f
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@282
    .line 4832
    :cond_19
    const/16 v52, 0x2

    #@284
    .line 4833
    move-object/from16 v6, v53

    #@286
    .line 4834
    move/from16 v49, v42

    #@288
    add-int/lit8 v42, v42, -0x1

    #@28a
    .line 4835
    goto/16 :goto_2

    #@28c
    .line 4827
    :cond_1a
    if-lez v47, :cond_1b

    #@28e
    if-gtz v14, :cond_18

    #@290
    :cond_1b
    const/16 v58, 0x1

    #@292
    move/from16 v0, v19

    #@294
    move/from16 v1, v58

    #@296
    if-ge v0, v1, :cond_19

    #@298
    goto :goto_7

    #@299
    .line 4845
    :pswitch_1
    if-eq v8, v13, :cond_1c

    #@29b
    move/from16 v0, v25

    #@29d
    if-ne v8, v0, :cond_1d

    #@29f
    .line 4849
    :cond_1c
    const/16 v58, 0x1

    #@2a1
    move/from16 v0, v52

    #@2a3
    move/from16 v1, v58

    #@2a5
    if-ne v0, v1, :cond_20

    #@2a7
    .line 4850
    const/16 v52, 0x0

    #@2a9
    .line 4851
    move/from16 v50, v42

    #@2ab
    add-int/lit8 v42, v42, -0x1

    #@2ad
    .line 4852
    goto/16 :goto_2

    #@2af
    .line 4845
    :cond_1d
    if-eq v8, v12, :cond_1c

    #@2b1
    .line 4846
    move/from16 v0, v56

    #@2b3
    if-lt v8, v0, :cond_1e

    #@2b5
    move/from16 v0, v33

    #@2b7
    if-le v8, v0, :cond_1c

    #@2b9
    :cond_1e
    move/from16 v0, v46

    #@2bb
    if-eq v8, v0, :cond_1c

    #@2bd
    .line 4870
    const/16 v58, 0xa4

    #@2bf
    move/from16 v0, v58

    #@2c1
    if-ne v8, v0, :cond_27

    #@2c3
    .line 4873
    add-int/lit8 v58, v42, 0x1

    #@2c5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@2c8
    move-result v59

    #@2c9
    move/from16 v0, v58

    #@2cb
    move/from16 v1, v59

    #@2cd
    if-ge v0, v1, :cond_24

    #@2cf
    .line 4874
    add-int/lit8 v58, v42, 0x1

    #@2d1
    move-object/from16 v0, p1

    #@2d3
    move/from16 v1, v58

    #@2d5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@2d8
    move-result v58

    #@2d9
    const/16 v59, 0xa4

    #@2db
    move/from16 v0, v58

    #@2dd
    move/from16 v1, v59

    #@2df
    if-ne v0, v1, :cond_23

    #@2e1
    const/16 v17, 0x1

    #@2e3
    .line 4878
    .local v17, "doubled":Z
    :goto_8
    if-eqz v17, :cond_26

    #@2e5
    .line 4879
    add-int/lit8 v42, v42, 0x1

    #@2e7
    .line 4880
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2ea
    .line 4881
    add-int/lit8 v58, v42, 0x1

    #@2ec
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@2ef
    move-result v59

    #@2f0
    move/from16 v0, v58

    #@2f2
    move/from16 v1, v59

    #@2f4
    if-ge v0, v1, :cond_25

    #@2f6
    .line 4882
    add-int/lit8 v58, v42, 0x1

    #@2f8
    move-object/from16 v0, p1

    #@2fa
    move/from16 v1, v58

    #@2fc
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@2ff
    move-result v58

    #@300
    const/16 v59, 0xa4

    #@302
    move/from16 v0, v58

    #@304
    move/from16 v1, v59

    #@306
    if-ne v0, v1, :cond_25

    #@308
    .line 4883
    add-int/lit8 v42, v42, 0x1

    #@30a
    .line 4884
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30d
    .line 4885
    const/4 v9, 0x3

    #@30e
    .line 4936
    .end local v8    # "ch":C
    .end local v17    # "doubled":Z
    :cond_1f
    :goto_9
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@311
    goto/16 :goto_2

    #@313
    .line 4853
    .restart local v8    # "ch":C
    :cond_20
    const/16 v58, 0x27

    #@315
    move/from16 v0, v58

    #@317
    if-ne v8, v0, :cond_22

    #@319
    .line 4861
    add-int/lit8 v58, v42, 0x1

    #@31b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@31e
    move-result v59

    #@31f
    move/from16 v0, v58

    #@321
    move/from16 v1, v59

    #@323
    if-ge v0, v1, :cond_21

    #@325
    add-int/lit8 v58, v42, 0x1

    #@327
    move-object/from16 v0, p1

    #@329
    move/from16 v1, v58

    #@32b
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@32e
    move-result v58

    #@32f
    const/16 v59, 0x27

    #@331
    move/from16 v0, v58

    #@333
    move/from16 v1, v59

    #@335
    if-ne v0, v1, :cond_21

    #@337
    .line 4862
    add-int/lit8 v42, v42, 0x1

    #@339
    .line 4863
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33c
    goto/16 :goto_2

    #@33e
    .line 4865
    :cond_21
    add-int/lit8 v52, v52, 0x2

    #@340
    goto/16 :goto_2

    #@342
    .line 4869
    :cond_22
    new-instance v58, Ljava/lang/StringBuilder;

    #@344
    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    #@347
    const-string/jumbo v59, "Unquoted special character \'"

    #@34a
    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34d
    move-result-object v58

    #@34e
    move-object/from16 v0, v58

    #@350
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@353
    move-result-object v58

    #@354
    const/16 v59, 0x27

    #@356
    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@359
    move-result-object v58

    #@35a
    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35d
    move-result-object v58

    #@35e
    move-object/from16 v0, p0

    #@360
    move-object/from16 v1, v58

    #@362
    move-object/from16 v2, p1

    #@364
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@367
    goto :goto_9

    #@368
    .line 4874
    :cond_23
    const/16 v17, 0x0

    #@36a
    goto/16 :goto_8

    #@36c
    .line 4873
    :cond_24
    const/16 v17, 0x0

    #@36e
    goto/16 :goto_8

    #@370
    .line 4887
    .restart local v17    # "doubled":Z
    :cond_25
    const/4 v9, 0x2

    #@371
    goto :goto_9

    #@372
    .line 4890
    :cond_26
    const/4 v9, 0x1

    #@373
    goto :goto_9

    #@374
    .line 4893
    .end local v17    # "doubled":Z
    :cond_27
    const/16 v58, 0x27

    #@376
    move/from16 v0, v58

    #@378
    if-ne v8, v0, :cond_29

    #@37a
    .line 4897
    add-int/lit8 v58, v42, 0x1

    #@37c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@37f
    move-result v59

    #@380
    move/from16 v0, v58

    #@382
    move/from16 v1, v59

    #@384
    if-ge v0, v1, :cond_28

    #@386
    add-int/lit8 v58, v42, 0x1

    #@388
    move-object/from16 v0, p1

    #@38a
    move/from16 v1, v58

    #@38c
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@38f
    move-result v58

    #@390
    const/16 v59, 0x27

    #@392
    move/from16 v0, v58

    #@394
    move/from16 v1, v59

    #@396
    if-ne v0, v1, :cond_28

    #@398
    .line 4898
    add-int/lit8 v42, v42, 0x1

    #@39a
    .line 4899
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39d
    goto/16 :goto_9

    #@39f
    .line 4901
    :cond_28
    add-int/lit8 v52, v52, 0x2

    #@3a1
    goto/16 :goto_9

    #@3a3
    .line 4904
    :cond_29
    move/from16 v0, v45

    #@3a5
    if-ne v8, v0, :cond_39

    #@3a7
    .line 4907
    const/16 v58, 0x1

    #@3a9
    move/from16 v0, v52

    #@3ab
    move/from16 v1, v58

    #@3ad
    if-eq v0, v1, :cond_2a

    #@3af
    const/16 v58, 0x1

    #@3b1
    move/from16 v0, v38

    #@3b3
    move/from16 v1, v58

    #@3b5
    if-ne v0, v1, :cond_2b

    #@3b7
    .line 4908
    :cond_2a
    new-instance v58, Ljava/lang/StringBuilder;

    #@3b9
    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    #@3bc
    const-string/jumbo v59, "Unquoted special character \'"

    #@3bf
    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c2
    move-result-object v58

    #@3c3
    move-object/from16 v0, v58

    #@3c5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c8
    move-result-object v58

    #@3c9
    const/16 v59, 0x27

    #@3cb
    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3ce
    move-result-object v58

    #@3cf
    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d2
    move-result-object v58

    #@3d3
    move-object/from16 v0, p0

    #@3d5
    move-object/from16 v1, v58

    #@3d7
    move-object/from16 v2, p1

    #@3d9
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@3dc
    .line 4910
    :cond_2b
    move/from16 v51, v42

    #@3de
    add-int/lit8 v42, v42, 0x1

    #@3e0
    .line 4961
    .end local v8    # "ch":C
    :cond_2c
    const/16 v58, 0x3

    #@3e2
    move/from16 v0, v52

    #@3e4
    move/from16 v1, v58

    #@3e6
    if-eq v0, v1, :cond_2d

    #@3e8
    const/16 v58, 0x4

    #@3ea
    move/from16 v0, v52

    #@3ec
    move/from16 v1, v58

    #@3ee
    if-ne v0, v1, :cond_2e

    #@3f0
    .line 4962
    :cond_2d
    const-string/jumbo v58, "Unterminated quote"

    #@3f3
    move-object/from16 v0, p0

    #@3f5
    move-object/from16 v1, v58

    #@3f7
    move-object/from16 v2, p1

    #@3f9
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@3fc
    .line 4965
    :cond_2e
    if-nez v49, :cond_2f

    #@3fe
    .line 4966
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@401
    move-result v49

    #@402
    .line 4969
    :cond_2f
    if-nez v51, :cond_30

    #@404
    .line 4970
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@407
    move-result v51

    #@408
    .line 4984
    :cond_30
    if-nez v57, :cond_32

    #@40a
    if-nez v47, :cond_32

    #@40c
    .line 4985
    if-lez v14, :cond_32

    #@40e
    if-ltz v11, :cond_32

    #@410
    .line 4987
    move/from16 v32, v11

    #@412
    .line 4988
    .local v32, "n":I
    if-nez v11, :cond_31

    #@414
    .line 4989
    add-int/lit8 v32, v32, 0x1

    #@416
    .line 4990
    :cond_31
    sub-int v15, v14, v32

    #@418
    .line 4991
    add-int/lit8 v14, v32, -0x1

    #@41a
    .line 4992
    const/16 v57, 0x1

    #@41c
    .line 4996
    .end local v32    # "n":I
    :cond_32
    if-gez v11, :cond_44

    #@41e
    if-lez v15, :cond_44

    #@420
    if-nez v47, :cond_44

    #@422
    .line 5005
    :cond_33
    :goto_a
    const-string/jumbo v58, "Malformed pattern"

    #@425
    move-object/from16 v0, p0

    #@427
    move-object/from16 v1, v58

    #@429
    move-object/from16 v2, p1

    #@42b
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@42e
    .line 5009
    :cond_34
    if-ltz v37, :cond_35

    #@430
    .line 5010
    move/from16 v0, v37

    #@432
    move/from16 v1, v48

    #@434
    if-ne v0, v1, :cond_47

    #@436
    .line 5011
    const/16 v37, 0x0

    #@438
    .line 5023
    :cond_35
    :goto_b
    if-nez v38, :cond_59

    #@43a
    .line 5029
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43d
    move-result-object v58

    #@43e
    move-object/from16 v0, v58

    #@440
    move-object/from16 v1, p0

    #@442
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@444
    move-object/from16 v0, v58

    #@446
    move-object/from16 v1, p0

    #@448
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@44a
    .line 5030
    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44d
    move-result-object v58

    #@44e
    move-object/from16 v0, v58

    #@450
    move-object/from16 v1, p0

    #@452
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@454
    move-object/from16 v0, v58

    #@456
    move-object/from16 v1, p0

    #@458
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@45a
    .line 5032
    if-ltz v19, :cond_4b

    #@45c
    const/16 v58, 0x1

    #@45e
    :goto_c
    move/from16 v0, v58

    #@460
    move-object/from16 v1, p0

    #@462
    iput-boolean v0, v1, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@464
    .line 5033
    move-object/from16 v0, p0

    #@466
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@468
    move/from16 v58, v0

    #@46a
    if-eqz v58, :cond_36

    #@46c
    .line 5034
    move/from16 v0, v19

    #@46e
    move-object/from16 v1, p0

    #@470
    iput-byte v0, v1, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@472
    .line 5035
    move/from16 v0, v20

    #@474
    move-object/from16 v1, p0

    #@476
    iput-boolean v0, v1, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@478
    .line 5037
    :cond_36
    add-int v58, v14, v57

    #@47a
    add-int v16, v58, v15

    #@47c
    .line 5041
    .local v16, "digitTotalCount":I
    if-ltz v11, :cond_4c

    #@47e
    move/from16 v18, v11

    #@480
    .line 5042
    .local v18, "effectiveDecimalPos":I
    :goto_d
    if-lez v47, :cond_4d

    #@482
    const/16 v55, 0x1

    #@484
    .line 5043
    .local v55, "useSigDig":Z
    :goto_e
    move-object/from16 v0, p0

    #@486
    move/from16 v1, v55

    #@488
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    #@48b
    .line 5044
    if-eqz v55, :cond_4e

    #@48d
    .line 5045
    move-object/from16 v0, p0

    #@48f
    move/from16 v1, v47

    #@491
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumSignificantDigits(I)V

    #@494
    .line 5046
    add-int v58, v47, v15

    #@496
    move-object/from16 v0, p0

    #@498
    move/from16 v1, v58

    #@49a
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    #@49d
    .line 5060
    :goto_f
    if-lez v23, :cond_52

    #@49f
    const/16 v58, 0x1

    #@4a1
    :goto_10
    move-object/from16 v0, p0

    #@4a3
    move/from16 v1, v58

    #@4a5
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    #@4a8
    .line 5061
    if-lez v23, :cond_53

    #@4aa
    move/from16 v58, v23

    #@4ac
    :goto_11
    move/from16 v0, v58

    #@4ae
    move-object/from16 v1, p0

    #@4b0
    iput-byte v0, v1, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@4b2
    .line 5062
    if-lez v24, :cond_54

    #@4b4
    move/from16 v0, v24

    #@4b6
    move/from16 v1, v23

    #@4b8
    if-eq v0, v1, :cond_54

    #@4ba
    :goto_12
    move/from16 v0, v24

    #@4bc
    move-object/from16 v1, p0

    #@4be
    iput-byte v0, v1, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@4c0
    .line 5064
    move/from16 v0, v31

    #@4c2
    move-object/from16 v1, p0

    #@4c4
    iput v0, v1, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@4c6
    .line 5065
    if-eqz v11, :cond_37

    #@4c8
    move/from16 v0, v16

    #@4ca
    if-ne v11, v0, :cond_55

    #@4cc
    :cond_37
    const/16 v58, 0x1

    #@4ce
    :goto_13
    move-object/from16 v0, p0

    #@4d0
    move/from16 v1, v58

    #@4d2
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    #@4d5
    .line 5066
    if-ltz v37, :cond_56

    #@4d7
    .line 5067
    move/from16 v0, v37

    #@4d9
    move-object/from16 v1, p0

    #@4db
    iput v0, v1, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@4dd
    .line 5068
    sub-int v58, v49, v50

    #@4df
    move/from16 v0, v58

    #@4e1
    move-object/from16 v1, p0

    #@4e3
    iput v0, v1, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4e5
    .line 5069
    move/from16 v0, v35

    #@4e7
    move-object/from16 v1, p0

    #@4e9
    iput-char v0, v1, Landroid/icu/text/DecimalFormat;->pad:C

    #@4eb
    .line 5073
    :goto_14
    const-wide/16 v58, 0x0

    #@4ed
    cmp-long v58, v28, v58

    #@4ef
    if-eqz v58, :cond_58

    #@4f1
    .line 5076
    sub-int v44, v26, v18

    #@4f3
    .line 5077
    .local v44, "scale":I
    if-lez v44, :cond_57

    #@4f5
    move/from16 v58, v44

    #@4f7
    :goto_15
    move-wide/from16 v0, v28

    #@4f9
    move/from16 v2, v58

    #@4fb
    invoke-static {v0, v1, v2}, Landroid/icu/math/BigDecimal;->valueOf(JI)Landroid/icu/math/BigDecimal;

    #@4fe
    move-result-object v58

    #@4ff
    move-object/from16 v0, v58

    #@501
    move-object/from16 v1, p0

    #@503
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@505
    .line 5078
    if-gez v44, :cond_38

    #@507
    .line 5079
    move-object/from16 v0, p0

    #@509
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@50b
    move-object/from16 v58, v0

    #@50d
    move/from16 v0, v44

    #@50f
    neg-int v0, v0

    #@510
    move/from16 v59, v0

    #@512
    invoke-virtual/range {v58 .. v59}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    #@515
    move-result-object v58

    #@516
    move-object/from16 v0, v58

    #@518
    move-object/from16 v1, p0

    #@51a
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@51c
    .line 5081
    :cond_38
    const/16 v58, 0x6

    #@51e
    move/from16 v0, v58

    #@520
    move-object/from16 v1, p0

    #@522
    iput v0, v1, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@524
    .line 5087
    .end local v44    # "scale":I
    :goto_16
    move-object/from16 v0, p0

    #@526
    iput v9, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@528
    .line 4683
    .end local v16    # "digitTotalCount":I
    .end local v18    # "effectiveDecimalPos":I
    .end local v55    # "useSigDig":Z
    :goto_17
    add-int/lit8 v38, v38, 0x1

    #@52a
    goto/16 :goto_0

    #@52c
    .line 4912
    .restart local v8    # "ch":C
    :cond_39
    move/from16 v0, v40

    #@52e
    if-eq v8, v0, :cond_3a

    #@530
    move/from16 v0, v39

    #@532
    if-ne v8, v0, :cond_3e

    #@534
    .line 4914
    :cond_3a
    const/16 v58, 0x1

    #@536
    move/from16 v0, v31

    #@538
    move/from16 v1, v58

    #@53a
    if-eq v0, v1, :cond_3b

    #@53c
    .line 4915
    const-string/jumbo v58, "Too many percent/permille characters"

    #@53f
    move-object/from16 v0, p0

    #@541
    move-object/from16 v1, v58

    #@543
    move-object/from16 v2, p1

    #@545
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@548
    .line 4917
    :cond_3b
    move/from16 v0, v40

    #@54a
    if-ne v8, v0, :cond_3c

    #@54c
    const/16 v31, 0x64

    #@54e
    .line 4919
    :goto_18
    move/from16 v0, v40

    #@550
    if-ne v8, v0, :cond_3d

    #@552
    const/16 v8, 0x25

    #@554
    .local v8, "ch":C
    goto/16 :goto_9

    #@556
    .line 4917
    .local v8, "ch":C
    :cond_3c
    const/16 v31, 0x3e8

    #@558
    goto :goto_18

    #@559
    .line 4919
    :cond_3d
    const/16 v8, 0x2030

    #@55b
    .local v8, "ch":C
    goto/16 :goto_9

    #@55d
    .line 4921
    .local v8, "ch":C
    :cond_3e
    move/from16 v0, v30

    #@55f
    if-ne v8, v0, :cond_3f

    #@561
    .line 4923
    const/16 v8, 0x2d

    #@563
    .local v8, "ch":C
    goto/16 :goto_9

    #@565
    .line 4925
    .local v8, "ch":C
    :cond_3f
    move/from16 v0, v36

    #@567
    if-ne v8, v0, :cond_1f

    #@569
    .line 4926
    if-ltz v37, :cond_40

    #@56b
    .line 4927
    const-string/jumbo v58, "Multiple pad specifiers"

    #@56e
    move-object/from16 v0, p0

    #@570
    move-object/from16 v1, v58

    #@572
    move-object/from16 v2, p1

    #@574
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@577
    .line 4929
    :cond_40
    add-int/lit8 v58, v42, 0x1

    #@579
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@57c
    move-result v59

    #@57d
    move/from16 v0, v58

    #@57f
    move/from16 v1, v59

    #@581
    if-ne v0, v1, :cond_41

    #@583
    .line 4930
    const-string/jumbo v58, "Invalid pad specifier"

    #@586
    move-object/from16 v0, p0

    #@588
    move-object/from16 v1, v58

    #@58a
    move-object/from16 v2, p1

    #@58c
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@58f
    .line 4932
    :cond_41
    move/from16 v37, v42

    #@591
    add-int/lit8 v42, v42, 0x1

    #@593
    .line 4933
    move-object/from16 v0, p1

    #@595
    move/from16 v1, v42

    #@597
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@59a
    move-result v35

    #@59b
    .local v35, "padChar":C
    goto/16 :goto_2

    #@59d
    .line 4943
    .end local v35    # "padChar":C
    :pswitch_2
    const/16 v58, 0x27

    #@59f
    move/from16 v0, v58

    #@5a1
    if-ne v8, v0, :cond_42

    #@5a3
    .line 4944
    add-int/lit8 v58, v42, 0x1

    #@5a5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@5a8
    move-result v59

    #@5a9
    move/from16 v0, v58

    #@5ab
    move/from16 v1, v59

    #@5ad
    if-ge v0, v1, :cond_43

    #@5af
    add-int/lit8 v58, v42, 0x1

    #@5b1
    move-object/from16 v0, p1

    #@5b3
    move/from16 v1, v58

    #@5b5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@5b8
    move-result v58

    #@5b9
    const/16 v59, 0x27

    #@5bb
    move/from16 v0, v58

    #@5bd
    move/from16 v1, v59

    #@5bf
    if-ne v0, v1, :cond_43

    #@5c1
    .line 4945
    add-int/lit8 v42, v42, 0x1

    #@5c3
    .line 4946
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c6
    .line 4956
    :cond_42
    :goto_19
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c9
    goto/16 :goto_2

    #@5cb
    .line 4948
    :cond_43
    add-int/lit8 v52, v52, -0x2

    #@5cd
    goto :goto_19

    #@5ce
    .line 4997
    .end local v8    # "ch":C
    :cond_44
    if-ltz v11, :cond_45

    #@5d0
    .line 4998
    if-gtz v47, :cond_33

    #@5d2
    .line 4999
    if-lt v11, v14, :cond_33

    #@5d4
    .line 5000
    add-int v58, v14, v57

    #@5d6
    move/from16 v0, v58

    #@5d8
    if-gt v11, v0, :cond_33

    #@5da
    .line 5001
    :cond_45
    if-eqz v23, :cond_33

    #@5dc
    .line 5002
    if-eqz v24, :cond_33

    #@5de
    .line 5003
    if-lez v47, :cond_46

    #@5e0
    if-gtz v57, :cond_33

    #@5e2
    .line 5004
    :cond_46
    const/16 v58, 0x2

    #@5e4
    move/from16 v0, v52

    #@5e6
    move/from16 v1, v58

    #@5e8
    if-le v0, v1, :cond_34

    #@5ea
    goto/16 :goto_a

    #@5ec
    .line 5012
    :cond_47
    add-int/lit8 v58, v37, 0x2

    #@5ee
    move/from16 v0, v58

    #@5f0
    move/from16 v1, v50

    #@5f2
    if-ne v0, v1, :cond_48

    #@5f4
    .line 5013
    const/16 v37, 0x1

    #@5f6
    goto/16 :goto_b

    #@5f8
    .line 5014
    :cond_48
    move/from16 v0, v37

    #@5fa
    move/from16 v1, v49

    #@5fc
    if-ne v0, v1, :cond_49

    #@5fe
    .line 5015
    const/16 v37, 0x2

    #@600
    goto/16 :goto_b

    #@602
    .line 5016
    :cond_49
    add-int/lit8 v58, v37, 0x2

    #@604
    move/from16 v0, v58

    #@606
    move/from16 v1, v51

    #@608
    if-ne v0, v1, :cond_4a

    #@60a
    .line 5017
    const/16 v37, 0x3

    #@60c
    goto/16 :goto_b

    #@60e
    .line 5019
    :cond_4a
    const-string/jumbo v58, "Illegal pad position"

    #@611
    move-object/from16 v0, p0

    #@613
    move-object/from16 v1, v58

    #@615
    move-object/from16 v2, p1

    #@617
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    #@61a
    goto/16 :goto_b

    #@61c
    .line 5032
    :cond_4b
    const/16 v58, 0x0

    #@61e
    goto/16 :goto_c

    #@620
    .line 5041
    .restart local v16    # "digitTotalCount":I
    :cond_4c
    move/from16 v18, v16

    #@622
    .restart local v18    # "effectiveDecimalPos":I
    goto/16 :goto_d

    #@624
    .line 5042
    :cond_4d
    const/16 v55, 0x0

    #@626
    goto/16 :goto_e

    #@628
    .line 5048
    .restart local v55    # "useSigDig":Z
    :cond_4e
    sub-int v27, v18, v14

    #@62a
    .line 5049
    .local v27, "minInt":I
    move-object/from16 v0, p0

    #@62c
    move/from16 v1, v27

    #@62e
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    #@631
    .line 5053
    move-object/from16 v0, p0

    #@633
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@635
    move/from16 v58, v0

    #@637
    if-eqz v58, :cond_4f

    #@639
    add-int v58, v14, v27

    #@63b
    :goto_1a
    move-object/from16 v0, p0

    #@63d
    move/from16 v1, v58

    #@63f
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    #@642
    .line 5055
    if-ltz v11, :cond_50

    #@644
    .line 5056
    sub-int v58, v16, v11

    #@646
    .line 5055
    :goto_1b
    move-object/from16 v0, p0

    #@648
    move/from16 v1, v58

    #@64a
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@64d
    .line 5057
    if-ltz v11, :cond_51

    #@64f
    .line 5058
    add-int v58, v14, v57

    #@651
    sub-int v58, v58, v11

    #@653
    .line 5057
    :goto_1c
    move-object/from16 v0, p0

    #@655
    move/from16 v1, v58

    #@657
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@65a
    goto/16 :goto_f

    #@65c
    .line 5054
    :cond_4f
    const/16 v58, 0x135

    #@65e
    goto :goto_1a

    #@65f
    .line 5056
    :cond_50
    const/16 v58, 0x0

    #@661
    goto :goto_1b

    #@662
    .line 5058
    :cond_51
    const/16 v58, 0x0

    #@664
    goto :goto_1c

    #@665
    .line 5060
    .end local v27    # "minInt":I
    :cond_52
    const/16 v58, 0x0

    #@667
    goto/16 :goto_10

    #@669
    .line 5061
    :cond_53
    const/16 v58, 0x0

    #@66b
    goto/16 :goto_11

    #@66d
    .line 5063
    :cond_54
    const/16 v24, 0x0

    #@66f
    goto/16 :goto_12

    #@671
    .line 5065
    :cond_55
    const/16 v58, 0x0

    #@673
    goto/16 :goto_13

    #@675
    .line 5071
    :cond_56
    const/16 v58, 0x0

    #@677
    move/from16 v0, v58

    #@679
    move-object/from16 v1, p0

    #@67b
    iput v0, v1, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@67d
    goto/16 :goto_14

    #@67f
    .line 5077
    .restart local v44    # "scale":I
    :cond_57
    const/16 v58, 0x0

    #@681
    goto/16 :goto_15

    #@683
    .line 5083
    .end local v44    # "scale":I
    :cond_58
    const/16 v58, 0x0

    #@685
    check-cast v58, Landroid/icu/math/BigDecimal;

    #@687
    move-object/from16 v0, p0

    #@689
    move-object/from16 v1, v58

    #@68b
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@68e
    goto/16 :goto_16

    #@690
    .line 5091
    .end local v16    # "digitTotalCount":I
    .end local v18    # "effectiveDecimalPos":I
    .end local v55    # "useSigDig":Z
    :cond_59
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@693
    move-result-object v58

    #@694
    move-object/from16 v0, v58

    #@696
    move-object/from16 v1, p0

    #@698
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@69a
    .line 5092
    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69d
    move-result-object v58

    #@69e
    move-object/from16 v0, v58

    #@6a0
    move-object/from16 v1, p0

    #@6a2
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@6a4
    .line 5093
    const/16 v22, 0x1

    #@6a6
    goto/16 :goto_17

    #@6a8
    .line 5099
    .end local v6    # "affix":Ljava/lang/StringBuilder;
    .end local v9    # "currencySignCnt":I
    .end local v11    # "decimalPos":I
    .end local v14    # "digitLeftCount":I
    .end local v15    # "digitRightCount":I
    .end local v20    # "expSignAlways":Z
    .end local v26    # "incrementPos":I
    .end local v28    # "incrementVal":J
    .end local v31    # "multpl":I
    .end local v37    # "padPos":I
    .end local v43    # "prefix":Ljava/lang/StringBuilder;
    .end local v47    # "sigDigitCount":I
    .end local v48    # "start":I
    .end local v49    # "sub0Limit":I
    .end local v50    # "sub0Start":I
    .end local v51    # "sub2Limit":I
    .end local v52    # "subpart":I
    .end local v53    # "suffix":Ljava/lang/StringBuilder;
    .end local v57    # "zeroDigitCount":I
    :cond_5a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@6ab
    move-result v58

    #@6ac
    if-nez v58, :cond_5b

    #@6ae
    .line 5100
    const-string/jumbo v58, ""

    #@6b1
    move-object/from16 v0, v58

    #@6b3
    move-object/from16 v1, p0

    #@6b5
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@6b7
    move-object/from16 v0, v58

    #@6b9
    move-object/from16 v1, p0

    #@6bb
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@6bd
    .line 5101
    const/16 v58, 0x0

    #@6bf
    move-object/from16 v0, p0

    #@6c1
    move/from16 v1, v58

    #@6c3
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    #@6c6
    .line 5102
    const/16 v58, 0x135

    #@6c8
    move-object/from16 v0, p0

    #@6ca
    move/from16 v1, v58

    #@6cc
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    #@6cf
    .line 5103
    const/16 v58, 0x0

    #@6d1
    move-object/from16 v0, p0

    #@6d3
    move/from16 v1, v58

    #@6d5
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@6d8
    .line 5104
    const/16 v58, 0x154

    #@6da
    move-object/from16 v0, p0

    #@6dc
    move/from16 v1, v58

    #@6de
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@6e1
    .line 5113
    :cond_5b
    if-eqz v22, :cond_5c

    #@6e3
    .line 5114
    move-object/from16 v0, p0

    #@6e5
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@6e7
    move-object/from16 v58, v0

    #@6e9
    move-object/from16 v0, p0

    #@6eb
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@6ed
    move-object/from16 v59, v0

    #@6ef
    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f2
    move-result v58

    #@6f3
    if-eqz v58, :cond_5d

    #@6f5
    .line 5115
    move-object/from16 v0, p0

    #@6f7
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@6f9
    move-object/from16 v58, v0

    #@6fb
    move-object/from16 v0, p0

    #@6fd
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@6ff
    move-object/from16 v59, v0

    #@701
    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@704
    move-result v58

    #@705
    .line 5113
    if-eqz v58, :cond_5d

    #@707
    .line 5116
    :cond_5c
    move-object/from16 v0, p0

    #@709
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@70b
    move-object/from16 v58, v0

    #@70d
    move-object/from16 v0, v58

    #@70f
    move-object/from16 v1, p0

    #@711
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@713
    .line 5117
    new-instance v58, Ljava/lang/StringBuilder;

    #@715
    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    #@718
    const/16 v59, 0x2d

    #@71a
    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71d
    move-result-object v58

    #@71e
    move-object/from16 v0, p0

    #@720
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@722
    move-object/from16 v59, v0

    #@724
    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@727
    move-result-object v58

    #@728
    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72b
    move-result-object v58

    #@72c
    move-object/from16 v0, v58

    #@72e
    move-object/from16 v1, p0

    #@730
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@732
    .line 5119
    :cond_5d
    const/16 v58, 0x0

    #@734
    const/16 v59, 0x0

    #@736
    move-object/from16 v0, p0

    #@738
    move-object/from16 v1, v58

    #@73a
    move-object/from16 v2, v59

    #@73c
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@73f
    .line 5121
    move-object/from16 v0, p1

    #@741
    move-object/from16 v1, p0

    #@743
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@745
    .line 5124
    move-object/from16 v0, p0

    #@747
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@749
    move/from16 v58, v0

    #@74b
    if-eqz v58, :cond_5f

    #@74d
    .line 5127
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    #@750
    move-result-object v54

    #@751
    .line 5128
    .local v54, "theCurrency":Landroid/icu/util/Currency;
    if-eqz v54, :cond_5e

    #@753
    .line 5129
    move-object/from16 v0, p0

    #@755
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@757
    move-object/from16 v58, v0

    #@759
    move-object/from16 v0, v54

    #@75b
    move-object/from16 v1, v58

    #@75d
    invoke-virtual {v0, v1}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    #@760
    move-result-wide v58

    #@761
    move-object/from16 v0, p0

    #@763
    move-wide/from16 v1, v58

    #@765
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(D)V

    #@768
    .line 5130
    move-object/from16 v0, p0

    #@76a
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@76c
    move-object/from16 v58, v0

    #@76e
    move-object/from16 v0, v54

    #@770
    move-object/from16 v1, v58

    #@772
    invoke-virtual {v0, v1}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    #@775
    move-result v10

    #@776
    .line 5131
    .local v10, "d":I
    move-object/from16 v0, p0

    #@778
    invoke-virtual {v0, v10}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@77b
    .line 5132
    move-object/from16 v0, p0

    #@77d
    invoke-direct {v0, v10}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@780
    .line 5136
    .end local v10    # "d":I
    :cond_5e
    move-object/from16 v0, p0

    #@782
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@784
    move/from16 v58, v0

    #@786
    const/16 v59, 0x3

    #@788
    move/from16 v0, v58

    #@78a
    move/from16 v1, v59

    #@78c
    if-ne v0, v1, :cond_5f

    #@78e
    .line 5137
    move-object/from16 v0, p0

    #@790
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@792
    move-object/from16 v58, v0

    #@794
    if-nez v58, :cond_5f

    #@796
    .line 5138
    new-instance v58, Landroid/icu/text/CurrencyPluralInfo;

    #@798
    move-object/from16 v0, p0

    #@79a
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@79c
    move-object/from16 v59, v0

    #@79e
    invoke-virtual/range {v59 .. v59}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@7a1
    move-result-object v59

    #@7a2
    invoke-direct/range {v58 .. v59}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@7a5
    move-object/from16 v0, v58

    #@7a7
    move-object/from16 v1, p0

    #@7a9
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@7ab
    .line 5141
    .end local v54    # "theCurrency":Landroid/icu/util/Currency;
    :cond_5f
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@7ae
    .line 4649
    return-void

    #@7af
    .line 4717
    nop

    #@7b0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "isNegative"    # Z
    .param p4, "isPrefix"    # Z
    .param p5, "affixPat"    # Ljava/lang/String;
    .param p6, "complexCurrencyParsing"    # Z
    .param p7, "type"    # I
    .param p8, "currency"    # [Landroid/icu/util/Currency;

    #@0
    .prologue
    .line 2861
    if-nez p8, :cond_0

    #@2
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    #@4
    if-eqz v0, :cond_1

    #@6
    :cond_0
    move-object v0, p0

    #@7
    move-object v1, p5

    #@8
    move-object v2, p1

    #@9
    move v3, p2

    #@a
    move v4, p7

    #@b
    move-object v5, p8

    #@c
    .line 2862
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->compareComplexAffix(Ljava/lang/String;Ljava/lang/String;II[Landroid/icu/util/Currency;)I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 2861
    :cond_1
    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@13
    if-eqz v0, :cond_2

    #@15
    if-nez p6, :cond_0

    #@17
    .line 2864
    :cond_2
    if-eqz p4, :cond_4

    #@19
    .line 2865
    if-eqz p3, :cond_3

    #@1b
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@1d
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/icu/text/DecimalFormat;->compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I

    #@20
    move-result v0

    #@21
    return v0

    #@22
    :cond_3
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@24
    goto :goto_0

    #@25
    .line 2867
    :cond_4
    if-eqz p3, :cond_5

    #@27
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@29
    :goto_1
    invoke-static {v0, p1, p2}, Landroid/icu/text/DecimalFormat;->compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I

    #@2c
    move-result v0

    #@2d
    return v0

    #@2e
    :cond_5
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@30
    goto :goto_1
.end method

.method private compareComplexAffix(Ljava/lang/String;Ljava/lang/String;II[Landroid/icu/util/Currency;)I
    .locals 15
    .param p1, "affixPat"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "pos"    # I
    .param p4, "type"    # I
    .param p5, "currency"    # [Landroid/icu/util/Currency;

    #@0
    .prologue
    .line 3053
    move/from16 v11, p3

    #@2
    .line 3054
    .local v11, "start":I
    const/4 v4, 0x0

    #@3
    .local v4, "i":I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@6
    move-result v13

    #@7
    if-ge v4, v13, :cond_b

    #@9
    if-ltz p3, :cond_b

    #@b
    .line 3055
    add-int/lit8 v5, v4, 0x1

    #@d
    .end local v4    # "i":I
    .local v5, "i":I
    move-object/from16 v0, p1

    #@f
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v2

    #@13
    .line 3056
    .local v2, "c":C
    const/16 v13, 0x27

    #@15
    if-ne v2, v13, :cond_3

    #@17
    move v4, v5

    #@18
    .line 3058
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_1
    const/16 v13, 0x27

    #@1a
    move-object/from16 v0, p1

    #@1c
    invoke-virtual {v0, v13, v4}, Ljava/lang/String;->indexOf(II)I

    #@1f
    move-result v8

    #@20
    .line 3059
    .local v8, "j":I
    if-ne v8, v4, :cond_1

    #@22
    .line 3060
    const/16 v13, 0x27

    #@24
    move-object/from16 v0, p2

    #@26
    move/from16 v1, p3

    #@28
    invoke-static {v0, v1, v13}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    #@2b
    move-result p3

    #@2c
    .line 3061
    add-int/lit8 v4, v8, 0x1

    #@2e
    .line 3062
    goto :goto_0

    #@2f
    .line 3063
    :cond_1
    if-le v8, v4, :cond_2

    #@31
    .line 3064
    move-object/from16 v0, p1

    #@33
    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v13

    #@37
    move-object/from16 v0, p2

    #@39
    move/from16 v1, p3

    #@3b
    invoke-static {v0, v1, v13}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;ILjava/lang/String;)I

    #@3e
    move-result p3

    #@3f
    .line 3065
    add-int/lit8 v4, v8, 0x1

    #@41
    .line 3066
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@44
    move-result v13

    #@45
    if-ge v4, v13, :cond_0

    #@47
    move-object/from16 v0, p1

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v13

    #@4d
    const/16 v14, 0x27

    #@4f
    if-ne v13, v14, :cond_0

    #@51
    .line 3067
    const/16 v13, 0x27

    #@53
    move-object/from16 v0, p2

    #@55
    move/from16 v1, p3

    #@57
    invoke-static {v0, v1, v13}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    #@5a
    move-result p3

    #@5b
    .line 3068
    add-int/lit8 v4, v4, 0x1

    #@5d
    .line 3066
    goto :goto_1

    #@5e
    .line 3076
    :cond_2
    new-instance v13, Ljava/lang/RuntimeException;

    #@60
    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    #@63
    throw v13

    #@64
    .line 3082
    .end local v4    # "i":I
    .end local v8    # "j":I
    .restart local v5    # "i":I
    :cond_3
    sparse-switch v2, :sswitch_data_0

    #@67
    .line 3140
    :goto_2
    move-object/from16 v0, p2

    #@69
    move/from16 v1, p3

    #@6b
    invoke-static {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    #@6e
    move-result p3

    #@6f
    .line 3141
    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@72
    move-result v13

    #@73
    if-eqz v13, :cond_c

    #@75
    .line 3142
    move-object/from16 v0, p1

    #@77
    invoke-static {v0, v5}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    #@7a
    move-result v4

    #@7b
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@7c
    .line 3089
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@7f
    move-result v13

    #@80
    if-ge v5, v13, :cond_7

    #@82
    move-object/from16 v0, p1

    #@84
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@87
    move-result v13

    #@88
    const/16 v14, 0xa4

    #@8a
    if-ne v13, v14, :cond_7

    #@8c
    const/4 v6, 0x1

    #@8d
    .line 3090
    .local v6, "intl":Z
    :goto_3
    if-eqz v6, :cond_d

    #@8f
    .line 3091
    add-int/lit8 v4, v5, 0x1

    #@91
    .line 3093
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@94
    move-result v13

    #@95
    if-ge v4, v13, :cond_8

    #@97
    move-object/from16 v0, p1

    #@99
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@9c
    move-result v13

    #@9d
    const/16 v14, 0xa4

    #@9f
    if-ne v13, v14, :cond_8

    #@a1
    const/4 v9, 0x1

    #@a2
    .line 3094
    .local v9, "plural":Z
    :goto_5
    if-eqz v9, :cond_4

    #@a4
    .line 3095
    add-int/lit8 v4, v4, 0x1

    #@a6
    .line 3096
    const/4 v6, 0x0

    #@a7
    .line 3101
    .end local v6    # "intl":Z
    :cond_4
    sget-object v13, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@a9
    invoke-virtual {p0, v13}, Landroid/icu/text/DecimalFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@ac
    move-result-object v12

    #@ad
    .line 3102
    .local v12, "uloc":Landroid/icu/util/ULocale;
    if-nez v12, :cond_5

    #@af
    .line 3104
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@b1
    sget-object v14, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@b3
    invoke-virtual {v13, v14}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@b6
    move-result-object v12

    #@b7
    .line 3107
    :cond_5
    new-instance v10, Ljava/text/ParsePosition;

    #@b9
    move/from16 v0, p3

    #@bb
    invoke-direct {v10, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@be
    .line 3109
    .local v10, "ppos":Ljava/text/ParsePosition;
    move-object/from16 v0, p2

    #@c0
    move/from16 v1, p4

    #@c2
    invoke-static {v12, v0, v1, v10}, Landroid/icu/util/Currency;->parse(Landroid/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;

    #@c5
    move-result-object v7

    #@c6
    .line 3112
    .local v7, "iso":Ljava/lang/String;
    if-eqz v7, :cond_a

    #@c8
    .line 3113
    if-eqz p5, :cond_9

    #@ca
    .line 3114
    invoke-static {v7}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@cd
    move-result-object v13

    #@ce
    const/4 v14, 0x0

    #@cf
    aput-object v13, p5, v14

    #@d1
    .line 3125
    :cond_6
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@d4
    move-result p3

    #@d5
    goto/16 :goto_0

    #@d7
    .line 3089
    .end local v4    # "i":I
    .end local v7    # "iso":Ljava/lang/String;
    .end local v9    # "plural":Z
    .end local v10    # "ppos":Ljava/text/ParsePosition;
    .end local v12    # "uloc":Landroid/icu/util/ULocale;
    .restart local v5    # "i":I
    :cond_7
    const/4 v6, 0x0

    #@d8
    goto :goto_3

    #@d9
    .line 3093
    .end local v5    # "i":I
    .restart local v4    # "i":I
    .restart local v6    # "intl":Z
    :cond_8
    const/4 v9, 0x0

    #@da
    goto :goto_5

    #@db
    .line 3119
    .end local v6    # "intl":Z
    .restart local v7    # "iso":Ljava/lang/String;
    .restart local v9    # "plural":Z
    .restart local v10    # "ppos":Ljava/text/ParsePosition;
    .restart local v12    # "uloc":Landroid/icu/util/ULocale;
    :cond_9
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getEffectiveCurrency()Landroid/icu/util/Currency;

    #@de
    move-result-object v3

    #@df
    .line 3120
    .local v3, "effectiveCurr":Landroid/icu/util/Currency;
    invoke-virtual {v3}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@e2
    move-result-object v13

    #@e3
    invoke-virtual {v7, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@e6
    move-result v13

    #@e7
    if-eqz v13, :cond_6

    #@e9
    .line 3121
    const/16 p3, -0x1

    #@eb
    .line 3122
    goto/16 :goto_0

    #@ed
    .line 3127
    .end local v3    # "effectiveCurr":Landroid/icu/util/Currency;
    :cond_a
    const/16 p3, -0x1

    #@ef
    goto/16 :goto_0

    #@f1
    .line 3131
    .end local v4    # "i":I
    .end local v7    # "iso":Ljava/lang/String;
    .end local v9    # "plural":Z
    .end local v10    # "ppos":Ljava/text/ParsePosition;
    .end local v12    # "uloc":Landroid/icu/util/ULocale;
    .restart local v5    # "i":I
    :sswitch_1
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@f3
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    #@f6
    move-result v2

    #@f7
    goto/16 :goto_2

    #@f9
    .line 3134
    :sswitch_2
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@fb
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    #@fe
    move-result v2

    #@ff
    goto/16 :goto_2

    #@101
    .line 3137
    :sswitch_3
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@103
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    #@106
    move-result v2

    #@107
    goto/16 :goto_2

    #@109
    .line 3146
    .end local v2    # "c":C
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_b
    sub-int v13, p3, v11

    #@10b
    return v13

    #@10c
    .end local v4    # "i":I
    .restart local v2    # "c":C
    .restart local v5    # "i":I
    :cond_c
    move v4, v5

    #@10d
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    #@10f
    .end local v4    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "intl":Z
    :cond_d
    move v4, v5

    #@110
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_4

    #@111
    .line 3082
    nop

    #@112
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2d -> :sswitch_3
        0xa4 -> :sswitch_0
        0x2030 -> :sswitch_2
    .end sparse-switch
.end method

.method private static compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 12
    .param p0, "affix"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    .line 2919
    move v7, p2

    #@2
    .line 2923
    .local v7, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v9

    #@6
    const/4 v10, 0x1

    #@7
    if-le v9, v10, :cond_4

    #@9
    invoke-static {p0}, Landroid/icu/text/DecimalFormat;->trimMarksFromAffix(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v8

    #@d
    .line 2924
    .local v8, "trimmedAffix":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :cond_0
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@11
    move-result v9

    #@12
    if-ge v1, v9, :cond_b

    #@14
    .line 2925
    invoke-static {v8, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@17
    move-result v0

    #@18
    .line 2926
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1b
    move-result v3

    #@1c
    .line 2927
    .local v3, "len":I
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@1f
    move-result v9

    #@20
    if-eqz v9, :cond_8

    #@22
    .line 2932
    const/4 v4, 0x0

    #@23
    .line 2933
    .local v4, "literalMatch":Z
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@26
    move-result v9

    #@27
    if-ge p2, v9, :cond_2

    #@29
    .line 2934
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@2c
    move-result v2

    #@2d
    .line 2935
    .local v2, "ic":I
    if-ne v2, v0, :cond_6

    #@2f
    .line 2936
    const/4 v4, 0x1

    #@30
    .line 2937
    add-int/2addr v1, v3

    #@31
    .line 2938
    add-int/2addr p2, v3

    #@32
    .line 2939
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@35
    move-result v9

    #@36
    if-ne v1, v9, :cond_5

    #@38
    .line 2955
    .end local v2    # "ic":I
    :cond_2
    :goto_3
    invoke-static {v8, v1}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    #@3b
    move-result v1

    #@3c
    .line 2959
    move v6, p2

    #@3d
    .line 2960
    .local v6, "s":I
    invoke-static {p1, p2}, Landroid/icu/text/DecimalFormat;->skipUWhiteSpace(Ljava/lang/String;I)I

    #@40
    move-result p2

    #@41
    .line 2961
    if-ne p2, v6, :cond_3

    #@43
    if-eqz v4, :cond_7

    #@45
    .line 2967
    :cond_3
    invoke-static {v8, v1}, Landroid/icu/text/DecimalFormat;->skipUWhiteSpace(Ljava/lang/String;I)I

    #@48
    move-result v1

    #@49
    goto :goto_1

    #@4a
    .line 2923
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v4    # "literalMatch":Z
    .end local v6    # "s":I
    .end local v8    # "trimmedAffix":Ljava/lang/String;
    :cond_4
    move-object v8, p0

    #@4b
    .restart local v8    # "trimmedAffix":Ljava/lang/String;
    goto :goto_0

    #@4c
    .line 2942
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    .restart local v2    # "ic":I
    .restart local v3    # "len":I
    .restart local v4    # "literalMatch":Z
    :cond_5
    invoke-static {v8, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@4f
    move-result v0

    #@50
    .line 2943
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@53
    move-result v3

    #@54
    .line 2944
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@57
    move-result v9

    #@58
    if-nez v9, :cond_1

    #@5a
    goto :goto_3

    #@5b
    .line 2947
    :cond_6
    invoke-static {v2}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    #@5e
    move-result v9

    #@5f
    if-eqz v9, :cond_2

    #@61
    .line 2948
    add-int/lit8 p2, p2, 0x1

    #@63
    goto :goto_2

    #@64
    .line 2962
    .end local v2    # "ic":I
    .restart local v6    # "s":I
    :cond_7
    return v11

    #@65
    .line 2969
    .end local v4    # "literalMatch":Z
    .end local v6    # "s":I
    :cond_8
    const/4 v5, 0x0

    #@66
    .line 2970
    .local v5, "match":Z
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@69
    move-result v9

    #@6a
    if-ge p2, v9, :cond_a

    #@6c
    .line 2971
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@6f
    move-result v2

    #@70
    .line 2972
    .restart local v2    # "ic":I
    if-nez v5, :cond_9

    #@72
    invoke-static {v2, v0}, Landroid/icu/text/DecimalFormat;->equalWithSignCompatibility(II)Z

    #@75
    move-result v9

    #@76
    if-eqz v9, :cond_9

    #@78
    .line 2973
    add-int/2addr v1, v3

    #@79
    .line 2974
    add-int/2addr p2, v3

    #@7a
    .line 2975
    const/4 v5, 0x1

    #@7b
    goto :goto_4

    #@7c
    .line 2976
    :cond_9
    invoke-static {v2}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    #@7f
    move-result v9

    #@80
    if-eqz v9, :cond_a

    #@82
    .line 2977
    add-int/lit8 p2, p2, 0x1

    #@84
    goto :goto_4

    #@85
    .line 2982
    .end local v2    # "ic":I
    :cond_a
    if-nez v5, :cond_0

    #@87
    .line 2983
    return v11

    #@88
    .line 2987
    .end local v0    # "c":I
    .end local v3    # "len":I
    .end local v5    # "match":Z
    :cond_b
    sub-int v9, p2, v7

    #@8a
    return v9
.end method

.method private countCodePoints(Ljava/lang/String;II)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 2800
    const/4 v0, 0x0

    #@1
    .line 2801
    .local v0, "count":I
    move v1, p2

    #@2
    .line 2802
    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_0

    #@4
    .line 2803
    add-int/lit8 v0, v0, 0x1

    #@6
    .line 2804
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@9
    move-result v2

    #@a
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    goto :goto_0

    #@10
    .line 2806
    :cond_0
    return v0
.end method

.method private create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "inputSymbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p3, "info"    # Landroid/icu/text/CurrencyPluralInfo;
    .param p4, "inputStyle"    # I

    #@0
    .prologue
    .line 746
    const/4 v1, 0x6

    #@1
    if-eq p4, v1, :cond_0

    #@3
    .line 747
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->createFromPatternAndSymbols(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    #@6
    .line 762
    :goto_0
    iput p4, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@8
    .line 745
    return-void

    #@9
    .line 750
    :cond_0
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    #@f
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@11
    .line 751
    iput-object p3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@13
    .line 758
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@15
    const-string/jumbo v2, "other"

    #@18
    invoke-virtual {v1, v2}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 759
    .local v0, "currencyPluralPatternForOther":Ljava/lang/String;
    const/4 v1, 0x0

    #@1d
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@20
    .line 760
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    #@23
    goto :goto_0
.end method

.method private createFromPatternAndSymbols(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "inputSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 696
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    #@7
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@9
    .line 697
    const/16 v0, 0xa4

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v0

    #@f
    if-ltz v0, :cond_0

    #@11
    .line 700
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    #@14
    .line 702
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@17
    .line 703
    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@19
    const/4 v1, 0x3

    #@1a
    if-ne v0, v1, :cond_1

    #@1c
    .line 704
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    #@1e
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@20
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@27
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@29
    .line 694
    :goto_0
    return-void

    #@2a
    .line 706
    :cond_1
    const/4 v0, 0x0

    #@2b
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    #@2e
    goto :goto_0
.end method

.method private static equalWithSignCompatibility(II)Z
    .locals 1
    .param p0, "lhs"    # I
    .param p1, "rhs"    # I

    #@0
    .prologue
    .line 2991
    if-eq p0, p1, :cond_1

    #@2
    .line 2992
    sget-object v0, Landroid/icu/text/DecimalFormat;->minusSigns:Landroid/icu/text/UnicodeSet;

    #@4
    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    sget-object v0, Landroid/icu/text/DecimalFormat;->minusSigns:Landroid/icu/text/UnicodeSet;

    #@c
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@f
    move-result v0

    #@10
    .line 2991
    if-nez v0, :cond_1

    #@12
    .line 2993
    :cond_0
    sget-object v0, Landroid/icu/text/DecimalFormat;->plusSigns:Landroid/icu/text/UnicodeSet;

    #@14
    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    sget-object v0, Landroid/icu/text/DecimalFormat;->plusSigns:Landroid/icu/text/UnicodeSet;

    #@1c
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@1f
    move-result v0

    #@20
    .line 2991
    :goto_0
    return v0

    #@21
    :cond_1
    const/4 v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2993
    :cond_2
    const/4 v0, 0x0

    #@24
    goto :goto_0
.end method

.method private equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pat1"    # Ljava/lang/String;
    .param p2, "pat2"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3939
    if-eqz p1, :cond_0

    #@4
    if-nez p2, :cond_2

    #@6
    .line 3940
    :cond_0
    if-nez p1, :cond_1

    #@8
    if-nez p2, :cond_1

    #@a
    :goto_0
    return v0

    #@b
    :cond_1
    move v0, v1

    #@c
    goto :goto_0

    #@d
    .line 3943
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_3

    #@13
    .line 3944
    return v0

    #@14
    .line 3946
    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0, p2}, Landroid/icu/text/DecimalFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method private expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V
    .locals 16
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pluralCount"    # Ljava/lang/String;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "doFormat"    # Z

    #@0
    .prologue
    .line 4095
    const/4 v13, 0x0

    #@1
    move-object/from16 v0, p3

    #@3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    #@6
    .line 4096
    const/4 v4, 0x0

    #@7
    .local v4, "i":I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@a
    move-result v13

    #@b
    if-ge v4, v13, :cond_d

    #@d
    .line 4097
    add-int/lit8 v5, v4, 0x1

    #@f
    .end local v4    # "i":I
    .local v5, "i":I
    move-object/from16 v0, p1

    #@11
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v2

    #@15
    .line 4098
    .local v2, "c":C
    const/16 v13, 0x27

    #@17
    if-ne v2, v13, :cond_3

    #@19
    move v4, v5

    #@1a
    .line 4100
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_1
    const/16 v13, 0x27

    #@1c
    move-object/from16 v0, p1

    #@1e
    invoke-virtual {v0, v13, v4}, Ljava/lang/String;->indexOf(II)I

    #@21
    move-result v8

    #@22
    .line 4101
    .local v8, "j":I
    if-ne v8, v4, :cond_1

    #@24
    .line 4102
    const/16 v13, 0x27

    #@26
    move-object/from16 v0, p3

    #@28
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2b
    .line 4103
    add-int/lit8 v4, v8, 0x1

    #@2d
    .line 4104
    goto :goto_0

    #@2e
    .line 4105
    :cond_1
    if-le v8, v4, :cond_2

    #@30
    .line 4106
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v13

    #@36
    move-object/from16 v0, p3

    #@38
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3b
    .line 4107
    add-int/lit8 v4, v8, 0x1

    #@3d
    .line 4108
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@40
    move-result v13

    #@41
    if-ge v4, v13, :cond_0

    #@43
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v13

    #@49
    const/16 v14, 0x27

    #@4b
    if-ne v13, v14, :cond_0

    #@4d
    .line 4109
    const/16 v13, 0x27

    #@4f
    move-object/from16 v0, p3

    #@51
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@54
    .line 4110
    add-int/lit8 v4, v4, 0x1

    #@56
    .line 4108
    goto :goto_1

    #@57
    .line 4118
    :cond_2
    new-instance v13, Ljava/lang/RuntimeException;

    #@59
    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    #@5c
    throw v13

    #@5d
    .line 4124
    .end local v4    # "i":I
    .end local v8    # "j":I
    .restart local v5    # "i":I
    :cond_3
    sparse-switch v2, :sswitch_data_0

    #@60
    .line 4198
    :goto_2
    move-object/from16 v0, p3

    #@62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@65
    move v4, v5

    #@66
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@67
    .line 4129
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@6a
    move-result v13

    #@6b
    if-ge v5, v13, :cond_6

    #@6d
    move-object/from16 v0, p1

    #@6f
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@72
    move-result v13

    #@73
    const/16 v14, 0xa4

    #@75
    if-ne v13, v14, :cond_6

    #@77
    const/4 v6, 0x1

    #@78
    .line 4130
    .local v6, "intl":Z
    :goto_3
    const/4 v10, 0x0

    #@79
    .line 4131
    .local v10, "plural":Z
    if-eqz v6, :cond_e

    #@7b
    .line 4132
    add-int/lit8 v4, v5, 0x1

    #@7d
    .line 4133
    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@80
    move-result v13

    #@81
    if-ge v4, v13, :cond_4

    #@83
    move-object/from16 v0, p1

    #@85
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@88
    move-result v13

    #@89
    const/16 v14, 0xa4

    #@8b
    if-ne v13, v14, :cond_4

    #@8d
    .line 4134
    const/4 v10, 0x1

    #@8e
    .line 4135
    const/4 v6, 0x0

    #@8f
    .line 4136
    .local v6, "intl":Z
    add-int/lit8 v4, v4, 0x1

    #@91
    .line 4139
    .end local v6    # "intl":Z
    :cond_4
    :goto_4
    const/4 v12, 0x0

    #@92
    .line 4140
    .local v12, "s":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    #@95
    move-result-object v3

    #@96
    .line 4141
    .local v3, "currency":Landroid/icu/util/Currency;
    if-eqz v3, :cond_b

    #@98
    .line 4145
    if-eqz v10, :cond_7

    #@9a
    if-eqz p2, :cond_7

    #@9c
    .line 4146
    const/4 v13, 0x1

    #@9d
    new-array v7, v13, [Z

    #@9f
    .line 4147
    .local v7, "isChoiceFormat":[Z
    move-object/from16 v0, p0

    #@a1
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@a3
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@a6
    move-result-object v13

    #@a7
    const/4 v14, 0x2

    #@a8
    move-object/from16 v0, p2

    #@aa
    invoke-virtual {v3, v13, v14, v0, v7}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    #@ad
    move-result-object v12

    #@ae
    .line 4185
    .end local v7    # "isChoiceFormat":[Z
    .local v12, "s":Ljava/lang/String;
    :cond_5
    :goto_5
    move-object/from16 v0, p3

    #@b0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b3
    goto/16 :goto_0

    #@b5
    .line 4129
    .end local v3    # "currency":Landroid/icu/util/Currency;
    .end local v4    # "i":I
    .end local v10    # "plural":Z
    .end local v12    # "s":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_6
    const/4 v6, 0x0

    #@b6
    goto :goto_3

    #@b7
    .line 4149
    .end local v5    # "i":I
    .restart local v3    # "currency":Landroid/icu/util/Currency;
    .restart local v4    # "i":I
    .restart local v10    # "plural":Z
    .local v12, "s":Ljava/lang/String;
    :cond_7
    if-nez v6, :cond_a

    #@b9
    .line 4150
    const/4 v13, 0x1

    #@ba
    new-array v7, v13, [Z

    #@bc
    .line 4151
    .restart local v7    # "isChoiceFormat":[Z
    move-object/from16 v0, p0

    #@be
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@c0
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@c3
    move-result-object v13

    #@c4
    const/4 v14, 0x0

    #@c5
    invoke-virtual {v3, v13, v14, v7}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    #@c8
    move-result-object v12

    #@c9
    .line 4153
    .local v12, "s":Ljava/lang/String;
    const/4 v13, 0x0

    #@ca
    aget-boolean v13, v7, v13

    #@cc
    if-eqz v13, :cond_5

    #@ce
    .line 4157
    if-nez p4, :cond_9

    #@d0
    .line 4161
    move-object/from16 v0, p0

    #@d2
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    #@d4
    if-nez v13, :cond_8

    #@d6
    .line 4162
    new-instance v13, Ljava/text/ChoiceFormat;

    #@d8
    invoke-direct {v13, v12}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    #@db
    move-object/from16 v0, p0

    #@dd
    iput-object v13, v0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    #@df
    .line 4170
    :cond_8
    const/16 v13, 0xa4

    #@e1
    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@e4
    move-result-object v12

    #@e5
    goto :goto_5

    #@e6
    .line 4172
    :cond_9
    new-instance v11, Ljava/text/FieldPosition;

    #@e8
    const/4 v13, 0x0

    #@e9
    invoke-direct {v11, v13}, Ljava/text/FieldPosition;-><init>(I)V

    #@ec
    .line 4173
    .local v11, "pos":Ljava/text/FieldPosition;
    move-object/from16 v0, p0

    #@ee
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-object v14, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@f4
    invoke-virtual {v14}, Landroid/icu/text/DigitList;->getDouble()D

    #@f7
    move-result-wide v14

    #@f8
    move-object/from16 v0, p3

    #@fa
    invoke-virtual {v13, v14, v15, v0, v11}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@fd
    goto/16 :goto_0

    #@ff
    .line 4178
    .end local v7    # "isChoiceFormat":[Z
    .end local v11    # "pos":Ljava/text/FieldPosition;
    .local v12, "s":Ljava/lang/String;
    :cond_a
    invoke-virtual {v3}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@102
    move-result-object v12

    #@103
    .local v12, "s":Ljava/lang/String;
    goto :goto_5

    #@104
    .line 4181
    .local v12, "s":Ljava/lang/String;
    :cond_b
    if-eqz v6, :cond_c

    #@106
    move-object/from16 v0, p0

    #@108
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@10a
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@10d
    move-result-object v12

    #@10e
    .local v12, "s":Ljava/lang/String;
    goto :goto_5

    #@10f
    .line 4182
    .local v12, "s":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    #@111
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@113
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@116
    move-result-object v12

    #@117
    .local v12, "s":Ljava/lang/String;
    goto :goto_5

    #@118
    .line 4188
    .end local v3    # "currency":Landroid/icu/util/Currency;
    .end local v4    # "i":I
    .end local v10    # "plural":Z
    .end local v12    # "s":Ljava/lang/String;
    .restart local v5    # "i":I
    :sswitch_1
    move-object/from16 v0, p0

    #@11a
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@11c
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    #@11f
    move-result v2

    #@120
    goto/16 :goto_2

    #@122
    .line 4191
    :sswitch_2
    move-object/from16 v0, p0

    #@124
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@126
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    #@129
    move-result v2

    #@12a
    goto/16 :goto_2

    #@12c
    .line 4194
    :sswitch_3
    move-object/from16 v0, p0

    #@12e
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@130
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getMinusString()Ljava/lang/String;

    #@133
    move-result-object v9

    #@134
    .line 4195
    .local v9, "minusString":Ljava/lang/String;
    move-object/from16 v0, p3

    #@136
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@139
    move v4, v5

    #@13a
    .line 4196
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    #@13c
    .line 4094
    .end local v2    # "c":C
    .end local v9    # "minusString":Ljava/lang/String;
    :cond_d
    return-void

    #@13d
    .end local v4    # "i":I
    .restart local v2    # "c":C
    .restart local v5    # "i":I
    .local v6, "intl":Z
    .restart local v10    # "plural":Z
    :cond_e
    move v4, v5

    #@13e
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_4

    #@140
    .line 4124
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2d -> :sswitch_3
        0xa4 -> :sswitch_0
        0x2030 -> :sswitch_2
    .end sparse-switch
.end method

.method private expandAffixAdjustWidth(Ljava/lang/String;)V
    .locals 3
    .param p1, "pluralCount"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4641
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    #@3
    .line 4644
    iget v0, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@5
    if-lez v0, :cond_0

    #@7
    .line 4645
    iget v0, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@9
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    add-int/2addr v1, v2

    #@16
    add-int/2addr v0, v1

    #@17
    iput v0, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@19
    .line 4638
    :cond_0
    return-void
.end method

.method private expandAffixes(Ljava/lang/String;)V
    .locals 3
    .param p1, "pluralCount"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4038
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    #@4
    .line 4041
    new-instance v0, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 4042
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 4043
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@f
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    #@12
    .line 4044
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@18
    .line 4046
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 4047
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@1e
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    #@21
    .line 4048
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@27
    .line 4050
    :cond_1
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@29
    if-eqz v1, :cond_2

    #@2b
    .line 4051
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@2d
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    #@30
    .line 4052
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@36
    .line 4054
    :cond_2
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 4055
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@3c
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    #@3f
    .line 4056
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@45
    .line 4035
    :cond_3
    return-void
.end method

.method private format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 29
    .param p1, "number"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p5, "parseAttr"    # Z

    #@0
    .prologue
    .line 830
    const/4 v6, 0x0

    #@1
    move-object/from16 v0, p4

    #@3
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@6
    .line 831
    const/4 v6, 0x0

    #@7
    move-object/from16 v0, p4

    #@9
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@c
    .line 833
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_5

    #@12
    .line 834
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    #@15
    move-result v6

    #@16
    if-nez v6, :cond_3

    #@18
    .line 835
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@1b
    move-result v6

    #@1c
    move-object/from16 v0, p4

    #@1e
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@21
    .line 840
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@23
    iget-object v6, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@25
    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    move-object/from16 v0, p3

    #@2b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    .line 843
    if-eqz p5, :cond_1

    #@30
    .line 844
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@32
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@35
    move-result v7

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@3a
    invoke-virtual {v9}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@41
    move-result v9

    #@42
    sub-int/2addr v7, v9

    #@43
    .line 845
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@46
    move-result v9

    #@47
    .line 844
    move-object/from16 v0, p0

    #@49
    invoke-direct {v0, v6, v7, v9}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@4c
    .line 847
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    #@4f
    move-result v6

    #@50
    if-nez v6, :cond_4

    #@52
    .line 848
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@55
    move-result v6

    #@56
    move-object/from16 v0, p4

    #@58
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@5b
    .line 853
    :cond_2
    :goto_1
    const/4 v6, 0x0

    #@5c
    const/4 v7, 0x0

    #@5d
    move-object/from16 v0, p0

    #@5f
    move-object/from16 v1, p3

    #@61
    move-object/from16 v2, p4

    #@63
    invoke-direct {v0, v1, v2, v6, v7}, Landroid/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    #@66
    .line 854
    return-object p3

    #@67
    .line 836
    :cond_3
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@6a
    move-result-object v6

    #@6b
    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@6d
    if-ne v6, v7, :cond_0

    #@6f
    .line 837
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@72
    move-result v6

    #@73
    move-object/from16 v0, p4

    #@75
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@78
    goto :goto_0

    #@79
    .line 849
    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@7c
    move-result-object v6

    #@7d
    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@7f
    if-ne v6, v7, :cond_2

    #@81
    .line 850
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@84
    move-result v6

    #@85
    move-object/from16 v0, p4

    #@87
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@8a
    goto :goto_1

    #@8b
    .line 859
    :cond_5
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/DecimalFormat;->multiply(D)D

    #@8e
    move-result-wide p1

    #@8f
    .line 860
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/DecimalFormat;->isNegative(D)Z

    #@92
    move-result v8

    #@93
    .line 861
    .local v8, "isNegative":Z
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/DecimalFormat;->round(D)D

    #@96
    move-result-wide p1

    #@97
    .line 863
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    #@9a
    move-result v6

    #@9b
    if-eqz v6, :cond_b

    #@9d
    .line 864
    const/4 v9, 0x1

    #@9e
    move-object/from16 v6, p0

    #@a0
    move-object/from16 v7, p3

    #@a2
    move-object/from16 v10, p4

    #@a4
    move/from16 v11, p5

    #@a6
    invoke-direct/range {v6 .. v11}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    #@a9
    move-result v27

    #@aa
    .line 866
    .local v27, "prefixLen":I
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    #@ad
    move-result v6

    #@ae
    if-nez v6, :cond_9

    #@b0
    .line 867
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@b3
    move-result v6

    #@b4
    move-object/from16 v0, p4

    #@b6
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@b9
    .line 873
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    #@bb
    iget-object v6, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@bd
    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@c0
    move-result-object v6

    #@c1
    move-object/from16 v0, p3

    #@c3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c6
    .line 874
    if-eqz p5, :cond_7

    #@c8
    .line 875
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@ca
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@cd
    move-result v7

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@d2
    invoke-virtual {v9}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@d5
    move-result-object v9

    #@d6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@d9
    move-result v9

    #@da
    sub-int/2addr v7, v9

    #@db
    .line 876
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@de
    move-result v9

    #@df
    .line 875
    move-object/from16 v0, p0

    #@e1
    invoke-direct {v0, v6, v7, v9}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@e4
    .line 878
    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    #@e7
    move-result v6

    #@e8
    if-nez v6, :cond_a

    #@ea
    .line 879
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@ed
    move-result v6

    #@ee
    move-object/from16 v0, p4

    #@f0
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@f3
    .line 884
    :cond_8
    :goto_3
    const/4 v9, 0x0

    #@f4
    move-object/from16 v6, p0

    #@f6
    move-object/from16 v7, p3

    #@f8
    move-object/from16 v10, p4

    #@fa
    move/from16 v11, p5

    #@fc
    invoke-direct/range {v6 .. v11}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    #@ff
    move-result v28

    #@100
    .line 886
    .local v28, "suffixLen":I
    move-object/from16 v0, p0

    #@102
    move-object/from16 v1, p3

    #@104
    move-object/from16 v2, p4

    #@106
    move/from16 v3, v27

    #@108
    move/from16 v4, v28

    #@10a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    #@10d
    .line 887
    return-object p3

    #@10e
    .line 868
    .end local v28    # "suffixLen":I
    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@111
    move-result-object v6

    #@112
    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@114
    if-ne v6, v7, :cond_6

    #@116
    .line 869
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@119
    move-result v6

    #@11a
    move-object/from16 v0, p4

    #@11c
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@11f
    goto :goto_2

    #@120
    .line 880
    :cond_a
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@123
    move-result-object v6

    #@124
    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@126
    if-ne v6, v7, :cond_8

    #@128
    .line 881
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@12b
    move-result v6

    #@12c
    move-object/from16 v0, p4

    #@12e
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@131
    goto :goto_3

    #@132
    .line 890
    .end local v27    # "prefixLen":I
    :cond_b
    const/4 v6, 0x0

    #@133
    move-object/from16 v0, p0

    #@135
    invoke-direct {v0, v6}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    #@138
    move-result v26

    #@139
    .line 903
    .local v26, "precision":I
    move-object/from16 v0, p0

    #@13b
    iget-boolean v6, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@13d
    if-eqz v6, :cond_c

    #@13f
    if-lez v26, :cond_c

    #@141
    const-wide/16 v6, 0x0

    #@143
    cmpl-double v6, p1, v6

    #@145
    if-eqz v6, :cond_c

    #@147
    move-object/from16 v0, p0

    #@149
    iget v6, v0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@14b
    const/4 v7, 0x6

    #@14c
    if-eq v6, v7, :cond_c

    #@14e
    .line 904
    rsub-int/lit8 v6, v26, 0x1

    #@150
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    #@153
    move-result-wide v10

    #@154
    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D

    #@157
    move-result-wide v10

    #@158
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    #@15b
    move-result-wide v10

    #@15c
    double-to-int v7, v10

    #@15d
    add-int v25, v6, v7

    #@15f
    .line 905
    .local v25, "log10RoundingIncr":I
    const-wide/16 v14, 0x0

    #@161
    .line 906
    .local v14, "roundingIncReciprocal":D
    const-wide/16 v12, 0x0

    #@163
    .line 907
    .local v12, "roundingInc":D
    if-gez v25, :cond_d

    #@165
    .line 909
    sget-object v6, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@167
    move/from16 v0, v25

    #@169
    neg-int v7, v0

    #@16a
    invoke-virtual {v6, v7}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    #@16d
    move-result-object v6

    #@16e
    invoke-virtual {v6}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@171
    move-result-wide v14

    #@172
    .line 914
    :goto_4
    move-object/from16 v0, p0

    #@174
    iget v0, v0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@176
    move/from16 v16, v0

    #@178
    move-wide/from16 v10, p1

    #@17a
    move/from16 v17, v8

    #@17c
    invoke-static/range {v10 .. v17}, Landroid/icu/text/DecimalFormat;->round(DDDIZ)D

    #@17f
    move-result-wide p1

    #@180
    .line 920
    .end local v12    # "roundingInc":D
    .end local v14    # "roundingIncReciprocal":D
    .end local v25    # "log10RoundingIncr":I
    :cond_c
    move-object/from16 v0, p0

    #@182
    iget-object v7, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@184
    monitor-enter v7

    #@185
    .line 921
    :try_start_0
    move-object/from16 v0, p0

    #@187
    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@189
    move-object/from16 v0, p0

    #@18b
    iget-boolean v6, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@18d
    if-nez v6, :cond_f

    #@18f
    .line 922
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@192
    move-result v6

    #@193
    if-eqz v6, :cond_e

    #@195
    const/4 v6, 0x0

    #@196
    .line 921
    :goto_5
    move-wide/from16 v0, p1

    #@198
    move/from16 v2, v26

    #@19a
    invoke-virtual {v9, v0, v1, v2, v6}, Landroid/icu/text/DigitList;->set(DIZ)V

    #@19d
    .line 923
    const/16 v23, 0x0

    #@19f
    move-object/from16 v17, p0

    #@1a1
    move-wide/from16 v18, p1

    #@1a3
    move-object/from16 v20, p3

    #@1a5
    move-object/from16 v21, p4

    #@1a7
    move/from16 v22, v8

    #@1a9
    move/from16 v24, p5

    #@1ab
    invoke-direct/range {v17 .. v24}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1ae
    move-result-object v6

    #@1af
    monitor-exit v7

    #@1b0
    return-object v6

    #@1b1
    .line 912
    .restart local v12    # "roundingInc":D
    .restart local v14    # "roundingIncReciprocal":D
    .restart local v25    # "log10RoundingIncr":I
    :cond_d
    sget-object v6, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@1b3
    move/from16 v0, v25

    #@1b5
    invoke-virtual {v6, v0}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    #@1b8
    move-result-object v6

    #@1b9
    invoke-virtual {v6}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@1bc
    move-result-wide v12

    #@1bd
    goto :goto_4

    #@1be
    .line 922
    .end local v12    # "roundingInc":D
    .end local v14    # "roundingIncReciprocal":D
    .end local v25    # "log10RoundingIncr":I
    :cond_e
    const/4 v6, 0x1

    #@1bf
    goto :goto_5

    #@1c0
    .line 921
    :cond_f
    const/4 v6, 0x0

    #@1c1
    goto :goto_5

    #@1c2
    .line 920
    :catchall_0
    move-exception v6

    #@1c3
    monitor-exit v7

    #@1c4
    throw v6
.end method

.method private format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 17
    .param p1, "number"    # J
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p5, "parseAttr"    # Z

    #@0
    .prologue
    .line 1080
    const/4 v5, 0x0

    #@1
    move-object/from16 v0, p4

    #@3
    invoke-virtual {v0, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@6
    .line 1081
    const/4 v5, 0x0

    #@7
    move-object/from16 v0, p4

    #@9
    invoke-virtual {v0, v5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@c
    .line 1085
    move-object/from16 v0, p0

    #@e
    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 1086
    invoke-static/range {p1 .. p2}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    #@15
    move-result-object v5

    #@16
    move-object/from16 v0, p0

    #@18
    move-object/from16 v1, p3

    #@1a
    move-object/from16 v2, p4

    #@1c
    invoke-virtual {v0, v5, v1, v2}, Landroid/icu/text/DecimalFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@1f
    move-result-object v5

    #@20
    return-object v5

    #@21
    .line 1089
    :cond_0
    const-wide/16 v6, 0x0

    #@23
    cmp-long v5, p1, v6

    #@25
    if-gez v5, :cond_3

    #@27
    const/4 v10, 0x1

    #@28
    .line 1090
    .local v10, "isNegative":Z
    :goto_0
    if-eqz v10, :cond_1

    #@2a
    .line 1091
    move-wide/from16 v0, p1

    #@2c
    neg-long v0, v0

    #@2d
    move-wide/from16 p1, v0

    #@2f
    .line 1098
    :cond_1
    move-object/from16 v0, p0

    #@31
    iget v5, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@33
    const/4 v6, 0x1

    #@34
    if-eq v5, v6, :cond_7

    #@36
    .line 1099
    const/4 v4, 0x0

    #@37
    .line 1100
    .local v4, "tooBig":Z
    const-wide/16 v6, 0x0

    #@39
    cmp-long v5, p1, v6

    #@3b
    if-gez v5, :cond_5

    #@3d
    .line 1101
    move-object/from16 v0, p0

    #@3f
    iget v5, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@41
    int-to-long v6, v5

    #@42
    const-wide/high16 v8, -0x8000000000000000L

    #@44
    div-long v14, v8, v6

    #@46
    .line 1102
    .local v14, "cutoff":J
    cmp-long v5, p1, v14

    #@48
    if-gtz v5, :cond_4

    #@4a
    const/4 v4, 0x1

    #@4b
    .line 1107
    :goto_1
    if-eqz v4, :cond_7

    #@4d
    .line 1111
    if-eqz v10, :cond_2

    #@4f
    move-wide/from16 v0, p1

    #@51
    neg-long v0, v0

    #@52
    move-wide/from16 p1, v0

    #@54
    .end local p1    # "number":J
    :cond_2
    invoke-static/range {p1 .. p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@57
    move-result-object v5

    #@58
    move-object/from16 v0, p0

    #@5a
    move-object/from16 v1, p3

    #@5c
    move-object/from16 v2, p4

    #@5e
    move/from16 v3, p5

    #@60
    invoke-direct {v0, v5, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    #@63
    move-result-object v5

    #@64
    return-object v5

    #@65
    .line 1089
    .end local v4    # "tooBig":Z
    .end local v10    # "isNegative":Z
    .end local v14    # "cutoff":J
    .restart local p1    # "number":J
    :cond_3
    const/4 v10, 0x0

    #@66
    goto :goto_0

    #@67
    .line 1102
    .restart local v4    # "tooBig":Z
    .restart local v10    # "isNegative":Z
    .restart local v14    # "cutoff":J
    :cond_4
    const/4 v4, 0x0

    #@68
    goto :goto_1

    #@69
    .line 1104
    .end local v14    # "cutoff":J
    :cond_5
    move-object/from16 v0, p0

    #@6b
    iget v5, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@6d
    int-to-long v6, v5

    #@6e
    const-wide v8, 0x7fffffffffffffffL

    #@73
    div-long v14, v8, v6

    #@75
    .line 1105
    .restart local v14    # "cutoff":J
    cmp-long v5, p1, v14

    #@77
    if-lez v5, :cond_6

    #@79
    const/4 v4, 0x1

    #@7a
    goto :goto_1

    #@7b
    :cond_6
    const/4 v4, 0x0

    #@7c
    goto :goto_1

    #@7d
    .line 1116
    .end local v4    # "tooBig":Z
    .end local v14    # "cutoff":J
    :cond_7
    move-object/from16 v0, p0

    #@7f
    iget v5, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@81
    int-to-long v6, v5

    #@82
    mul-long p1, p1, v6

    #@84
    .line 1117
    move-object/from16 v0, p0

    #@86
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@88
    monitor-enter v13

    #@89
    .line 1118
    :try_start_0
    move-object/from16 v0, p0

    #@8b
    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@8d
    const/4 v6, 0x1

    #@8e
    move-object/from16 v0, p0

    #@90
    invoke-direct {v0, v6}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    #@93
    move-result v6

    #@94
    move-wide/from16 v0, p1

    #@96
    invoke-virtual {v5, v0, v1, v6}, Landroid/icu/text/DigitList;->set(JI)V

    #@99
    .line 1120
    move-object/from16 v0, p0

    #@9b
    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@9d
    invoke-virtual {v5}, Landroid/icu/text/DigitList;->wasRounded()Z

    #@a0
    move-result v5

    #@a1
    if-eqz v5, :cond_8

    #@a3
    move-object/from16 v0, p0

    #@a5
    iget v5, v0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@a7
    const/4 v6, 0x7

    #@a8
    if-ne v5, v6, :cond_8

    #@aa
    .line 1121
    new-instance v5, Ljava/lang/ArithmeticException;

    #@ac
    const-string/jumbo v6, "Rounding necessary"

    #@af
    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b3
    .line 1117
    :catchall_0
    move-exception v5

    #@b4
    monitor-exit v13

    #@b5
    throw v5

    #@b6
    .line 1123
    :cond_8
    move-wide/from16 v0, p1

    #@b8
    long-to-double v6, v0

    #@b9
    const/4 v11, 0x1

    #@ba
    move-object/from16 v5, p0

    #@bc
    move-object/from16 v8, p3

    #@be
    move-object/from16 v9, p4

    #@c0
    move/from16 v12, p5

    #@c2
    :try_start_1
    invoke-direct/range {v5 .. v12}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c5
    move-result-object v5

    #@c6
    monitor-exit v13

    #@c7
    return-object v5
.end method

.method private format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 10
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p4, "parseAttr"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 1173
    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@4
    if-eq v1, v6, :cond_0

    #@6
    .line 1174
    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@8
    int-to-long v2, v1

    #@9
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@10
    move-result-object p1

    #@11
    .line 1177
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 1178
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@17
    iget v2, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@19
    invoke-virtual {p1, v1, v0, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@1f
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    #@22
    move-result-object p1

    #@23
    .line 1181
    :cond_1
    iget-object v9, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@25
    monitor-enter v9

    #@26
    .line 1182
    :try_start_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@28
    const/4 v1, 0x0

    #@29
    invoke-direct {p0, v1}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    #@2c
    move-result v3

    #@2d
    iget-boolean v1, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@2f
    if-nez v1, :cond_3

    #@31
    .line 1183
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_2

    #@37
    move v1, v0

    #@38
    .line 1182
    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Landroid/icu/text/DigitList;->set(Ljava/math/BigDecimal;IZ)V

    #@3b
    .line 1185
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@3d
    invoke-virtual {v1}, Landroid/icu/text/DigitList;->wasRounded()Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_4

    #@43
    iget v1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@45
    const/4 v2, 0x7

    #@46
    if-ne v1, v2, :cond_4

    #@48
    .line 1186
    new-instance v0, Ljava/lang/ArithmeticException;

    #@4a
    const-string/jumbo v1, "Rounding necessary"

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    .line 1181
    :catchall_0
    move-exception v0

    #@52
    monitor-exit v9

    #@53
    throw v0

    #@54
    :cond_2
    move v1, v6

    #@55
    .line 1183
    goto :goto_0

    #@56
    :cond_3
    move v1, v0

    #@57
    .line 1182
    goto :goto_0

    #@58
    .line 1188
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    #@5b
    move-result-wide v2

    #@5c
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    #@5f
    move-result v1

    #@60
    if-gez v1, :cond_5

    #@62
    .line 1189
    :goto_1
    const/4 v7, 0x0

    #@63
    move-object v1, p0

    #@64
    move-object v4, p2

    #@65
    move-object v5, p3

    #@66
    move v8, p4

    #@67
    .line 1188
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    move-result-object v0

    #@6b
    monitor-exit v9

    #@6c
    return-object v0

    #@6d
    :cond_5
    move v6, v0

    #@6e
    goto :goto_1
.end method

.method private format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 8
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p4, "parseAttr"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 1140
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1141
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@8
    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    #@b
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 1144
    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@12
    if-eq v1, v4, :cond_1

    #@14
    .line 1145
    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@16
    int-to-long v2, v1

    #@17
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1e
    move-result-object p1

    #@1f
    .line 1150
    :cond_1
    iget-object v7, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@21
    monitor-enter v7

    #@22
    .line 1151
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@24
    const/4 v2, 0x1

    #@25
    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    #@28
    move-result v2

    #@29
    invoke-virtual {v1, p1, v2}, Landroid/icu/text/DigitList;->set(Ljava/math/BigInteger;I)V

    #@2c
    .line 1153
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@2e
    invoke-virtual {v1}, Landroid/icu/text/DigitList;->wasRounded()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_2

    #@34
    iget v1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@36
    const/4 v2, 0x7

    #@37
    if-ne v1, v2, :cond_2

    #@39
    .line 1154
    new-instance v0, Ljava/lang/ArithmeticException;

    #@3b
    const-string/jumbo v1, "Rounding necessary"

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 1150
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v7

    #@44
    throw v0

    #@45
    .line 1156
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    #@48
    move-result v1

    #@49
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@4c
    move-result v2

    #@4d
    if-gez v2, :cond_3

    #@4f
    :goto_0
    const/4 v5, 0x1

    #@50
    move-object v0, p0

    #@51
    move-object v2, p2

    #@52
    move-object v3, p3

    #@53
    move v6, p4

    #@54
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DecimalFormat;->subformat(ILjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    move-result-object v0

    #@58
    monitor-exit v7

    #@59
    return-object v0

    #@5a
    :cond_3
    move v4, v0

    #@5b
    goto :goto_0
.end method

.method private formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V
    .locals 2
    .param p1, "isPrefix"    # Z
    .param p2, "fieldType"    # Landroid/icu/text/NumberFormat$Field;
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .param p4, "offset"    # I
    .param p5, "symbolSize"    # I

    #@0
    .prologue
    .line 4303
    move v0, p4

    #@1
    .line 4304
    .local v0, "begin":I
    if-nez p1, :cond_0

    #@3
    .line 4305
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    #@6
    move-result v1

    #@7
    add-int v0, p4, v1

    #@9
    .line 4308
    :cond_0
    add-int v1, v0, p5

    #@b
    invoke-direct {p0, p2, v0, v1}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@e
    .line 4301
    return-void
.end method

.method private getEquivalentDecimals(CZ)Landroid/icu/text/UnicodeSet;
    .locals 2
    .param p1, "decimal"    # C
    .param p2, "strictParse"    # Z

    #@0
    .prologue
    .line 2813
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@2
    .line 2814
    .local v0, "equivSet":Landroid/icu/text/UnicodeSet;
    if-eqz p2, :cond_2

    #@4
    .line 2815
    sget-object v1, Landroid/icu/text/DecimalFormat;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    #@6
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 2816
    sget-object v0, Landroid/icu/text/DecimalFormat;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    #@e
    .line 2827
    :cond_0
    :goto_0
    return-object v0

    #@f
    .line 2817
    :cond_1
    sget-object v1, Landroid/icu/text/DecimalFormat;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    #@11
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 2818
    sget-object v0, Landroid/icu/text/DecimalFormat;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    #@19
    goto :goto_0

    #@1a
    .line 2821
    :cond_2
    sget-object v1, Landroid/icu/text/DecimalFormat;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    #@1c
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_3

    #@22
    .line 2822
    sget-object v0, Landroid/icu/text/DecimalFormat;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    #@24
    goto :goto_0

    #@25
    .line 2823
    :cond_3
    sget-object v1, Landroid/icu/text/DecimalFormat;->commaEquivalents:Landroid/icu/text/UnicodeSet;

    #@27
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 2824
    sget-object v0, Landroid/icu/text/DecimalFormat;->commaEquivalents:Landroid/icu/text/UnicodeSet;

    #@2f
    goto :goto_0
.end method

.method private static isBidiMark(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2876
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

.method private isGroupingPosition(I)Z
    .locals 3
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 1233
    const/4 v0, 0x0

    #@1
    .line 1234
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    if-lez p1, :cond_0

    #@9
    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@b
    if-lez v1, :cond_0

    #@d
    .line 1235
    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@f
    if-lez v1, :cond_2

    #@11
    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@13
    if-le p1, v1, :cond_2

    #@15
    .line 1236
    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@17
    sub-int v1, p1, v1

    #@19
    iget-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@1b
    rem-int/2addr v1, v2

    #@1c
    if-nez v1, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 1241
    :cond_0
    :goto_0
    return v0

    #@20
    .line 1236
    :cond_1
    const/4 v0, 0x0

    #@21
    goto :goto_0

    #@22
    .line 1238
    :cond_2
    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@24
    rem-int v1, p1, v1

    #@26
    if-nez v1, :cond_3

    #@28
    const/4 v0, 0x1

    #@29
    goto :goto_0

    #@2a
    :cond_3
    const/4 v0, 0x0

    #@2b
    goto :goto_0
.end method

.method private isNegative(D)Z
    .locals 7
    .param p1, "number"    # D

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-wide/16 v4, 0x0

    #@4
    .line 796
    cmpg-double v2, p1, v4

    #@6
    if-ltz v2, :cond_0

    #@8
    cmpl-double v2, p1, v4

    #@a
    if-nez v2, :cond_1

    #@c
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@e
    div-double/2addr v2, p1

    #@f
    cmpg-double v2, v2, v4

    #@11
    if-gez v2, :cond_1

    #@13
    :cond_0
    :goto_0
    return v0

    #@14
    :cond_1
    move v0, v1

    #@15
    goto :goto_0
.end method

.method static final match(Ljava/lang/String;II)I
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "ch"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 3155
    if-ltz p1, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-lt p1, v2, :cond_1

    #@9
    .line 3156
    :cond_0
    return v3

    #@a
    .line 3158
    :cond_1
    invoke-static {p0, p1}, Landroid/icu/text/DecimalFormat;->skipBidiMarks(Ljava/lang/String;I)I

    #@d
    move-result p1

    #@e
    .line 3159
    invoke-static {p2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_3

    #@14
    .line 3162
    move v1, p1

    #@15
    .line 3163
    .local v1, "s":I
    invoke-static {p0, p1}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    #@18
    move-result v0

    #@19
    .line 3164
    .end local p1    # "pos":I
    .local v0, "pos":I
    if-ne v0, p1, :cond_2

    #@1b
    .line 3165
    return v3

    #@1c
    .line 3167
    :cond_2
    return v0

    #@1d
    .line 3169
    .end local v0    # "pos":I
    .end local v1    # "s":I
    .restart local p1    # "pos":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    if-ge p1, v2, :cond_4

    #@23
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@26
    move-result v2

    #@27
    if-eq v2, p2, :cond_5

    #@29
    .line 3170
    :cond_4
    return v3

    #@2a
    .line 3172
    :cond_5
    invoke-static {p2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@2d
    move-result v2

    #@2e
    add-int/2addr v2, p1

    #@2f
    invoke-static {p0, v2}, Landroid/icu/text/DecimalFormat;->skipBidiMarks(Ljava/lang/String;I)I

    #@32
    move-result p1

    #@33
    .line 3173
    return p1
.end method

.method static final match(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3182
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    if-ltz p1, :cond_1

    #@9
    .line 3183
    invoke-static {p2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    .line 3184
    .local v0, "ch":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@10
    move-result v2

    #@11
    add-int/2addr v1, v2

    #@12
    .line 3185
    invoke-static {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    #@15
    move-result p1

    #@16
    .line 3186
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 3187
    invoke-static {p2, v1}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    #@1f
    move-result v1

    #@20
    goto :goto_0

    #@21
    .line 3190
    .end local v0    # "ch":I
    :cond_1
    return p1
.end method

.method private multiply(D)D
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 820
    iget v0, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 821
    iget v0, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@7
    int-to-double v0, v0

    #@8
    mul-double/2addr v0, p1

    #@9
    return-wide v0

    #@a
    .line 823
    :cond_0
    return-wide p1
.end method

.method private parse(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;)Ljava/lang/Object;
    .locals 26
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "currency"    # [Landroid/icu/util/Currency;

    #@0
    .prologue
    .line 1979
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v16

    #@4
    .local v16, "backup":I
    move/from16 v19, v16

    #@6
    .line 1984
    .local v19, "i":I
    move-object/from16 v0, p0

    #@8
    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@a
    if-lez v4, :cond_1

    #@c
    .line 1985
    move-object/from16 v0, p0

    #@e
    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@10
    if-eqz v4, :cond_0

    #@12
    move-object/from16 v0, p0

    #@14
    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@16
    const/4 v5, 0x1

    #@17
    if-ne v4, v5, :cond_1

    #@19
    .line 1986
    :cond_0
    move-object/from16 v0, p0

    #@1b
    move-object/from16 v1, p1

    #@1d
    move/from16 v2, v16

    #@1f
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@22
    move-result v19

    #@23
    .line 1988
    :cond_1
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@27
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@2f
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@36
    move-result v5

    #@37
    const/4 v6, 0x0

    #@38
    move-object/from16 v0, p1

    #@3a
    move/from16 v1, v19

    #@3c
    invoke-virtual {v0, v1, v4, v6, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_4

    #@42
    .line 1989
    move-object/from16 v0, p0

    #@44
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@46
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4d
    move-result v4

    #@4e
    add-int v19, v19, v4

    #@50
    .line 1991
    move-object/from16 v0, p0

    #@52
    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@54
    if-lez v4, :cond_3

    #@56
    move-object/from16 v0, p0

    #@58
    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@5a
    const/4 v5, 0x2

    #@5b
    if-eq v4, v5, :cond_2

    #@5d
    .line 1992
    move-object/from16 v0, p0

    #@5f
    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@61
    const/4 v5, 0x3

    #@62
    if-ne v4, v5, :cond_3

    #@64
    .line 1993
    :cond_2
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, p1

    #@68
    move/from16 v2, v19

    #@6a
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@6d
    move-result v19

    #@6e
    .line 1995
    :cond_3
    move-object/from16 v0, p2

    #@70
    move/from16 v1, v19

    #@72
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@75
    .line 1996
    new-instance v4, Ljava/lang/Double;

    #@77
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    #@79
    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    #@7c
    return-object v4

    #@7d
    .line 2000
    :cond_4
    move/from16 v19, v16

    #@7f
    .line 2002
    const/4 v4, 0x3

    #@80
    new-array v8, v4, [Z

    #@82
    .line 2003
    .local v8, "status":[Z
    move-object/from16 v0, p0

    #@84
    iget v4, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@86
    if-eqz v4, :cond_5

    #@88
    .line 2004
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, p1

    #@8c
    move-object/from16 v2, p2

    #@8e
    move-object/from16 v3, p3

    #@90
    invoke-direct {v0, v1, v2, v3, v8}, Landroid/icu/text/DecimalFormat;->parseForCurrency(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;[Z)Z

    #@93
    move-result v4

    #@94
    if-nez v4, :cond_6

    #@96
    .line 2005
    const/4 v4, 0x0

    #@97
    return-object v4

    #@98
    .line 2008
    :cond_5
    move-object/from16 v0, p0

    #@9a
    iget-object v7, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget-object v10, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@a0
    .line 2009
    move-object/from16 v0, p0

    #@a2
    iget-object v11, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@a4
    move-object/from16 v0, p0

    #@a6
    iget-object v12, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@a8
    move-object/from16 v0, p0

    #@aa
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@ac
    .line 2010
    const/4 v14, 0x0

    #@ad
    const/4 v15, 0x0

    #@ae
    move-object/from16 v4, p0

    #@b0
    move-object/from16 v5, p1

    #@b2
    move-object/from16 v6, p2

    #@b4
    move-object/from16 v9, p3

    #@b6
    .line 2008
    invoke-direct/range {v4 .. v15}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    #@b9
    move-result v4

    #@ba
    if-nez v4, :cond_6

    #@bc
    .line 2011
    move-object/from16 v0, p2

    #@be
    move/from16 v1, v16

    #@c0
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@c3
    .line 2012
    const/4 v4, 0x0

    #@c4
    return-object v4

    #@c5
    .line 2016
    :cond_6
    const/16 v23, 0x0

    #@c7
    .line 2019
    .local v23, "n":Ljava/lang/Number;
    const/4 v4, 0x0

    #@c8
    aget-boolean v4, v8, v4

    #@ca
    if-eqz v4, :cond_a

    #@cc
    .line 2020
    new-instance v23, Ljava/lang/Double;

    #@ce
    .end local v23    # "n":Ljava/lang/Number;
    const/4 v4, 0x1

    #@cf
    aget-boolean v4, v8, v4

    #@d1
    if-eqz v4, :cond_9

    #@d3
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@d5
    :goto_0
    move-object/from16 v0, v23

    #@d7
    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    #@da
    .line 2077
    .local v23, "n":Ljava/lang/Number;
    :cond_7
    :goto_1
    if-eqz p3, :cond_8

    #@dc
    new-instance v4, Landroid/icu/util/CurrencyAmount;

    #@de
    const/4 v5, 0x0

    #@df
    aget-object v5, p3, v5

    #@e1
    move-object/from16 v0, v23

    #@e3
    invoke-direct {v4, v0, v5}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    #@e6
    move-object/from16 v23, v4

    #@e8
    .end local v23    # "n":Ljava/lang/Number;
    :cond_8
    return-object v23

    #@e9
    .line 2021
    :cond_9
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@eb
    goto :goto_0

    #@ec
    .line 2025
    .local v23, "n":Ljava/lang/Number;
    :cond_a
    const/4 v4, 0x2

    #@ed
    aget-boolean v4, v8, v4

    #@ef
    if-eqz v4, :cond_c

    #@f1
    .line 2026
    const/4 v4, 0x1

    #@f2
    aget-boolean v4, v8, v4

    #@f4
    if-eqz v4, :cond_b

    #@f6
    new-instance v23, Ljava/lang/Double;

    #@f8
    .end local v23    # "n":Ljava/lang/Number;
    const-string/jumbo v4, "0.0"

    #@fb
    move-object/from16 v0, v23

    #@fd
    invoke-direct {v0, v4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    #@100
    .local v23, "n":Ljava/lang/Number;
    :goto_2
    goto :goto_1

    #@101
    .local v23, "n":Ljava/lang/Number;
    :cond_b
    new-instance v23, Ljava/lang/Double;

    #@103
    .end local v23    # "n":Ljava/lang/Number;
    const-string/jumbo v4, "-0.0"

    #@106
    move-object/from16 v0, v23

    #@108
    invoke-direct {v0, v4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    #@10b
    goto :goto_2

    #@10c
    .line 2030
    .restart local v23    # "n":Ljava/lang/Number;
    :cond_c
    const/4 v4, 0x1

    #@10d
    aget-boolean v4, v8, v4

    #@10f
    if-nez v4, :cond_d

    #@111
    move-object/from16 v0, p0

    #@113
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@115
    invoke-virtual {v4}, Landroid/icu/text/DigitList;->isZero()Z

    #@118
    move-result v4

    #@119
    if-eqz v4, :cond_d

    #@11b
    .line 2031
    new-instance v23, Ljava/lang/Double;

    #@11d
    .end local v23    # "n":Ljava/lang/Number;
    const-string/jumbo v4, "-0.0"

    #@120
    move-object/from16 v0, v23

    #@122
    invoke-direct {v0, v4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    #@125
    .local v23, "n":Ljava/lang/Number;
    goto :goto_1

    #@126
    .line 2037
    .local v23, "n":Ljava/lang/Number;
    :cond_d
    move-object/from16 v0, p0

    #@128
    iget v0, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@12a
    move/from16 v22, v0

    #@12c
    .line 2038
    .local v22, "mult":I
    :goto_3
    rem-int/lit8 v4, v22, 0xa

    #@12e
    if-nez v4, :cond_e

    #@130
    .line 2039
    move-object/from16 v0, p0

    #@132
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@134
    iget v5, v4, Landroid/icu/text/DigitList;->decimalAt:I

    #@136
    add-int/lit8 v5, v5, -0x1

    #@138
    iput v5, v4, Landroid/icu/text/DigitList;->decimalAt:I

    #@13a
    .line 2040
    div-int/lit8 v22, v22, 0xa

    #@13c
    goto :goto_3

    #@13d
    .line 2044
    :cond_e
    move-object/from16 v0, p0

    #@13f
    iget-boolean v4, v0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@141
    if-nez v4, :cond_14

    #@143
    const/4 v4, 0x1

    #@144
    move/from16 v0, v22

    #@146
    if-ne v0, v4, :cond_14

    #@148
    move-object/from16 v0, p0

    #@14a
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@14c
    invoke-virtual {v4}, Landroid/icu/text/DigitList;->isIntegral()Z

    #@14f
    move-result v4

    #@150
    if-eqz v4, :cond_14

    #@152
    .line 2046
    move-object/from16 v0, p0

    #@154
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@156
    iget v4, v4, Landroid/icu/text/DigitList;->decimalAt:I

    #@158
    const/16 v5, 0xc

    #@15a
    if-ge v4, v5, :cond_12

    #@15c
    .line 2047
    const-wide/16 v20, 0x0

    #@15e
    .line 2048
    .local v20, "l":J
    move-object/from16 v0, p0

    #@160
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@162
    iget v4, v4, Landroid/icu/text/DigitList;->count:I

    #@164
    if-lez v4, :cond_11

    #@166
    .line 2049
    const/16 v24, 0x0

    #@168
    .line 2050
    .local v24, "nx":I
    :goto_4
    move-object/from16 v0, p0

    #@16a
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16c
    iget v4, v4, Landroid/icu/text/DigitList;->count:I

    #@16e
    move/from16 v0, v24

    #@170
    if-ge v0, v4, :cond_f

    #@172
    .line 2051
    const-wide/16 v4, 0xa

    #@174
    mul-long v4, v4, v20

    #@176
    move-object/from16 v0, p0

    #@178
    iget-object v6, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@17a
    iget-object v6, v6, Landroid/icu/text/DigitList;->digits:[B

    #@17c
    add-int/lit8 v25, v24, 0x1

    #@17e
    .end local v24    # "nx":I
    .local v25, "nx":I
    aget-byte v6, v6, v24

    #@180
    int-to-char v6, v6

    #@181
    int-to-long v6, v6

    #@182
    add-long/2addr v4, v6

    #@183
    const-wide/16 v6, 0x30

    #@185
    sub-long v20, v4, v6

    #@187
    move/from16 v24, v25

    #@189
    .end local v25    # "nx":I
    .restart local v24    # "nx":I
    goto :goto_4

    #@18a
    .line 2053
    :cond_f
    :goto_5
    add-int/lit8 v25, v24, 0x1

    #@18c
    .end local v24    # "nx":I
    .restart local v25    # "nx":I
    move-object/from16 v0, p0

    #@18e
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@190
    iget v4, v4, Landroid/icu/text/DigitList;->decimalAt:I

    #@192
    move/from16 v0, v24

    #@194
    if-ge v0, v4, :cond_10

    #@196
    .line 2054
    const-wide/16 v4, 0xa

    #@198
    mul-long v20, v20, v4

    #@19a
    move/from16 v24, v25

    #@19c
    .end local v25    # "nx":I
    .restart local v24    # "nx":I
    goto :goto_5

    #@19d
    .line 2056
    .end local v24    # "nx":I
    .restart local v25    # "nx":I
    :cond_10
    const/4 v4, 0x1

    #@19e
    aget-boolean v4, v8, v4

    #@1a0
    if-nez v4, :cond_11

    #@1a2
    .line 2057
    move-wide/from16 v0, v20

    #@1a4
    neg-long v0, v0

    #@1a5
    move-wide/from16 v20, v0

    #@1a7
    .line 2060
    .end local v25    # "nx":I
    :cond_11
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1aa
    move-result-object v23

    #@1ab
    .local v23, "n":Ljava/lang/Number;
    goto/16 :goto_1

    #@1ad
    .line 2062
    .end local v20    # "l":J
    .local v23, "n":Ljava/lang/Number;
    :cond_12
    move-object/from16 v0, p0

    #@1af
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@1b1
    const/4 v5, 0x1

    #@1b2
    aget-boolean v5, v8, v5

    #@1b4
    invoke-virtual {v4, v5}, Landroid/icu/text/DigitList;->getBigInteger(Z)Ljava/math/BigInteger;

    #@1b7
    move-result-object v18

    #@1b8
    .line 2063
    .local v18, "big":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->bitLength()I

    #@1bb
    move-result v4

    #@1bc
    const/16 v5, 0x40

    #@1be
    if-ge v4, v5, :cond_13

    #@1c0
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->longValue()J

    #@1c3
    move-result-wide v4

    #@1c4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1c7
    move-result-object v23

    #@1c8
    .local v23, "n":Ljava/lang/Number;
    goto/16 :goto_1

    #@1ca
    .local v23, "n":Ljava/lang/Number;
    :cond_13
    move-object/from16 v23, v18

    #@1cc
    .local v23, "n":Ljava/lang/Number;
    goto/16 :goto_1

    #@1ce
    .line 2068
    .end local v18    # "big":Ljava/math/BigInteger;
    .local v23, "n":Ljava/lang/Number;
    :cond_14
    move-object/from16 v0, p0

    #@1d0
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@1d2
    const/4 v5, 0x1

    #@1d3
    aget-boolean v5, v8, v5

    #@1d5
    invoke-virtual {v4, v5}, Landroid/icu/text/DigitList;->getBigDecimalICU(Z)Landroid/icu/math/BigDecimal;

    #@1d8
    move-result-object v17

    #@1d9
    .line 2069
    .local v17, "big":Landroid/icu/math/BigDecimal;
    move-object/from16 v23, v17

    #@1db
    .line 2070
    .local v23, "n":Ljava/lang/Number;
    const/4 v4, 0x1

    #@1dc
    move/from16 v0, v22

    #@1de
    if-eq v0, v4, :cond_7

    #@1e0
    .line 2071
    move/from16 v0, v22

    #@1e2
    int-to-long v4, v0

    #@1e3
    invoke-static {v4, v5}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    #@1e6
    move-result-object v4

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@1eb
    move-object/from16 v0, v17

    #@1ed
    invoke-virtual {v0, v4, v5}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@1f0
    move-result-object v23

    #@1f1
    goto/16 :goto_1
.end method

.method private parseForCurrency(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;[Z)Z
    .locals 24
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "currency"    # [Landroid/icu/util/Currency;
    .param p4, "status"    # [Z

    #@0
    .prologue
    .line 2082
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v20

    #@4
    .line 2083
    .local v20, "origPos":I
    move-object/from16 v0, p0

    #@6
    iget-boolean v2, v0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@8
    if-nez v2, :cond_0

    #@a
    .line 2084
    move-object/from16 v0, p0

    #@c
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@e
    move/from16 v22, v0

    #@10
    .line 2085
    .local v22, "savedCurrencySignCount":I
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->setupCurrencyAffixForAllPatterns()V

    #@13
    .line 2087
    const/4 v2, 0x3

    #@14
    move/from16 v0, v22

    #@16
    if-ne v0, v2, :cond_3

    #@18
    .line 2088
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@1c
    const/4 v3, 0x0

    #@1d
    move-object/from16 v0, p0

    #@1f
    invoke-direct {v0, v2, v3}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@22
    .line 2092
    :goto_0
    const/4 v2, 0x1

    #@23
    move-object/from16 v0, p0

    #@25
    iput-boolean v2, v0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@27
    .line 2094
    .end local v22    # "savedCurrencySignCount":I
    :cond_0
    move/from16 v19, v20

    #@29
    .line 2095
    .local v19, "maxPosIndex":I
    const/16 v18, -0x1

    #@2b
    .line 2096
    .local v18, "maxErrorPos":I
    const/16 v23, 0x0

    #@2d
    .line 2101
    .local v23, "savedStatus":[Z
    const/4 v2, 0x3

    #@2e
    new-array v6, v2, [Z

    #@30
    .line 2102
    .local v6, "tmpStatus":[Z
    new-instance v4, Ljava/text/ParsePosition;

    #@32
    move/from16 v0, v20

    #@34
    invoke-direct {v4, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@37
    .line 2103
    .local v4, "tmpPos":Ljava/text/ParsePosition;
    new-instance v5, Landroid/icu/text/DigitList;

    #@39
    invoke-direct {v5}, Landroid/icu/text/DigitList;-><init>()V

    #@3c
    .line 2105
    .local v5, "tmpDigitList":Landroid/icu/text/DigitList;
    move-object/from16 v0, p0

    #@3e
    iget v2, v0, Landroid/icu/text/DecimalFormat;->style:I

    #@40
    const/4 v3, 0x6

    #@41
    if-ne v2, v3, :cond_4

    #@43
    .line 2107
    move-object/from16 v0, p0

    #@45
    iget-object v8, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v10, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-object v11, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@53
    .line 2108
    const/4 v12, 0x1

    #@54
    const/4 v13, 0x1

    #@55
    move-object/from16 v2, p0

    #@57
    move-object/from16 v3, p1

    #@59
    move-object/from16 v7, p3

    #@5b
    .line 2106
    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    #@5e
    move-result v16

    #@5f
    .line 2114
    .local v16, "found":Z
    :goto_1
    if-eqz v16, :cond_5

    #@61
    .line 2115
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@64
    move-result v2

    #@65
    move/from16 v0, v20

    #@67
    if-le v2, v0, :cond_1

    #@69
    .line 2116
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@6c
    move-result v19

    #@6d
    .line 2117
    move-object/from16 v23, v6

    #@6f
    .line 2118
    .local v23, "savedStatus":[Z
    move-object/from16 v0, p0

    #@71
    iput-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@73
    .line 2125
    .end local v23    # "savedStatus":[Z
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    #@75
    iget-object v2, v0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@77
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7a
    move-result-object v15

    #@7b
    .end local v16    # "found":Z
    .local v15, "affix$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@7e
    move-result v2

    #@7f
    if-eqz v2, :cond_7

    #@81
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@84
    move-result-object v14

    #@85
    check-cast v14, Landroid/icu/text/DecimalFormat$AffixForCurrency;

    #@87
    .line 2126
    .local v14, "affix":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    const/4 v2, 0x3

    #@88
    new-array v6, v2, [Z

    #@8a
    .line 2127
    new-instance v4, Ljava/text/ParsePosition;

    #@8c
    .end local v4    # "tmpPos":Ljava/text/ParsePosition;
    move/from16 v0, v20

    #@8e
    invoke-direct {v4, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@91
    .line 2128
    .restart local v4    # "tmpPos":Ljava/text/ParsePosition;
    new-instance v5, Landroid/icu/text/DigitList;

    #@93
    .end local v5    # "tmpDigitList":Landroid/icu/text/DigitList;
    invoke-direct {v5}, Landroid/icu/text/DigitList;-><init>()V

    #@96
    .line 2130
    .restart local v5    # "tmpDigitList":Landroid/icu/text/DigitList;
    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getNegPrefix()Ljava/lang/String;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getNegSuffix()Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    .line 2131
    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getPosPrefix()Ljava/lang/String;

    #@a1
    move-result-object v10

    #@a2
    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getPosSuffix()Ljava/lang/String;

    #@a5
    move-result-object v11

    #@a6
    .line 2132
    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getPatternType()I

    #@a9
    move-result v13

    #@aa
    const/4 v12, 0x1

    #@ab
    move-object/from16 v2, p0

    #@ad
    move-object/from16 v3, p1

    #@af
    move-object/from16 v7, p3

    #@b1
    .line 2129
    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    #@b4
    move-result v21

    #@b5
    .line 2133
    .local v21, "result":Z
    if-eqz v21, :cond_6

    #@b7
    .line 2134
    const/16 v16, 0x1

    #@b9
    .line 2135
    .local v16, "found":Z
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@bc
    move-result v2

    #@bd
    move/from16 v0, v19

    #@bf
    if-le v2, v0, :cond_2

    #@c1
    .line 2136
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@c4
    move-result v19

    #@c5
    .line 2137
    move-object/from16 v23, v6

    #@c7
    .line 2138
    .restart local v23    # "savedStatus":[Z
    move-object/from16 v0, p0

    #@c9
    iput-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@cb
    goto :goto_3

    #@cc
    .line 2090
    .end local v4    # "tmpPos":Ljava/text/ParsePosition;
    .end local v5    # "tmpDigitList":Landroid/icu/text/DigitList;
    .end local v6    # "tmpStatus":[Z
    .end local v14    # "affix":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    .end local v15    # "affix$iterator":Ljava/util/Iterator;
    .end local v16    # "found":Z
    .end local v18    # "maxErrorPos":I
    .end local v19    # "maxPosIndex":I
    .end local v21    # "result":Z
    .end local v23    # "savedStatus":[Z
    .restart local v22    # "savedCurrencySignCount":I
    :cond_3
    move-object/from16 v0, p0

    #@ce
    iget-object v2, v0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@d0
    const/4 v3, 0x0

    #@d1
    move-object/from16 v0, p0

    #@d3
    invoke-direct {v0, v2, v3}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 2111
    .end local v22    # "savedCurrencySignCount":I
    .restart local v4    # "tmpPos":Ljava/text/ParsePosition;
    .restart local v5    # "tmpDigitList":Landroid/icu/text/DigitList;
    .restart local v6    # "tmpStatus":[Z
    .restart local v18    # "maxErrorPos":I
    .restart local v19    # "maxPosIndex":I
    .local v23, "savedStatus":[Z
    :cond_4
    move-object/from16 v0, p0

    #@da
    iget-object v8, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@dc
    move-object/from16 v0, p0

    #@de
    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget-object v10, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@e4
    move-object/from16 v0, p0

    #@e6
    iget-object v11, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@e8
    .line 2112
    const/4 v12, 0x1

    #@e9
    const/4 v13, 0x0

    #@ea
    move-object/from16 v2, p0

    #@ec
    move-object/from16 v3, p1

    #@ee
    move-object/from16 v7, p3

    #@f0
    .line 2110
    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    #@f3
    move-result v16

    #@f4
    .local v16, "found":Z
    goto/16 :goto_1

    #@f6
    .line 2121
    :cond_5
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@f9
    move-result v18

    #@fa
    goto/16 :goto_2

    #@fc
    .line 2141
    .end local v16    # "found":Z
    .end local v23    # "savedStatus":[Z
    .restart local v14    # "affix":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    .restart local v15    # "affix$iterator":Ljava/util/Iterator;
    .restart local v21    # "result":Z
    :cond_6
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@ff
    move-result v2

    #@100
    move/from16 v0, v18

    #@102
    if-le v2, v0, :cond_2

    #@104
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@107
    move-result v18

    #@108
    goto/16 :goto_3

    #@10a
    .line 2156
    .end local v14    # "affix":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    .end local v21    # "result":Z
    :cond_7
    const/4 v2, 0x3

    #@10b
    new-array v6, v2, [Z

    #@10d
    .line 2157
    new-instance v4, Ljava/text/ParsePosition;

    #@10f
    .end local v4    # "tmpPos":Ljava/text/ParsePosition;
    move/from16 v0, v20

    #@111
    invoke-direct {v4, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@114
    .line 2158
    .restart local v4    # "tmpPos":Ljava/text/ParsePosition;
    new-instance v5, Landroid/icu/text/DigitList;

    #@116
    .end local v5    # "tmpDigitList":Landroid/icu/text/DigitList;
    invoke-direct {v5}, Landroid/icu/text/DigitList;-><init>()V

    #@119
    .line 2162
    .restart local v5    # "tmpDigitList":Landroid/icu/text/DigitList;
    move-object/from16 v0, p0

    #@11b
    iget-object v8, v0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@11d
    move-object/from16 v0, p0

    #@11f
    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@121
    move-object/from16 v0, p0

    #@123
    iget-object v10, v0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@125
    move-object/from16 v0, p0

    #@127
    iget-object v11, v0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@129
    .line 2163
    const/4 v12, 0x0

    #@12a
    const/4 v13, 0x0

    #@12b
    move-object/from16 v2, p0

    #@12d
    move-object/from16 v3, p1

    #@12f
    move-object/from16 v7, p3

    #@131
    .line 2161
    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    #@134
    move-result v21

    #@135
    .line 2164
    .restart local v21    # "result":Z
    if-eqz v21, :cond_b

    #@137
    .line 2165
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@13a
    move-result v2

    #@13b
    move/from16 v0, v19

    #@13d
    if-le v2, v0, :cond_8

    #@13f
    .line 2166
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@142
    move-result v19

    #@143
    .line 2167
    move-object/from16 v23, v6

    #@145
    .line 2168
    .local v23, "savedStatus":[Z
    move-object/from16 v0, p0

    #@147
    iput-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@149
    .line 2170
    .end local v23    # "savedStatus":[Z
    :cond_8
    const/16 v16, 0x1

    #@14b
    .line 2176
    :cond_9
    :goto_4
    if-nez v16, :cond_c

    #@14d
    .line 2178
    move-object/from16 v0, p2

    #@14f
    move/from16 v1, v18

    #@151
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@154
    .line 2186
    :cond_a
    return v16

    #@155
    .line 2172
    :cond_b
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@158
    move-result v2

    #@159
    move/from16 v0, v18

    #@15b
    if-le v2, v0, :cond_9

    #@15d
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@160
    move-result v18

    #@161
    goto :goto_4

    #@162
    .line 2180
    :cond_c
    move-object/from16 v0, p2

    #@164
    move/from16 v1, v19

    #@166
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@169
    .line 2181
    const/4 v2, -0x1

    #@16a
    move-object/from16 v0, p2

    #@16c
    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@16f
    .line 2182
    const/16 v17, 0x0

    #@171
    .local v17, "index":I
    :goto_5
    const/4 v2, 0x3

    #@172
    move/from16 v0, v17

    #@174
    if-ge v0, v2, :cond_a

    #@176
    .line 2183
    aget-boolean v2, v23, v17

    #@178
    aput-boolean v2, p4, v17

    #@17a
    .line 2182
    add-int/lit8 v17, v17, 0x1

    #@17c
    goto :goto_5
.end method

.method private patternError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, " in pattern \""

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const/16 v2, 0x22

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method private precision(Z)I
    .locals 2
    .param p1, "isIntegral"    # Z

    #@0
    .prologue
    .line 1250
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1251
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1252
    :cond_0
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1253
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@12
    move-result v0

    #@13
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    return v0

    #@19
    .line 1255
    :cond_1
    if-eqz p1, :cond_2

    #@1b
    const/4 v0, 0x0

    #@1c
    :goto_0
    return v0

    #@1d
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@20
    move-result v0

    #@21
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const v4, 0x77359400

    #@4
    const/16 v1, 0x154

    #@6
    const/4 v3, 0x4

    #@7
    const/4 v2, 0x0

    #@8
    .line 5438
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@b
    .line 5455
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@e
    move-result v0

    #@f
    if-le v0, v4, :cond_0

    #@11
    .line 5456
    invoke-virtual {p0, v4}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    #@14
    .line 5458
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@17
    move-result v0

    #@18
    if-le v0, v1, :cond_1

    #@1a
    .line 5459
    invoke-direct {p0, v1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@1d
    .line 5461
    :cond_1
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@1f
    const/4 v1, 0x2

    #@20
    if-ge v0, v1, :cond_2

    #@22
    .line 5462
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@24
    .line 5463
    invoke-direct {p0, v5}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@27
    .line 5464
    const/4 v0, 0x6

    #@28
    iput v0, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@2a
    .line 5465
    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@2c
    .line 5466
    const/16 v0, 0x20

    #@2e
    iput-char v0, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@30
    .line 5467
    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@32
    .line 5468
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@34
    const/4 v1, 0x1

    #@35
    if-ge v0, v1, :cond_2

    #@37
    .line 5470
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@39
    .line 5473
    :cond_2
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@3b
    const/4 v1, 0x3

    #@3c
    if-ge v0, v1, :cond_3

    #@3e
    .line 5476
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    #@41
    .line 5478
    :cond_3
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@43
    if-ge v0, v3, :cond_4

    #@45
    .line 5479
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@47
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@49
    .line 5481
    :cond_4
    iput v3, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@4b
    .line 5482
    new-instance v0, Landroid/icu/text/DigitList;

    #@4d
    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    #@50
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@52
    .line 5484
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@54
    if-eqz v0, :cond_5

    #@56
    .line 5485
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@58
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@5a
    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    #@5d
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@60
    .line 5487
    :cond_5
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@63
    .line 5437
    return-void
.end method

.method private resetActualRounding()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6105
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@3
    if-eqz v2, :cond_3

    #@5
    .line 6106
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@8
    move-result v2

    #@9
    if-lez v2, :cond_0

    #@b
    .line 6107
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@d
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@10
    move-result v3

    #@11
    invoke-virtual {v2, v3}, Landroid/icu/math/BigDecimal;->movePointLeft(I)Landroid/icu/math/BigDecimal;

    #@14
    move-result-object v0

    #@15
    .line 6108
    .local v0, "byWidth":Landroid/icu/math/BigDecimal;
    :goto_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@17
    invoke-virtual {v2, v0}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    #@1a
    move-result v2

    #@1b
    if-ltz v2, :cond_1

    #@1d
    .line 6109
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@1f
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@21
    .line 6128
    .end local v0    # "byWidth":Landroid/icu/math/BigDecimal;
    :goto_1
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@23
    if-nez v2, :cond_7

    #@25
    .line 6129
    const-wide/16 v2, 0x0

    #@27
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->setRoundingDouble(D)V

    #@2a
    .line 6130
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@2c
    .line 6104
    :goto_2
    return-void

    #@2d
    .line 6107
    :cond_0
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@2f
    .restart local v0    # "byWidth":Landroid/icu/math/BigDecimal;
    goto :goto_0

    #@30
    .line 6111
    :cond_1
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@32
    invoke-virtual {v0, v2}, Landroid/icu/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_2

    #@38
    move-object v0, v1

    #@39
    .end local v0    # "byWidth":Landroid/icu/math/BigDecimal;
    :cond_2
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@3b
    goto :goto_1

    #@3c
    .line 6114
    :cond_3
    iget v2, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@3e
    const/4 v3, 0x6

    #@3f
    if-eq v2, v3, :cond_4

    #@41
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->isScientificNotation()Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_5

    #@47
    .line 6118
    :cond_4
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@49
    goto :goto_1

    #@4a
    .line 6120
    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@4d
    move-result v2

    #@4e
    if-lez v2, :cond_6

    #@50
    .line 6121
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@52
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@55
    move-result v3

    #@56
    invoke-virtual {v2, v3}, Landroid/icu/math/BigDecimal;->movePointLeft(I)Landroid/icu/math/BigDecimal;

    #@59
    move-result-object v2

    #@5a
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@5c
    goto :goto_1

    #@5d
    .line 6123
    :cond_6
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@5f
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@61
    goto :goto_1

    #@62
    .line 6132
    :cond_7
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@64
    invoke-virtual {v1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@67
    move-result-wide v2

    #@68
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->setRoundingDouble(D)V

    #@6b
    .line 6133
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@6d
    invoke-virtual {v1}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    #@70
    move-result-object v1

    #@71
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@73
    goto :goto_2
.end method

.method private round(D)D
    .locals 9
    .param p1, "number"    # D

    #@0
    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->isNegative(D)Z

    #@3
    move-result v7

    #@4
    .line 803
    .local v7, "isNegative":Z
    if-eqz v7, :cond_0

    #@6
    .line 804
    neg-double p1, p1

    #@7
    .line 807
    :cond_0
    iget-wide v0, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@9
    const-wide/16 v2, 0x0

    #@b
    cmpl-double v0, v0, v2

    #@d
    if-lez v0, :cond_1

    #@f
    .line 811
    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@11
    iget-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@13
    iget v6, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@15
    move-wide v0, p1

    #@16
    .line 810
    invoke-static/range {v0 .. v7}, Landroid/icu/text/DecimalFormat;->round(DDDIZ)D

    #@19
    move-result-wide v0

    #@1a
    return-wide v0

    #@1b
    .line 814
    :cond_1
    return-wide p1
.end method

.method private static round(DDDIZ)D
    .locals 18
    .param p0, "number"    # D
    .param p2, "roundingInc"    # D
    .param p4, "roundingIncReciprocal"    # D
    .param p6, "mode"    # I
    .param p7, "isNegative"    # Z

    #@0
    .prologue
    .line 997
    const-wide/16 v14, 0x0

    #@2
    cmpl-double v14, p4, v14

    #@4
    if-nez v14, :cond_0

    #@6
    div-double v6, p0, p2

    #@8
    .line 1002
    .local v6, "div":D
    :goto_0
    packed-switch p6, :pswitch_data_0

    #@b
    .line 1028
    :pswitch_0
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v2

    #@f
    .line 1029
    .local v2, "ceil":D
    sub-double v4, v2, v6

    #@11
    .line 1030
    .local v4, "ceildiff":D
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@14
    move-result-wide v8

    #@15
    .line 1031
    .local v8, "floor":D
    sub-double v10, v6, v8

    #@17
    .line 1040
    .local v10, "floordiff":D
    packed-switch p6, :pswitch_data_1

    #@1a
    .line 1061
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v15, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v16, "Invalid rounding mode: "

    #@24
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v15

    #@28
    move/from16 v0, p6

    #@2a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v15

    #@2e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v15

    #@32
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v14

    #@36
    .line 997
    .end local v2    # "ceil":D
    .end local v4    # "ceildiff":D
    .end local v6    # "div":D
    .end local v8    # "floor":D
    .end local v10    # "floordiff":D
    :cond_0
    mul-double v6, p0, p4

    #@38
    .restart local v6    # "div":D
    goto :goto_0

    #@39
    .line 1004
    :pswitch_1
    if-eqz p7, :cond_1

    #@3b
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@3d
    add-double/2addr v14, v6

    #@3e
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    #@41
    move-result-wide v6

    #@42
    .line 1064
    :goto_1
    const-wide/16 v14, 0x0

    #@44
    cmpl-double v14, p4, v14

    #@46
    if-nez v14, :cond_9

    #@48
    mul-double p0, v6, p2

    #@4a
    .line 1065
    :goto_2
    return-wide p0

    #@4b
    .line 1004
    :cond_1
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@4d
    sub-double v14, v6, v14

    #@4f
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    #@52
    move-result-wide v6

    #@53
    goto :goto_1

    #@54
    .line 1007
    :pswitch_2
    if-eqz p7, :cond_2

    #@56
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@58
    sub-double v14, v6, v14

    #@5a
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    #@5d
    move-result-wide v6

    #@5e
    goto :goto_1

    #@5f
    :cond_2
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@61
    add-double/2addr v14, v6

    #@62
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    #@65
    move-result-wide v6

    #@66
    goto :goto_1

    #@67
    .line 1010
    :pswitch_3
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@69
    add-double/2addr v14, v6

    #@6a
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    #@6d
    move-result-wide v6

    #@6e
    goto :goto_1

    #@6f
    .line 1013
    :pswitch_4
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@71
    sub-double v14, v6, v14

    #@73
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    #@76
    move-result-wide v6

    #@77
    goto :goto_1

    #@78
    .line 1016
    :pswitch_5
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@7b
    move-result-wide v14

    #@7c
    cmpl-double v14, v6, v14

    #@7e
    if-eqz v14, :cond_3

    #@80
    .line 1017
    new-instance v14, Ljava/lang/ArithmeticException;

    #@82
    const-string/jumbo v15, "Rounding necessary"

    #@85
    invoke-direct {v14, v15}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@88
    throw v14

    #@89
    .line 1019
    :cond_3
    return-wide p0

    #@8a
    .line 1045
    .restart local v2    # "ceil":D
    .restart local v4    # "ceildiff":D
    .restart local v8    # "floor":D
    .restart local v10    # "floordiff":D
    :pswitch_6
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@8c
    add-double/2addr v14, v10

    #@8d
    cmpg-double v14, v14, v4

    #@8f
    if-gez v14, :cond_4

    #@91
    .line 1046
    move-wide v6, v8

    #@92
    goto :goto_1

    #@93
    .line 1047
    :cond_4
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@95
    add-double/2addr v14, v4

    #@96
    cmpg-double v14, v14, v10

    #@98
    if-gez v14, :cond_5

    #@9a
    .line 1048
    move-wide v6, v2

    #@9b
    goto :goto_1

    #@9c
    .line 1050
    :cond_5
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    #@9e
    div-double v12, v8, v14

    #@a0
    .line 1051
    .local v12, "testFloor":D
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    #@a3
    move-result-wide v14

    #@a4
    cmpl-double v14, v12, v14

    #@a6
    if-nez v14, :cond_6

    #@a8
    move-wide v6, v8

    #@a9
    goto :goto_1

    #@aa
    :cond_6
    move-wide v6, v2

    #@ab
    goto :goto_1

    #@ac
    .line 1055
    .end local v12    # "testFloor":D
    :pswitch_7
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@ae
    add-double/2addr v14, v4

    #@af
    cmpg-double v14, v10, v14

    #@b1
    if-gtz v14, :cond_7

    #@b3
    move-wide v6, v8

    #@b4
    goto :goto_1

    #@b5
    :cond_7
    move-wide v6, v2

    #@b6
    goto :goto_1

    #@b7
    .line 1058
    :pswitch_8
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@b9
    add-double/2addr v14, v10

    #@ba
    cmpg-double v14, v4, v14

    #@bc
    if-gtz v14, :cond_8

    #@be
    move-wide v6, v2

    #@bf
    goto :goto_1

    #@c0
    :cond_8
    move-wide v6, v8

    #@c1
    goto :goto_1

    #@c2
    .line 1064
    .end local v2    # "ceil":D
    .end local v4    # "ceildiff":D
    .end local v8    # "floor":D
    .end local v10    # "floordiff":D
    :cond_9
    div-double p0, v6, p4

    #@c4
    goto :goto_2

    #@c5
    .line 1002
    nop

    #@c6
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    #@da
    .line 1040
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private setCurrencyForSymbols()V
    .locals 3

    #@0
    .prologue
    .line 3236
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    #@2
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@4
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@b
    .line 3238
    .local v0, "def":Landroid/icu/text/DecimalFormatSymbols;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@d
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 3239
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@1d
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 3240
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 3239
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    .line 3238
    if-eqz v1, :cond_0

    #@2b
    .line 3241
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@2d
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@30
    move-result-object v1

    #@31
    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@38
    .line 3226
    :goto_0
    return-void

    #@39
    .line 3243
    :cond_0
    const/4 v1, 0x0

    #@3a
    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@3d
    goto :goto_0
.end method

.method private setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V
    .locals 1
    .param p1, "value"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5491
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@3
    .line 5492
    if-nez p1, :cond_0

    #@5
    :goto_0
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@7
    .line 5490
    return-void

    #@8
    .line 5492
    :cond_0
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method private setRoundingDouble(D)V
    .locals 9
    .param p1, "newValue"    # D

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 6140
    iput-wide p1, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@4
    .line 6141
    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@6
    cmpl-double v2, v2, v6

    #@8
    if-lez v2, :cond_1

    #@a
    .line 6142
    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@c
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@e
    div-double v0, v4, v2

    #@10
    .line 6143
    .local v0, "rawRoundedReciprocal":D
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    #@13
    move-result-wide v2

    #@14
    iput-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@16
    .line 6144
    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@18
    sub-double v2, v0, v2

    #@1a
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    #@1d
    move-result-wide v2

    #@1e
    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    #@23
    cmpl-double v2, v2, v4

    #@25
    if-lez v2, :cond_0

    #@27
    .line 6145
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@29
    .line 6139
    .end local v0    # "rawRoundedReciprocal":D
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 6148
    :cond_1
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@2c
    goto :goto_0
.end method

.method private setupCurrencyAffixForAllPatterns()V
    .locals 11

    #@0
    .prologue
    .line 2192
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2193
    new-instance v1, Landroid/icu/text/CurrencyPluralInfo;

    #@6
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@8
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@f
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@11
    .line 2195
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    #@13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@16
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@18
    .line 2199
    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@1a
    .line 2204
    .local v10, "savedFormatPattern":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@1c
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@1f
    move-result-object v1

    #@20
    const/4 v2, 0x1

    #@21
    invoke-static {v1, v2}, Landroid/icu/text/DecimalFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 2205
    const/4 v2, 0x0

    #@26
    .line 2204
    invoke-direct {p0, v1, v2}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@29
    .line 2206
    new-instance v0, Landroid/icu/text/DecimalFormat$AffixForCurrency;

    #@2b
    .line 2207
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@2d
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@2f
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@31
    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@33
    .line 2208
    const/4 v5, 0x0

    #@34
    .line 2206
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat$AffixForCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@37
    .line 2209
    .local v0, "affixes":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@39
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    .line 2212
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@3e
    invoke-virtual {v1}, Landroid/icu/text/CurrencyPluralInfo;->pluralPatternIterator()Ljava/util/Iterator;

    #@41
    move-result-object v8

    #@42
    .line 2213
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    #@44
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@47
    .line 2214
    .local v7, "currencyUnitPatternSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_2

    #@4d
    .line 2215
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v9

    #@51
    check-cast v9, Ljava/lang/String;

    #@53
    .line 2216
    .local v9, "pluralCount":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@55
    invoke-virtual {v1, v9}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    .line 2217
    .local v6, "currencyPattern":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@5b
    .line 2218
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5e
    move-result v1

    #@5f
    if-nez v1, :cond_1

    #@61
    .line 2219
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@64
    .line 2220
    const/4 v1, 0x0

    #@65
    invoke-direct {p0, v6, v1}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@68
    .line 2221
    new-instance v0, Landroid/icu/text/DecimalFormat$AffixForCurrency;

    #@6a
    .end local v0    # "affixes":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@6c
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@6e
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@70
    .line 2222
    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@72
    const/4 v5, 0x1

    #@73
    .line 2221
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat$AffixForCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@76
    .line 2223
    .restart local v0    # "affixes":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@78
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7b
    goto :goto_0

    #@7c
    .line 2227
    .end local v6    # "currencyPattern":Ljava/lang/String;
    .end local v9    # "pluralCount":Ljava/lang/String;
    :cond_2
    iput-object v10, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@7e
    .line 2191
    return-void
.end method

.method private static skipBidiMarks(Ljava/lang/String;I)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 3028
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 3029
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    .line 3030
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 3035
    .end local v0    # "c":I
    :cond_0
    return p1

    #@11
    .line 3033
    .restart local v0    # "c":I
    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@14
    move-result v1

    #@15
    add-int/2addr p1, v1

    #@16
    goto :goto_0
.end method

.method private final skipPadding(Ljava/lang/String;I)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "position"    # I

    #@0
    .prologue
    .line 2836
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-ge p2, v0, :cond_0

    #@6
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    iget-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 2837
    add-int/lit8 p2, p2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 2839
    :cond_0
    return p2
.end method

.method private static skipPatternWhiteSpace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 3000
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 3001
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    .line 3002
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 3007
    .end local v0    # "c":I
    :cond_0
    return p1

    #@11
    .line 3005
    .restart local v0    # "c":I
    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@14
    move-result v1

    #@15
    add-int/2addr p1, v1

    #@16
    goto :goto_0
.end method

.method private static skipUWhiteSpace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 3014
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 3015
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    .line 3016
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 3021
    .end local v0    # "c":I
    :cond_0
    return p1

    #@11
    .line 3019
    .restart local v0    # "c":I
    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@14
    move-result v1

    #@15
    add-int/2addr p1, v1

    #@16
    goto :goto_0
.end method

.method private subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "number"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p5, "isNegative"    # Z
    .param p6, "isInteger"    # Z
    .param p7, "parseAttr"    # Z

    #@0
    .prologue
    .line 1320
    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1322
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@7
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    move-object v0, p0

    #@10
    move-object v2, p3

    #@11
    move-object v3, p4

    #@12
    move v4, p5

    #@13
    move v5, p6

    #@14
    move v6, p7

    #@15
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    :cond_0
    move-object v0, p0

    #@1b
    move-object v1, p3

    #@1c
    move-object v2, p4

    #@1d
    move v3, p5

    #@1e
    move v4, p6

    #@1f
    move v5, p7

    #@20
    .line 1326
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method private subformat(ILjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "number"    # I
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p4, "isNegative"    # Z
    .param p5, "isInteger"    # Z
    .param p6, "parseAttr"    # Z

    #@0
    .prologue
    .line 1261
    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1263
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@7
    int-to-double v2, p1

    #@8
    invoke-virtual {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    move-object v0, p0

    #@11
    move-object v2, p2

    #@12
    move-object v3, p3

    #@13
    move v4, p4

    #@14
    move v5, p5

    #@15
    move v6, p6

    #@16
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    :cond_0
    move-object v0, p0

    #@1c
    move-object v1, p2

    #@1d
    move-object v2, p3

    #@1e
    move v3, p4

    #@1f
    move v4, p5

    #@20
    move v5, p6

    #@21
    .line 1267
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method private subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "pluralCount"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p4, "isNegative"    # Z
    .param p5, "isInteger"    # Z
    .param p6, "parseAttr"    # Z

    #@0
    .prologue
    .line 1343
    iget v0, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1345
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@7
    invoke-virtual {v0, p1}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v6

    #@b
    .line 1346
    .local v6, "currencyPluralPattern":Ljava/lang/String;
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 1347
    const/4 v0, 0x0

    #@14
    invoke-direct {p0, v6, v0}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@17
    .line 1356
    .end local v6    # "currencyPluralPattern":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    #@1a
    move-object v0, p0

    #@1b
    move-object v1, p2

    #@1c
    move-object v2, p3

    #@1d
    move v3, p4

    #@1e
    move v4, p5

    #@1f
    move v5, p6

    #@20
    .line 1357
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method private subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 9
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "isNegative"    # Z
    .param p4, "isInteger"    # Z
    .param p5, "parseAttr"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1386
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@3
    invoke-virtual {v0}, Landroid/icu/text/DigitList;->isZero()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1387
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@b
    iput v8, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@d
    .line 1390
    :cond_0
    const/4 v3, 0x1

    #@e
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move v2, p3

    #@11
    move-object v4, p2

    #@12
    move v5, p5

    #@13
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    #@16
    move-result v6

    #@17
    .line 1392
    .local v6, "prefixLen":I
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 1393
    invoke-direct {p0, p1, p2, p5}, Landroid/icu/text/DecimalFormat;->subformatExponential(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)V

    #@1e
    :goto_0
    move-object v0, p0

    #@1f
    move-object v1, p1

    #@20
    move v2, p3

    #@21
    move v3, v8

    #@22
    move-object v4, p2

    #@23
    move v5, p5

    #@24
    .line 1398
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    #@27
    move-result v7

    #@28
    .line 1399
    .local v7, "suffixLen":I
    invoke-direct {p0, p1, p2, v6, v7}, Landroid/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    #@2b
    .line 1400
    return-object p1

    #@2c
    .line 1395
    .end local v7    # "suffixLen":I
    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/icu/text/DecimalFormat;->subformatFixed(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZ)V

    #@2f
    goto :goto_0
.end method

.method private subformatExponential(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)V
    .locals 32
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "parseAttr"    # Z

    #@0
    .prologue
    .line 1635
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@4
    move-object/from16 v28, v0

    #@6
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getDigitsLocal()[C

    #@9
    move-result-object v7

    #@a
    .line 1636
    .local v7, "digits":[C
    move-object/from16 v0, p0

    #@c
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@e
    move/from16 v28, v0

    #@10
    if-nez v28, :cond_c

    #@12
    .line 1637
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@16
    move-object/from16 v28, v0

    #@18
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@1b
    move-result v4

    #@1c
    .line 1638
    .local v4, "decimal":C
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@1f
    move-result v27

    #@20
    .line 1639
    .local v27, "useSigDig":Z
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@23
    move-result v20

    #@24
    .line 1640
    .local v20, "maxIntDig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@27
    move-result v22

    #@28
    .line 1643
    .local v22, "minIntDig":I
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@2b
    move-result v28

    #@2c
    if-nez v28, :cond_d

    #@2e
    .line 1644
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@31
    move-result v28

    #@32
    move-object/from16 v0, p2

    #@34
    move/from16 v1, v28

    #@36
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@39
    .line 1645
    const/16 v28, -0x1

    #@3b
    move-object/from16 v0, p2

    #@3d
    move/from16 v1, v28

    #@3f
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@42
    .line 1660
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@45
    move-result v17

    #@46
    .line 1661
    .local v17, "intBegin":I
    const/16 v18, -0x1

    #@48
    .line 1662
    .local v18, "intEnd":I
    const/4 v12, -0x1

    #@49
    .line 1663
    .local v12, "fracBegin":I
    const/16 v21, 0x0

    #@4b
    .line 1664
    .local v21, "minFracDig":I
    if-eqz v27, :cond_10

    #@4d
    .line 1665
    const/16 v22, 0x1

    #@4f
    const/16 v20, 0x1

    #@51
    .line 1666
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    #@54
    move-result v28

    #@55
    add-int/lit8 v21, v28, -0x1

    #@57
    .line 1679
    :cond_1
    :goto_2
    const-wide/16 v14, 0x0

    #@59
    .line 1680
    .local v14, "fractionalDigits":J
    const/4 v13, 0x0

    #@5a
    .line 1681
    .local v13, "fractionalDigitsCount":I
    const/16 v25, 0x0

    #@5c
    .line 1692
    .local v25, "recordFractionDigits":Z
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@60
    move-object/from16 v28, v0

    #@62
    move-object/from16 v0, v28

    #@64
    iget v11, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@66
    .line 1693
    .local v11, "exponent":I
    const/16 v28, 0x1

    #@68
    move/from16 v0, v20

    #@6a
    move/from16 v1, v28

    #@6c
    if-le v0, v1, :cond_13

    #@6e
    move/from16 v0, v20

    #@70
    move/from16 v1, v22

    #@72
    if-eq v0, v1, :cond_13

    #@74
    .line 1695
    if-lez v11, :cond_12

    #@76
    add-int/lit8 v28, v11, -0x1

    #@78
    div-int v11, v28, v20

    #@7a
    .line 1696
    :goto_3
    mul-int v11, v11, v20

    #@7c
    .line 1707
    :goto_4
    add-int v23, v22, v21

    #@7e
    .line 1710
    .local v23, "minimumDigits":I
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@82
    move-object/from16 v28, v0

    #@84
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DigitList;->isZero()Z

    #@87
    move-result v28

    #@88
    if-eqz v28, :cond_16

    #@8a
    move/from16 v19, v22

    #@8c
    .line 1711
    .local v19, "integerDigits":I
    :goto_5
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@90
    move-object/from16 v28, v0

    #@92
    move-object/from16 v0, v28

    #@94
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@96
    move/from16 v26, v0

    #@98
    .line 1712
    .local v26, "totalDigits":I
    move/from16 v0, v23

    #@9a
    move/from16 v1, v26

    #@9c
    if-le v0, v1, :cond_2

    #@9e
    .line 1713
    move/from16 v26, v23

    #@a0
    .line 1714
    :cond_2
    move/from16 v0, v19

    #@a2
    move/from16 v1, v26

    #@a4
    if-le v0, v1, :cond_3

    #@a6
    .line 1715
    move/from16 v26, v19

    #@a8
    .line 1717
    :cond_3
    const/16 v16, 0x0

    #@aa
    .end local v25    # "recordFractionDigits":Z
    .local v16, "i":I
    :goto_6
    move/from16 v0, v16

    #@ac
    move/from16 v1, v26

    #@ae
    if-ge v0, v1, :cond_1a

    #@b0
    .line 1718
    move/from16 v0, v16

    #@b2
    move/from16 v1, v19

    #@b4
    if-ne v0, v1, :cond_a

    #@b6
    .line 1720
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@b9
    move-result v28

    #@ba
    if-nez v28, :cond_17

    #@bc
    .line 1721
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@bf
    move-result v28

    #@c0
    move-object/from16 v0, p2

    #@c2
    move/from16 v1, v28

    #@c4
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@c7
    .line 1727
    :cond_4
    :goto_7
    if-eqz p3, :cond_5

    #@c9
    .line 1728
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@cc
    move-result v18

    #@cd
    .line 1729
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@cf
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@d2
    move-result v29

    #@d3
    move-object/from16 v0, p0

    #@d5
    move-object/from16 v1, v28

    #@d7
    move/from16 v2, v17

    #@d9
    move/from16 v3, v29

    #@db
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@de
    .line 1733
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@e1
    move-result-object v28

    #@e2
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@e4
    move-object/from16 v0, v28

    #@e6
    move-object/from16 v1, v29

    #@e8
    if-ne v0, v1, :cond_6

    #@ea
    .line 1734
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@ed
    move-result v28

    #@ee
    move-object/from16 v0, p2

    #@f0
    move/from16 v1, v28

    #@f2
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@f5
    .line 1736
    :cond_6
    move-object/from16 v0, p1

    #@f7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@fa
    .line 1737
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@fd
    move-result-object v28

    #@fe
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@100
    move-object/from16 v0, v28

    #@102
    move-object/from16 v1, v29

    #@104
    if-ne v0, v1, :cond_7

    #@106
    .line 1738
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@109
    move-result v28

    #@10a
    move-object/from16 v0, p2

    #@10c
    move/from16 v1, v28

    #@10e
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@111
    .line 1742
    :cond_7
    if-eqz p3, :cond_8

    #@113
    .line 1744
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@116
    move-result v28

    #@117
    add-int/lit8 v5, v28, -0x1

    #@119
    .line 1745
    .local v5, "decimalSeparatorBegin":I
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@11b
    .line 1746
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@11e
    move-result v29

    #@11f
    .line 1745
    move-object/from16 v0, p0

    #@121
    move-object/from16 v1, v28

    #@123
    move/from16 v2, v29

    #@125
    invoke-direct {v0, v1, v5, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@128
    .line 1747
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@12b
    move-result v12

    #@12c
    .line 1750
    .end local v5    # "decimalSeparatorBegin":I
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@12f
    move-result v28

    #@130
    const/16 v29, 0x1

    #@132
    move/from16 v0, v28

    #@134
    move/from16 v1, v29

    #@136
    if-ne v0, v1, :cond_18

    #@138
    .line 1751
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@13b
    move-result v28

    #@13c
    move-object/from16 v0, p2

    #@13e
    move/from16 v1, v28

    #@140
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@143
    .line 1755
    :cond_9
    :goto_8
    move-object/from16 v0, p2

    #@145
    instance-of v0, v0, Landroid/icu/text/UFieldPosition;

    #@147
    move/from16 v25, v0

    #@149
    .line 1758
    :cond_a
    move-object/from16 v0, p0

    #@14b
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@14d
    move-object/from16 v28, v0

    #@14f
    move-object/from16 v0, v28

    #@151
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@153
    move/from16 v28, v0

    #@155
    move/from16 v0, v16

    #@157
    move/from16 v1, v28

    #@159
    if-ge v0, v1, :cond_19

    #@15b
    move-object/from16 v0, p0

    #@15d
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@15f
    move-object/from16 v28, v0

    #@161
    move-object/from16 v0, v28

    #@163
    move/from16 v1, v16

    #@165
    invoke-virtual {v0, v1}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    #@168
    move-result v6

    #@169
    .line 1759
    .local v6, "digit":B
    :goto_9
    aget-char v28, v7, v6

    #@16b
    move-object/from16 v0, p1

    #@16d
    move/from16 v1, v28

    #@16f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@172
    .line 1760
    if-eqz v25, :cond_b

    #@174
    .line 1761
    add-int/lit8 v13, v13, 0x1

    #@176
    .line 1762
    const-wide/16 v28, 0xa

    #@178
    mul-long v14, v14, v28

    #@17a
    .line 1763
    int-to-long v0, v6

    #@17b
    move-wide/from16 v28, v0

    #@17d
    add-long v14, v14, v28

    #@17f
    .line 1717
    :cond_b
    add-int/lit8 v16, v16, 0x1

    #@181
    goto/16 :goto_6

    #@183
    .line 1637
    .end local v4    # "decimal":C
    .end local v6    # "digit":B
    .end local v11    # "exponent":I
    .end local v12    # "fracBegin":I
    .end local v13    # "fractionalDigitsCount":I
    .end local v14    # "fractionalDigits":J
    .end local v16    # "i":I
    .end local v17    # "intBegin":I
    .end local v18    # "intEnd":I
    .end local v19    # "integerDigits":I
    .end local v20    # "maxIntDig":I
    .end local v21    # "minFracDig":I
    .end local v22    # "minIntDig":I
    .end local v23    # "minimumDigits":I
    .end local v26    # "totalDigits":I
    .end local v27    # "useSigDig":Z
    :cond_c
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@187
    move-object/from16 v28, v0

    #@189
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    #@18c
    move-result v4

    #@18d
    .restart local v4    # "decimal":C
    goto/16 :goto_0

    #@18f
    .line 1646
    .restart local v20    # "maxIntDig":I
    .restart local v22    # "minIntDig":I
    .restart local v27    # "useSigDig":Z
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@192
    move-result v28

    #@193
    const/16 v29, 0x1

    #@195
    move/from16 v0, v28

    #@197
    move/from16 v1, v29

    #@199
    if-ne v0, v1, :cond_e

    #@19b
    .line 1647
    const/16 v28, -0x1

    #@19d
    move-object/from16 v0, p2

    #@19f
    move/from16 v1, v28

    #@1a1
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@1a4
    goto/16 :goto_1

    #@1a6
    .line 1648
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@1a9
    move-result-object v28

    #@1aa
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@1ac
    move-object/from16 v0, v28

    #@1ae
    move-object/from16 v1, v29

    #@1b0
    if-ne v0, v1, :cond_f

    #@1b2
    .line 1649
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@1b5
    move-result v28

    #@1b6
    move-object/from16 v0, p2

    #@1b8
    move/from16 v1, v28

    #@1ba
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@1bd
    .line 1650
    const/16 v28, -0x1

    #@1bf
    move-object/from16 v0, p2

    #@1c1
    move/from16 v1, v28

    #@1c3
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@1c6
    goto/16 :goto_1

    #@1c8
    .line 1651
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@1cb
    move-result-object v28

    #@1cc
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@1ce
    move-object/from16 v0, v28

    #@1d0
    move-object/from16 v1, v29

    #@1d2
    if-ne v0, v1, :cond_0

    #@1d4
    .line 1652
    const/16 v28, -0x1

    #@1d6
    move-object/from16 v0, p2

    #@1d8
    move/from16 v1, v28

    #@1da
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@1dd
    goto/16 :goto_1

    #@1df
    .line 1668
    .restart local v12    # "fracBegin":I
    .restart local v17    # "intBegin":I
    .restart local v18    # "intEnd":I
    .restart local v21    # "minFracDig":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@1e2
    move-result v21

    #@1e3
    .line 1669
    const/16 v28, 0x8

    #@1e5
    move/from16 v0, v20

    #@1e7
    move/from16 v1, v28

    #@1e9
    if-le v0, v1, :cond_11

    #@1eb
    .line 1670
    const/16 v20, 0x1

    #@1ed
    const/16 v28, 0x1

    #@1ef
    .line 1671
    move/from16 v0, v28

    #@1f1
    move/from16 v1, v22

    #@1f3
    if-ge v0, v1, :cond_11

    #@1f5
    .line 1672
    move/from16 v20, v22

    #@1f7
    .line 1675
    :cond_11
    move/from16 v0, v20

    #@1f9
    move/from16 v1, v22

    #@1fb
    if-le v0, v1, :cond_1

    #@1fd
    .line 1676
    const/16 v22, 0x1

    #@1ff
    goto/16 :goto_2

    #@201
    .line 1695
    .restart local v11    # "exponent":I
    .restart local v13    # "fractionalDigitsCount":I
    .restart local v14    # "fractionalDigits":J
    .restart local v25    # "recordFractionDigits":Z
    :cond_12
    div-int v28, v11, v20

    #@203
    add-int/lit8 v11, v28, -0x1

    #@205
    goto/16 :goto_3

    #@207
    .line 1700
    :cond_13
    if-gtz v22, :cond_14

    #@209
    if-lez v21, :cond_15

    #@20b
    :cond_14
    move/from16 v28, v22

    #@20d
    :goto_a
    sub-int v11, v11, v28

    #@20f
    goto/16 :goto_4

    #@211
    :cond_15
    const/16 v28, 0x1

    #@213
    goto :goto_a

    #@214
    .line 1710
    .restart local v23    # "minimumDigits":I
    :cond_16
    move-object/from16 v0, p0

    #@216
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@218
    move-object/from16 v28, v0

    #@21a
    move-object/from16 v0, v28

    #@21c
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@21e
    move/from16 v28, v0

    #@220
    sub-int v19, v28, v11

    #@222
    .restart local v19    # "integerDigits":I
    goto/16 :goto_5

    #@224
    .line 1722
    .end local v25    # "recordFractionDigits":Z
    .restart local v16    # "i":I
    .restart local v26    # "totalDigits":I
    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@227
    move-result-object v28

    #@228
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@22a
    move-object/from16 v0, v28

    #@22c
    move-object/from16 v1, v29

    #@22e
    if-ne v0, v1, :cond_4

    #@230
    .line 1723
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@233
    move-result v28

    #@234
    move-object/from16 v0, p2

    #@236
    move/from16 v1, v28

    #@238
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@23b
    goto/16 :goto_7

    #@23d
    .line 1752
    :cond_18
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@240
    move-result-object v28

    #@241
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@243
    move-object/from16 v0, v28

    #@245
    move-object/from16 v1, v29

    #@247
    if-ne v0, v1, :cond_9

    #@249
    .line 1753
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@24c
    move-result v28

    #@24d
    move-object/from16 v0, p2

    #@24f
    move/from16 v1, v28

    #@251
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@254
    goto/16 :goto_8

    #@256
    .line 1758
    :cond_19
    const/4 v6, 0x0

    #@257
    goto/16 :goto_9

    #@259
    .line 1768
    :cond_1a
    move-object/from16 v0, p0

    #@25b
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@25d
    move-object/from16 v28, v0

    #@25f
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DigitList;->isZero()Z

    #@262
    move-result v28

    #@263
    if-eqz v28, :cond_1b

    #@265
    if-nez v26, :cond_1b

    #@267
    .line 1769
    const/16 v28, 0x0

    #@269
    aget-char v28, v7, v28

    #@26b
    move-object/from16 v0, p1

    #@26d
    move/from16 v1, v28

    #@26f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@272
    .line 1773
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@275
    move-result v28

    #@276
    if-nez v28, :cond_2a

    #@278
    .line 1774
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    #@27b
    move-result v28

    #@27c
    if-gez v28, :cond_1c

    #@27e
    .line 1775
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@281
    move-result v28

    #@282
    move-object/from16 v0, p2

    #@284
    move/from16 v1, v28

    #@286
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@289
    .line 1792
    :cond_1c
    :goto_b
    if-eqz v25, :cond_1d

    #@28b
    move-object/from16 v28, p2

    #@28d
    .line 1793
    check-cast v28, Landroid/icu/text/UFieldPosition;

    #@28f
    move-object/from16 v0, v28

    #@291
    invoke-virtual {v0, v13, v14, v15}, Landroid/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    #@294
    .line 1798
    :cond_1d
    if-eqz p3, :cond_1f

    #@296
    .line 1799
    if-gez v18, :cond_1e

    #@298
    .line 1800
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@29a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@29d
    move-result v29

    #@29e
    move-object/from16 v0, p0

    #@2a0
    move-object/from16 v1, v28

    #@2a2
    move/from16 v2, v17

    #@2a4
    move/from16 v3, v29

    #@2a6
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@2a9
    .line 1802
    :cond_1e
    if-lez v12, :cond_1f

    #@2ab
    .line 1803
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@2ad
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2b0
    move-result v29

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    move-object/from16 v1, v28

    #@2b5
    move/from16 v2, v29

    #@2b7
    invoke-direct {v0, v1, v12, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@2ba
    .line 1809
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@2bd
    move-result-object v28

    #@2be
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@2c0
    move-object/from16 v0, v28

    #@2c2
    move-object/from16 v1, v29

    #@2c4
    if-ne v0, v1, :cond_20

    #@2c6
    .line 1810
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2c9
    move-result v28

    #@2ca
    move-object/from16 v0, p2

    #@2cc
    move/from16 v1, v28

    #@2ce
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@2d1
    .line 1815
    :cond_20
    move-object/from16 v0, p0

    #@2d3
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@2d5
    move-object/from16 v28, v0

    #@2d7
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    #@2da
    move-result-object v28

    #@2db
    move-object/from16 v0, p1

    #@2dd
    move-object/from16 v1, v28

    #@2df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e2
    .line 1816
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@2e5
    move-result-object v28

    #@2e6
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@2e8
    move-object/from16 v0, v28

    #@2ea
    move-object/from16 v1, v29

    #@2ec
    if-ne v0, v1, :cond_21

    #@2ee
    .line 1817
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2f1
    move-result v28

    #@2f2
    move-object/from16 v0, p2

    #@2f4
    move/from16 v1, v28

    #@2f6
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@2f9
    .line 1821
    :cond_21
    if-eqz p3, :cond_22

    #@2fb
    .line 1822
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@2fd
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@300
    move-result v29

    #@301
    .line 1823
    move-object/from16 v0, p0

    #@303
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@305
    move-object/from16 v30, v0

    #@307
    invoke-virtual/range {v30 .. v30}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    #@30a
    move-result-object v30

    #@30b
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    #@30e
    move-result v30

    #@30f
    .line 1822
    sub-int v29, v29, v30

    #@311
    .line 1823
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@314
    move-result v30

    #@315
    .line 1822
    move-object/from16 v0, p0

    #@317
    move-object/from16 v1, v28

    #@319
    move/from16 v2, v29

    #@31b
    move/from16 v3, v30

    #@31d
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@320
    .line 1828
    :cond_22
    move-object/from16 v0, p0

    #@322
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@324
    move-object/from16 v28, v0

    #@326
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DigitList;->isZero()Z

    #@329
    move-result v28

    #@32a
    if-eqz v28, :cond_23

    #@32c
    .line 1829
    const/4 v11, 0x0

    #@32d
    .line 1831
    :cond_23
    if-gez v11, :cond_2f

    #@32f
    const/16 v24, 0x1

    #@331
    .line 1834
    .local v24, "negativeExponent":Z
    :goto_c
    if-nez v24, :cond_24

    #@333
    move-object/from16 v0, p0

    #@335
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@337
    move/from16 v28, v0

    #@339
    if-eqz v28, :cond_25

    #@33b
    .line 1835
    :cond_24
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@33e
    move-result-object v28

    #@33f
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@341
    move-object/from16 v0, v28

    #@343
    move-object/from16 v1, v29

    #@345
    if-ne v0, v1, :cond_25

    #@347
    .line 1836
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@34a
    move-result v28

    #@34b
    move-object/from16 v0, p2

    #@34d
    move/from16 v1, v28

    #@34f
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@352
    .line 1840
    :cond_25
    if-eqz v24, :cond_30

    #@354
    .line 1841
    neg-int v11, v11

    #@355
    .line 1842
    move-object/from16 v0, p0

    #@357
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@359
    move-object/from16 v28, v0

    #@35b
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getMinusString()Ljava/lang/String;

    #@35e
    move-result-object v28

    #@35f
    move-object/from16 v0, p1

    #@361
    move-object/from16 v1, v28

    #@363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@366
    .line 1845
    if-eqz p3, :cond_26

    #@368
    .line 1847
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@36a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@36d
    move-result v29

    #@36e
    add-int/lit8 v29, v29, -0x1

    #@370
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@373
    move-result v30

    #@374
    move-object/from16 v0, p0

    #@376
    move-object/from16 v1, v28

    #@378
    move/from16 v2, v29

    #@37a
    move/from16 v3, v30

    #@37c
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@37f
    .line 1860
    :cond_26
    :goto_d
    if-nez v24, :cond_27

    #@381
    move-object/from16 v0, p0

    #@383
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@385
    move/from16 v28, v0

    #@387
    if-eqz v28, :cond_28

    #@389
    .line 1861
    :cond_27
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@38c
    move-result-object v28

    #@38d
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@38f
    move-object/from16 v0, v28

    #@391
    move-object/from16 v1, v29

    #@393
    if-ne v0, v1, :cond_28

    #@395
    .line 1862
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@398
    move-result v28

    #@399
    move-object/from16 v0, p2

    #@39b
    move/from16 v1, v28

    #@39d
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@3a0
    .line 1866
    :cond_28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@3a3
    move-result v8

    #@3a4
    .line 1867
    .local v8, "expBegin":I
    move-object/from16 v0, p0

    #@3a6
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@3a8
    move-object/from16 v28, v0

    #@3aa
    int-to-long v0, v11

    #@3ab
    move-wide/from16 v30, v0

    #@3ad
    move-object/from16 v0, v28

    #@3af
    move-wide/from16 v1, v30

    #@3b1
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DigitList;->set(J)V

    #@3b4
    .line 1869
    move-object/from16 v0, p0

    #@3b6
    iget-byte v9, v0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@3b8
    .line 1870
    .local v9, "expDig":I
    move-object/from16 v0, p0

    #@3ba
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@3bc
    move/from16 v28, v0

    #@3be
    if-eqz v28, :cond_29

    #@3c0
    const/16 v28, 0x1

    #@3c2
    move/from16 v0, v28

    #@3c4
    if-ge v9, v0, :cond_29

    #@3c6
    .line 1871
    const/4 v9, 0x1

    #@3c7
    .line 1873
    :cond_29
    move-object/from16 v0, p0

    #@3c9
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@3cb
    move-object/from16 v28, v0

    #@3cd
    move-object/from16 v0, v28

    #@3cf
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@3d1
    move/from16 v16, v0

    #@3d3
    :goto_e
    move/from16 v0, v16

    #@3d5
    if-ge v0, v9, :cond_31

    #@3d7
    .line 1874
    const/16 v28, 0x0

    #@3d9
    aget-char v28, v7, v28

    #@3db
    move-object/from16 v0, p1

    #@3dd
    move/from16 v1, v28

    #@3df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3e2
    .line 1873
    add-int/lit8 v16, v16, 0x1

    #@3e4
    goto :goto_e

    #@3e5
    .line 1777
    .end local v8    # "expBegin":I
    .end local v9    # "expDig":I
    .end local v24    # "negativeExponent":Z
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@3e8
    move-result v28

    #@3e9
    const/16 v29, 0x1

    #@3eb
    move/from16 v0, v28

    #@3ed
    move/from16 v1, v29

    #@3ef
    if-ne v0, v1, :cond_2c

    #@3f1
    .line 1778
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@3f4
    move-result v28

    #@3f5
    if-gez v28, :cond_2b

    #@3f7
    .line 1779
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@3fa
    move-result v28

    #@3fb
    move-object/from16 v0, p2

    #@3fd
    move/from16 v1, v28

    #@3ff
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@402
    .line 1781
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@405
    move-result v28

    #@406
    move-object/from16 v0, p2

    #@408
    move/from16 v1, v28

    #@40a
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@40d
    goto/16 :goto_b

    #@40f
    .line 1782
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@412
    move-result-object v28

    #@413
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@415
    move-object/from16 v0, v28

    #@417
    move-object/from16 v1, v29

    #@419
    if-ne v0, v1, :cond_2d

    #@41b
    .line 1783
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    #@41e
    move-result v28

    #@41f
    if-gez v28, :cond_1c

    #@421
    .line 1784
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@424
    move-result v28

    #@425
    move-object/from16 v0, p2

    #@427
    move/from16 v1, v28

    #@429
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@42c
    goto/16 :goto_b

    #@42e
    .line 1786
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@431
    move-result-object v28

    #@432
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@434
    move-object/from16 v0, v28

    #@436
    move-object/from16 v1, v29

    #@438
    if-ne v0, v1, :cond_1c

    #@43a
    .line 1787
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@43d
    move-result v28

    #@43e
    if-gez v28, :cond_2e

    #@440
    .line 1788
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@443
    move-result v28

    #@444
    move-object/from16 v0, p2

    #@446
    move/from16 v1, v28

    #@448
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@44b
    .line 1790
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@44e
    move-result v28

    #@44f
    move-object/from16 v0, p2

    #@451
    move/from16 v1, v28

    #@453
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@456
    goto/16 :goto_b

    #@458
    .line 1831
    :cond_2f
    const/16 v24, 0x0

    #@45a
    goto/16 :goto_c

    #@45c
    .line 1849
    .restart local v24    # "negativeExponent":Z
    :cond_30
    move-object/from16 v0, p0

    #@45e
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@460
    move/from16 v28, v0

    #@462
    if-eqz v28, :cond_26

    #@464
    .line 1850
    move-object/from16 v0, p0

    #@466
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@468
    move-object/from16 v28, v0

    #@46a
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getPlusString()Ljava/lang/String;

    #@46d
    move-result-object v28

    #@46e
    move-object/from16 v0, p1

    #@470
    move-object/from16 v1, v28

    #@472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@475
    .line 1852
    if-eqz p3, :cond_26

    #@477
    .line 1854
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@47a
    move-result v28

    #@47b
    add-int/lit8 v10, v28, -0x1

    #@47d
    .line 1855
    .local v10, "expSignBegin":I
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@47f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@482
    move-result v29

    #@483
    move-object/from16 v0, p0

    #@485
    move-object/from16 v1, v28

    #@487
    move/from16 v2, v29

    #@489
    invoke-direct {v0, v1, v10, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@48c
    goto/16 :goto_d

    #@48e
    .line 1876
    .end local v10    # "expSignBegin":I
    .restart local v8    # "expBegin":I
    .restart local v9    # "expDig":I
    :cond_31
    const/16 v16, 0x0

    #@490
    :goto_f
    move-object/from16 v0, p0

    #@492
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@494
    move-object/from16 v28, v0

    #@496
    move-object/from16 v0, v28

    #@498
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@49a
    move/from16 v28, v0

    #@49c
    move/from16 v0, v16

    #@49e
    move/from16 v1, v28

    #@4a0
    if-ge v0, v1, :cond_33

    #@4a2
    .line 1877
    move-object/from16 v0, p0

    #@4a4
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@4a6
    move-object/from16 v28, v0

    #@4a8
    move-object/from16 v0, v28

    #@4aa
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@4ac
    move/from16 v28, v0

    #@4ae
    move/from16 v0, v16

    #@4b0
    move/from16 v1, v28

    #@4b2
    if-ge v0, v1, :cond_32

    #@4b4
    move-object/from16 v0, p0

    #@4b6
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@4b8
    move-object/from16 v28, v0

    #@4ba
    move-object/from16 v0, v28

    #@4bc
    move/from16 v1, v16

    #@4be
    invoke-virtual {v0, v1}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    #@4c1
    move-result v28

    #@4c2
    aget-char v28, v7, v28

    #@4c4
    :goto_10
    move-object/from16 v0, p1

    #@4c6
    move/from16 v1, v28

    #@4c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4cb
    .line 1876
    add-int/lit8 v16, v16, 0x1

    #@4cd
    goto :goto_f

    #@4ce
    .line 1878
    :cond_32
    const/16 v28, 0x0

    #@4d0
    aget-char v28, v7, v28

    #@4d2
    goto :goto_10

    #@4d3
    .line 1882
    :cond_33
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@4d6
    move-result-object v28

    #@4d7
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@4d9
    move-object/from16 v0, v28

    #@4db
    move-object/from16 v1, v29

    #@4dd
    if-ne v0, v1, :cond_34

    #@4df
    .line 1883
    move-object/from16 v0, p2

    #@4e1
    invoke-virtual {v0, v8}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@4e4
    .line 1884
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@4e7
    move-result v28

    #@4e8
    move-object/from16 v0, p2

    #@4ea
    move/from16 v1, v28

    #@4ec
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@4ef
    .line 1888
    :cond_34
    if-eqz p3, :cond_35

    #@4f1
    .line 1889
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@4f3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@4f6
    move-result v29

    #@4f7
    move-object/from16 v0, p0

    #@4f9
    move-object/from16 v1, v28

    #@4fb
    move/from16 v2, v29

    #@4fd
    invoke-direct {v0, v1, v8, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@500
    .line 1634
    :cond_35
    return-void
.end method

.method private subformatFixed(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZ)V
    .locals 30
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "isInteger"    # Z
    .param p4, "parseAttr"    # Z

    #@0
    .prologue
    .line 1407
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@4
    move-object/from16 v27, v0

    #@6
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DecimalFormatSymbols;->getDigitsLocal()[C

    #@9
    move-result-object v9

    #@a
    .line 1409
    .local v9, "digits":[C
    move-object/from16 v0, p0

    #@c
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@e
    move/from16 v27, v0

    #@10
    if-nez v27, :cond_8

    #@12
    .line 1410
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@16
    move-object/from16 v27, v0

    #@18
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@1b
    move-result v15

    #@1c
    .line 1411
    .local v15, "grouping":C
    :goto_0
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@20
    move/from16 v27, v0

    #@22
    if-nez v27, :cond_9

    #@24
    .line 1412
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@28
    move-object/from16 v27, v0

    #@2a
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@2d
    move-result v5

    #@2e
    .line 1413
    .local v5, "decimal":C
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@31
    move-result v26

    #@32
    .line 1414
    .local v26, "useSigDig":Z
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@35
    move-result v18

    #@36
    .line 1415
    .local v18, "maxIntDig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@39
    move-result v20

    #@3a
    .line 1418
    .local v20, "minIntDig":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@3d
    move-result v17

    #@3e
    .line 1420
    .local v17, "intBegin":I
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@41
    move-result v27

    #@42
    if-nez v27, :cond_a

    #@44
    .line 1421
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@47
    move-result v27

    #@48
    move-object/from16 v0, p2

    #@4a
    move/from16 v1, v27

    #@4c
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@4f
    .line 1425
    :cond_0
    :goto_2
    const-wide/16 v12, 0x0

    #@51
    .line 1426
    .local v12, "fractionalDigits":J
    const/4 v14, 0x0

    #@52
    .line 1427
    .local v14, "fractionalDigitsCount":I
    const/16 v23, 0x0

    #@54
    .line 1429
    .local v23, "recordFractionDigits":Z
    const/16 v24, 0x0

    #@56
    .line 1430
    .local v24, "sigCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    #@59
    move-result v21

    #@5a
    .line 1431
    .local v21, "minSigDig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    #@5d
    move-result v19

    #@5e
    .line 1432
    .local v19, "maxSigDig":I
    if-nez v26, :cond_1

    #@60
    .line 1433
    const/16 v21, 0x0

    #@62
    .line 1434
    const v19, 0x7fffffff

    #@65
    .line 1440
    :cond_1
    if-eqz v26, :cond_b

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@6b
    move-object/from16 v27, v0

    #@6d
    move-object/from16 v0, v27

    #@6f
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@71
    move/from16 v27, v0

    #@73
    const/16 v28, 0x1

    #@75
    move/from16 v0, v28

    #@77
    move/from16 v1, v27

    #@79
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@7c
    move-result v4

    #@7d
    .line 1441
    .local v4, "count":I
    :goto_3
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@81
    move-object/from16 v27, v0

    #@83
    move-object/from16 v0, v27

    #@85
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@87
    move/from16 v27, v0

    #@89
    if-lez v27, :cond_2

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@8f
    move-object/from16 v27, v0

    #@91
    move-object/from16 v0, v27

    #@93
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@95
    move/from16 v27, v0

    #@97
    move/from16 v0, v27

    #@99
    if-ge v4, v0, :cond_2

    #@9b
    .line 1442
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@9f
    move-object/from16 v27, v0

    #@a1
    move-object/from16 v0, v27

    #@a3
    iget v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@a5
    .line 1450
    :cond_2
    const/4 v7, 0x0

    #@a6
    .line 1451
    .local v7, "digitIndex":I
    move/from16 v0, v18

    #@a8
    if-le v4, v0, :cond_3

    #@aa
    if-ltz v18, :cond_3

    #@ac
    .line 1452
    move/from16 v4, v18

    #@ae
    .line 1453
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@b2
    move-object/from16 v27, v0

    #@b4
    move-object/from16 v0, v27

    #@b6
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@b8
    move/from16 v27, v0

    #@ba
    sub-int v7, v27, v18

    #@bc
    .line 1456
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@bf
    move-result v25

    #@c0
    .line 1458
    .local v25, "sizeBeforeIntegerPart":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@c3
    move-result v22

    #@c4
    .line 1460
    .local v22, "posSinceLastGrouping":I
    add-int/lit8 v16, v4, -0x1

    #@c6
    .local v16, "i":I
    move v8, v7

    #@c7
    .end local v7    # "digitIndex":I
    .local v8, "digitIndex":I
    :goto_4
    if-ltz v16, :cond_d

    #@c9
    .line 1461
    move-object/from16 v0, p0

    #@cb
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@cd
    move-object/from16 v27, v0

    #@cf
    move-object/from16 v0, v27

    #@d1
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@d3
    move/from16 v27, v0

    #@d5
    move/from16 v0, v16

    #@d7
    move/from16 v1, v27

    #@d9
    if-ge v0, v1, :cond_c

    #@db
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@df
    move-object/from16 v27, v0

    #@e1
    move-object/from16 v0, v27

    #@e3
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@e5
    move/from16 v27, v0

    #@e7
    move/from16 v0, v27

    #@e9
    if-ge v8, v0, :cond_c

    #@eb
    .line 1462
    move/from16 v0, v24

    #@ed
    move/from16 v1, v19

    #@ef
    if-ge v0, v1, :cond_c

    #@f1
    .line 1464
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@f5
    move-object/from16 v27, v0

    #@f7
    add-int/lit8 v7, v8, 0x1

    #@f9
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    move-object/from16 v0, v27

    #@fb
    invoke-virtual {v0, v8}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    #@fe
    move-result v27

    #@ff
    aget-char v27, v9, v27

    #@101
    move-object/from16 v0, p1

    #@103
    move/from16 v1, v27

    #@105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@108
    .line 1465
    add-int/lit8 v24, v24, 0x1

    #@10a
    .line 1475
    :goto_5
    move-object/from16 v0, p0

    #@10c
    move/from16 v1, v16

    #@10e
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;->isGroupingPosition(I)Z

    #@111
    move-result v27

    #@112
    if-eqz v27, :cond_7

    #@114
    .line 1478
    if-eqz p4, :cond_4

    #@116
    .line 1479
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@118
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@11b
    move-result v28

    #@11c
    move-object/from16 v0, p0

    #@11e
    move-object/from16 v1, v27

    #@120
    move/from16 v2, v22

    #@122
    move/from16 v3, v28

    #@124
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@127
    .line 1482
    :cond_4
    move-object/from16 v0, p1

    #@129
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@12c
    .line 1484
    if-eqz p4, :cond_5

    #@12e
    .line 1486
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@130
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@133
    move-result v28

    #@134
    add-int/lit8 v28, v28, -0x1

    #@136
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@139
    move-result v29

    #@13a
    move-object/from16 v0, p0

    #@13c
    move-object/from16 v1, v27

    #@13e
    move/from16 v2, v28

    #@140
    move/from16 v3, v29

    #@142
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@145
    .line 1490
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@148
    move-result-object v27

    #@149
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@14b
    move-object/from16 v0, v27

    #@14d
    move-object/from16 v1, v28

    #@14f
    if-ne v0, v1, :cond_6

    #@151
    .line 1491
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    #@154
    move-result v27

    #@155
    if-nez v27, :cond_6

    #@157
    .line 1492
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@15a
    move-result v27

    #@15b
    add-int/lit8 v27, v27, -0x1

    #@15d
    move-object/from16 v0, p2

    #@15f
    move/from16 v1, v27

    #@161
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@164
    .line 1493
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@167
    move-result v27

    #@168
    move-object/from16 v0, p2

    #@16a
    move/from16 v1, v27

    #@16c
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@16f
    .line 1497
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@172
    move-result v22

    #@173
    .line 1460
    :cond_7
    add-int/lit8 v16, v16, -0x1

    #@175
    move v8, v7

    #@176
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    goto/16 :goto_4

    #@178
    .line 1410
    .end local v4    # "count":I
    .end local v5    # "decimal":C
    .end local v8    # "digitIndex":I
    .end local v12    # "fractionalDigits":J
    .end local v14    # "fractionalDigitsCount":I
    .end local v15    # "grouping":C
    .end local v16    # "i":I
    .end local v17    # "intBegin":I
    .end local v18    # "maxIntDig":I
    .end local v19    # "maxSigDig":I
    .end local v20    # "minIntDig":I
    .end local v21    # "minSigDig":I
    .end local v22    # "posSinceLastGrouping":I
    .end local v23    # "recordFractionDigits":Z
    .end local v24    # "sigCount":I
    .end local v25    # "sizeBeforeIntegerPart":I
    .end local v26    # "useSigDig":Z
    :cond_8
    move-object/from16 v0, p0

    #@17a
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@17c
    move-object/from16 v27, v0

    #@17e
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparator()C

    #@181
    move-result v15

    #@182
    .restart local v15    # "grouping":C
    goto/16 :goto_0

    #@184
    .line 1412
    :cond_9
    move-object/from16 v0, p0

    #@186
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@188
    move-object/from16 v27, v0

    #@18a
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    #@18d
    move-result v5

    #@18e
    .restart local v5    # "decimal":C
    goto/16 :goto_1

    #@190
    .line 1422
    .restart local v17    # "intBegin":I
    .restart local v18    # "maxIntDig":I
    .restart local v20    # "minIntDig":I
    .restart local v26    # "useSigDig":Z
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@193
    move-result-object v27

    #@194
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@196
    move-object/from16 v0, v27

    #@198
    move-object/from16 v1, v28

    #@19a
    if-ne v0, v1, :cond_0

    #@19c
    .line 1423
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@19f
    move-result v27

    #@1a0
    move-object/from16 v0, p2

    #@1a2
    move/from16 v1, v27

    #@1a4
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@1a7
    goto/16 :goto_2

    #@1a9
    .line 1440
    .restart local v12    # "fractionalDigits":J
    .restart local v14    # "fractionalDigitsCount":I
    .restart local v19    # "maxSigDig":I
    .restart local v21    # "minSigDig":I
    .restart local v23    # "recordFractionDigits":Z
    .restart local v24    # "sigCount":I
    :cond_b
    move/from16 v4, v20

    #@1ab
    .restart local v4    # "count":I
    goto/16 :goto_3

    #@1ad
    .line 1468
    .restart local v8    # "digitIndex":I
    .restart local v16    # "i":I
    .restart local v22    # "posSinceLastGrouping":I
    .restart local v25    # "sizeBeforeIntegerPart":I
    :cond_c
    const/16 v27, 0x0

    #@1af
    aget-char v27, v9, v27

    #@1b1
    move-object/from16 v0, p1

    #@1b3
    move/from16 v1, v27

    #@1b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1b8
    .line 1469
    if-lez v24, :cond_2f

    #@1ba
    .line 1470
    add-int/lit8 v24, v24, 0x1

    #@1bc
    move v7, v8

    #@1bd
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto/16 :goto_5

    #@1bf
    .line 1503
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@1c2
    move-result v27

    #@1c3
    if-nez v27, :cond_20

    #@1c5
    .line 1504
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@1c8
    move-result v27

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    move/from16 v1, v27

    #@1cd
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@1d0
    .line 1509
    :cond_e
    :goto_6
    if-eqz p4, :cond_f

    #@1d2
    .line 1510
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@1d4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@1d7
    move-result v28

    #@1d8
    move-object/from16 v0, p0

    #@1da
    move-object/from16 v1, v27

    #@1dc
    move/from16 v2, v22

    #@1de
    move/from16 v3, v28

    #@1e0
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@1e3
    .line 1517
    :cond_f
    if-nez v24, :cond_10

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@1e9
    move-object/from16 v27, v0

    #@1eb
    move-object/from16 v0, v27

    #@1ed
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@1ef
    move/from16 v27, v0

    #@1f1
    if-nez v27, :cond_10

    #@1f3
    .line 1518
    const/16 v24, 0x1

    #@1f5
    .line 1523
    :cond_10
    if-nez p3, :cond_21

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@1fb
    move-object/from16 v27, v0

    #@1fd
    move-object/from16 v0, v27

    #@1ff
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@201
    move/from16 v27, v0

    #@203
    move/from16 v0, v27

    #@205
    if-ge v8, v0, :cond_21

    #@207
    const/4 v11, 0x1

    #@208
    .line 1529
    .local v11, "fractionPresent":Z
    :goto_7
    if-nez v11, :cond_11

    #@20a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@20d
    move-result v27

    #@20e
    move/from16 v0, v27

    #@210
    move/from16 v1, v25

    #@212
    if-ne v0, v1, :cond_11

    #@214
    .line 1530
    const/16 v27, 0x0

    #@216
    aget-char v27, v9, v27

    #@218
    move-object/from16 v0, p1

    #@21a
    move/from16 v1, v27

    #@21c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@21f
    .line 1532
    :cond_11
    if-eqz p4, :cond_12

    #@221
    .line 1533
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@223
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@226
    move-result v28

    #@227
    move-object/from16 v0, p0

    #@229
    move-object/from16 v1, v27

    #@22b
    move/from16 v2, v17

    #@22d
    move/from16 v3, v28

    #@22f
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@232
    .line 1536
    :cond_12
    move-object/from16 v0, p0

    #@234
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@236
    move/from16 v27, v0

    #@238
    if-nez v27, :cond_13

    #@23a
    if-eqz v11, :cond_16

    #@23c
    .line 1537
    :cond_13
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@23f
    move-result-object v27

    #@240
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@242
    move-object/from16 v0, v27

    #@244
    move-object/from16 v1, v28

    #@246
    if-ne v0, v1, :cond_14

    #@248
    .line 1538
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@24b
    move-result v27

    #@24c
    move-object/from16 v0, p2

    #@24e
    move/from16 v1, v27

    #@250
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@253
    .line 1540
    :cond_14
    move-object/from16 v0, p1

    #@255
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@258
    .line 1541
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@25b
    move-result-object v27

    #@25c
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@25e
    move-object/from16 v0, v27

    #@260
    move-object/from16 v1, v28

    #@262
    if-ne v0, v1, :cond_15

    #@264
    .line 1542
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@267
    move-result v27

    #@268
    move-object/from16 v0, p2

    #@26a
    move/from16 v1, v27

    #@26c
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@26f
    .line 1545
    :cond_15
    if-eqz p4, :cond_16

    #@271
    .line 1546
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@273
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@276
    move-result v28

    #@277
    add-int/lit8 v28, v28, -0x1

    #@279
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@27c
    move-result v29

    #@27d
    move-object/from16 v0, p0

    #@27f
    move-object/from16 v1, v27

    #@281
    move/from16 v2, v28

    #@283
    move/from16 v3, v29

    #@285
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@288
    .line 1551
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@28b
    move-result v27

    #@28c
    const/16 v28, 0x1

    #@28e
    move/from16 v0, v27

    #@290
    move/from16 v1, v28

    #@292
    if-ne v0, v1, :cond_24

    #@294
    .line 1552
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@297
    move-result v27

    #@298
    move-object/from16 v0, p2

    #@29a
    move/from16 v1, v27

    #@29c
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@29f
    .line 1558
    :cond_17
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2a2
    move-result v10

    #@2a3
    .line 1559
    .local v10, "fracBegin":I
    move-object/from16 v0, p2

    #@2a5
    instance-of v0, v0, Landroid/icu/text/UFieldPosition;

    #@2a7
    move/from16 v23, v0

    #@2a9
    .line 1561
    .local v23, "recordFractionDigits":Z
    if-eqz v26, :cond_25

    #@2ab
    const v4, 0x7fffffff

    #@2ae
    .line 1562
    :goto_9
    if-eqz v26, :cond_19

    #@2b0
    move/from16 v0, v24

    #@2b2
    move/from16 v1, v19

    #@2b4
    if-eq v0, v1, :cond_18

    #@2b6
    .line 1563
    move/from16 v0, v24

    #@2b8
    move/from16 v1, v21

    #@2ba
    if-lt v0, v1, :cond_19

    #@2bc
    move-object/from16 v0, p0

    #@2be
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@2c0
    move-object/from16 v27, v0

    #@2c2
    move-object/from16 v0, v27

    #@2c4
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@2c6
    move/from16 v27, v0

    #@2c8
    move/from16 v0, v27

    #@2ca
    if-ne v8, v0, :cond_19

    #@2cc
    .line 1564
    :cond_18
    const/4 v4, 0x0

    #@2cd
    .line 1566
    :cond_19
    const/16 v16, 0x0

    #@2cf
    :goto_a
    move/from16 v0, v16

    #@2d1
    if-ge v0, v4, :cond_2e

    #@2d3
    .line 1572
    if-nez v26, :cond_26

    #@2d5
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@2d8
    move-result v27

    #@2d9
    move/from16 v0, v16

    #@2db
    move/from16 v1, v27

    #@2dd
    if-lt v0, v1, :cond_26

    #@2df
    .line 1573
    if-nez p3, :cond_1a

    #@2e1
    move-object/from16 v0, p0

    #@2e3
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@2e5
    move-object/from16 v27, v0

    #@2e7
    move-object/from16 v0, v27

    #@2e9
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@2eb
    move/from16 v27, v0

    #@2ed
    move/from16 v0, v27

    #@2ef
    if-lt v8, v0, :cond_26

    #@2f1
    :cond_1a
    move v7, v8

    #@2f2
    .line 1617
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    :cond_1b
    :goto_b
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@2f5
    move-result v27

    #@2f6
    const/16 v28, 0x1

    #@2f8
    move/from16 v0, v27

    #@2fa
    move/from16 v1, v28

    #@2fc
    if-ne v0, v1, :cond_2c

    #@2fe
    .line 1618
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@301
    move-result v27

    #@302
    move-object/from16 v0, p2

    #@304
    move/from16 v1, v27

    #@306
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@309
    .line 1622
    :cond_1c
    :goto_c
    if-eqz v23, :cond_1d

    #@30b
    .line 1623
    check-cast p2, Landroid/icu/text/UFieldPosition;

    #@30d
    .end local p2    # "fieldPosition":Ljava/text/FieldPosition;
    move-object/from16 v0, p2

    #@30f
    invoke-virtual {v0, v14, v12, v13}, Landroid/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    #@312
    .line 1627
    :cond_1d
    if-eqz p4, :cond_1f

    #@314
    move-object/from16 v0, p0

    #@316
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@318
    move/from16 v27, v0

    #@31a
    if-nez v27, :cond_1e

    #@31c
    if-eqz v11, :cond_1f

    #@31e
    .line 1628
    :cond_1e
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@320
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@323
    move-result v28

    #@324
    move-object/from16 v0, p0

    #@326
    move-object/from16 v1, v27

    #@328
    move/from16 v2, v28

    #@32a
    invoke-direct {v0, v1, v10, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@32d
    .line 1406
    :cond_1f
    return-void

    #@32e
    .line 1505
    .end local v7    # "digitIndex":I
    .end local v10    # "fracBegin":I
    .end local v11    # "fractionPresent":Z
    .restart local v8    # "digitIndex":I
    .local v23, "recordFractionDigits":Z
    .restart local p2    # "fieldPosition":Ljava/text/FieldPosition;
    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@331
    move-result-object v27

    #@332
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@334
    move-object/from16 v0, v27

    #@336
    move-object/from16 v1, v28

    #@338
    if-ne v0, v1, :cond_e

    #@33a
    .line 1506
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@33d
    move-result v27

    #@33e
    move-object/from16 v0, p2

    #@340
    move/from16 v1, v27

    #@342
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@345
    goto/16 :goto_6

    #@347
    .line 1524
    :cond_21
    if-eqz v26, :cond_23

    #@349
    move/from16 v0, v24

    #@34b
    move/from16 v1, v21

    #@34d
    if-ge v0, v1, :cond_22

    #@34f
    :goto_d
    const/4 v11, 0x1

    #@350
    goto/16 :goto_7

    #@352
    :cond_22
    const/4 v11, 0x0

    #@353
    goto/16 :goto_7

    #@355
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@358
    move-result v27

    #@359
    if-lez v27, :cond_22

    #@35b
    goto :goto_d

    #@35c
    .line 1553
    .restart local v11    # "fractionPresent":Z
    :cond_24
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@35f
    move-result-object v27

    #@360
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@362
    move-object/from16 v0, v27

    #@364
    move-object/from16 v1, v28

    #@366
    if-ne v0, v1, :cond_17

    #@368
    .line 1554
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@36b
    move-result v27

    #@36c
    move-object/from16 v0, p2

    #@36e
    move/from16 v1, v27

    #@370
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@373
    goto/16 :goto_8

    #@375
    .line 1561
    .restart local v10    # "fracBegin":I
    .local v23, "recordFractionDigits":Z
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@378
    move-result v4

    #@379
    goto/16 :goto_9

    #@37b
    .line 1580
    :cond_26
    rsub-int/lit8 v27, v16, -0x1

    #@37d
    move-object/from16 v0, p0

    #@37f
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@381
    move-object/from16 v28, v0

    #@383
    move-object/from16 v0, v28

    #@385
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@387
    move/from16 v28, v0

    #@389
    add-int/lit8 v28, v28, -0x1

    #@38b
    move/from16 v0, v27

    #@38d
    move/from16 v1, v28

    #@38f
    if-le v0, v1, :cond_29

    #@391
    .line 1581
    const/16 v27, 0x0

    #@393
    aget-char v27, v9, v27

    #@395
    move-object/from16 v0, p1

    #@397
    move/from16 v1, v27

    #@399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@39c
    .line 1582
    if-eqz v23, :cond_27

    #@39e
    .line 1583
    add-int/lit8 v14, v14, 0x1

    #@3a0
    .line 1584
    const-wide/16 v28, 0xa

    #@3a2
    mul-long v12, v12, v28

    #@3a4
    :cond_27
    move v7, v8

    #@3a5
    .line 1566
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    :cond_28
    add-int/lit8 v16, v16, 0x1

    #@3a7
    move v8, v7

    #@3a8
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    goto/16 :goto_a

    #@3aa
    .line 1591
    :cond_29
    if-nez p3, :cond_2b

    #@3ac
    move-object/from16 v0, p0

    #@3ae
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@3b0
    move-object/from16 v27, v0

    #@3b2
    move-object/from16 v0, v27

    #@3b4
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@3b6
    move/from16 v27, v0

    #@3b8
    move/from16 v0, v27

    #@3ba
    if-ge v8, v0, :cond_2b

    #@3bc
    .line 1592
    move-object/from16 v0, p0

    #@3be
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@3c0
    move-object/from16 v27, v0

    #@3c2
    add-int/lit8 v7, v8, 0x1

    #@3c4
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    move-object/from16 v0, v27

    #@3c6
    invoke-virtual {v0, v8}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    #@3c9
    move-result v6

    #@3ca
    .line 1593
    .local v6, "digit":B
    aget-char v27, v9, v6

    #@3cc
    move-object/from16 v0, p1

    #@3ce
    move/from16 v1, v27

    #@3d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3d3
    .line 1594
    if-eqz v23, :cond_2a

    #@3d5
    .line 1595
    add-int/lit8 v14, v14, 0x1

    #@3d7
    .line 1596
    const-wide/16 v28, 0xa

    #@3d9
    mul-long v12, v12, v28

    #@3db
    .line 1597
    int-to-long v0, v6

    #@3dc
    move-wide/from16 v28, v0

    #@3de
    add-long v12, v12, v28

    #@3e0
    .line 1609
    .end local v6    # "digit":B
    :cond_2a
    :goto_e
    add-int/lit8 v24, v24, 0x1

    #@3e2
    .line 1610
    if-eqz v26, :cond_28

    #@3e4
    move/from16 v0, v24

    #@3e6
    move/from16 v1, v19

    #@3e8
    if-eq v0, v1, :cond_1b

    #@3ea
    .line 1611
    move-object/from16 v0, p0

    #@3ec
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@3ee
    move-object/from16 v27, v0

    #@3f0
    move-object/from16 v0, v27

    #@3f2
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@3f4
    move/from16 v27, v0

    #@3f6
    move/from16 v0, v27

    #@3f8
    if-ne v7, v0, :cond_28

    #@3fa
    move/from16 v0, v24

    #@3fc
    move/from16 v1, v21

    #@3fe
    if-lt v0, v1, :cond_28

    #@400
    goto/16 :goto_b

    #@402
    .line 1600
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    :cond_2b
    const/16 v27, 0x0

    #@404
    aget-char v27, v9, v27

    #@406
    move-object/from16 v0, p1

    #@408
    move/from16 v1, v27

    #@40a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@40d
    .line 1601
    if-eqz v23, :cond_2d

    #@40f
    .line 1602
    add-int/lit8 v14, v14, 0x1

    #@411
    .line 1603
    const-wide/16 v28, 0xa

    #@413
    mul-long v12, v12, v28

    #@415
    move v7, v8

    #@416
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto :goto_e

    #@417
    .line 1619
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@41a
    move-result-object v27

    #@41b
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@41d
    move-object/from16 v0, v27

    #@41f
    move-object/from16 v1, v28

    #@421
    if-ne v0, v1, :cond_1c

    #@423
    .line 1620
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@426
    move-result v27

    #@427
    move-object/from16 v0, p2

    #@429
    move/from16 v1, v27

    #@42b
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@42e
    goto/16 :goto_c

    #@430
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    :cond_2d
    move v7, v8

    #@431
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto :goto_e

    #@432
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    :cond_2e
    move v7, v8

    #@433
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto/16 :goto_b

    #@435
    .end local v7    # "digitIndex":I
    .end local v10    # "fracBegin":I
    .end local v11    # "fractionPresent":Z
    .restart local v8    # "digitIndex":I
    .local v23, "recordFractionDigits":Z
    :cond_2f
    move v7, v8

    #@436
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto/16 :goto_5
.end method

.method private final subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 43
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "digits"    # Landroid/icu/text/DigitList;
    .param p4, "status"    # [Z
    .param p5, "currency"    # [Landroid/icu/util/Currency;
    .param p6, "negPrefix"    # Ljava/lang/String;
    .param p7, "negSuffix"    # Ljava/lang/String;
    .param p8, "posPrefix"    # Ljava/lang/String;
    .param p9, "posSuffix"    # Ljava/lang/String;
    .param p10, "parseComplexCurrency"    # Z
    .param p11, "type"    # I

    #@0
    .prologue
    .line 2413
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v6

    #@4
    .line 2414
    .local v6, "position":I
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@7
    move-result v34

    #@8
    .line 2417
    .local v34, "oldStart":I
    move-object/from16 v0, p0

    #@a
    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@c
    if-lez v4, :cond_0

    #@e
    move-object/from16 v0, p0

    #@10
    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@12
    if-nez v4, :cond_0

    #@14
    .line 2418
    move-object/from16 v0, p0

    #@16
    move-object/from16 v1, p1

    #@18
    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@1b
    move-result v6

    #@1c
    .line 2422
    :cond_0
    const/4 v7, 0x0

    #@1d
    const/4 v8, 0x1

    #@1e
    move-object/from16 v4, p0

    #@20
    move-object/from16 v5, p1

    #@22
    move-object/from16 v9, p8

    #@24
    move/from16 v10, p10

    #@26
    move/from16 v11, p11

    #@28
    move-object/from16 v12, p5

    #@2a
    invoke-direct/range {v4 .. v12}, Landroid/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    #@2d
    move-result v36

    #@2e
    .line 2423
    .local v36, "posMatch":I
    const/4 v7, 0x1

    #@2f
    const/4 v8, 0x1

    #@30
    move-object/from16 v4, p0

    #@32
    move-object/from16 v5, p1

    #@34
    move-object/from16 v9, p6

    #@36
    move/from16 v10, p10

    #@38
    move/from16 v11, p11

    #@3a
    move-object/from16 v12, p5

    #@3c
    invoke-direct/range {v4 .. v12}, Landroid/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    #@3f
    move-result v33

    #@40
    .line 2424
    .local v33, "negMatch":I
    if-ltz v36, :cond_1

    #@42
    if-ltz v33, :cond_1

    #@44
    .line 2425
    move/from16 v0, v36

    #@46
    move/from16 v1, v33

    #@48
    if-le v0, v1, :cond_8

    #@4a
    .line 2426
    const/16 v33, -0x1

    #@4c
    .line 2431
    :cond_1
    :goto_0
    if-ltz v36, :cond_9

    #@4e
    .line 2432
    add-int v6, v6, v36

    #@50
    .line 2441
    :goto_1
    move-object/from16 v0, p0

    #@52
    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@54
    if-lez v4, :cond_2

    #@56
    move-object/from16 v0, p0

    #@58
    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@5a
    const/4 v5, 0x1

    #@5b
    if-ne v4, v5, :cond_2

    #@5d
    .line 2442
    move-object/from16 v0, p0

    #@5f
    move-object/from16 v1, p1

    #@61
    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@64
    move-result v6

    #@65
    .line 2446
    :cond_2
    const/4 v4, 0x0

    #@66
    const/4 v5, 0x0

    #@67
    aput-boolean v4, p4, v5

    #@69
    .line 2447
    move-object/from16 v0, p0

    #@6b
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@6d
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 2448
    move-object/from16 v0, p0

    #@73
    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@75
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@7c
    move-result v5

    #@7d
    .line 2447
    const/4 v8, 0x0

    #@7e
    move-object/from16 v0, p1

    #@80
    invoke-virtual {v0, v6, v4, v8, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@83
    move-result v4

    #@84
    if-eqz v4, :cond_b

    #@86
    .line 2449
    move-object/from16 v0, p0

    #@88
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@8a
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@91
    move-result v4

    #@92
    add-int/2addr v6, v4

    #@93
    .line 2450
    const/4 v4, 0x1

    #@94
    const/4 v5, 0x0

    #@95
    aput-boolean v4, p4, v5

    #@97
    .line 2755
    :cond_3
    move-object/from16 v0, p0

    #@99
    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@9b
    if-lez v4, :cond_4

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@a1
    const/4 v5, 0x2

    #@a2
    if-ne v4, v5, :cond_4

    #@a4
    .line 2756
    move-object/from16 v0, p0

    #@a6
    move-object/from16 v1, p1

    #@a8
    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@ab
    move-result v6

    #@ac
    .line 2760
    :cond_4
    if-ltz v36, :cond_5

    #@ae
    .line 2761
    const/4 v11, 0x0

    #@af
    const/4 v12, 0x0

    #@b0
    move-object/from16 v8, p0

    #@b2
    move-object/from16 v9, p1

    #@b4
    move v10, v6

    #@b5
    move-object/from16 v13, p9

    #@b7
    move/from16 v14, p10

    #@b9
    move/from16 v15, p11

    #@bb
    move-object/from16 v16, p5

    #@bd
    invoke-direct/range {v8 .. v16}, Landroid/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    #@c0
    move-result v36

    #@c1
    .line 2763
    :cond_5
    if-ltz v33, :cond_6

    #@c3
    .line 2764
    const/4 v11, 0x1

    #@c4
    const/4 v12, 0x0

    #@c5
    move-object/from16 v8, p0

    #@c7
    move-object/from16 v9, p1

    #@c9
    move v10, v6

    #@ca
    move-object/from16 v13, p7

    #@cc
    move/from16 v14, p10

    #@ce
    move/from16 v15, p11

    #@d0
    move-object/from16 v16, p5

    #@d2
    invoke-direct/range {v8 .. v16}, Landroid/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    #@d5
    move-result v33

    #@d6
    .line 2766
    :cond_6
    if-ltz v36, :cond_7

    #@d8
    if-ltz v33, :cond_7

    #@da
    .line 2767
    move/from16 v0, v36

    #@dc
    move/from16 v1, v33

    #@de
    if-le v0, v1, :cond_43

    #@e0
    .line 2768
    const/16 v33, -0x1

    #@e2
    .line 2775
    :cond_7
    :goto_2
    if-ltz v36, :cond_44

    #@e4
    const/4 v4, 0x1

    #@e5
    move v5, v4

    #@e6
    :goto_3
    if-ltz v33, :cond_45

    #@e8
    const/4 v4, 0x1

    #@e9
    :goto_4
    if-ne v5, v4, :cond_46

    #@eb
    .line 2776
    move-object/from16 v0, p2

    #@ed
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@f0
    .line 2777
    const/4 v4, 0x0

    #@f1
    return v4

    #@f2
    .line 2427
    :cond_8
    move/from16 v0, v33

    #@f4
    move/from16 v1, v36

    #@f6
    if-le v0, v1, :cond_1

    #@f8
    .line 2428
    const/16 v36, -0x1

    #@fa
    goto/16 :goto_0

    #@fc
    .line 2433
    :cond_9
    if-ltz v33, :cond_a

    #@fe
    .line 2434
    add-int v6, v6, v33

    #@100
    goto/16 :goto_1

    #@102
    .line 2436
    :cond_a
    move-object/from16 v0, p2

    #@104
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@107
    .line 2437
    const/4 v4, 0x0

    #@108
    return v4

    #@109
    .line 2458
    :cond_b
    const/4 v4, 0x0

    #@10a
    move-object/from16 v0, p3

    #@10c
    iput v4, v0, Landroid/icu/text/DigitList;->count:I

    #@10e
    const/4 v4, 0x0

    #@10f
    move-object/from16 v0, p3

    #@111
    iput v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@113
    .line 2459
    move-object/from16 v0, p0

    #@115
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@117
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getDigitsLocal()[C

    #@11a
    move-result-object v24

    #@11b
    .line 2460
    .local v24, "digitSymbols":[C
    move-object/from16 v0, p0

    #@11d
    iget v4, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@11f
    if-nez v4, :cond_12

    #@121
    .line 2461
    move-object/from16 v0, p0

    #@123
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@125
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@128
    move-result v19

    #@129
    .line 2462
    .local v19, "decimal":C
    :goto_5
    move-object/from16 v0, p0

    #@12b
    iget v4, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@12d
    if-nez v4, :cond_13

    #@12f
    .line 2463
    move-object/from16 v0, p0

    #@131
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@133
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@136
    move-result v29

    #@137
    .line 2465
    .local v29, "grouping":C
    :goto_6
    move-object/from16 v0, p0

    #@139
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@13b
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    #@13e
    move-result-object v7

    #@13f
    .line 2466
    .local v7, "exponentSep":Ljava/lang/String;
    const/16 v37, 0x0

    #@141
    .line 2467
    .local v37, "sawDecimal":Z
    const/16 v40, 0x0

    #@143
    .line 2468
    .local v40, "sawGrouping":Z
    const/16 v39, 0x0

    #@145
    .line 2469
    .local v39, "sawExponent":Z
    const/16 v38, 0x0

    #@147
    .line 2470
    .local v38, "sawDigit":Z
    const-wide/16 v26, 0x0

    #@149
    .line 2471
    .local v26, "exponent":J
    const/16 v21, 0x0

    #@14b
    .line 2474
    .local v21, "digit":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isParseStrict()Z

    #@14e
    move-result v42

    #@14f
    .line 2475
    .local v42, "strictParse":Z
    const/16 v41, 0x0

    #@151
    .line 2476
    .local v41, "strictFail":Z
    const/16 v31, -0x1

    #@153
    .line 2477
    .local v31, "lastGroup":I
    move/from16 v23, v6

    #@155
    .line 2478
    .local v23, "digitStart":I
    move-object/from16 v0, p0

    #@157
    iget-byte v4, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@159
    if-nez v4, :cond_14

    #@15b
    move-object/from16 v0, p0

    #@15d
    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@15f
    move/from16 v30, v0

    #@161
    .line 2480
    .local v30, "gs2":I
    :goto_7
    sget-boolean v4, Landroid/icu/text/DecimalFormat;->skipExtendedSeparatorParsing:Z

    #@163
    if-eqz v4, :cond_15

    #@165
    sget-object v20, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@167
    .line 2482
    .local v20, "decimalEquiv":Landroid/icu/text/UnicodeSet;
    :goto_8
    sget-boolean v4, Landroid/icu/text/DecimalFormat;->skipExtendedSeparatorParsing:Z

    #@169
    if-eqz v4, :cond_16

    #@16b
    sget-object v28, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@16d
    .line 2487
    .local v28, "groupEquiv":Landroid/icu/text/UnicodeSet;
    :goto_9
    const/16 v22, 0x0

    #@16f
    .line 2489
    .local v22, "digitCount":I
    const/16 v17, -0x1

    #@171
    .line 2491
    .local v17, "backup":I
    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@174
    move-result v4

    #@175
    if-ge v6, v4, :cond_11

    #@177
    .line 2492
    move-object/from16 v0, p1

    #@179
    invoke-static {v0, v6}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@17c
    move-result v18

    #@17d
    .line 2504
    .local v18, "ch":I
    const/4 v4, 0x0

    #@17e
    aget-char v4, v24, v4

    #@180
    sub-int v21, v18, v4

    #@182
    .line 2505
    if-ltz v21, :cond_c

    #@184
    const/16 v4, 0x9

    #@186
    move/from16 v0, v21

    #@188
    if-le v0, v4, :cond_d

    #@18a
    .line 2506
    :cond_c
    const/16 v4, 0xa

    #@18c
    move/from16 v0, v18

    #@18e
    invoke-static {v0, v4}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@191
    move-result v21

    #@192
    .line 2507
    :cond_d
    if-ltz v21, :cond_e

    #@194
    const/16 v4, 0x9

    #@196
    move/from16 v0, v21

    #@198
    if-le v0, v4, :cond_f

    #@19a
    .line 2508
    :cond_e
    const/16 v21, 0x0

    #@19c
    :goto_b
    const/16 v4, 0xa

    #@19e
    move/from16 v0, v21

    #@1a0
    if-ge v0, v4, :cond_f

    #@1a2
    .line 2509
    aget-char v4, v24, v21

    #@1a4
    move/from16 v0, v18

    #@1a6
    if-ne v0, v4, :cond_18

    #@1a8
    .line 2516
    :cond_f
    if-nez v21, :cond_1e

    #@1aa
    .line 2518
    if-eqz v42, :cond_1b

    #@1ac
    const/4 v4, -0x1

    #@1ad
    move/from16 v0, v17

    #@1af
    if-eq v0, v4, :cond_1b

    #@1b1
    .line 2523
    const/4 v4, -0x1

    #@1b2
    move/from16 v0, v31

    #@1b4
    if-eq v0, v4, :cond_19

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    move-object/from16 v1, p1

    #@1ba
    move/from16 v2, v31

    #@1bc
    move/from16 v3, v17

    #@1be
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    #@1c1
    move-result v4

    #@1c2
    add-int/lit8 v4, v4, -0x1

    #@1c4
    move/from16 v0, v30

    #@1c6
    if-eq v4, v0, :cond_19

    #@1c8
    .line 2525
    :cond_10
    const/16 v41, 0x1

    #@1ca
    .line 2703
    .end local v18    # "ch":I
    :cond_11
    :goto_c
    move-object/from16 v0, p3

    #@1cc
    iget v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1ce
    if-nez v4, :cond_3b

    #@1d0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isDecimalPatternMatchRequired()Z

    #@1d3
    move-result v4

    #@1d4
    if-eqz v4, :cond_3b

    #@1d6
    .line 2704
    move-object/from16 v0, p0

    #@1d8
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@1da
    move/from16 v0, v19

    #@1dc
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    #@1df
    move-result v4

    #@1e0
    const/4 v5, -0x1

    #@1e1
    if-eq v4, v5, :cond_3b

    #@1e3
    .line 2705
    move-object/from16 v0, p2

    #@1e5
    move/from16 v1, v34

    #@1e7
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@1ea
    .line 2706
    move-object/from16 v0, p2

    #@1ec
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@1ef
    .line 2707
    const/4 v4, 0x0

    #@1f0
    return v4

    #@1f1
    .line 2461
    .end local v7    # "exponentSep":Ljava/lang/String;
    .end local v17    # "backup":I
    .end local v19    # "decimal":C
    .end local v20    # "decimalEquiv":Landroid/icu/text/UnicodeSet;
    .end local v21    # "digit":I
    .end local v22    # "digitCount":I
    .end local v23    # "digitStart":I
    .end local v26    # "exponent":J
    .end local v28    # "groupEquiv":Landroid/icu/text/UnicodeSet;
    .end local v29    # "grouping":C
    .end local v30    # "gs2":I
    .end local v31    # "lastGroup":I
    .end local v37    # "sawDecimal":Z
    .end local v38    # "sawDigit":Z
    .end local v39    # "sawExponent":Z
    .end local v40    # "sawGrouping":Z
    .end local v41    # "strictFail":Z
    .end local v42    # "strictParse":Z
    :cond_12
    move-object/from16 v0, p0

    #@1f3
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@1f5
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    #@1f8
    move-result v19

    #@1f9
    .restart local v19    # "decimal":C
    goto/16 :goto_5

    #@1fb
    .line 2463
    :cond_13
    move-object/from16 v0, p0

    #@1fd
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@1ff
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparator()C

    #@202
    move-result v29

    #@203
    .restart local v29    # "grouping":C
    goto/16 :goto_6

    #@205
    .line 2478
    .restart local v7    # "exponentSep":Ljava/lang/String;
    .restart local v21    # "digit":I
    .restart local v23    # "digitStart":I
    .restart local v26    # "exponent":J
    .restart local v31    # "lastGroup":I
    .restart local v37    # "sawDecimal":Z
    .restart local v38    # "sawDigit":Z
    .restart local v39    # "sawExponent":Z
    .restart local v40    # "sawGrouping":Z
    .restart local v41    # "strictFail":Z
    .restart local v42    # "strictParse":Z
    :cond_14
    move-object/from16 v0, p0

    #@207
    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@209
    move/from16 v30, v0

    #@20b
    goto/16 :goto_7

    #@20d
    .line 2481
    .restart local v30    # "gs2":I
    :cond_15
    move-object/from16 v0, p0

    #@20f
    move/from16 v1, v19

    #@211
    move/from16 v2, v42

    #@213
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->getEquivalentDecimals(CZ)Landroid/icu/text/UnicodeSet;

    #@216
    move-result-object v20

    #@217
    .restart local v20    # "decimalEquiv":Landroid/icu/text/UnicodeSet;
    goto/16 :goto_8

    #@219
    .line 2483
    :cond_16
    if-eqz v42, :cond_17

    #@21b
    sget-object v28, Landroid/icu/text/DecimalFormat;->strictDefaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    #@21d
    .restart local v28    # "groupEquiv":Landroid/icu/text/UnicodeSet;
    goto/16 :goto_9

    #@21f
    .end local v28    # "groupEquiv":Landroid/icu/text/UnicodeSet;
    :cond_17
    sget-object v28, Landroid/icu/text/DecimalFormat;->defaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    #@221
    .restart local v28    # "groupEquiv":Landroid/icu/text/UnicodeSet;
    goto/16 :goto_9

    #@223
    .line 2508
    .restart local v17    # "backup":I
    .restart local v18    # "ch":I
    .restart local v22    # "digitCount":I
    :cond_18
    add-int/lit8 v21, v21, 0x1

    #@225
    goto/16 :goto_b

    #@227
    .line 2524
    :cond_19
    const/4 v4, -0x1

    #@228
    move/from16 v0, v31

    #@22a
    if-ne v0, v4, :cond_1a

    #@22c
    move-object/from16 v0, p0

    #@22e
    move-object/from16 v1, p1

    #@230
    move/from16 v2, v23

    #@232
    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    #@235
    move-result v4

    #@236
    add-int/lit8 v4, v4, -0x1

    #@238
    move/from16 v0, v30

    #@23a
    if-gt v4, v0, :cond_10

    #@23c
    .line 2528
    :cond_1a
    move/from16 v31, v17

    #@23e
    .line 2530
    :cond_1b
    const/16 v17, -0x1

    #@240
    .line 2531
    const/16 v38, 0x1

    #@242
    .line 2534
    move-object/from16 v0, p3

    #@244
    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    #@246
    if-nez v4, :cond_1d

    #@248
    .line 2535
    if-nez v37, :cond_1c

    #@24a
    .line 2491
    :goto_d
    invoke-static/range {v18 .. v18}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@24d
    move-result v4

    #@24e
    add-int/2addr v6, v4

    #@24f
    goto/16 :goto_a

    #@251
    .line 2543
    :cond_1c
    move-object/from16 v0, p3

    #@253
    iget v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@255
    add-int/lit8 v4, v4, -0x1

    #@257
    move-object/from16 v0, p3

    #@259
    iput v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@25b
    goto :goto_d

    #@25c
    .line 2545
    :cond_1d
    add-int/lit8 v22, v22, 0x1

    #@25e
    .line 2546
    add-int/lit8 v4, v21, 0x30

    #@260
    int-to-char v4, v4

    #@261
    move-object/from16 v0, p3

    #@263
    invoke-virtual {v0, v4}, Landroid/icu/text/DigitList;->append(I)V

    #@266
    goto :goto_d

    #@267
    .line 2548
    :cond_1e
    if-lez v21, :cond_23

    #@269
    const/16 v4, 0x9

    #@26b
    move/from16 v0, v21

    #@26d
    if-gt v0, v4, :cond_23

    #@26f
    .line 2550
    if-eqz v42, :cond_22

    #@271
    .line 2551
    const/4 v4, -0x1

    #@272
    move/from16 v0, v17

    #@274
    if-eq v0, v4, :cond_22

    #@276
    .line 2552
    const/4 v4, -0x1

    #@277
    move/from16 v0, v31

    #@279
    if-eq v0, v4, :cond_20

    #@27b
    move-object/from16 v0, p0

    #@27d
    move-object/from16 v1, p1

    #@27f
    move/from16 v2, v31

    #@281
    move/from16 v3, v17

    #@283
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    #@286
    move-result v4

    #@287
    add-int/lit8 v4, v4, -0x1

    #@289
    move/from16 v0, v30

    #@28b
    if-eq v4, v0, :cond_20

    #@28d
    .line 2554
    :cond_1f
    const/16 v41, 0x1

    #@28f
    .line 2555
    goto/16 :goto_c

    #@291
    .line 2553
    :cond_20
    const/4 v4, -0x1

    #@292
    move/from16 v0, v31

    #@294
    if-ne v0, v4, :cond_21

    #@296
    move-object/from16 v0, p0

    #@298
    move-object/from16 v1, p1

    #@29a
    move/from16 v2, v23

    #@29c
    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    #@29f
    move-result v4

    #@2a0
    add-int/lit8 v4, v4, -0x1

    #@2a2
    move/from16 v0, v30

    #@2a4
    if-gt v4, v0, :cond_1f

    #@2a6
    .line 2557
    :cond_21
    move/from16 v31, v17

    #@2a8
    .line 2561
    :cond_22
    const/16 v38, 0x1

    #@2aa
    .line 2562
    add-int/lit8 v22, v22, 0x1

    #@2ac
    .line 2563
    add-int/lit8 v4, v21, 0x30

    #@2ae
    int-to-char v4, v4

    #@2af
    move-object/from16 v0, p3

    #@2b1
    invoke-virtual {v0, v4}, Landroid/icu/text/DigitList;->append(I)V

    #@2b4
    .line 2566
    const/16 v17, -0x1

    #@2b6
    .line 2549
    goto :goto_d

    #@2b7
    .line 2567
    :cond_23
    move/from16 v0, v18

    #@2b9
    move/from16 v1, v19

    #@2bb
    if-ne v0, v1, :cond_26

    #@2bd
    .line 2568
    if-eqz v42, :cond_25

    #@2bf
    .line 2569
    const/4 v4, -0x1

    #@2c0
    move/from16 v0, v17

    #@2c2
    if-ne v0, v4, :cond_24

    #@2c4
    .line 2570
    const/4 v4, -0x1

    #@2c5
    move/from16 v0, v31

    #@2c7
    if-eq v0, v4, :cond_25

    #@2c9
    move-object/from16 v0, p0

    #@2cb
    move-object/from16 v1, p1

    #@2cd
    move/from16 v2, v31

    #@2cf
    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    #@2d2
    move-result v4

    #@2d3
    move-object/from16 v0, p0

    #@2d5
    iget-byte v5, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2d7
    add-int/lit8 v5, v5, 0x1

    #@2d9
    if-eq v4, v5, :cond_25

    #@2db
    .line 2571
    :cond_24
    const/16 v41, 0x1

    #@2dd
    .line 2572
    goto/16 :goto_c

    #@2df
    .line 2577
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    #@2e2
    move-result v4

    #@2e3
    if-nez v4, :cond_11

    #@2e5
    if-nez v37, :cond_11

    #@2e7
    .line 2580
    move/from16 v0, v22

    #@2e9
    move-object/from16 v1, p3

    #@2eb
    iput v0, v1, Landroid/icu/text/DigitList;->decimalAt:I

    #@2ed
    .line 2581
    const/16 v37, 0x1

    #@2ef
    goto/16 :goto_d

    #@2f1
    .line 2582
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    #@2f4
    move-result v4

    #@2f5
    if-eqz v4, :cond_29

    #@2f7
    move/from16 v0, v18

    #@2f9
    move/from16 v1, v29

    #@2fb
    if-ne v0, v1, :cond_29

    #@2fd
    .line 2583
    if-nez v37, :cond_11

    #@2ff
    .line 2586
    if-eqz v42, :cond_28

    #@301
    .line 2587
    if-eqz v38, :cond_27

    #@303
    const/4 v4, -0x1

    #@304
    move/from16 v0, v17

    #@306
    if-eq v0, v4, :cond_28

    #@308
    .line 2589
    :cond_27
    const/16 v41, 0x1

    #@30a
    .line 2590
    goto/16 :goto_c

    #@30c
    .line 2596
    :cond_28
    move/from16 v17, v6

    #@30e
    .line 2597
    const/16 v40, 0x1

    #@310
    .line 2582
    goto/16 :goto_d

    #@312
    .line 2598
    :cond_29
    if-nez v37, :cond_2c

    #@314
    move-object/from16 v0, v20

    #@316
    move/from16 v1, v18

    #@318
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@31b
    move-result v4

    #@31c
    if-eqz v4, :cond_2c

    #@31e
    .line 2599
    if-eqz v42, :cond_2b

    #@320
    .line 2600
    const/4 v4, -0x1

    #@321
    move/from16 v0, v17

    #@323
    if-ne v0, v4, :cond_2a

    #@325
    .line 2601
    const/4 v4, -0x1

    #@326
    move/from16 v0, v31

    #@328
    if-eq v0, v4, :cond_2b

    #@32a
    move-object/from16 v0, p0

    #@32c
    move-object/from16 v1, p1

    #@32e
    move/from16 v2, v31

    #@330
    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    #@333
    move-result v4

    #@334
    move-object/from16 v0, p0

    #@336
    iget-byte v5, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@338
    add-int/lit8 v5, v5, 0x1

    #@33a
    if-eq v4, v5, :cond_2b

    #@33c
    .line 2602
    :cond_2a
    const/16 v41, 0x1

    #@33e
    .line 2603
    goto/16 :goto_c

    #@340
    .line 2607
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    #@343
    move-result v4

    #@344
    if-nez v4, :cond_11

    #@346
    .line 2609
    move/from16 v0, v22

    #@348
    move-object/from16 v1, p3

    #@34a
    iput v0, v1, Landroid/icu/text/DigitList;->decimalAt:I

    #@34c
    .line 2613
    move/from16 v0, v18

    #@34e
    int-to-char v0, v0

    #@34f
    move/from16 v19, v0

    #@351
    .line 2614
    const/16 v37, 0x1

    #@353
    goto/16 :goto_d

    #@355
    .line 2615
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    #@358
    move-result v4

    #@359
    if-eqz v4, :cond_2d

    #@35b
    if-eqz v40, :cond_31

    #@35d
    .line 2635
    :cond_2d
    if-nez v39, :cond_11

    #@35f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@362
    move-result v9

    #@363
    const/4 v5, 0x1

    #@364
    const/4 v8, 0x0

    #@365
    move-object/from16 v4, p1

    #@367
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@36a
    move-result v4

    #@36b
    if-eqz v4, :cond_11

    #@36d
    .line 2637
    const/16 v32, 0x0

    #@36f
    .line 2638
    .local v32, "negExp":Z
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@372
    move-result v4

    #@373
    add-int v35, v6, v4

    #@375
    .line 2639
    .local v35, "pos":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@378
    move-result v4

    #@379
    move/from16 v0, v35

    #@37b
    if-ge v0, v4, :cond_2e

    #@37d
    .line 2640
    move-object/from16 v0, p1

    #@37f
    move/from16 v1, v35

    #@381
    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@384
    move-result v18

    #@385
    .line 2641
    move-object/from16 v0, p0

    #@387
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@389
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    #@38c
    move-result v4

    #@38d
    move/from16 v0, v18

    #@38f
    if-ne v0, v4, :cond_34

    #@391
    .line 2642
    add-int/lit8 v35, v35, 0x1

    #@393
    .line 2649
    :cond_2e
    :goto_e
    new-instance v25, Landroid/icu/text/DigitList;

    #@395
    invoke-direct/range {v25 .. v25}, Landroid/icu/text/DigitList;-><init>()V

    #@398
    .line 2650
    .local v25, "exponentDigits":Landroid/icu/text/DigitList;
    const/4 v4, 0x0

    #@399
    move-object/from16 v0, v25

    #@39b
    iput v4, v0, Landroid/icu/text/DigitList;->count:I

    #@39d
    .line 2651
    :goto_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3a0
    move-result v4

    #@3a1
    move/from16 v0, v35

    #@3a3
    if-ge v0, v4, :cond_35

    #@3a5
    .line 2652
    move-object/from16 v0, p1

    #@3a7
    move/from16 v1, v35

    #@3a9
    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@3ac
    move-result v4

    #@3ad
    const/4 v5, 0x0

    #@3ae
    aget-char v5, v24, v5

    #@3b0
    sub-int v21, v4, v5

    #@3b2
    .line 2653
    if-ltz v21, :cond_2f

    #@3b4
    const/16 v4, 0x9

    #@3b6
    move/from16 v0, v21

    #@3b8
    if-le v0, v4, :cond_30

    #@3ba
    .line 2657
    :cond_2f
    move-object/from16 v0, p1

    #@3bc
    move/from16 v1, v35

    #@3be
    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@3c1
    move-result v4

    #@3c2
    const/16 v5, 0xa

    #@3c4
    invoke-static {v4, v5}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@3c7
    move-result v21

    #@3c8
    .line 2659
    :cond_30
    if-ltz v21, :cond_35

    #@3ca
    const/16 v4, 0x9

    #@3cc
    move/from16 v0, v21

    #@3ce
    if-gt v0, v4, :cond_35

    #@3d0
    .line 2660
    add-int/lit8 v4, v21, 0x30

    #@3d2
    int-to-char v4, v4

    #@3d3
    move-object/from16 v0, v25

    #@3d5
    invoke-virtual {v0, v4}, Landroid/icu/text/DigitList;->append(I)V

    #@3d8
    .line 2661
    move-object/from16 v0, p1

    #@3da
    move/from16 v1, v35

    #@3dc
    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@3df
    move-result v4

    #@3e0
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@3e3
    move-result v4

    #@3e4
    add-int v35, v35, v4

    #@3e6
    .line 2659
    goto :goto_f

    #@3e7
    .line 2615
    .end local v25    # "exponentDigits":Landroid/icu/text/DigitList;
    .end local v32    # "negExp":Z
    .end local v35    # "pos":I
    :cond_31
    move-object/from16 v0, v28

    #@3e9
    move/from16 v1, v18

    #@3eb
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@3ee
    move-result v4

    #@3ef
    if-eqz v4, :cond_2d

    #@3f1
    .line 2616
    if-nez v37, :cond_11

    #@3f3
    .line 2619
    if-eqz v42, :cond_33

    #@3f5
    .line 2620
    if-eqz v38, :cond_32

    #@3f7
    const/4 v4, -0x1

    #@3f8
    move/from16 v0, v17

    #@3fa
    if-eq v0, v4, :cond_33

    #@3fc
    .line 2622
    :cond_32
    const/16 v41, 0x1

    #@3fe
    .line 2623
    goto/16 :goto_c

    #@400
    .line 2628
    :cond_33
    move/from16 v0, v18

    #@402
    int-to-char v0, v0

    #@403
    move/from16 v29, v0

    #@405
    .line 2633
    move/from16 v17, v6

    #@407
    .line 2634
    const/16 v40, 0x1

    #@409
    goto/16 :goto_d

    #@40b
    .line 2643
    .restart local v32    # "negExp":Z
    .restart local v35    # "pos":I
    :cond_34
    move-object/from16 v0, p0

    #@40d
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@40f
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    #@412
    move-result v4

    #@413
    move/from16 v0, v18

    #@415
    if-ne v0, v4, :cond_2e

    #@417
    .line 2644
    add-int/lit8 v35, v35, 0x1

    #@419
    .line 2645
    const/16 v32, 0x1

    #@41b
    goto/16 :goto_e

    #@41d
    .line 2667
    .restart local v25    # "exponentDigits":Landroid/icu/text/DigitList;
    :cond_35
    move-object/from16 v0, v25

    #@41f
    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    #@421
    if-lez v4, :cond_11

    #@423
    .line 2669
    if-eqz v42, :cond_37

    #@425
    .line 2670
    const/4 v4, -0x1

    #@426
    move/from16 v0, v17

    #@428
    if-ne v0, v4, :cond_36

    #@42a
    const/4 v4, -0x1

    #@42b
    move/from16 v0, v31

    #@42d
    if-eq v0, v4, :cond_37

    #@42f
    .line 2671
    :cond_36
    const/16 v41, 0x1

    #@431
    .line 2672
    goto/16 :goto_c

    #@433
    .line 2678
    :cond_37
    move-object/from16 v0, v25

    #@435
    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    #@437
    const/16 v5, 0xa

    #@439
    if-le v4, v5, :cond_3a

    #@43b
    .line 2679
    if-eqz v32, :cond_39

    #@43d
    .line 2681
    const/4 v4, 0x1

    #@43e
    const/4 v5, 0x2

    #@43f
    aput-boolean v4, p4, v5

    #@441
    .line 2693
    :cond_38
    :goto_10
    move/from16 v6, v35

    #@443
    .line 2694
    const/16 v39, 0x1

    #@445
    goto/16 :goto_c

    #@447
    .line 2684
    :cond_39
    const/4 v4, 0x1

    #@448
    const/4 v5, 0x0

    #@449
    aput-boolean v4, p4, v5

    #@44b
    goto :goto_10

    #@44c
    .line 2687
    :cond_3a
    move-object/from16 v0, v25

    #@44e
    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    #@450
    move-object/from16 v0, v25

    #@452
    iput v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@454
    .line 2688
    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/DigitList;->getLong()J

    #@457
    move-result-wide v26

    #@458
    .line 2689
    if-eqz v32, :cond_38

    #@45a
    .line 2690
    move-wide/from16 v0, v26

    #@45c
    neg-long v0, v0

    #@45d
    move-wide/from16 v26, v0

    #@45f
    goto :goto_10

    #@460
    .line 2711
    .end local v18    # "ch":I
    .end local v25    # "exponentDigits":Landroid/icu/text/DigitList;
    .end local v32    # "negExp":Z
    .end local v35    # "pos":I
    :cond_3b
    const/4 v4, -0x1

    #@461
    move/from16 v0, v17

    #@463
    if-eq v0, v4, :cond_3c

    #@465
    .line 2712
    move/from16 v6, v17

    #@467
    .line 2715
    :cond_3c
    if-nez v37, :cond_3d

    #@469
    .line 2716
    move/from16 v0, v22

    #@46b
    move-object/from16 v1, p3

    #@46d
    iput v0, v1, Landroid/icu/text/DigitList;->decimalAt:I

    #@46f
    .line 2719
    :cond_3d
    if-eqz v42, :cond_3e

    #@471
    if-eqz v37, :cond_3f

    #@473
    .line 2724
    :cond_3e
    :goto_11
    if-eqz v41, :cond_40

    #@475
    .line 2729
    move-object/from16 v0, p2

    #@477
    move/from16 v1, v34

    #@479
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@47c
    .line 2730
    move-object/from16 v0, p2

    #@47e
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@481
    .line 2731
    const/4 v4, 0x0

    #@482
    return v4

    #@483
    .line 2720
    :cond_3f
    const/4 v4, -0x1

    #@484
    move/from16 v0, v31

    #@486
    if-eq v0, v4, :cond_3e

    #@488
    move-object/from16 v0, p0

    #@48a
    move-object/from16 v1, p1

    #@48c
    move/from16 v2, v31

    #@48e
    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    #@491
    move-result v4

    #@492
    move-object/from16 v0, p0

    #@494
    iget-byte v5, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@496
    add-int/lit8 v5, v5, 0x1

    #@498
    if-eq v4, v5, :cond_3e

    #@49a
    .line 2721
    const/16 v41, 0x1

    #@49c
    goto :goto_11

    #@49d
    .line 2735
    :cond_40
    move-object/from16 v0, p3

    #@49f
    iget v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@4a1
    int-to-long v4, v4

    #@4a2
    add-long v26, v26, v4

    #@4a4
    .line 2736
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getParseMaxDigits()I

    #@4a7
    move-result v4

    #@4a8
    neg-int v4, v4

    #@4a9
    int-to-long v4, v4

    #@4aa
    cmp-long v4, v26, v4

    #@4ac
    if-gez v4, :cond_41

    #@4ae
    .line 2737
    const/4 v4, 0x1

    #@4af
    const/4 v5, 0x2

    #@4b0
    aput-boolean v4, p4, v5

    #@4b2
    .line 2747
    :goto_12
    if-nez v38, :cond_3

    #@4b4
    if-nez v22, :cond_3

    #@4b6
    .line 2748
    move-object/from16 v0, p2

    #@4b8
    move/from16 v1, v34

    #@4ba
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@4bd
    .line 2749
    move-object/from16 v0, p2

    #@4bf
    move/from16 v1, v34

    #@4c1
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@4c4
    .line 2750
    const/4 v4, 0x0

    #@4c5
    return v4

    #@4c6
    .line 2738
    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getParseMaxDigits()I

    #@4c9
    move-result v4

    #@4ca
    int-to-long v4, v4

    #@4cb
    cmp-long v4, v26, v4

    #@4cd
    if-lez v4, :cond_42

    #@4cf
    .line 2739
    const/4 v4, 0x1

    #@4d0
    const/4 v5, 0x0

    #@4d1
    aput-boolean v4, p4, v5

    #@4d3
    goto :goto_12

    #@4d4
    .line 2741
    :cond_42
    move-wide/from16 v0, v26

    #@4d6
    long-to-int v4, v0

    #@4d7
    move-object/from16 v0, p3

    #@4d9
    iput v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@4db
    goto :goto_12

    #@4dc
    .line 2769
    .end local v7    # "exponentSep":Ljava/lang/String;
    .end local v17    # "backup":I
    .end local v19    # "decimal":C
    .end local v20    # "decimalEquiv":Landroid/icu/text/UnicodeSet;
    .end local v21    # "digit":I
    .end local v22    # "digitCount":I
    .end local v23    # "digitStart":I
    .end local v24    # "digitSymbols":[C
    .end local v26    # "exponent":J
    .end local v28    # "groupEquiv":Landroid/icu/text/UnicodeSet;
    .end local v29    # "grouping":C
    .end local v30    # "gs2":I
    .end local v31    # "lastGroup":I
    .end local v37    # "sawDecimal":Z
    .end local v38    # "sawDigit":Z
    .end local v39    # "sawExponent":Z
    .end local v40    # "sawGrouping":Z
    .end local v41    # "strictFail":Z
    .end local v42    # "strictParse":Z
    :cond_43
    move/from16 v0, v33

    #@4de
    move/from16 v1, v36

    #@4e0
    if-le v0, v1, :cond_7

    #@4e2
    .line 2770
    const/16 v36, -0x1

    #@4e4
    goto/16 :goto_2

    #@4e6
    .line 2775
    :cond_44
    const/4 v4, 0x0

    #@4e7
    move v5, v4

    #@4e8
    goto/16 :goto_3

    #@4ea
    :cond_45
    const/4 v4, 0x0

    #@4eb
    goto/16 :goto_4

    #@4ed
    .line 2780
    :cond_46
    if-ltz v36, :cond_47

    #@4ef
    move/from16 v33, v36

    #@4f1
    .end local v33    # "negMatch":I
    :cond_47
    add-int v6, v6, v33

    #@4f3
    .line 2783
    move-object/from16 v0, p0

    #@4f5
    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4f7
    if-lez v4, :cond_48

    #@4f9
    move-object/from16 v0, p0

    #@4fb
    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@4fd
    const/4 v5, 0x3

    #@4fe
    if-ne v4, v5, :cond_48

    #@500
    .line 2784
    move-object/from16 v0, p0

    #@502
    move-object/from16 v1, p1

    #@504
    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@507
    move-result v6

    #@508
    .line 2787
    :cond_48
    move-object/from16 v0, p2

    #@50a
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    #@50d
    .line 2789
    if-ltz v36, :cond_49

    #@50f
    const/4 v4, 0x1

    #@510
    :goto_13
    const/4 v5, 0x1

    #@511
    aput-boolean v4, p4, v5

    #@513
    .line 2791
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@516
    move-result v4

    #@517
    move/from16 v0, v34

    #@519
    if-ne v4, v0, :cond_4a

    #@51b
    .line 2792
    move-object/from16 v0, p2

    #@51d
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@520
    .line 2793
    const/4 v4, 0x0

    #@521
    return v4

    #@522
    .line 2789
    :cond_49
    const/4 v4, 0x0

    #@523
    goto :goto_13

    #@524
    .line 2795
    :cond_4a
    const/4 v4, 0x1

    #@525
    return v4
.end method

.method private toPattern(Z)Ljava/lang/String;
    .locals 27
    .param p1, "localized"    # Z

    #@0
    .prologue
    .line 4436
    new-instance v17, Ljava/lang/StringBuffer;

    #@2
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 4437
    .local v17, "result":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_7

    #@7
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@b
    move-object/from16 v24, v0

    #@d
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    #@10
    move-result v23

    #@11
    .line 4438
    :goto_0
    if-eqz p1, :cond_8

    #@13
    move-object/from16 v0, p0

    #@15
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@17
    move-object/from16 v24, v0

    #@19
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    #@1c
    move-result v6

    #@1d
    .line 4439
    :goto_1
    const/16 v20, 0x0

    #@1f
    .line 4440
    .local v20, "sigDigit":C
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@22
    move-result v22

    #@23
    .line 4441
    .local v22, "useSigDig":Z
    if-eqz v22, :cond_0

    #@25
    .line 4442
    if-eqz p1, :cond_9

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@2b
    move-object/from16 v24, v0

    #@2d
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    #@30
    move-result v20

    #@31
    .line 4444
    .end local v20    # "sigDigit":C
    :cond_0
    :goto_2
    if-eqz p1, :cond_a

    #@33
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@37
    move-object/from16 v24, v0

    #@39
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@3c
    move-result v8

    #@3d
    .line 4446
    :goto_3
    const/16 v18, 0x0

    #@3f
    .line 4447
    .local v18, "roundingDecimalPos":I
    const/16 v19, 0x0

    #@41
    .line 4448
    .local v19, "roundingDigits":Ljava/lang/String;
    move-object/from16 v0, p0

    #@43
    iget v0, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@45
    move/from16 v24, v0

    #@47
    if-lez v24, :cond_b

    #@49
    move-object/from16 v0, p0

    #@4b
    iget v13, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@4d
    .line 4449
    .local v13, "padPos":I
    :goto_4
    move-object/from16 v0, p0

    #@4f
    iget v0, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@51
    move/from16 v24, v0

    #@53
    if-lez v24, :cond_d

    #@55
    .line 4450
    new-instance v25, Ljava/lang/StringBuffer;

    #@57
    const/16 v24, 0x2

    #@59
    move-object/from16 v0, v25

    #@5b
    move/from16 v1, v24

    #@5d
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@60
    if-eqz p1, :cond_c

    #@62
    .line 4451
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@66
    move-object/from16 v24, v0

    #@68
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getPadEscape()C

    #@6b
    move-result v24

    #@6c
    .line 4450
    :goto_5
    move-object/from16 v0, v25

    #@6e
    move/from16 v1, v24

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@73
    move-result-object v24

    #@74
    .line 4452
    move-object/from16 v0, p0

    #@76
    iget-char v0, v0, Landroid/icu/text/DecimalFormat;->pad:C

    #@78
    move/from16 v25, v0

    #@7a
    .line 4450
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7d
    move-result-object v24

    #@7e
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@81
    move-result-object v14

    #@82
    .line 4454
    :goto_6
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@86
    move-object/from16 v24, v0

    #@88
    if-eqz v24, :cond_1

    #@8a
    .line 4455
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@8e
    move-object/from16 v24, v0

    #@90
    invoke-virtual/range {v24 .. v24}, Landroid/icu/math/BigDecimal;->scale()I

    #@93
    move-result v9

    #@94
    .line 4456
    .local v9, "i":I
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@98
    move-object/from16 v24, v0

    #@9a
    move-object/from16 v0, v24

    #@9c
    invoke-virtual {v0, v9}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    #@9f
    move-result-object v24

    #@a0
    invoke-virtual/range {v24 .. v24}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@a3
    move-result-object v19

    #@a4
    .line 4457
    .local v19, "roundingDigits":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@a7
    move-result v24

    #@a8
    sub-int v18, v24, v9

    #@aa
    .line 4459
    .end local v9    # "i":I
    .end local v19    # "roundingDigits":Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    #@ab
    .local v15, "part":I
    :goto_7
    const/16 v24, 0x2

    #@ad
    move/from16 v0, v24

    #@af
    if-ge v15, v0, :cond_26

    #@b1
    .line 4461
    if-nez v13, :cond_2

    #@b3
    .line 4462
    move-object/from16 v0, v17

    #@b5
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b8
    .line 4467
    :cond_2
    if-eqz v15, :cond_e

    #@ba
    const/16 v24, 0x1

    #@bc
    :goto_8
    const/16 v25, 0x1

    #@be
    move-object/from16 v0, p0

    #@c0
    move-object/from16 v1, v17

    #@c2
    move/from16 v2, v24

    #@c4
    move/from16 v3, v25

    #@c6
    move/from16 v4, p1

    #@c8
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/DecimalFormat;->appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V

    #@cb
    .line 4468
    const/16 v24, 0x1

    #@cd
    move/from16 v0, v24

    #@cf
    if-ne v13, v0, :cond_3

    #@d1
    .line 4469
    move-object/from16 v0, v17

    #@d3
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d6
    .line 4471
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    #@d9
    move-result v21

    #@da
    .line 4472
    .local v21, "sub0Start":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    #@dd
    move-result v24

    #@de
    if-eqz v24, :cond_f

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@e4
    move/from16 v24, v0

    #@e6
    const/16 v25, 0x0

    #@e8
    move/from16 v0, v25

    #@ea
    move/from16 v1, v24

    #@ec
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@ef
    move-result v7

    #@f0
    .line 4473
    .local v7, "g":I
    :goto_9
    if-lez v7, :cond_4

    #@f2
    move-object/from16 v0, p0

    #@f4
    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@f6
    move/from16 v24, v0

    #@f8
    if-lez v24, :cond_4

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@fe
    move/from16 v24, v0

    #@100
    move-object/from16 v0, p0

    #@102
    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@104
    move/from16 v25, v0

    #@106
    move/from16 v0, v24

    #@108
    move/from16 v1, v25

    #@10a
    if-eq v0, v1, :cond_4

    #@10c
    .line 4474
    move-object/from16 v0, p0

    #@10e
    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@110
    move/from16 v24, v0

    #@112
    add-int v7, v7, v24

    #@114
    .line 4476
    :cond_4
    const/4 v10, 0x0

    #@115
    .local v10, "maxDig":I
    const/4 v12, 0x0

    #@116
    .local v12, "minDig":I
    const/4 v11, 0x0

    #@117
    .line 4477
    .local v11, "maxSigDig":I
    if-eqz v22, :cond_10

    #@119
    .line 4478
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    #@11c
    move-result v12

    #@11d
    .line 4479
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    #@120
    move-result v11

    #@121
    move v10, v11

    #@122
    .line 4484
    :goto_a
    move-object/from16 v0, p0

    #@124
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@126
    move/from16 v24, v0

    #@128
    if-eqz v24, :cond_11

    #@12a
    .line 4485
    const/16 v24, 0x8

    #@12c
    move/from16 v0, v24

    #@12e
    if-le v10, v0, :cond_5

    #@130
    .line 4486
    const/4 v10, 0x1

    #@131
    .line 4493
    :cond_5
    :goto_b
    move v9, v10

    #@132
    .restart local v9    # "i":I
    :goto_c
    if-lez v9, :cond_17

    #@134
    .line 4494
    move-object/from16 v0, p0

    #@136
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@138
    move/from16 v24, v0

    #@13a
    if-nez v24, :cond_6

    #@13c
    if-ge v9, v10, :cond_6

    #@13e
    move-object/from16 v0, p0

    #@140
    invoke-direct {v0, v9}, Landroid/icu/text/DecimalFormat;->isGroupingPosition(I)Z

    #@143
    move-result v24

    #@144
    if-eqz v24, :cond_6

    #@146
    .line 4495
    move-object/from16 v0, v17

    #@148
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@14b
    .line 4497
    :cond_6
    if-eqz v22, :cond_14

    #@14d
    .line 4502
    if-lt v11, v9, :cond_13

    #@14f
    sub-int v24, v11, v12

    #@151
    move/from16 v0, v24

    #@153
    if-le v9, v0, :cond_13

    #@155
    move/from16 v24, v20

    #@157
    :goto_d
    move-object/from16 v0, v17

    #@159
    move/from16 v1, v24

    #@15b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@15e
    .line 4493
    :goto_e
    add-int/lit8 v9, v9, -0x1

    #@160
    goto :goto_c

    #@161
    .line 4437
    .end local v7    # "g":I
    .end local v9    # "i":I
    .end local v10    # "maxDig":I
    .end local v11    # "maxSigDig":I
    .end local v12    # "minDig":I
    .end local v13    # "padPos":I
    .end local v15    # "part":I
    .end local v18    # "roundingDecimalPos":I
    .end local v21    # "sub0Start":I
    .end local v22    # "useSigDig":Z
    :cond_7
    const/16 v23, 0x30

    #@163
    .local v23, "zero":C
    goto/16 :goto_0

    #@165
    .line 4438
    .end local v23    # "zero":C
    :cond_8
    const/16 v6, 0x23

    #@167
    .local v6, "digit":C
    goto/16 :goto_1

    #@169
    .line 4442
    .end local v6    # "digit":C
    .restart local v20    # "sigDigit":C
    .restart local v22    # "useSigDig":Z
    :cond_9
    const/16 v20, 0x40

    #@16b
    goto/16 :goto_2

    #@16d
    .line 4444
    .end local v20    # "sigDigit":C
    :cond_a
    const/16 v8, 0x2c

    #@16f
    .local v8, "group":C
    goto/16 :goto_3

    #@171
    .line 4448
    .end local v8    # "group":C
    .restart local v18    # "roundingDecimalPos":I
    .local v19, "roundingDigits":Ljava/lang/String;
    :cond_b
    const/4 v13, -0x1

    #@172
    .restart local v13    # "padPos":I
    goto/16 :goto_4

    #@174
    .line 4452
    :cond_c
    const/16 v24, 0x2a

    #@176
    goto/16 :goto_5

    #@178
    .line 4453
    :cond_d
    const/4 v14, 0x0

    #@179
    .local v14, "padSpec":Ljava/lang/String;
    goto/16 :goto_6

    #@17b
    .line 4467
    .end local v14    # "padSpec":Ljava/lang/String;
    .end local v19    # "roundingDigits":Ljava/lang/String;
    .restart local v15    # "part":I
    :cond_e
    const/16 v24, 0x0

    #@17d
    goto/16 :goto_8

    #@17f
    .line 4472
    .restart local v21    # "sub0Start":I
    :cond_f
    const/4 v7, 0x0

    #@180
    goto/16 :goto_9

    #@182
    .line 4481
    .restart local v7    # "g":I
    .restart local v10    # "maxDig":I
    .restart local v11    # "maxSigDig":I
    .restart local v12    # "minDig":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@185
    move-result v12

    #@186
    .line 4482
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@189
    move-result v10

    #@18a
    goto :goto_a

    #@18b
    .line 4488
    :cond_11
    if-eqz v22, :cond_12

    #@18d
    .line 4489
    add-int/lit8 v24, v7, 0x1

    #@18f
    move/from16 v0, v24

    #@191
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    #@194
    move-result v10

    #@195
    goto :goto_b

    #@196
    .line 4491
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@199
    move-result v24

    #@19a
    move/from16 v0, v24

    #@19c
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    #@19f
    move-result v24

    #@1a0
    move/from16 v0, v24

    #@1a2
    move/from16 v1, v18

    #@1a4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1a7
    move-result v24

    #@1a8
    add-int/lit8 v10, v24, 0x1

    #@1aa
    goto :goto_b

    #@1ab
    .restart local v9    # "i":I
    :cond_13
    move/from16 v24, v6

    #@1ad
    .line 4502
    goto :goto_d

    #@1ae
    .line 4504
    :cond_14
    if-eqz v19, :cond_15

    #@1b0
    .line 4505
    sub-int v16, v18, v9

    #@1b2
    .line 4506
    .local v16, "pos":I
    if-ltz v16, :cond_15

    #@1b4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@1b7
    move-result v24

    #@1b8
    move/from16 v0, v16

    #@1ba
    move/from16 v1, v24

    #@1bc
    if-ge v0, v1, :cond_15

    #@1be
    .line 4507
    move-object/from16 v0, v19

    #@1c0
    move/from16 v1, v16

    #@1c2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1c5
    move-result v24

    #@1c6
    add-int/lit8 v24, v24, -0x30

    #@1c8
    add-int v24, v24, v23

    #@1ca
    move/from16 v0, v24

    #@1cc
    int-to-char v0, v0

    #@1cd
    move/from16 v24, v0

    #@1cf
    move-object/from16 v0, v17

    #@1d1
    move/from16 v1, v24

    #@1d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1d6
    goto :goto_e

    #@1d7
    .line 4511
    .end local v16    # "pos":I
    :cond_15
    if-gt v9, v12, :cond_16

    #@1d9
    move/from16 v24, v23

    #@1db
    :goto_f
    move-object/from16 v0, v17

    #@1dd
    move/from16 v1, v24

    #@1df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1e2
    goto/16 :goto_e

    #@1e4
    :cond_16
    move/from16 v24, v6

    #@1e6
    goto :goto_f

    #@1e7
    .line 4514
    :cond_17
    if-nez v22, :cond_1e

    #@1e9
    .line 4515
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@1ec
    move-result v24

    #@1ed
    if-gtz v24, :cond_18

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@1f3
    move/from16 v24, v0

    #@1f5
    if-eqz v24, :cond_19

    #@1f7
    .line 4516
    :cond_18
    if-eqz p1, :cond_1a

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@1fd
    move-object/from16 v24, v0

    #@1ff
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@202
    move-result v24

    #@203
    :goto_10
    move-object/from16 v0, v17

    #@205
    move/from16 v1, v24

    #@207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@20a
    .line 4519
    :cond_19
    move/from16 v16, v18

    #@20c
    .line 4520
    .restart local v16    # "pos":I
    const/4 v9, 0x0

    #@20d
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@210
    move-result v24

    #@211
    move/from16 v0, v24

    #@213
    if-ge v9, v0, :cond_1e

    #@215
    .line 4521
    if-eqz v19, :cond_1c

    #@217
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@21a
    move-result v24

    #@21b
    move/from16 v0, v16

    #@21d
    move/from16 v1, v24

    #@21f
    if-ge v0, v1, :cond_1c

    #@221
    .line 4522
    if-gez v16, :cond_1b

    #@223
    move/from16 v24, v23

    #@225
    :goto_12
    move-object/from16 v0, v17

    #@227
    move/from16 v1, v24

    #@229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22c
    .line 4524
    add-int/lit8 v16, v16, 0x1

    #@22e
    .line 4520
    :goto_13
    add-int/lit8 v9, v9, 0x1

    #@230
    goto :goto_11

    #@231
    .line 4517
    .end local v16    # "pos":I
    :cond_1a
    const/16 v24, 0x2e

    #@233
    goto :goto_10

    #@234
    .line 4523
    .restart local v16    # "pos":I
    :cond_1b
    move-object/from16 v0, v19

    #@236
    move/from16 v1, v16

    #@238
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@23b
    move-result v24

    #@23c
    add-int/lit8 v24, v24, -0x30

    #@23e
    add-int v24, v24, v23

    #@240
    move/from16 v0, v24

    #@242
    int-to-char v0, v0

    #@243
    move/from16 v24, v0

    #@245
    goto :goto_12

    #@246
    .line 4527
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@249
    move-result v24

    #@24a
    move/from16 v0, v24

    #@24c
    if-ge v9, v0, :cond_1d

    #@24e
    move/from16 v24, v23

    #@250
    :goto_14
    move-object/from16 v0, v17

    #@252
    move/from16 v1, v24

    #@254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@257
    goto :goto_13

    #@258
    :cond_1d
    move/from16 v24, v6

    #@25a
    goto :goto_14

    #@25b
    .line 4530
    .end local v16    # "pos":I
    :cond_1e
    move-object/from16 v0, p0

    #@25d
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@25f
    move/from16 v24, v0

    #@261
    if-eqz v24, :cond_22

    #@263
    .line 4531
    if-eqz p1, :cond_20

    #@265
    .line 4532
    move-object/from16 v0, p0

    #@267
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@269
    move-object/from16 v24, v0

    #@26b
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    #@26e
    move-result-object v24

    #@26f
    move-object/from16 v0, v17

    #@271
    move-object/from16 v1, v24

    #@273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@276
    .line 4536
    :goto_15
    move-object/from16 v0, p0

    #@278
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@27a
    move/from16 v24, v0

    #@27c
    if-eqz v24, :cond_1f

    #@27e
    .line 4537
    if-eqz p1, :cond_21

    #@280
    move-object/from16 v0, p0

    #@282
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@284
    move-object/from16 v24, v0

    #@286
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    #@289
    move-result v24

    #@28a
    :goto_16
    move-object/from16 v0, v17

    #@28c
    move/from16 v1, v24

    #@28e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@291
    .line 4539
    :cond_1f
    const/4 v9, 0x0

    #@292
    :goto_17
    move-object/from16 v0, p0

    #@294
    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@296
    move/from16 v24, v0

    #@298
    move/from16 v0, v24

    #@29a
    if-ge v9, v0, :cond_22

    #@29c
    .line 4540
    move-object/from16 v0, v17

    #@29e
    move/from16 v1, v23

    #@2a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2a3
    .line 4539
    add-int/lit8 v9, v9, 0x1

    #@2a5
    goto :goto_17

    #@2a6
    .line 4534
    :cond_20
    const/16 v24, 0x45

    #@2a8
    move-object/from16 v0, v17

    #@2aa
    move/from16 v1, v24

    #@2ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2af
    goto :goto_15

    #@2b0
    .line 4537
    :cond_21
    const/16 v24, 0x2b

    #@2b2
    goto :goto_16

    #@2b3
    .line 4543
    :cond_22
    if-eqz v14, :cond_23

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@2b9
    move/from16 v24, v0

    #@2bb
    if-eqz v24, :cond_27

    #@2bd
    .line 4562
    :cond_23
    const/16 v24, 0x2

    #@2bf
    move/from16 v0, v24

    #@2c1
    if-ne v13, v0, :cond_24

    #@2c3
    .line 4563
    move-object/from16 v0, v17

    #@2c5
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c8
    .line 4567
    :cond_24
    if-eqz v15, :cond_2a

    #@2ca
    const/16 v24, 0x1

    #@2cc
    :goto_18
    const/16 v25, 0x0

    #@2ce
    move-object/from16 v0, p0

    #@2d0
    move-object/from16 v1, v17

    #@2d2
    move/from16 v2, v24

    #@2d4
    move/from16 v3, v25

    #@2d6
    move/from16 v4, p1

    #@2d8
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/DecimalFormat;->appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V

    #@2db
    .line 4568
    const/16 v24, 0x3

    #@2dd
    move/from16 v0, v24

    #@2df
    if-ne v13, v0, :cond_25

    #@2e1
    .line 4569
    move-object/from16 v0, v17

    #@2e3
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e6
    .line 4571
    :cond_25
    if-nez v15, :cond_2c

    #@2e8
    .line 4572
    move-object/from16 v0, p0

    #@2ea
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2ec
    move-object/from16 v24, v0

    #@2ee
    move-object/from16 v0, p0

    #@2f0
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@2f2
    move-object/from16 v25, v0

    #@2f4
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f7
    move-result v24

    #@2f8
    if-eqz v24, :cond_2b

    #@2fa
    .line 4573
    move-object/from16 v0, p0

    #@2fc
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@2fe
    move-object/from16 v24, v0

    #@300
    new-instance v25, Ljava/lang/StringBuilder;

    #@302
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@305
    const/16 v26, 0x2d

    #@307
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v25

    #@30b
    move-object/from16 v0, p0

    #@30d
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@30f
    move-object/from16 v26, v0

    #@311
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@314
    move-result-object v25

    #@315
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@318
    move-result-object v25

    #@319
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31c
    move-result v24

    #@31d
    .line 4572
    if-eqz v24, :cond_2b

    #@31f
    .line 4580
    .end local v7    # "g":I
    .end local v9    # "i":I
    .end local v10    # "maxDig":I
    .end local v11    # "maxSigDig":I
    .end local v12    # "minDig":I
    .end local v21    # "sub0Start":I
    :cond_26
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@322
    move-result-object v24

    #@323
    return-object v24

    #@324
    .line 4544
    .restart local v7    # "g":I
    .restart local v9    # "i":I
    .restart local v10    # "maxDig":I
    .restart local v11    # "maxSigDig":I
    .restart local v12    # "minDig":I
    .restart local v21    # "sub0Start":I
    :cond_27
    move-object/from16 v0, p0

    #@326
    iget v0, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@328
    move/from16 v24, v0

    #@32a
    .line 4545
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    #@32d
    move-result v25

    #@32e
    .line 4544
    sub-int v24, v24, v25

    #@330
    add-int v25, v24, v21

    #@332
    .line 4547
    if-nez v15, :cond_29

    #@334
    .line 4548
    move-object/from16 v0, p0

    #@336
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@338
    move-object/from16 v24, v0

    #@33a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    #@33d
    move-result v24

    #@33e
    move-object/from16 v0, p0

    #@340
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@342
    move-object/from16 v26, v0

    #@344
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@347
    move-result v26

    #@348
    add-int v24, v24, v26

    #@34a
    .line 4544
    :goto_19
    sub-int v5, v25, v24

    #@34c
    .line 4550
    .local v5, "add":I
    :cond_28
    :goto_1a
    if-lez v5, :cond_23

    #@34e
    .line 4551
    move-object/from16 v0, v17

    #@350
    move/from16 v1, v21

    #@352
    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@355
    .line 4552
    add-int/lit8 v10, v10, 0x1

    #@357
    .line 4553
    add-int/lit8 v5, v5, -0x1

    #@359
    .line 4556
    const/16 v24, 0x1

    #@35b
    move/from16 v0, v24

    #@35d
    if-le v5, v0, :cond_28

    #@35f
    move-object/from16 v0, p0

    #@361
    invoke-direct {v0, v10}, Landroid/icu/text/DecimalFormat;->isGroupingPosition(I)Z

    #@364
    move-result v24

    #@365
    if-eqz v24, :cond_28

    #@367
    .line 4557
    move-object/from16 v0, v17

    #@369
    move/from16 v1, v21

    #@36b
    invoke-virtual {v0, v1, v8}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@36e
    .line 4558
    add-int/lit8 v5, v5, -0x1

    #@370
    goto :goto_1a

    #@371
    .line 4549
    .end local v5    # "add":I
    :cond_29
    move-object/from16 v0, p0

    #@373
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@375
    move-object/from16 v24, v0

    #@377
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    #@37a
    move-result v24

    #@37b
    move-object/from16 v0, p0

    #@37d
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@37f
    move-object/from16 v26, v0

    #@381
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@384
    move-result v26

    #@385
    add-int v24, v24, v26

    #@387
    goto :goto_19

    #@388
    .line 4567
    :cond_2a
    const/16 v24, 0x0

    #@38a
    goto/16 :goto_18

    #@38c
    .line 4576
    :cond_2b
    if-eqz p1, :cond_2d

    #@38e
    move-object/from16 v0, p0

    #@390
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@392
    move-object/from16 v24, v0

    #@394
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    #@397
    move-result v24

    #@398
    :goto_1b
    move-object/from16 v0, v17

    #@39a
    move/from16 v1, v24

    #@39c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@39f
    .line 4459
    :cond_2c
    add-int/lit8 v15, v15, 0x1

    #@3a1
    goto/16 :goto_7

    #@3a3
    .line 4576
    :cond_2d
    const/16 v24, 0x3b

    #@3a5
    goto :goto_1b
.end method

.method private static trimMarksFromAffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "affix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2883
    const/4 v2, 0x0

    #@1
    .line 2884
    .local v2, "hasBidiMark":Z
    const/4 v3, 0x0

    #@2
    .line 2885
    .local v3, "idx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-ge v3, v4, :cond_0

    #@8
    .line 2886
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v4

    #@c
    invoke-static {v4}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 2887
    const/4 v2, 0x1

    #@13
    .line 2891
    :cond_0
    if-nez v2, :cond_2

    #@15
    .line 2892
    return-object p0

    #@16
    .line 2885
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2895
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    .line 2896
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@1f
    invoke-virtual {v0, p0, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@22
    .line 2897
    add-int/lit8 v3, v3, 0x1

    #@24
    .line 2898
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@27
    move-result v4

    #@28
    if-ge v3, v4, :cond_4

    #@2a
    .line 2899
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v1

    #@2e
    .line 2900
    .local v1, "c":C
    invoke-static {v1}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_3

    #@34
    .line 2901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2898
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 2905
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    return-object v4
.end method

.method private unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pat"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3950
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 3951
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@a
    .line 3952
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v4

    #@e
    if-ge v2, v4, :cond_1

    #@10
    .line 3953
    add-int/lit8 v3, v2, 0x1

    #@12
    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v1

    #@16
    .line 3954
    .local v1, "ch":C
    const/16 v4, 0x27

    #@18
    if-eq v1, v4, :cond_0

    #@1a
    .line 3955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    :cond_0
    move v2, v3

    #@1e
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@1f
    .line 3958
    .end local v1    # "ch":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    return-object v4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 5424
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 5426
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@8
    .line 5417
    return-void
.end method


# virtual methods
.method adjustNumberAsInFormatting(D)D
    .locals 3
    .param p1, "number"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 941
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 942
    return-wide p1

    #@7
    .line 944
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->multiply(D)D

    #@a
    move-result-wide v0

    #@b
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->round(D)D

    #@e
    move-result-wide p1

    #@f
    .line 945
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 946
    return-wide p1

    #@16
    .line 948
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->toDigitList(D)Landroid/icu/text/DigitList;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/icu/text/DigitList;->getDouble()D

    #@1d
    move-result-wide v0

    #@1e
    return-wide v0
.end method

.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4627
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    #@4
    .line 4626
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4603
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    #@4
    .line 4602
    return-void
.end method

.method public areSignificantDigitsUsed()Z
    .locals 1

    #@0
    .prologue
    .line 5245
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@2
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 3885
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/DecimalFormat;

    #@6
    .line 3886
    .local v1, "other":Landroid/icu/text/DecimalFormat;
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@8
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/icu/text/DecimalFormatSymbols;

    #@e
    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@10
    .line 3887
    new-instance v2, Landroid/icu/text/DigitList;

    #@12
    invoke-direct {v2}, Landroid/icu/text/DigitList;-><init>()V

    #@15
    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@17
    .line 3888
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 3889
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@1d
    invoke-virtual {v2}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/icu/text/CurrencyPluralInfo;

    #@23
    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@25
    .line 3891
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2a
    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@2c
    .line 3892
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@2e
    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 3897
    return-object v1

    #@31
    .line 3898
    .end local v1    # "other":Landroid/icu/text/DecimalFormat;
    :catch_0
    move-exception v0

    #@32
    .line 3899
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@34
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    #@37
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3908
    if-nez p1, :cond_0

    #@3
    .line 3909
    return v1

    #@4
    .line 3910
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 3911
    return v1

    #@b
    :cond_1
    move-object v0, p1

    #@c
    .line 3913
    check-cast v0, Landroid/icu/text/DecimalFormat;

    #@e
    .line 3917
    .local v0, "other":Landroid/icu/text/DecimalFormat;
    iget v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@10
    iget v3, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@12
    if-ne v2, v3, :cond_5

    #@14
    .line 3918
    iget v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@16
    const/4 v3, 0x6

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 3919
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@1b
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@1d
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_5

    #@23
    .line 3920
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@25
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@27
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    #@2a
    move-result v2

    #@2b
    .line 3919
    if-eqz v2, :cond_5

    #@2d
    .line 3921
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@2f
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@31
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    #@34
    move-result v2

    #@35
    .line 3919
    if-eqz v2, :cond_5

    #@37
    .line 3922
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@39
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@3b
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    #@3e
    move-result v2

    #@3f
    .line 3917
    if-eqz v2, :cond_5

    #@41
    .line 3923
    :cond_2
    iget v2, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@43
    iget v3, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@45
    if-ne v2, v3, :cond_5

    #@47
    .line 3924
    iget-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@49
    iget-byte v3, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@4b
    if-ne v2, v3, :cond_5

    #@4d
    .line 3925
    iget-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@4f
    iget-byte v3, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@51
    if-ne v2, v3, :cond_5

    #@53
    .line 3926
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@55
    iget-boolean v3, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@57
    if-ne v2, v3, :cond_5

    #@59
    .line 3927
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@5b
    iget-boolean v3, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@5d
    if-ne v2, v3, :cond_5

    #@5f
    .line 3928
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@61
    if-eqz v2, :cond_3

    #@63
    iget-byte v2, p0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@65
    iget-byte v3, v0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@67
    if-ne v2, v3, :cond_5

    #@69
    .line 3929
    :cond_3
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@6b
    iget-boolean v3, v0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@6d
    if-ne v2, v3, :cond_5

    #@6f
    .line 3930
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@71
    if-eqz v2, :cond_4

    #@73
    iget v2, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@75
    iget v3, v0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@77
    if-ne v2, v3, :cond_5

    #@79
    .line 3931
    iget v2, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@7b
    iget v3, v0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@7d
    if-ne v2, v3, :cond_5

    #@7f
    .line 3932
    :cond_4
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@81
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@83
    invoke-virtual {v2, v3}, Landroid/icu/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v2

    #@87
    .line 3917
    if-eqz v2, :cond_5

    #@89
    .line 3933
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@8b
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@8d
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@90
    move-result v2

    #@91
    .line 3917
    if-eqz v2, :cond_5

    #@93
    .line 3934
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@95
    iget-object v2, v0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@97
    invoke-virtual {v1, v2}, Landroid/icu/util/Currency$CurrencyUsage;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v1

    #@9b
    .line 3917
    :cond_5
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "number"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 782
    const/4 v6, 0x0

    #@1
    move-object v1, p0

    #@2
    move-wide v2, p1

    #@3
    move-object v4, p3

    #@4
    move-object v5, p4

    #@5
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "number"    # J
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 1075
    const/4 v6, 0x0

    #@1
    move-object v1, p0

    #@2
    move-wide v2, p1

    #@3
    move-object v4, p3

    #@4
    move-object v5, p4

    #@5
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 10
    .param p1, "number"    # Landroid/icu/math/BigDecimal;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 1203
    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@4
    if-eq v1, v6, :cond_0

    #@6
    .line 1204
    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@8
    int-to-long v2, v1

    #@9
    invoke-static {v2, v3}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    #@c
    move-result-object v1

    #@d
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@f
    invoke-virtual {p1, v1, v2}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@12
    move-result-object p1

    #@13
    .line 1207
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1208
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@19
    iget v2, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@1b
    invoke-virtual {p1, v1, v0, v2}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;II)Landroid/icu/math/BigDecimal;

    #@1e
    move-result-object v1

    #@1f
    .line 1209
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@21
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@23
    .line 1208
    invoke-virtual {v1, v2, v3}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@26
    move-result-object p1

    #@27
    .line 1212
    :cond_1
    iget-object v9, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@29
    monitor-enter v9

    #@2a
    .line 1213
    :try_start_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@2c
    const/4 v1, 0x0

    #@2d
    invoke-direct {p0, v1}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    #@30
    move-result v3

    #@31
    iget-boolean v1, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@33
    if-nez v1, :cond_3

    #@35
    .line 1214
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_2

    #@3b
    move v1, v0

    #@3c
    .line 1213
    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Landroid/icu/text/DigitList;->set(Landroid/icu/math/BigDecimal;IZ)V

    #@3f
    .line 1216
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@41
    invoke-virtual {v1}, Landroid/icu/text/DigitList;->wasRounded()Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_4

    #@47
    iget v1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@49
    const/4 v2, 0x7

    #@4a
    if-ne v1, v2, :cond_4

    #@4c
    .line 1217
    new-instance v0, Ljava/lang/ArithmeticException;

    #@4e
    const-string/jumbo v1, "Rounding necessary"

    #@51
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    .line 1212
    :catchall_0
    move-exception v0

    #@56
    monitor-exit v9

    #@57
    throw v0

    #@58
    :cond_2
    move v1, v6

    #@59
    .line 1214
    goto :goto_0

    #@5a
    :cond_3
    move v1, v0

    #@5b
    .line 1213
    goto :goto_0

    #@5c
    .line 1219
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@5f
    move-result-wide v2

    #@60
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->signum()I

    #@63
    move-result v1

    #@64
    if-gez v1, :cond_5

    #@66
    .line 1220
    :goto_1
    const/4 v7, 0x0

    #@67
    const/4 v8, 0x0

    #@68
    move-object v1, p0

    #@69
    move-object v4, p2

    #@6a
    move-object v5, p3

    #@6b
    .line 1219
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6e
    move-result-object v0

    #@6f
    monitor-exit v9

    #@70
    return-object v0

    #@71
    :cond_5
    move v6, v0

    #@72
    goto :goto_1
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 1167
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 1133
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4326
    sget-object v0, Landroid/icu/text/DecimalFormat;->NULL_UNIT:Landroid/icu/text/DecimalFormat$Unit;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;Landroid/icu/text/DecimalFormat$Unit;)Ljava/text/AttributedCharacterIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method formatToCharacterIterator(Ljava/lang/Object;Landroid/icu/text/DecimalFormat$Unit;)Ljava/text/AttributedCharacterIterator;
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "unit"    # Landroid/icu/text/DecimalFormat$Unit;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 4330
    instance-of v1, p1, Ljava/lang/Number;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 4331
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v1

    #@c
    :cond_0
    move-object v9, p1

    #@d
    .line 4332
    check-cast v9, Ljava/lang/Number;

    #@f
    .line 4333
    .local v9, "number":Ljava/lang/Number;
    new-instance v4, Ljava/lang/StringBuffer;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@14
    .line 4334
    .local v4, "text":Ljava/lang/StringBuffer;
    invoke-virtual {p2, v4}, Landroid/icu/text/DecimalFormat$Unit;->writePrefix(Ljava/lang/StringBuffer;)V

    #@17
    .line 4335
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 4336
    instance-of v1, p1, Ljava/math/BigInteger;

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 4337
    check-cast v9, Ljava/math/BigInteger;

    #@22
    .end local v9    # "number":Ljava/lang/Number;
    new-instance v1, Ljava/text/FieldPosition;

    #@24
    invoke-direct {v1, v11}, Ljava/text/FieldPosition;-><init>(I)V

    #@27
    invoke-direct {p0, v9, v4, v1, v6}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    #@2a
    .line 4348
    :goto_0
    invoke-virtual {p2, v4}, Landroid/icu/text/DecimalFormat$Unit;->writeSuffix(Ljava/lang/StringBuffer;)V

    #@2d
    .line 4349
    new-instance v0, Ljava/text/AttributedString;

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@36
    .line 4352
    .local v0, "as":Ljava/text/AttributedString;
    const/4 v8, 0x0

    #@37
    .local v8, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v1

    #@3d
    if-ge v8, v1, :cond_6

    #@3f
    .line 4353
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v10

    #@45
    check-cast v10, Ljava/text/FieldPosition;

    #@47
    .line 4354
    .local v10, "pos":Ljava/text/FieldPosition;
    invoke-virtual {v10}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@4a
    move-result-object v7

    #@4b
    .line 4355
    .local v7, "attribute":Ljava/text/Format$Field;
    invoke-virtual {v10}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@4e
    move-result v1

    #@4f
    invoke-virtual {v10}, Ljava/text/FieldPosition;->getEndIndex()I

    #@52
    move-result v2

    #@53
    invoke-virtual {v0, v7, v7, v1, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@56
    .line 4352
    add-int/lit8 v8, v8, 0x1

    #@58
    goto :goto_1

    #@59
    .line 4338
    .end local v0    # "as":Ljava/text/AttributedString;
    .end local v7    # "attribute":Ljava/text/Format$Field;
    .end local v8    # "i":I
    .end local v10    # "pos":Ljava/text/FieldPosition;
    .restart local v9    # "number":Ljava/lang/Number;
    :cond_1
    instance-of v1, p1, Ljava/math/BigDecimal;

    #@5b
    if-eqz v1, :cond_2

    #@5d
    .line 4339
    check-cast v9, Ljava/math/BigDecimal;

    #@5f
    .end local v9    # "number":Ljava/lang/Number;
    new-instance v1, Ljava/text/FieldPosition;

    #@61
    invoke-direct {v1, v11}, Ljava/text/FieldPosition;-><init>(I)V

    #@64
    invoke-direct {p0, v9, v4, v1, v6}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    #@67
    goto :goto_0

    #@68
    .line 4341
    .restart local v9    # "number":Ljava/lang/Number;
    :cond_2
    instance-of v1, p1, Ljava/lang/Double;

    #@6a
    if-eqz v1, :cond_3

    #@6c
    .line 4342
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    #@6f
    move-result-wide v2

    #@70
    new-instance v5, Ljava/text/FieldPosition;

    #@72
    invoke-direct {v5, v11}, Ljava/text/FieldPosition;-><init>(I)V

    #@75
    move-object v1, p0

    #@76
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    #@79
    goto :goto_0

    #@7a
    .line 4343
    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    #@7c
    if-nez v1, :cond_4

    #@7e
    instance-of v1, p1, Ljava/lang/Long;

    #@80
    if-eqz v1, :cond_5

    #@82
    .line 4344
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    #@85
    move-result-wide v2

    #@86
    new-instance v5, Ljava/text/FieldPosition;

    #@88
    invoke-direct {v5, v11}, Ljava/text/FieldPosition;-><init>(I)V

    #@8b
    move-object v1, p0

    #@8c
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    #@8f
    goto :goto_0

    #@90
    .line 4346
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@92
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@95
    throw v1

    #@96
    .line 4359
    .end local v9    # "number":Ljava/lang/Number;
    .restart local v0    # "as":Ljava/text/AttributedString;
    .restart local v8    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@99
    move-result-object v1

    #@9a
    return-object v1
.end method

.method public getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3860
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@3
    if-nez v1, :cond_0

    #@5
    move-object v1, v2

    #@6
    :goto_0
    return-object v1

    #@7
    .line 3861
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@9
    invoke-virtual {v1}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/icu/text/CurrencyPluralInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    goto :goto_0

    #@10
    .line 3862
    :catch_0
    move-exception v0

    #@11
    .line 3863
    .local v0, "foo":Ljava/lang/Exception;
    return-object v2
.end method

.method public getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;
    .locals 1

    #@0
    .prologue
    .line 5324
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@2
    return-object v0
.end method

.method public getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 2

    #@0
    .prologue
    .line 3202
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 3203
    :catch_0
    move-exception v0

    #@a
    .line 3204
    .local v0, "foo":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method protected getEffectiveCurrency()Landroid/icu/util/Currency;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5338
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    #@3
    move-result-object v0

    #@4
    .line 5339
    .local v0, "c":Landroid/icu/util/Currency;
    if-nez v0, :cond_0

    #@6
    .line 5340
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@8
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@f
    move-result-object v0

    #@10
    .line 5342
    :cond_0
    return-object v0
.end method

.method getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;
    .locals 1
    .param p1, "number"    # D

    #@0
    .prologue
    .line 1276
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(DLandroid/icu/text/DigitList;)Landroid/icu/text/PluralRules$FixedDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getFixedDecimal(DLandroid/icu/text/DigitList;)Landroid/icu/text/PluralRules$FixedDecimal;
    .locals 15
    .param p1, "number"    # D
    .param p3, "dl"    # Landroid/icu/text/DigitList;

    #@0
    .prologue
    const-wide/16 v12, 0xa

    #@2
    const/4 v4, 0x0

    #@3
    .line 1280
    move-object/from16 v0, p3

    #@5
    iget v2, v0, Landroid/icu/text/DigitList;->count:I

    #@7
    move-object/from16 v0, p3

    #@9
    iget v3, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@b
    sub-int v8, v2, v3

    #@d
    .line 1285
    .local v8, "fractionalDigitsInDigitList":I
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@f
    if-eqz v2, :cond_3

    #@11
    .line 1286
    iget v2, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@13
    move-object/from16 v0, p3

    #@15
    iget v3, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@17
    sub-int v10, v2, v3

    #@19
    .line 1287
    .local v10, "maxFractionalDigits":I
    iget v2, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@1b
    move-object/from16 v0, p3

    #@1d
    iget v3, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1f
    sub-int v11, v2, v3

    #@21
    .line 1288
    .local v11, "minFractionalDigits":I
    if-gez v11, :cond_0

    #@23
    .line 1289
    const/4 v11, 0x0

    #@24
    .line 1291
    :cond_0
    if-gez v10, :cond_1

    #@26
    .line 1292
    const/4 v10, 0x0

    #@27
    .line 1298
    :cond_1
    :goto_0
    move v5, v8

    #@28
    .line 1299
    .local v5, "v":I
    if-ge v8, v11, :cond_4

    #@2a
    .line 1300
    move v5, v11

    #@2b
    .line 1304
    :cond_2
    :goto_1
    const-wide/16 v6, 0x0

    #@2d
    .line 1305
    .local v6, "f":J
    if-lez v5, :cond_6

    #@2f
    .line 1306
    move-object/from16 v0, p3

    #@31
    iget v2, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@33
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    #@36
    move-result v9

    #@37
    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p3

    #@39
    iget v2, v0, Landroid/icu/text/DigitList;->count:I

    #@3b
    if-ge v9, v2, :cond_5

    #@3d
    .line 1307
    mul-long/2addr v6, v12

    #@3e
    .line 1308
    move-object/from16 v0, p3

    #@40
    iget-object v2, v0, Landroid/icu/text/DigitList;->digits:[B

    #@42
    aget-byte v2, v2, v9

    #@44
    add-int/lit8 v2, v2, -0x30

    #@46
    int-to-long v2, v2

    #@47
    add-long/2addr v6, v2

    #@48
    .line 1306
    add-int/lit8 v9, v9, 0x1

    #@4a
    goto :goto_2

    #@4b
    .line 1295
    .end local v5    # "v":I
    .end local v6    # "f":J
    .end local v9    # "i":I
    .end local v10    # "maxFractionalDigits":I
    .end local v11    # "minFractionalDigits":I
    :cond_3
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@4e
    move-result v10

    #@4f
    .line 1296
    .restart local v10    # "maxFractionalDigits":I
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@52
    move-result v11

    #@53
    .restart local v11    # "minFractionalDigits":I
    goto :goto_0

    #@54
    .line 1301
    .restart local v5    # "v":I
    :cond_4
    if-le v8, v10, :cond_2

    #@56
    .line 1302
    move v5, v10

    #@57
    goto :goto_1

    #@58
    .line 1310
    .restart local v6    # "f":J
    .restart local v9    # "i":I
    :cond_5
    move v9, v5

    #@59
    :goto_3
    if-ge v9, v8, :cond_6

    #@5b
    .line 1311
    mul-long/2addr v6, v12

    #@5c
    .line 1310
    add-int/lit8 v9, v9, 0x1

    #@5e
    goto :goto_3

    #@5f
    .line 1314
    .end local v9    # "i":I
    :cond_6
    new-instance v2, Landroid/icu/text/PluralRules$FixedDecimal;

    #@61
    move-wide/from16 v3, p1

    #@63
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    #@66
    return-object v2
.end method

.method public getFormatWidth()I
    .locals 1

    #@0
    .prologue
    .line 3497
    iget v0, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@2
    return v0
.end method

.method public getGroupingSize()I
    .locals 1

    #@0
    .prologue
    .line 3707
    iget-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2
    return v0
.end method

.method public getMathContext()Ljava/math/MathContext;
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3773
    :try_start_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@3
    if-nez v2, :cond_0

    #@5
    :goto_0
    return-object v1

    #@6
    :cond_0
    new-instance v2, Ljava/math/MathContext;

    #@8
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@a
    invoke-virtual {v3}, Landroid/icu/math/MathContext;->getDigits()I

    #@d
    move-result v3

    #@e
    .line 3774
    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@10
    invoke-virtual {v4}, Landroid/icu/math/MathContext;->getRoundingMode()I

    #@13
    move-result v4

    #@14
    invoke-static {v4}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    #@17
    move-result-object v4

    #@18
    .line 3773
    invoke-direct {v2, v3, v4}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-object v1, v2

    #@1c
    goto :goto_0

    #@1d
    .line 3775
    :catch_0
    move-exception v0

    #@1e
    .line 3776
    .local v0, "foo":Ljava/lang/Exception;
    return-object v1
.end method

.method public getMathContextICU()Landroid/icu/math/MathContext;
    .locals 1

    #@0
    .prologue
    .line 3761
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@2
    return-object v0
.end method

.method public getMaximumSignificantDigits()I
    .locals 1

    #@0
    .prologue
    .line 5195
    iget v0, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@2
    return v0
.end method

.method public getMinimumExponentDigits()B
    .locals 1

    #@0
    .prologue
    .line 3641
    iget-byte v0, p0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@2
    return v0
.end method

.method public getMinimumSignificantDigits()I
    .locals 1

    #@0
    .prologue
    .line 5184
    iget v0, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@2
    return v0
.end method

.method public getMultiplier()I
    .locals 1

    #@0
    .prologue
    .line 3345
    iget v0, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2
    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3276
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3320
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPadCharacter()C
    .locals 1

    #@0
    .prologue
    .line 3532
    iget-char v0, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@2
    return v0
.end method

.method public getPadPosition()I
    .locals 1

    #@0
    .prologue
    .line 3569
    iget v0, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@2
    return v0
.end method

.method public getParseMaxDigits()I
    .locals 1

    #@0
    .prologue
    .line 5414
    iget v0, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@2
    return v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3254
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3298
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRoundingIncrement()Ljava/math/BigDecimal;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3375
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 3376
    return-object v1

    #@6
    .line 3377
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@8
    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getRoundingMode()I
    .locals 1

    #@0
    .prologue
    .line 3460
    iget v0, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@2
    return v0
.end method

.method public getSecondaryGroupingSize()I
    .locals 1

    #@0
    .prologue
    .line 3738
    iget-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 3989
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x25

    #@6
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method public isDecimalPatternMatchRequired()Z
    .locals 1

    #@0
    .prologue
    .line 3827
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@2
    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 1

    #@0
    .prologue
    .line 3807
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@2
    return v0
.end method

.method public isExponentSignAlwaysShown()Z
    .locals 1

    #@0
    .prologue
    .line 3677
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@2
    return v0
.end method

.method isNumberNegative(D)Z
    .locals 3
    .param p1, "number"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 969
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 970
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 972
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->multiply(D)D

    #@b
    move-result-wide v0

    #@c
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->isNegative(D)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    #@0
    .prologue
    .line 5393
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@2
    return v0
.end method

.method public isScientificNotation()Z
    .locals 1

    #@0
    .prologue
    .line 3609
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@2
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1943
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Ljava/lang/Number;

    #@7
    return-object v0
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1961
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [Landroid/icu/util/Currency;

    #@3
    .line 1962
    .local v0, "currency":[Landroid/icu/util/Currency;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-direct {p0, v1, p2, v0}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/icu/util/CurrencyAmount;

    #@d
    return-object v1
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 7
    .param p1, "theCurrency"    # Landroid/icu/util/Currency;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 5274
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@5
    .line 5275
    if-eqz p1, :cond_0

    #@7
    .line 5276
    const/4 v3, 0x1

    #@8
    new-array v1, v3, [Z

    #@a
    .line 5277
    .local v1, "isChoiceFormat":[Z
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@c
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p1, v3, v4, v1}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 5279
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@16
    invoke-virtual {v3, p1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V

    #@19
    .line 5280
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@1b
    invoke-virtual {v3, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    #@1e
    .line 5283
    .end local v1    # "isChoiceFormat":[Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    iget v3, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 5284
    if-eqz p1, :cond_1

    #@24
    .line 5285
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@26
    invoke-virtual {p1, v3}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    #@29
    move-result-wide v4

    #@2a
    invoke-virtual {p0, v4, v5}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(D)V

    #@2d
    .line 5286
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@2f
    invoke-virtual {p1, v3}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    #@32
    move-result v0

    #@33
    .line 5287
    .local v0, "d":I
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@36
    .line 5288
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@39
    .line 5290
    .end local v0    # "d":I
    :cond_1
    iget v3, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@3b
    const/4 v4, 0x3

    #@3c
    if-eq v3, v4, :cond_2

    #@3e
    .line 5293
    invoke-direct {p0, v6}, Landroid/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    #@41
    .line 5268
    :cond_2
    return-void
.end method

.method public setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)V
    .locals 1
    .param p1, "newInfo"    # Landroid/icu/text/CurrencyPluralInfo;

    #@0
    .prologue
    .line 3875
    invoke-virtual {p1}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/CurrencyPluralInfo;

    #@6
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@8
    .line 3876
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@b
    .line 3874
    return-void
.end method

.method public setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V
    .locals 4
    .param p1, "newUsage"    # Landroid/icu/util/Currency$CurrencyUsage;

    #@0
    .prologue
    .line 5305
    if-nez p1, :cond_0

    #@2
    .line 5306
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "return value is null at method AAA"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 5308
    :cond_0
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@d
    .line 5309
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    #@10
    move-result-object v1

    #@11
    .line 5312
    .local v1, "theCurrency":Landroid/icu/util/Currency;
    if-eqz v1, :cond_1

    #@13
    .line 5313
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@15
    invoke-virtual {v1, v2}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    #@18
    move-result-wide v2

    #@19
    invoke-virtual {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(D)V

    #@1c
    .line 5314
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@1e
    invoke-virtual {v1, v2}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    #@21
    move-result v0

    #@22
    .line 5315
    .local v0, "d":I
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@25
    .line 5316
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@28
    .line 5304
    .end local v0    # "d":I
    :cond_1
    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 3216
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    #@6
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@8
    .line 3217
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    #@b
    .line 3218
    const/4 v0, 0x0

    #@c
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    #@f
    .line 3215
    return-void
.end method

.method public setDecimalPatternMatchRequired(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 3818
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@2
    .line 3817
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 3844
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@2
    .line 3843
    return-void
.end method

.method public setExponentSignAlwaysShown(Z)V
    .locals 0
    .param p1, "expSignAlways"    # Z

    #@0
    .prologue
    .line 3694
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@2
    .line 3693
    return-void
.end method

.method public setFormatWidth(I)V
    .locals 2
    .param p1, "width"    # I

    #@0
    .prologue
    .line 3515
    if-gez p1, :cond_0

    #@2
    .line 3516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal format width"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 3518
    :cond_0
    iput p1, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@d
    .line 3514
    return-void
.end method

.method public setGroupingSize(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 3720
    int-to-byte v0, p1

    #@1
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@3
    .line 3719
    return-void
.end method

.method public setMathContext(Ljava/math/MathContext;)V
    .locals 5
    .param p1, "newValue"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 3797
    new-instance v0, Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    #@5
    move-result v1

    #@6
    .line 3798
    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/math/RoundingMode;->ordinal()I

    #@d
    move-result v2

    #@e
    .line 3797
    const/4 v3, 0x1

    #@f
    const/4 v4, 0x0

    #@10
    invoke-direct {v0, v1, v3, v4, v2}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    #@13
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@15
    .line 3796
    return-void
.end method

.method public setMathContextICU(Landroid/icu/math/MathContext;)V
    .locals 0
    .param p1, "newValue"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 3787
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@2
    .line 3786
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 0
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5353
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@3
    .line 5354
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@6
    .line 5352
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5162
    const v0, 0x77359400

    #@3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@6
    move-result v0

    #@7
    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@a
    .line 5160
    return-void
.end method

.method public setMaximumSignificantDigits(I)V
    .locals 3
    .param p1, "max"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 5228
    if-ge p1, v2, :cond_0

    #@3
    .line 5229
    const/4 p1, 0x1

    #@4
    .line 5232
    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@6
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v0

    #@a
    .line 5233
    .local v0, "min":I
    iput v0, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@c
    .line 5234
    iput p1, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@e
    .line 5235
    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    #@11
    .line 5227
    return-void
.end method

.method public setMinimumExponentDigits(B)V
    .locals 2
    .param p1, "minExpDig"    # B

    #@0
    .prologue
    .line 3658
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 3659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Exponent digits must be >= 1"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 3661
    :cond_0
    iput-byte p1, p0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@e
    .line 3657
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5373
    const/16 v0, 0x154

    #@2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    #@9
    .line 5372
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5173
    const/16 v0, 0x135

    #@2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@9
    .line 5172
    return-void
.end method

.method public setMinimumSignificantDigits(I)V
    .locals 3
    .param p1, "min"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 5208
    if-ge p1, v2, :cond_0

    #@3
    .line 5209
    const/4 p1, 0x1

    #@4
    .line 5212
    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@6
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    .line 5213
    .local v0, "max":I
    iput p1, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@c
    .line 5214
    iput v0, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@e
    .line 5215
    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    #@11
    .line 5207
    return-void
.end method

.method public setMultiplier(I)V
    .locals 3
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 3359
    if-nez p1, :cond_0

    #@2
    .line 3360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Bad multiplier: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 3362
    :cond_0
    iput p1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@1e
    .line 3358
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3286
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@2
    .line 3287
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@5
    .line 3285
    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3330
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2
    .line 3331
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@5
    .line 3329
    return-void
.end method

.method public setPadCharacter(C)V
    .locals 0
    .param p1, "padChar"    # C

    #@0
    .prologue
    .line 3547
    iput-char p1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@2
    .line 3546
    return-void
.end method

.method public setPadPosition(I)V
    .locals 2
    .param p1, "padPos"    # I

    #@0
    .prologue
    .line 3592
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 3593
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Illegal pad position"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 3595
    :cond_1
    iput p1, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@10
    .line 3591
    return-void
.end method

.method public setParseBigDecimal(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 5384
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@2
    .line 5383
    return-void
.end method

.method public setParseMaxDigits(I)V
    .locals 0
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5403
    if-lez p1, :cond_0

    #@2
    .line 5404
    iput p1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@4
    .line 5402
    :cond_0
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3264
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@2
    .line 3265
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@5
    .line 3263
    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3308
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@2
    .line 3309
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@5
    .line 3307
    return-void
.end method

.method public setRoundingIncrement(D)V
    .locals 5
    .param p1, "newValue"    # D

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 3435
    cmpg-double v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 3436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Illegal rounding increment"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 3438
    :cond_0
    cmpl-double v0, p1, v2

    #@11
    if-nez v0, :cond_1

    #@13
    .line 3439
    const/4 v0, 0x0

    #@14
    check-cast v0, Landroid/icu/math/BigDecimal;

    #@16
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@19
    .line 3445
    :goto_0
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@1c
    .line 3434
    return-void

    #@1d
    .line 3443
    :cond_1
    invoke-static {p1, p2}, Landroid/icu/math/BigDecimal;->valueOf(D)Landroid/icu/math/BigDecimal;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@24
    goto :goto_0
.end method

.method public setRoundingIncrement(Landroid/icu/math/BigDecimal;)V
    .locals 3
    .param p1, "newValue"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 3411
    if-nez p1, :cond_0

    #@4
    .line 3412
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    #@6
    .line 3413
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Illegal rounding increment"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 3411
    .end local v0    # "i":I
    :cond_0
    sget-object v1, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@11
    invoke-virtual {p1, v1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    #@14
    move-result v0

    #@15
    goto :goto_0

    #@16
    .line 3415
    .restart local v0    # "i":I
    :cond_1
    if-nez v0, :cond_2

    #@18
    .line 3416
    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@1b
    .line 3420
    :goto_1
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@1e
    .line 3410
    return-void

    #@1f
    .line 3418
    :cond_2
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@22
    goto :goto_1
.end method

.method public setRoundingIncrement(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "newValue"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3392
    if-nez p1, :cond_0

    #@3
    .line 3393
    check-cast v0, Landroid/icu/math/BigDecimal;

    #@5
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@8
    .line 3391
    :goto_0
    return-void

    #@9
    .line 3395
    :cond_0
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@b
    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    #@e
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@11
    goto :goto_0
.end method

.method public setRoundingMode(I)V
    .locals 3
    .param p1, "roundingMode"    # I

    #@0
    .prologue
    .line 3477
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x7

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 3478
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Invalid rounding mode: "

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
    .line 3481
    :cond_1
    iput p1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@21
    .line 3482
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@24
    .line 3476
    return-void
.end method

.method public setScientificNotation(Z)V
    .locals 0
    .param p1, "useScientific"    # Z

    #@0
    .prologue
    .line 3627
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@2
    .line 3626
    return-void
.end method

.method public setSecondaryGroupingSize(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 3751
    int-to-byte v0, p1

    #@1
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@3
    .line 3750
    return-void
.end method

.method public setSignificantDigitsUsed(Z)V
    .locals 0
    .param p1, "useSignificantDigits"    # Z

    #@0
    .prologue
    .line 5256
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@2
    .line 5255
    return-void
.end method

.method toDigitList(D)Landroid/icu/text/DigitList;
    .locals 3
    .param p1, "number"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 953
    new-instance v0, Landroid/icu/text/DigitList;

    #@3
    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    #@6
    .line 954
    .local v0, "result":Landroid/icu/text/DigitList;
    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/icu/text/DigitList;->set(DIZ)V

    #@d
    .line 955
    return-object v0
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4017
    iget v0, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 4018
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 4020
    :cond_0
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->toPattern(Z)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4000
    iget v0, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 4005
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 4007
    :cond_0
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->toPattern(Z)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

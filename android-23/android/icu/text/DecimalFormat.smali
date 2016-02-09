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
    .line 1069
    const-wide v0, 0x3da5fd7fe1796495L    # 1.0E-11

    #@9
    sput-wide v0, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@b
    .line 2171
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
    .line 2181
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
    .line 2205
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
    .line 2213
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
    .line 2237
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
    .line 2234
    sput-object v0, Landroid/icu/text/DecimalFormat;->defaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    #@5f
    .line 2262
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
    .line 2259
    sput-object v0, Landroid/icu/text/DecimalFormat;->strictDefaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    #@71
    .line 2284
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
    .line 2283
    sput-object v0, Landroid/icu/text/DecimalFormat;->minusSigns:Landroid/icu/text/UnicodeSet;

    #@81
    .line 2294
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
    .line 2293
    sput-object v0, Landroid/icu/text/DecimalFormat;->plusSigns:Landroid/icu/text/UnicodeSet;

    #@91
    .line 2305
    const-string/jumbo v0, "android.icu.text.DecimalFormat.SkipExtendedSeparatorParsing"

    #@94
    const-string/jumbo v1, "false"

    #@97
    .line 2304
    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    .line 2306
    const-string/jumbo v1, "true"

    #@9e
    .line 2304
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v0

    #@a2
    sput-boolean v0, Landroid/icu/text/DecimalFormat;->skipExtendedSeparatorParsing:Z

    #@a4
    .line 6031
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
    .line 2171
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
    .line 2181
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
    .line 2205
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
    .line 2213
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
    .line 2237
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
    .line 2262
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
    .line 2284
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
    .line 2294
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
    .line 627
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@9
    .line 2309
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@b
    .line 2316
    const/16 v2, 0x3e8

    #@d
    iput v2, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@f
    .line 5457
    new-instance v2, Landroid/icu/text/DigitList;

    #@11
    invoke-direct {v2}, Landroid/icu/text/DigitList;-><init>()V

    #@14
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16
    .line 5465
    const-string/jumbo v2, ""

    #@19
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@1b
    .line 5474
    const-string/jumbo v2, ""

    #@1e
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@20
    .line 5482
    const-string/jumbo v2, "-"

    #@23
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@25
    .line 5491
    const-string/jumbo v2, ""

    #@28
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2a
    .line 5554
    iput v5, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2c
    .line 5564
    iput-byte v8, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2e
    .line 5572
    iput-byte v3, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@30
    .line 5581
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@32
    .line 5592
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@34
    .line 5600
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@36
    .line 5609
    iput v5, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@38
    .line 5618
    const/4 v2, 0x6

    #@39
    iput v2, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@3b
    .line 5654
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3d
    .line 5667
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@3f
    .line 5679
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@41
    .line 5691
    const/4 v2, 0x6

    #@42
    iput v2, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@44
    .line 5702
    new-instance v2, Landroid/icu/math/MathContext;

    #@46
    invoke-direct {v2, v3, v3}, Landroid/icu/math/MathContext;-><init>(II)V

    #@49
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@4b
    .line 5711
    iput v3, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4d
    .line 5720
    const/16 v2, 0x20

    #@4f
    iput-char v2, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@51
    .line 5731
    iput v3, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@53
    .line 5743
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@55
    .line 5750
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@57
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@59
    .line 5778
    const/4 v2, 0x4

    #@5a
    iput v2, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@5c
    .line 5900
    new-instance v2, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@61
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@63
    .line 5917
    const-string/jumbo v2, ""

    #@66
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@68
    .line 5920
    iput v3, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@6a
    .line 5928
    iput v3, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@6c
    .line 5981
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@6e
    .line 5985
    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@70
    .line 5988
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@72
    .line 6052
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@74
    .line 6053
    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@76
    .line 6058
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@78
    .line 6064
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@7a
    .line 628
    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@7c
    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@7f
    move-result-object v0

    #@80
    .line 629
    .local v0, "def":Landroid/icu/util/ULocale;
    invoke-static {v0, v3}, Landroid/icu/text/DecimalFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    .line 631
    .local v1, "pattern":Ljava/lang/String;
    new-instance v2, Landroid/icu/text/DecimalFormatSymbols;

    #@86
    invoke-direct {v2, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@89
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@8b
    .line 632
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@92
    .line 633
    invoke-direct {p0, v1, v3}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@95
    .line 634
    iget v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@97
    if-ne v2, v8, :cond_0

    #@99
    .line 635
    new-instance v2, Landroid/icu/text/CurrencyPluralInfo;

    #@9b
    invoke-direct {v2, v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@9e
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@a0
    .line 627
    :goto_0
    return-void

    #@a1
    .line 639
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
    .line 661
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@9
    .line 2309
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@b
    .line 2316
    const/16 v1, 0x3e8

    #@d
    iput v1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@f
    .line 5457
    new-instance v1, Landroid/icu/text/DigitList;

    #@11
    invoke-direct {v1}, Landroid/icu/text/DigitList;-><init>()V

    #@14
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16
    .line 5465
    const-string/jumbo v1, ""

    #@19
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@1b
    .line 5474
    const-string/jumbo v1, ""

    #@1e
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@20
    .line 5482
    const-string/jumbo v1, "-"

    #@23
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@25
    .line 5491
    const-string/jumbo v1, ""

    #@28
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2a
    .line 5554
    iput v6, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2c
    .line 5564
    iput-byte v7, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2e
    .line 5572
    iput-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@30
    .line 5581
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@32
    .line 5592
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@34
    .line 5600
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@36
    .line 5609
    iput v6, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@38
    .line 5618
    const/4 v1, 0x6

    #@39
    iput v1, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@3b
    .line 5654
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3d
    .line 5667
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@3f
    .line 5679
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@41
    .line 5691
    const/4 v1, 0x6

    #@42
    iput v1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@44
    .line 5702
    new-instance v1, Landroid/icu/math/MathContext;

    #@46
    invoke-direct {v1, v2, v2}, Landroid/icu/math/MathContext;-><init>(II)V

    #@49
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@4b
    .line 5711
    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4d
    .line 5720
    const/16 v1, 0x20

    #@4f
    iput-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@51
    .line 5731
    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@53
    .line 5743
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@55
    .line 5750
    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@57
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@59
    .line 5778
    const/4 v1, 0x4

    #@5a
    iput v1, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@5c
    .line 5900
    new-instance v1, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@61
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@63
    .line 5917
    const-string/jumbo v1, ""

    #@66
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@68
    .line 5920
    iput v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@6a
    .line 5928
    iput v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@6c
    .line 5981
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@6e
    .line 5985
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@70
    .line 5988
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@72
    .line 6052
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@74
    .line 6053
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@76
    .line 6058
    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@78
    .line 6064
    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@7a
    .line 663
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@7c
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@7f
    move-result-object v0

    #@80
    .line 664
    .local v0, "def":Landroid/icu/util/ULocale;
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    #@82
    invoke-direct {v1, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@85
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@87
    .line 665
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@8e
    .line 666
    invoke-direct {p0, p1, v2}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@91
    .line 667
    iget v1, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@93
    if-ne v1, v7, :cond_0

    #@95
    .line 668
    new-instance v1, Landroid/icu/text/CurrencyPluralInfo;

    #@97
    invoke-direct {v1, v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@9a
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@9c
    .line 661
    :goto_0
    return-void

    #@9d
    .line 670
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
    .line 693
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    #@9
    .line 2309
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@b
    .line 2316
    const/16 v0, 0x3e8

    #@d
    iput v0, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@f
    .line 5457
    new-instance v0, Landroid/icu/text/DigitList;

    #@11
    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    #@14
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16
    .line 5465
    const-string/jumbo v0, ""

    #@19
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@1b
    .line 5474
    const-string/jumbo v0, ""

    #@1e
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@20
    .line 5482
    const-string/jumbo v0, "-"

    #@23
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@25
    .line 5491
    const-string/jumbo v0, ""

    #@28
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2a
    .line 5554
    iput v3, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2c
    .line 5564
    const/4 v0, 0x3

    #@2d
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2f
    .line 5572
    iput-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@31
    .line 5581
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@33
    .line 5592
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@35
    .line 5600
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@37
    .line 5609
    iput v3, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@39
    .line 5618
    iput v6, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@3b
    .line 5654
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3d
    .line 5667
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@3f
    .line 5679
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@41
    .line 5691
    iput v6, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@43
    .line 5702
    new-instance v0, Landroid/icu/math/MathContext;

    #@45
    invoke-direct {v0, v1, v1}, Landroid/icu/math/MathContext;-><init>(II)V

    #@48
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@4a
    .line 5711
    iput v1, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4c
    .line 5720
    const/16 v0, 0x20

    #@4e
    iput-char v0, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@50
    .line 5731
    iput v1, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@52
    .line 5743
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@54
    .line 5750
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@56
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@58
    .line 5778
    const/4 v0, 0x4

    #@59
    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@5b
    .line 5900
    new-instance v0, Ljava/util/ArrayList;

    #@5d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@60
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@62
    .line 5917
    const-string/jumbo v0, ""

    #@65
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@67
    .line 5920
    iput v1, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@69
    .line 5928
    iput v1, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@6b
    .line 5981
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@6d
    .line 5985
    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@6f
    .line 5988
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@71
    .line 6052
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@73
    .line 6053
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@75
    .line 6058
    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@77
    .line 6064
    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@79
    .line 694
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->createFromPatternAndSymbols(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    #@7c
    .line 693
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
    .line 2309
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@b
    .line 2316
    const/16 v1, 0x3e8

    #@d
    iput v1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@f
    .line 5457
    new-instance v1, Landroid/icu/text/DigitList;

    #@11
    invoke-direct {v1}, Landroid/icu/text/DigitList;-><init>()V

    #@14
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16
    .line 5465
    const-string/jumbo v1, ""

    #@19
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@1b
    .line 5474
    const-string/jumbo v1, ""

    #@1e
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@20
    .line 5482
    const-string/jumbo v1, "-"

    #@23
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@25
    .line 5491
    const-string/jumbo v1, ""

    #@28
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2a
    .line 5554
    iput v5, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2c
    .line 5564
    const/4 v1, 0x3

    #@2d
    iput-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2f
    .line 5572
    iput-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@31
    .line 5581
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@33
    .line 5592
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@35
    .line 5600
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@37
    .line 5609
    iput v5, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@39
    .line 5618
    iput v4, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@3b
    .line 5654
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3d
    .line 5667
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@3f
    .line 5679
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@41
    .line 5691
    iput v4, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@43
    .line 5702
    new-instance v1, Landroid/icu/math/MathContext;

    #@45
    invoke-direct {v1, v2, v2}, Landroid/icu/math/MathContext;-><init>(II)V

    #@48
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@4a
    .line 5711
    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4c
    .line 5720
    const/16 v1, 0x20

    #@4e
    iput-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@50
    .line 5731
    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@52
    .line 5743
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@54
    .line 5750
    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@56
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@58
    .line 5778
    const/4 v1, 0x4

    #@59
    iput v1, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@5b
    .line 5900
    new-instance v1, Ljava/util/ArrayList;

    #@5d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@60
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@62
    .line 5917
    const-string/jumbo v1, ""

    #@65
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@67
    .line 5920
    iput v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@69
    .line 5928
    iput v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@6b
    .line 5981
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@6d
    .line 5985
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@6f
    .line 5988
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@71
    .line 6052
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@73
    .line 6053
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@75
    .line 6058
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@77
    .line 6064
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
    .line 2309
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@b
    .line 2316
    const/16 v1, 0x3e8

    #@d
    iput v1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@f
    .line 5457
    new-instance v1, Landroid/icu/text/DigitList;

    #@11
    invoke-direct {v1}, Landroid/icu/text/DigitList;-><init>()V

    #@14
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@16
    .line 5465
    const-string/jumbo v1, ""

    #@19
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@1b
    .line 5474
    const-string/jumbo v1, ""

    #@1e
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@20
    .line 5482
    const-string/jumbo v1, "-"

    #@23
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@25
    .line 5491
    const-string/jumbo v1, ""

    #@28
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2a
    .line 5554
    iput v5, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2c
    .line 5564
    const/4 v1, 0x3

    #@2d
    iput-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@2f
    .line 5572
    iput-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@31
    .line 5581
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@33
    .line 5592
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@35
    .line 5600
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@37
    .line 5609
    iput v5, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@39
    .line 5618
    iput v4, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@3b
    .line 5654
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3d
    .line 5667
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@3f
    .line 5679
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@41
    .line 5691
    iput v4, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@43
    .line 5702
    new-instance v1, Landroid/icu/math/MathContext;

    #@45
    invoke-direct {v1, v2, v2}, Landroid/icu/math/MathContext;-><init>(II)V

    #@48
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@4a
    .line 5711
    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4c
    .line 5720
    const/16 v1, 0x20

    #@4e
    iput-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@50
    .line 5731
    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@52
    .line 5743
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@54
    .line 5750
    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@56
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@58
    .line 5778
    const/4 v1, 0x4

    #@59
    iput v1, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@5b
    .line 5900
    new-instance v1, Ljava/util/ArrayList;

    #@5d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@60
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@62
    .line 5917
    const-string/jumbo v1, ""

    #@65
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@67
    .line 5920
    iput v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@69
    .line 5928
    iput v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@6b
    .line 5981
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@6d
    .line 5985
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@6f
    .line 5988
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@71
    .line 6052
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@73
    .line 6053
    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@75
    .line 6058
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@77
    .line 6064
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
    .line 5316
    const/16 v0, 0x154

    #@2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    #@9
    .line 5315
    return-void
.end method

.method private addAttribute(Landroid/icu/text/NumberFormat$Field;II)V
    .locals 2
    .param p1, "field"    # Landroid/icu/text/NumberFormat$Field;
    .param p2, "begin"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 4251
    new-instance v0, Ljava/text/FieldPosition;

    #@2
    invoke-direct {v0, p1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    #@5
    .line 4252
    .local v0, "pos":Ljava/text/FieldPosition;
    invoke-virtual {v0, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@8
    .line 4253
    invoke-virtual {v0, p3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@b
    .line 4254
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 4250
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
    .line 1823
    iget v3, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@3
    if-lez v3, :cond_2

    #@5
    .line 1824
    iget v3, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@a
    move-result v4

    #@b
    sub-int v1, v3, v4

    #@d
    .line 1825
    .local v1, "len":I
    if-lez v1, :cond_2

    #@f
    .line 1826
    new-array v2, v1, [C

    #@11
    .line 1827
    .local v2, "padding":[C
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@14
    .line 1828
    iget-char v3, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@16
    aput-char v3, v2, v0

    #@18
    .line 1827
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1830
    :cond_0
    iget v3, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@1d
    packed-switch v3, :pswitch_data_0

    #@20
    .line 1844
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
    .line 1845
    :cond_1
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@2c
    move-result v3

    #@2d
    add-int/2addr v3, v1

    #@2e
    invoke-virtual {p2, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@31
    .line 1846
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    #@34
    move-result v3

    #@35
    add-int/2addr v3, v1

    #@36
    invoke-virtual {p2, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@39
    .line 1822
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "padding":[C
    :cond_2
    return-void

    #@3a
    .line 1832
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "padding":[C
    :pswitch_0
    invoke-virtual {p1, p3, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    #@3d
    goto :goto_1

    #@3e
    .line 1835
    :pswitch_1
    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    #@41
    goto :goto_1

    #@42
    .line 1838
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
    .line 1841
    :pswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@4e
    goto :goto_1

    #@4f
    .line 1830
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

.method private appendAffix(Ljava/lang/StringBuffer;ZZZ)I
    .locals 7
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "isNegative"    # Z
    .param p3, "isPrefix"    # Z
    .param p4, "parseAttr"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 4194
    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    #@4
    if-eqz v4, :cond_3

    #@6
    .line 4195
    const/4 v2, 0x0

    #@7
    .line 4196
    .local v2, "affixPat":Ljava/lang/String;
    if-eqz p3, :cond_1

    #@9
    .line 4197
    if-eqz p2, :cond_0

    #@b
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@d
    .line 4201
    .local v2, "affixPat":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@12
    .line 4202
    .local v1, "affixBuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    #@13
    invoke-direct {p0, v2, v6, v1, v4}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    #@16
    .line 4203
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@19
    .line 4204
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@1c
    move-result v4

    #@1d
    return v4

    #@1e
    .line 4197
    .end local v1    # "affixBuf":Ljava/lang/StringBuffer;
    .local v2, "affixPat":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@20
    .local v2, "affixPat":Ljava/lang/String;
    goto :goto_0

    #@21
    .line 4199
    .local v2, "affixPat":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    #@23
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@25
    .local v2, "affixPat":Ljava/lang/String;
    goto :goto_0

    #@26
    .local v2, "affixPat":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@28
    .local v2, "affixPat":Ljava/lang/String;
    goto :goto_0

    #@29
    .line 4207
    .end local v2    # "affixPat":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    #@2a
    .line 4208
    .local v0, "affix":Ljava/lang/String;
    if-eqz p3, :cond_7

    #@2c
    .line 4209
    if-eqz p2, :cond_6

    #@2e
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@30
    .line 4214
    .local v0, "affix":Ljava/lang/String;
    :goto_1
    if-eqz p4, :cond_5

    #@32
    .line 4215
    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@34
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3b
    move-result v3

    #@3c
    .line 4216
    .local v3, "offset":I
    if-ne v5, v3, :cond_4

    #@3e
    .line 4217
    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@40
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    #@43
    move-result v4

    #@44
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    #@47
    move-result v3

    #@48
    .line 4218
    if-ne v5, v3, :cond_4

    #@4a
    .line 4219
    const/4 v3, 0x0

    #@4b
    .line 4222
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@4e
    move-result v4

    #@4f
    add-int/2addr v4, v3

    #@50
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@53
    move-result v5

    #@54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@57
    move-result v6

    #@58
    add-int/2addr v5, v6

    #@59
    invoke-direct {p0, v0, v4, v5}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(Ljava/lang/String;II)V

    #@5c
    .line 4224
    .end local v3    # "offset":I
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    .line 4225
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@62
    move-result v4

    #@63
    return v4

    #@64
    .line 4209
    .local v0, "affix":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@66
    .local v0, "affix":Ljava/lang/String;
    goto :goto_1

    #@67
    .line 4211
    .local v0, "affix":Ljava/lang/String;
    :cond_7
    if-eqz p2, :cond_8

    #@69
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@6b
    .local v0, "affix":Ljava/lang/String;
    goto :goto_1

    #@6c
    .local v0, "affix":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@6e
    .local v0, "affix":Ljava/lang/String;
    goto :goto_1
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
    .line 4305
    const/4 v1, 0x0

    #@3
    .line 4306
    .local v1, "affixPat":Ljava/lang/String;
    if-eqz p3, :cond_2

    #@5
    .line 4307
    if-eqz p2, :cond_1

    #@7
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@9
    .line 4313
    .local v1, "affixPat":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_8

    #@b
    .line 4314
    const/4 v0, 0x0

    #@c
    .line 4315
    .local v0, "affix":Ljava/lang/String;
    if-eqz p3, :cond_5

    #@e
    .line 4316
    if-eqz p2, :cond_4

    #@10
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@12
    .line 4321
    .local v0, "affix":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@15
    .line 4322
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
    .line 4323
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v2

    #@20
    .line 4324
    .local v2, "ch":C
    if-ne v2, v6, :cond_0

    #@22
    .line 4325
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@25
    .line 4327
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@28
    .line 4322
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 4307
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
    .line 4309
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
    .line 4316
    .local v0, "affix":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@38
    .local v0, "affix":Ljava/lang/String;
    goto :goto_1

    #@39
    .line 4318
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
    .line 4329
    .restart local v3    # "i":I
    :cond_7
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@44
    .line 4330
    return-void

    #@45
    .line 4333
    .end local v0    # "affix":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_8
    if-nez p4, :cond_a

    #@47
    .line 4334
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    .line 4304
    :cond_9
    return-void

    #@4b
    .line 4337
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
    .line 4338
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v2

    #@56
    .line 4339
    .restart local v2    # "ch":C
    sparse-switch v2, :sswitch_data_0

    #@59
    .line 4359
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
    .line 4360
    :cond_b
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6c
    .line 4361
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6f
    .line 4362
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@72
    .line 4337
    :goto_5
    add-int/lit8 v3, v3, 0x1

    #@74
    goto :goto_3

    #@75
    .line 4341
    :sswitch_0
    add-int/lit8 v5, v3, 0x1

    #@77
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    #@7a
    move-result v4

    #@7b
    .line 4342
    .local v4, "j":I
    if-gez v4, :cond_c

    #@7d
    .line 4343
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
    .line 4345
    :cond_c
    add-int/lit8 v5, v4, 0x1

    #@99
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a0
    .line 4346
    move v3, v4

    #@a1
    .line 4347
    goto :goto_5

    #@a2
    .line 4349
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
    .line 4352
    :sswitch_2
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@ab
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    #@ae
    move-result v2

    #@af
    goto :goto_4

    #@b0
    .line 4355
    :sswitch_3
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@b2
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    #@b5
    move-result v2

    #@b6
    goto :goto_4

    #@b7
    .line 4364
    :cond_d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@ba
    goto :goto_5

    #@bb
    .line 4339
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
    .line 4576
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@3
    .line 4577
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    #@7
    .line 4575
    return-void
.end method

.method private applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V
    .locals 60
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "localized"    # Z

    #@0
    .prologue
    .line 4592
    const/16 v56, 0x30

    #@2
    .line 4593
    .local v56, "zeroDigit":C
    const/16 v46, 0x40

    #@4
    .line 4594
    .local v46, "sigDigit":C
    const/16 v25, 0x2c

    #@6
    .line 4595
    .local v25, "groupingSeparator":C
    const/16 v12, 0x2e

    #@8
    .line 4596
    .local v12, "decimalSeparator":C
    const/16 v40, 0x25

    #@a
    .line 4597
    .local v40, "percent":C
    const/16 v39, 0x2030

    #@c
    .line 4598
    .local v39, "perMill":C
    const/16 v13, 0x23

    #@e
    .line 4599
    .local v13, "digit":C
    const/16 v45, 0x3b

    #@10
    .line 4600
    .local v45, "separator":C
    const/16 v58, 0x45

    #@12
    invoke-static/range {v58 .. v58}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@15
    move-result-object v21

    #@16
    .line 4601
    .local v21, "exponent":Ljava/lang/String;
    const/16 v41, 0x2b

    #@18
    .line 4602
    .local v41, "plus":C
    const/16 v36, 0x2a

    #@1a
    .line 4603
    .local v36, "padEscape":C
    const/16 v30, 0x2d

    #@1c
    .line 4604
    .local v30, "minus":C
    if-eqz p2, :cond_0

    #@1e
    .line 4605
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
    .line 4606
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
    .line 4607
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
    .line 4608
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
    .line 4609
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
    .line 4610
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
    .line 4611
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
    .line 4612
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
    .line 4613
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
    .line 4614
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
    .line 4615
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
    .line 4616
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
    .line 4618
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
    .line 4620
    .local v33, "nineDigit":C
    const/16 v22, 0x0

    #@9f
    .line 4622
    .local v22, "gotNegative":Z
    const/16 v42, 0x0

    #@a1
    .line 4625
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
    .line 4630
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
    .line 4637
    .local v51, "sub2Limit":I
    new-instance v43, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    .line 4638
    .local v43, "prefix":Ljava/lang/StringBuilder;
    new-instance v53, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    .line 4639
    .local v53, "suffix":Ljava/lang/StringBuilder;
    const/4 v11, -0x1

    #@c8
    .line 4640
    .local v11, "decimalPos":I
    const/16 v31, 0x1

    #@ca
    .line 4641
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
    .line 4642
    .local v47, "sigDigitCount":I
    const/16 v23, -0x1

    #@d2
    .line 4643
    .local v23, "groupingCount":B
    const/16 v24, -0x1

    #@d4
    .line 4644
    .local v24, "groupingCount2":B
    const/16 v37, -0x1

    #@d6
    .line 4645
    .local v37, "padPos":I
    const/16 v35, 0x0

    #@d8
    .line 4646
    .local v35, "padChar":C
    const/16 v26, -0x1

    #@da
    .line 4647
    .local v26, "incrementPos":I
    const-wide/16 v28, 0x0

    #@dc
    .line 4648
    .local v28, "incrementVal":J
    const/16 v19, -0x1

    #@de
    .line 4649
    .local v19, "expDigits":B
    const/16 v20, 0x0

    #@e0
    .line 4650
    .local v20, "expSignAlways":Z
    const/4 v9, 0x0

    #@e1
    .line 4653
    .local v9, "currencySignCnt":I
    move-object/from16 v6, v43

    #@e3
    .line 4655
    .local v6, "affix":Ljava/lang/StringBuilder;
    move/from16 v48, v42

    #@e5
    .line 4657
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
    .line 4658
    move-object/from16 v0, p1

    #@f1
    move/from16 v1, v42

    #@f3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@f6
    move-result v8

    #@f7
    .line 4659
    .local v8, "ch":C
    packed-switch v52, :pswitch_data_0

    #@fa
    .line 4657
    .end local v8    # "ch":C
    :cond_1
    :goto_2
    add-int/lit8 v42, v42, 0x1

    #@fc
    goto :goto_1

    #@fd
    .line 4669
    .restart local v8    # "ch":C
    :pswitch_0
    if-ne v8, v13, :cond_4

    #@ff
    .line 4670
    if-gtz v57, :cond_2

    #@101
    if-lez v47, :cond_3

    #@103
    .line 4671
    :cond_2
    add-int/lit8 v15, v15, 0x1

    #@105
    .line 4675
    :goto_3
    if-ltz v23, :cond_1

    #@107
    if-gez v11, :cond_1

    #@109
    .line 4676
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
    .line 4673
    .end local v23    # "groupingCount":B
    :cond_3
    add-int/lit8 v14, v14, 0x1

    #@113
    goto :goto_3

    #@114
    .line 4678
    :cond_4
    move/from16 v0, v56

    #@116
    if-lt v8, v0, :cond_8

    #@118
    move/from16 v0, v33

    #@11a
    if-gt v8, v0, :cond_8

    #@11c
    .line 4679
    :cond_5
    if-lez v15, :cond_6

    #@11e
    .line 4680
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
    .line 4682
    :cond_6
    move/from16 v0, v46

    #@145
    if-ne v8, v0, :cond_c

    #@147
    .line 4683
    add-int/lit8 v47, v47, 0x1

    #@149
    .line 4699
    :cond_7
    :goto_4
    if-ltz v23, :cond_1

    #@14b
    if-gez v11, :cond_1

    #@14d
    .line 4700
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
    .line 4678
    .end local v23    # "groupingCount":B
    :cond_8
    move/from16 v0, v46

    #@157
    if-eq v8, v0, :cond_5

    #@159
    .line 4702
    move/from16 v0, v25

    #@15b
    if-ne v8, v0, :cond_11

    #@15d
    .line 4706
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
    .line 4707
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
    .line 4708
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
    .line 4712
    :cond_9
    const/16 v58, 0x27

    #@185
    move/from16 v0, v58

    #@187
    if-ne v7, v0, :cond_f

    #@189
    .line 4713
    add-int/lit8 v42, v42, 0x1

    #@18b
    .line 4729
    .end local v7    # "after":C
    :cond_a
    if-ltz v11, :cond_b

    #@18d
    .line 4730
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
    .line 4732
    :cond_b
    move/from16 v24, v23

    #@19b
    .line 4733
    .local v24, "groupingCount2":B
    const/16 v23, 0x0

    #@19d
    .local v23, "groupingCount":B
    goto/16 :goto_2

    #@19f
    .line 4685
    .end local v23    # "groupingCount":B
    .end local v24    # "groupingCount2":B
    :cond_c
    add-int/lit8 v57, v57, 0x1

    #@1a1
    .line 4686
    move/from16 v0, v56

    #@1a3
    if-eq v8, v0, :cond_7

    #@1a5
    .line 4687
    add-int v58, v14, v57

    #@1a7
    add-int v34, v58, v15

    #@1a9
    .line 4688
    .local v34, "p":I
    if-ltz v26, :cond_d

    #@1ab
    .line 4689
    :goto_5
    move/from16 v0, v26

    #@1ad
    move/from16 v1, v34

    #@1af
    if-ge v0, v1, :cond_e

    #@1b1
    .line 4690
    const-wide/16 v58, 0xa

    #@1b3
    mul-long v28, v28, v58

    #@1b5
    .line 4691
    add-int/lit8 v26, v26, 0x1

    #@1b7
    goto :goto_5

    #@1b8
    .line 4694
    :cond_d
    move/from16 v26, v34

    #@1ba
    .line 4696
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
    .line 4716
    .end local v34    # "p":I
    .restart local v7    # "after":C
    :cond_f
    if-gez v23, :cond_10

    #@1c6
    .line 4717
    const/16 v52, 0x3

    #@1c8
    goto/16 :goto_2

    #@1ca
    .line 4720
    :cond_10
    const/16 v52, 0x2

    #@1cc
    .line 4721
    move-object/from16 v6, v53

    #@1ce
    .line 4722
    move/from16 v49, v42

    #@1d0
    add-int/lit8 v42, v42, -0x1

    #@1d2
    goto/16 :goto_2

    #@1d4
    .line 4734
    .end local v7    # "after":C
    :cond_11
    if-ne v8, v12, :cond_13

    #@1d6
    .line 4735
    if-ltz v11, :cond_12

    #@1d8
    .line 4736
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
    .line 4741
    :cond_12
    add-int v58, v14, v57

    #@1e6
    add-int v11, v58, v15

    #@1e8
    goto/16 :goto_2

    #@1ea
    .line 4743
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
    .line 4744
    if-ltz v19, :cond_14

    #@202
    .line 4745
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
    .line 4747
    :cond_14
    if-ltz v23, :cond_15

    #@210
    .line 4748
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
    .line 4750
    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@21f
    move-result v58

    #@220
    add-int v42, v42, v58

    #@222
    .line 4752
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
    .line 4753
    const/16 v20, 0x1

    #@23c
    .line 4754
    add-int/lit8 v42, v42, 0x1

    #@23e
    .line 4758
    :cond_16
    const/16 v19, 0x0

    #@240
    .line 4759
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
    .line 4760
    add-int/lit8 v58, v19, 0x1

    #@25a
    move/from16 v0, v58

    #@25c
    int-to-byte v0, v0

    #@25d
    move/from16 v19, v0

    #@25f
    .line 4761
    .local v19, "expDigits":B
    add-int/lit8 v42, v42, 0x1

    #@261
    goto :goto_6

    #@262
    .line 4767
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
    .line 4768
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
    .line 4770
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
    .line 4774
    :cond_19
    const/16 v52, 0x2

    #@284
    .line 4775
    move-object/from16 v6, v53

    #@286
    .line 4776
    move/from16 v49, v42

    #@288
    add-int/lit8 v42, v42, -0x1

    #@28a
    .line 4777
    goto/16 :goto_2

    #@28c
    .line 4769
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
    .line 4787
    :pswitch_1
    if-eq v8, v13, :cond_1c

    #@29b
    move/from16 v0, v25

    #@29d
    if-ne v8, v0, :cond_1d

    #@29f
    .line 4791
    :cond_1c
    const/16 v58, 0x1

    #@2a1
    move/from16 v0, v52

    #@2a3
    move/from16 v1, v58

    #@2a5
    if-ne v0, v1, :cond_20

    #@2a7
    .line 4792
    const/16 v52, 0x0

    #@2a9
    .line 4793
    move/from16 v50, v42

    #@2ab
    add-int/lit8 v42, v42, -0x1

    #@2ad
    .line 4794
    goto/16 :goto_2

    #@2af
    .line 4787
    :cond_1d
    if-eq v8, v12, :cond_1c

    #@2b1
    .line 4788
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
    .line 4812
    const/16 v58, 0xa4

    #@2bf
    move/from16 v0, v58

    #@2c1
    if-ne v8, v0, :cond_27

    #@2c3
    .line 4815
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
    .line 4816
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
    .line 4820
    .local v17, "doubled":Z
    :goto_8
    if-eqz v17, :cond_26

    #@2e5
    .line 4821
    add-int/lit8 v42, v42, 0x1

    #@2e7
    .line 4822
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2ea
    .line 4823
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
    .line 4824
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
    .line 4825
    add-int/lit8 v42, v42, 0x1

    #@30a
    .line 4826
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30d
    .line 4827
    const/4 v9, 0x3

    #@30e
    .line 4878
    .end local v8    # "ch":C
    .end local v17    # "doubled":Z
    :cond_1f
    :goto_9
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@311
    goto/16 :goto_2

    #@313
    .line 4795
    .restart local v8    # "ch":C
    :cond_20
    const/16 v58, 0x27

    #@315
    move/from16 v0, v58

    #@317
    if-ne v8, v0, :cond_22

    #@319
    .line 4803
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
    .line 4804
    add-int/lit8 v42, v42, 0x1

    #@339
    .line 4805
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33c
    goto/16 :goto_2

    #@33e
    .line 4807
    :cond_21
    add-int/lit8 v52, v52, 0x2

    #@340
    goto/16 :goto_2

    #@342
    .line 4811
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
    .line 4816
    :cond_23
    const/16 v17, 0x0

    #@36a
    .restart local v17    # "doubled":Z
    goto/16 :goto_8

    #@36c
    .line 4815
    .end local v17    # "doubled":Z
    :cond_24
    const/16 v17, 0x0

    #@36e
    .restart local v17    # "doubled":Z
    goto/16 :goto_8

    #@370
    .line 4829
    :cond_25
    const/4 v9, 0x2

    #@371
    goto :goto_9

    #@372
    .line 4832
    :cond_26
    const/4 v9, 0x1

    #@373
    goto :goto_9

    #@374
    .line 4835
    .end local v17    # "doubled":Z
    :cond_27
    const/16 v58, 0x27

    #@376
    move/from16 v0, v58

    #@378
    if-ne v8, v0, :cond_29

    #@37a
    .line 4839
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
    .line 4840
    add-int/lit8 v42, v42, 0x1

    #@39a
    .line 4841
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39d
    goto/16 :goto_9

    #@39f
    .line 4843
    :cond_28
    add-int/lit8 v52, v52, 0x2

    #@3a1
    goto/16 :goto_9

    #@3a3
    .line 4846
    :cond_29
    move/from16 v0, v45

    #@3a5
    if-ne v8, v0, :cond_39

    #@3a7
    .line 4849
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
    .line 4850
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
    .line 4852
    :cond_2b
    move/from16 v51, v42

    #@3de
    add-int/lit8 v42, v42, 0x1

    #@3e0
    .line 4903
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
    .line 4904
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
    .line 4907
    :cond_2e
    if-nez v49, :cond_2f

    #@3fe
    .line 4908
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@401
    move-result v49

    #@402
    .line 4911
    :cond_2f
    if-nez v51, :cond_30

    #@404
    .line 4912
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@407
    move-result v51

    #@408
    .line 4926
    :cond_30
    if-nez v57, :cond_32

    #@40a
    if-nez v47, :cond_32

    #@40c
    .line 4927
    if-lez v14, :cond_32

    #@40e
    if-ltz v11, :cond_32

    #@410
    .line 4929
    move/from16 v32, v11

    #@412
    .line 4930
    .local v32, "n":I
    if-nez v32, :cond_31

    #@414
    .line 4931
    add-int/lit8 v32, v32, 0x1

    #@416
    .line 4932
    :cond_31
    sub-int v15, v14, v32

    #@418
    .line 4933
    add-int/lit8 v14, v32, -0x1

    #@41a
    .line 4934
    const/16 v57, 0x1

    #@41c
    .line 4938
    .end local v32    # "n":I
    :cond_32
    if-gez v11, :cond_44

    #@41e
    if-lez v15, :cond_44

    #@420
    if-nez v47, :cond_44

    #@422
    .line 4947
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
    .line 4951
    :cond_34
    if-ltz v37, :cond_35

    #@430
    .line 4952
    move/from16 v0, v37

    #@432
    move/from16 v1, v48

    #@434
    if-ne v0, v1, :cond_47

    #@436
    .line 4953
    const/16 v37, 0x0

    #@438
    .line 4965
    :cond_35
    :goto_b
    if-nez v38, :cond_59

    #@43a
    .line 4971
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
    .line 4972
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
    .line 4974
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
    .line 4975
    move-object/from16 v0, p0

    #@466
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@468
    move/from16 v58, v0

    #@46a
    if-eqz v58, :cond_36

    #@46c
    .line 4976
    move/from16 v0, v19

    #@46e
    move-object/from16 v1, p0

    #@470
    iput-byte v0, v1, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@472
    .line 4977
    move/from16 v0, v20

    #@474
    move-object/from16 v1, p0

    #@476
    iput-boolean v0, v1, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@478
    .line 4979
    :cond_36
    add-int v58, v14, v57

    #@47a
    add-int v16, v58, v15

    #@47c
    .line 4983
    .local v16, "digitTotalCount":I
    if-ltz v11, :cond_4c

    #@47e
    move/from16 v18, v11

    #@480
    .line 4984
    .local v18, "effectiveDecimalPos":I
    :goto_d
    if-lez v47, :cond_4d

    #@482
    const/16 v55, 0x1

    #@484
    .line 4985
    .local v55, "useSigDig":Z
    :goto_e
    move-object/from16 v0, p0

    #@486
    move/from16 v1, v55

    #@488
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    #@48b
    .line 4986
    if-eqz v55, :cond_4e

    #@48d
    .line 4987
    move-object/from16 v0, p0

    #@48f
    move/from16 v1, v47

    #@491
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumSignificantDigits(I)V

    #@494
    .line 4988
    add-int v58, v47, v15

    #@496
    move-object/from16 v0, p0

    #@498
    move/from16 v1, v58

    #@49a
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    #@49d
    .line 5002
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
    .line 5003
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
    .line 5004
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
    .line 5006
    move/from16 v0, v31

    #@4c2
    move-object/from16 v1, p0

    #@4c4
    iput v0, v1, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@4c6
    .line 5007
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
    .line 5008
    if-ltz v37, :cond_56

    #@4d7
    .line 5009
    move/from16 v0, v37

    #@4d9
    move-object/from16 v1, p0

    #@4db
    iput v0, v1, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@4dd
    .line 5010
    sub-int v58, v49, v50

    #@4df
    move/from16 v0, v58

    #@4e1
    move-object/from16 v1, p0

    #@4e3
    iput v0, v1, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@4e5
    .line 5011
    move/from16 v0, v35

    #@4e7
    move-object/from16 v1, p0

    #@4e9
    iput-char v0, v1, Landroid/icu/text/DecimalFormat;->pad:C

    #@4eb
    .line 5015
    :goto_14
    const-wide/16 v58, 0x0

    #@4ed
    cmp-long v58, v28, v58

    #@4ef
    if-eqz v58, :cond_58

    #@4f1
    .line 5018
    sub-int v44, v26, v18

    #@4f3
    .line 5019
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
    .line 5020
    if-gez v44, :cond_38

    #@507
    .line 5021
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
    .line 5023
    :cond_38
    const/16 v58, 0x6

    #@51e
    move/from16 v0, v58

    #@520
    move-object/from16 v1, p0

    #@522
    iput v0, v1, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@524
    .line 5029
    .end local v44    # "scale":I
    :goto_16
    move-object/from16 v0, p0

    #@526
    iput v9, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@528
    .line 4625
    .end local v16    # "digitTotalCount":I
    .end local v18    # "effectiveDecimalPos":I
    .end local v55    # "useSigDig":Z
    :goto_17
    add-int/lit8 v38, v38, 0x1

    #@52a
    goto/16 :goto_0

    #@52c
    .line 4854
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
    .line 4856
    :cond_3a
    const/16 v58, 0x1

    #@536
    move/from16 v0, v31

    #@538
    move/from16 v1, v58

    #@53a
    if-eq v0, v1, :cond_3b

    #@53c
    .line 4857
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
    .line 4859
    :cond_3b
    move/from16 v0, v40

    #@54a
    if-ne v8, v0, :cond_3c

    #@54c
    const/16 v31, 0x64

    #@54e
    .line 4861
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
    .line 4859
    .local v8, "ch":C
    :cond_3c
    const/16 v31, 0x3e8

    #@558
    goto :goto_18

    #@559
    .line 4861
    :cond_3d
    const/16 v8, 0x2030

    #@55b
    .local v8, "ch":C
    goto/16 :goto_9

    #@55d
    .line 4863
    .local v8, "ch":C
    :cond_3e
    move/from16 v0, v30

    #@55f
    if-ne v8, v0, :cond_3f

    #@561
    .line 4865
    const/16 v8, 0x2d

    #@563
    .local v8, "ch":C
    goto/16 :goto_9

    #@565
    .line 4867
    .local v8, "ch":C
    :cond_3f
    move/from16 v0, v36

    #@567
    if-ne v8, v0, :cond_1f

    #@569
    .line 4868
    if-ltz v37, :cond_40

    #@56b
    .line 4869
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
    .line 4871
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
    .line 4872
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
    .line 4874
    :cond_41
    move/from16 v37, v42

    #@591
    add-int/lit8 v42, v42, 0x1

    #@593
    .line 4875
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
    .line 4885
    .end local v35    # "padChar":C
    :pswitch_2
    const/16 v58, 0x27

    #@59f
    move/from16 v0, v58

    #@5a1
    if-ne v8, v0, :cond_42

    #@5a3
    .line 4886
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
    .line 4887
    add-int/lit8 v42, v42, 0x1

    #@5c3
    .line 4888
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c6
    .line 4898
    :cond_42
    :goto_19
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c9
    goto/16 :goto_2

    #@5cb
    .line 4890
    :cond_43
    add-int/lit8 v52, v52, -0x2

    #@5cd
    goto :goto_19

    #@5ce
    .line 4939
    .end local v8    # "ch":C
    :cond_44
    if-ltz v11, :cond_45

    #@5d0
    .line 4940
    if-gtz v47, :cond_33

    #@5d2
    .line 4941
    if-lt v11, v14, :cond_33

    #@5d4
    .line 4942
    add-int v58, v14, v57

    #@5d6
    move/from16 v0, v58

    #@5d8
    if-gt v11, v0, :cond_33

    #@5da
    .line 4943
    :cond_45
    if-eqz v23, :cond_33

    #@5dc
    .line 4944
    if-eqz v24, :cond_33

    #@5de
    .line 4945
    if-lez v47, :cond_46

    #@5e0
    if-gtz v57, :cond_33

    #@5e2
    .line 4946
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
    .line 4954
    :cond_47
    add-int/lit8 v58, v37, 0x2

    #@5ee
    move/from16 v0, v58

    #@5f0
    move/from16 v1, v50

    #@5f2
    if-ne v0, v1, :cond_48

    #@5f4
    .line 4955
    const/16 v37, 0x1

    #@5f6
    goto/16 :goto_b

    #@5f8
    .line 4956
    :cond_48
    move/from16 v0, v37

    #@5fa
    move/from16 v1, v49

    #@5fc
    if-ne v0, v1, :cond_49

    #@5fe
    .line 4957
    const/16 v37, 0x2

    #@600
    goto/16 :goto_b

    #@602
    .line 4958
    :cond_49
    add-int/lit8 v58, v37, 0x2

    #@604
    move/from16 v0, v58

    #@606
    move/from16 v1, v51

    #@608
    if-ne v0, v1, :cond_4a

    #@60a
    .line 4959
    const/16 v37, 0x3

    #@60c
    goto/16 :goto_b

    #@60e
    .line 4961
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
    .line 4974
    :cond_4b
    const/16 v58, 0x0

    #@61e
    goto/16 :goto_c

    #@620
    .line 4983
    .restart local v16    # "digitTotalCount":I
    :cond_4c
    move/from16 v18, v16

    #@622
    .restart local v18    # "effectiveDecimalPos":I
    goto/16 :goto_d

    #@624
    .line 4984
    :cond_4d
    const/16 v55, 0x0

    #@626
    .restart local v55    # "useSigDig":Z
    goto/16 :goto_e

    #@628
    .line 4990
    :cond_4e
    sub-int v27, v18, v14

    #@62a
    .line 4991
    .local v27, "minInt":I
    move-object/from16 v0, p0

    #@62c
    move/from16 v1, v27

    #@62e
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    #@631
    .line 4995
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
    .line 4997
    if-ltz v11, :cond_50

    #@644
    .line 4998
    sub-int v58, v16, v11

    #@646
    .line 4997
    :goto_1b
    move-object/from16 v0, p0

    #@648
    move/from16 v1, v58

    #@64a
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@64d
    .line 4999
    if-ltz v11, :cond_51

    #@64f
    .line 5000
    add-int v58, v14, v57

    #@651
    sub-int v58, v58, v11

    #@653
    .line 4999
    :goto_1c
    move-object/from16 v0, p0

    #@655
    move/from16 v1, v58

    #@657
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@65a
    goto/16 :goto_f

    #@65c
    .line 4996
    :cond_4f
    const/16 v58, 0x135

    #@65e
    goto :goto_1a

    #@65f
    .line 4998
    :cond_50
    const/16 v58, 0x0

    #@661
    goto :goto_1b

    #@662
    .line 5000
    :cond_51
    const/16 v58, 0x0

    #@664
    goto :goto_1c

    #@665
    .line 5002
    .end local v27    # "minInt":I
    :cond_52
    const/16 v58, 0x0

    #@667
    goto/16 :goto_10

    #@669
    .line 5003
    :cond_53
    const/16 v58, 0x0

    #@66b
    goto/16 :goto_11

    #@66d
    .line 5005
    :cond_54
    const/16 v24, 0x0

    #@66f
    goto/16 :goto_12

    #@671
    .line 5007
    :cond_55
    const/16 v58, 0x0

    #@673
    goto/16 :goto_13

    #@675
    .line 5013
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
    .line 5019
    .restart local v44    # "scale":I
    :cond_57
    const/16 v58, 0x0

    #@681
    goto/16 :goto_15

    #@683
    .line 5025
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
    .line 5033
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
    .line 5034
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
    .line 5035
    const/16 v22, 0x1

    #@6a6
    goto/16 :goto_17

    #@6a8
    .line 5041
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
    .line 5042
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
    .line 5043
    const/16 v58, 0x0

    #@6bf
    move-object/from16 v0, p0

    #@6c1
    move/from16 v1, v58

    #@6c3
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    #@6c6
    .line 5044
    const/16 v58, 0x135

    #@6c8
    move-object/from16 v0, p0

    #@6ca
    move/from16 v1, v58

    #@6cc
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    #@6cf
    .line 5045
    const/16 v58, 0x0

    #@6d1
    move-object/from16 v0, p0

    #@6d3
    move/from16 v1, v58

    #@6d5
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@6d8
    .line 5046
    const/16 v58, 0x154

    #@6da
    move-object/from16 v0, p0

    #@6dc
    move/from16 v1, v58

    #@6de
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@6e1
    .line 5055
    :cond_5b
    if-eqz v22, :cond_5c

    #@6e3
    .line 5056
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
    .line 5057
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
    .line 5055
    if-eqz v58, :cond_5d

    #@707
    .line 5058
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
    .line 5059
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
    .line 5061
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
    .line 5063
    move-object/from16 v0, p1

    #@741
    move-object/from16 v1, p0

    #@743
    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@745
    .line 5066
    move-object/from16 v0, p0

    #@747
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@749
    move/from16 v58, v0

    #@74b
    if-eqz v58, :cond_5f

    #@74d
    .line 5069
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    #@750
    move-result-object v54

    #@751
    .line 5070
    .local v54, "theCurrency":Landroid/icu/util/Currency;
    if-eqz v54, :cond_5e

    #@753
    .line 5071
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
    .line 5072
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
    .line 5073
    .local v10, "d":I
    move-object/from16 v0, p0

    #@778
    invoke-virtual {v0, v10}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@77b
    .line 5074
    move-object/from16 v0, p0

    #@77d
    invoke-direct {v0, v10}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@780
    .line 5078
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
    .line 5079
    move-object/from16 v0, p0

    #@790
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@792
    move-object/from16 v58, v0

    #@794
    if-nez v58, :cond_5f

    #@796
    .line 5080
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
    .line 5083
    .end local v54    # "theCurrency":Landroid/icu/util/Currency;
    :cond_5f
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@7ae
    .line 4591
    return-void

    #@7af
    .line 4659
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
    .line 2791
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
    .line 2792
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->compareComplexAffix(Ljava/lang/String;Ljava/lang/String;II[Landroid/icu/util/Currency;)I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 2791
    :cond_1
    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@13
    if-eqz v0, :cond_2

    #@15
    if-nez p6, :cond_0

    #@17
    .line 2794
    :cond_2
    if-eqz p4, :cond_4

    #@19
    .line 2795
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
    .line 2797
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
    .line 2983
    move/from16 v11, p3

    #@2
    .line 2984
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
    .line 2985
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
    .line 2986
    .local v2, "c":C
    const/16 v13, 0x27

    #@15
    if-ne v2, v13, :cond_3

    #@17
    move v4, v5

    #@18
    .line 2988
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
    .line 2989
    .local v8, "j":I
    if-ne v8, v4, :cond_1

    #@22
    .line 2990
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
    .line 2991
    add-int/lit8 v4, v8, 0x1

    #@2e
    .line 2992
    goto :goto_0

    #@2f
    .line 2993
    :cond_1
    if-le v8, v4, :cond_2

    #@31
    .line 2994
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
    .line 2995
    add-int/lit8 v4, v8, 0x1

    #@41
    .line 2996
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
    .line 2997
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
    .line 2998
    add-int/lit8 v4, v4, 0x1

    #@5d
    .line 2996
    goto :goto_1

    #@5e
    .line 3006
    :cond_2
    new-instance v13, Ljava/lang/RuntimeException;

    #@60
    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    #@63
    throw v13

    #@64
    .line 3012
    .end local v4    # "i":I
    .end local v8    # "j":I
    .restart local v5    # "i":I
    :cond_3
    sparse-switch v2, :sswitch_data_0

    #@67
    .line 3070
    :goto_2
    move-object/from16 v0, p2

    #@69
    move/from16 v1, p3

    #@6b
    invoke-static {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    #@6e
    move-result p3

    #@6f
    .line 3071
    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@72
    move-result v13

    #@73
    if-eqz v13, :cond_c

    #@75
    .line 3072
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
    .line 3019
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
    .line 3020
    .local v6, "intl":Z
    :goto_3
    if-eqz v6, :cond_d

    #@8f
    .line 3021
    add-int/lit8 v4, v5, 0x1

    #@91
    .line 3023
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
    .line 3024
    .local v9, "plural":Z
    :goto_5
    if-eqz v9, :cond_4

    #@a4
    .line 3025
    add-int/lit8 v4, v4, 0x1

    #@a6
    .line 3026
    const/4 v6, 0x0

    #@a7
    .line 3031
    :cond_4
    sget-object v13, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@a9
    invoke-virtual {p0, v13}, Landroid/icu/text/DecimalFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@ac
    move-result-object v12

    #@ad
    .line 3032
    .local v12, "uloc":Landroid/icu/util/ULocale;
    if-nez v12, :cond_5

    #@af
    .line 3034
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@b1
    sget-object v14, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@b3
    invoke-virtual {v13, v14}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@b6
    move-result-object v12

    #@b7
    .line 3037
    :cond_5
    new-instance v10, Ljava/text/ParsePosition;

    #@b9
    move/from16 v0, p3

    #@bb
    invoke-direct {v10, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@be
    .line 3039
    .local v10, "ppos":Ljava/text/ParsePosition;
    move-object/from16 v0, p2

    #@c0
    move/from16 v1, p4

    #@c2
    invoke-static {v12, v0, v1, v10}, Landroid/icu/util/Currency;->parse(Landroid/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;

    #@c5
    move-result-object v7

    #@c6
    .line 3042
    .local v7, "iso":Ljava/lang/String;
    if-eqz v7, :cond_a

    #@c8
    .line 3043
    if-eqz p5, :cond_9

    #@ca
    .line 3044
    invoke-static {v7}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    #@cd
    move-result-object v13

    #@ce
    const/4 v14, 0x0

    #@cf
    aput-object v13, p5, v14

    #@d1
    .line 3055
    :cond_6
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@d4
    move-result p3

    #@d5
    goto/16 :goto_0

    #@d7
    .line 3019
    .end local v4    # "i":I
    .end local v6    # "intl":Z
    .end local v7    # "iso":Ljava/lang/String;
    .end local v9    # "plural":Z
    .end local v10    # "ppos":Ljava/text/ParsePosition;
    .end local v12    # "uloc":Landroid/icu/util/ULocale;
    .restart local v5    # "i":I
    :cond_7
    const/4 v6, 0x0

    #@d8
    .restart local v6    # "intl":Z
    goto :goto_3

    #@d9
    .line 3023
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_8
    const/4 v9, 0x0

    #@da
    .restart local v9    # "plural":Z
    goto :goto_5

    #@db
    .line 3049
    .restart local v7    # "iso":Ljava/lang/String;
    .restart local v10    # "ppos":Ljava/text/ParsePosition;
    .restart local v12    # "uloc":Landroid/icu/util/ULocale;
    :cond_9
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getEffectiveCurrency()Landroid/icu/util/Currency;

    #@de
    move-result-object v3

    #@df
    .line 3050
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
    .line 3051
    const/16 p3, -0x1

    #@eb
    .line 3052
    goto/16 :goto_0

    #@ed
    .line 3057
    .end local v3    # "effectiveCurr":Landroid/icu/util/Currency;
    :cond_a
    const/16 p3, -0x1

    #@ef
    goto/16 :goto_0

    #@f1
    .line 3061
    .end local v4    # "i":I
    .end local v6    # "intl":Z
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
    .line 3064
    :sswitch_2
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@fb
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    #@fe
    move-result v2

    #@ff
    goto/16 :goto_2

    #@101
    .line 3067
    :sswitch_3
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@103
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    #@106
    move-result v2

    #@107
    goto/16 :goto_2

    #@109
    .line 3076
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
    .line 3012
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
    .line 2849
    move v7, p2

    #@2
    .line 2853
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
    .line 2854
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
    .line 2855
    invoke-static {v8, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@17
    move-result v0

    #@18
    .line 2856
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1b
    move-result v3

    #@1c
    .line 2857
    .local v3, "len":I
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@1f
    move-result v9

    #@20
    if-eqz v9, :cond_8

    #@22
    .line 2862
    const/4 v4, 0x0

    #@23
    .line 2863
    .local v4, "literalMatch":Z
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@26
    move-result v9

    #@27
    if-ge p2, v9, :cond_2

    #@29
    .line 2864
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@2c
    move-result v2

    #@2d
    .line 2865
    .local v2, "ic":I
    if-ne v2, v0, :cond_6

    #@2f
    .line 2866
    const/4 v4, 0x1

    #@30
    .line 2867
    add-int/2addr v1, v3

    #@31
    .line 2868
    add-int/2addr p2, v3

    #@32
    .line 2869
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@35
    move-result v9

    #@36
    if-ne v1, v9, :cond_5

    #@38
    .line 2885
    .end local v2    # "ic":I
    :cond_2
    :goto_3
    invoke-static {v8, v1}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    #@3b
    move-result v1

    #@3c
    .line 2889
    move v6, p2

    #@3d
    .line 2890
    .local v6, "s":I
    invoke-static {p1, p2}, Landroid/icu/text/DecimalFormat;->skipUWhiteSpace(Ljava/lang/String;I)I

    #@40
    move-result p2

    #@41
    .line 2891
    if-ne p2, v6, :cond_3

    #@43
    if-eqz v4, :cond_7

    #@45
    .line 2897
    :cond_3
    invoke-static {v8, v1}, Landroid/icu/text/DecimalFormat;->skipUWhiteSpace(Ljava/lang/String;I)I

    #@48
    move-result v1

    #@49
    goto :goto_1

    #@4a
    .line 2853
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
    .line 2872
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
    .line 2873
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@53
    move-result v3

    #@54
    .line 2874
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@57
    move-result v9

    #@58
    if-nez v9, :cond_1

    #@5a
    goto :goto_3

    #@5b
    .line 2877
    :cond_6
    invoke-static {v2}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    #@5e
    move-result v9

    #@5f
    if-eqz v9, :cond_2

    #@61
    .line 2878
    add-int/lit8 p2, p2, 0x1

    #@63
    goto :goto_2

    #@64
    .line 2892
    .end local v2    # "ic":I
    .restart local v6    # "s":I
    :cond_7
    return v11

    #@65
    .line 2899
    .end local v4    # "literalMatch":Z
    .end local v6    # "s":I
    :cond_8
    const/4 v5, 0x0

    #@66
    .line 2900
    .local v5, "match":Z
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@69
    move-result v9

    #@6a
    if-ge p2, v9, :cond_a

    #@6c
    .line 2901
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@6f
    move-result v2

    #@70
    .line 2902
    .restart local v2    # "ic":I
    if-nez v5, :cond_9

    #@72
    invoke-static {v2, v0}, Landroid/icu/text/DecimalFormat;->equalWithSignCompatibility(II)Z

    #@75
    move-result v9

    #@76
    if-eqz v9, :cond_9

    #@78
    .line 2903
    add-int/2addr v1, v3

    #@79
    .line 2904
    add-int/2addr p2, v3

    #@7a
    .line 2905
    const/4 v5, 0x1

    #@7b
    goto :goto_4

    #@7c
    .line 2906
    :cond_9
    invoke-static {v2}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    #@7f
    move-result v9

    #@80
    if-eqz v9, :cond_a

    #@82
    .line 2907
    add-int/lit8 p2, p2, 0x1

    #@84
    goto :goto_4

    #@85
    .line 2912
    .end local v2    # "ic":I
    :cond_a
    if-nez v5, :cond_0

    #@87
    .line 2913
    return v11

    #@88
    .line 2917
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
    .line 2730
    const/4 v0, 0x0

    #@1
    .line 2731
    .local v0, "count":I
    move v1, p2

    #@2
    .line 2732
    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_0

    #@4
    .line 2733
    add-int/lit8 v0, v0, 0x1

    #@6
    .line 2734
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
    .line 2736
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
    .line 699
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    #@6
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@8
    .line 700
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    #@b
    .line 701
    const/4 v0, 0x0

    #@c
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@f
    .line 702
    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@11
    const/4 v1, 0x3

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 703
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    #@16
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@18
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@1f
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@21
    .line 697
    :goto_0
    return-void

    #@22
    .line 705
    :cond_0
    const/4 v0, 0x0

    #@23
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    #@26
    goto :goto_0
.end method

.method private static equalWithSignCompatibility(II)Z
    .locals 1
    .param p0, "lhs"    # I
    .param p1, "rhs"    # I

    #@0
    .prologue
    .line 2921
    if-eq p0, p1, :cond_1

    #@2
    .line 2922
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
    .line 2921
    if-nez v0, :cond_1

    #@12
    .line 2923
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
    .line 2921
    :goto_0
    return v0

    #@21
    :cond_1
    const/4 v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2923
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
    .line 3919
    if-eqz p1, :cond_0

    #@4
    if-nez p2, :cond_2

    #@6
    .line 3920
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
    .line 3923
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_3

    #@13
    .line 3924
    return v0

    #@14
    .line 3926
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
    .line 4078
    const/4 v13, 0x0

    #@1
    move-object/from16 v0, p3

    #@3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    #@6
    .line 4079
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
    .line 4080
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
    .line 4081
    .local v2, "c":C
    const/16 v13, 0x27

    #@17
    if-ne v2, v13, :cond_3

    #@19
    move v4, v5

    #@1a
    .line 4083
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
    .line 4084
    .local v8, "j":I
    if-ne v8, v4, :cond_1

    #@24
    .line 4085
    const/16 v13, 0x27

    #@26
    move-object/from16 v0, p3

    #@28
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2b
    .line 4086
    add-int/lit8 v4, v8, 0x1

    #@2d
    .line 4087
    goto :goto_0

    #@2e
    .line 4088
    :cond_1
    if-le v8, v4, :cond_2

    #@30
    .line 4089
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
    .line 4090
    add-int/lit8 v4, v8, 0x1

    #@3d
    .line 4091
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
    .line 4092
    const/16 v13, 0x27

    #@4f
    move-object/from16 v0, p3

    #@51
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@54
    .line 4093
    add-int/lit8 v4, v4, 0x1

    #@56
    .line 4091
    goto :goto_1

    #@57
    .line 4101
    :cond_2
    new-instance v13, Ljava/lang/RuntimeException;

    #@59
    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    #@5c
    throw v13

    #@5d
    .line 4107
    .end local v4    # "i":I
    .end local v8    # "j":I
    .restart local v5    # "i":I
    :cond_3
    sparse-switch v2, :sswitch_data_0

    #@60
    .line 4180
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
    .line 4112
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
    .line 4113
    .local v6, "intl":Z
    :goto_3
    const/4 v10, 0x0

    #@79
    .line 4114
    .local v10, "plural":Z
    if-eqz v6, :cond_e

    #@7b
    .line 4115
    add-int/lit8 v4, v5, 0x1

    #@7d
    .line 4116
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
    .line 4117
    const/4 v10, 0x1

    #@8e
    .line 4118
    const/4 v6, 0x0

    #@8f
    .line 4119
    add-int/lit8 v4, v4, 0x1

    #@91
    .line 4122
    :cond_4
    :goto_4
    const/4 v12, 0x0

    #@92
    .line 4123
    .local v12, "s":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    #@95
    move-result-object v3

    #@96
    .line 4124
    .local v3, "currency":Landroid/icu/util/Currency;
    if-eqz v3, :cond_b

    #@98
    .line 4128
    if-eqz v10, :cond_7

    #@9a
    if-eqz p2, :cond_7

    #@9c
    .line 4129
    const/4 v13, 0x1

    #@9d
    new-array v7, v13, [Z

    #@9f
    .line 4130
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
    .line 4167
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
    .line 4112
    .end local v3    # "currency":Landroid/icu/util/Currency;
    .end local v4    # "i":I
    .end local v6    # "intl":Z
    .end local v10    # "plural":Z
    .end local v12    # "s":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_6
    const/4 v6, 0x0

    #@b6
    .restart local v6    # "intl":Z
    goto :goto_3

    #@b7
    .line 4132
    .end local v5    # "i":I
    .restart local v3    # "currency":Landroid/icu/util/Currency;
    .restart local v4    # "i":I
    .restart local v10    # "plural":Z
    .local v12, "s":Ljava/lang/String;
    :cond_7
    if-nez v6, :cond_a

    #@b9
    .line 4133
    const/4 v13, 0x1

    #@ba
    new-array v7, v13, [Z

    #@bc
    .line 4134
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
    .line 4136
    .local v12, "s":Ljava/lang/String;
    const/4 v13, 0x0

    #@ca
    aget-boolean v13, v7, v13

    #@cc
    if-eqz v13, :cond_5

    #@ce
    .line 4140
    if-nez p4, :cond_9

    #@d0
    .line 4144
    move-object/from16 v0, p0

    #@d2
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    #@d4
    if-nez v13, :cond_8

    #@d6
    .line 4145
    new-instance v13, Ljava/text/ChoiceFormat;

    #@d8
    invoke-direct {v13, v12}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    #@db
    move-object/from16 v0, p0

    #@dd
    iput-object v13, v0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    #@df
    .line 4153
    :cond_8
    const/16 v13, 0xa4

    #@e1
    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@e4
    move-result-object v12

    #@e5
    goto :goto_5

    #@e6
    .line 4155
    :cond_9
    new-instance v11, Ljava/text/FieldPosition;

    #@e8
    const/4 v13, 0x0

    #@e9
    invoke-direct {v11, v13}, Ljava/text/FieldPosition;-><init>(I)V

    #@ec
    .line 4156
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
    .line 4161
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
    .line 4164
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
    .line 4165
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
    .line 4170
    .end local v3    # "currency":Landroid/icu/util/Currency;
    .end local v4    # "i":I
    .end local v6    # "intl":Z
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
    .line 4173
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
    .line 4176
    :sswitch_3
    move-object/from16 v0, p0

    #@12e
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@130
    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getMinusString()Ljava/lang/String;

    #@133
    move-result-object v9

    #@134
    .line 4177
    .local v9, "minusString":Ljava/lang/String;
    move-object/from16 v0, p3

    #@136
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@139
    move v4, v5

    #@13a
    .line 4178
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    #@13c
    .line 4077
    .end local v2    # "c":C
    .end local v9    # "minusString":Ljava/lang/String;
    :cond_d
    return-void

    #@13d
    .end local v4    # "i":I
    .restart local v2    # "c":C
    .restart local v5    # "i":I
    .restart local v6    # "intl":Z
    .restart local v10    # "plural":Z
    :cond_e
    move v4, v5

    #@13e
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_4

    #@140
    .line 4107
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
    .line 4583
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    #@3
    .line 4586
    iget v0, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@5
    if-lez v0, :cond_0

    #@7
    .line 4587
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
    .line 4580
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
    .line 4021
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    #@4
    .line 4024
    new-instance v0, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 4025
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 4026
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@f
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    #@12
    .line 4027
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@18
    .line 4029
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 4030
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@1e
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    #@21
    .line 4031
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@27
    .line 4033
    :cond_1
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@29
    if-eqz v1, :cond_2

    #@2b
    .line 4034
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@2d
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    #@30
    .line 4035
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@36
    .line 4037
    :cond_2
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 4038
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@3c
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    #@3f
    .line 4039
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@45
    .line 4018
    :cond_3
    return-void
.end method

.method private format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 27
    .param p1, "number"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p5, "parseAttr"    # Z

    #@0
    .prologue
    .line 831
    const/4 v6, 0x0

    #@1
    move-object/from16 v0, p4

    #@3
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@6
    .line 832
    const/4 v6, 0x0

    #@7
    move-object/from16 v0, p4

    #@9
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@c
    .line 834
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_5

    #@12
    .line 835
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    #@15
    move-result v6

    #@16
    if-nez v6, :cond_3

    #@18
    .line 836
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@1b
    move-result v6

    #@1c
    move-object/from16 v0, p4

    #@1e
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@21
    .line 841
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
    .line 844
    if-eqz p5, :cond_1

    #@30
    .line 845
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@32
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@35
    move-result v7

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v12, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@3a
    invoke-virtual {v12}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@3d
    move-result-object v12

    #@3e
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@41
    move-result v12

    #@42
    sub-int/2addr v7, v12

    #@43
    .line 846
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@46
    move-result v12

    #@47
    .line 845
    move-object/from16 v0, p0

    #@49
    invoke-direct {v0, v6, v7, v12}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@4c
    .line 848
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    #@4f
    move-result v6

    #@50
    if-nez v6, :cond_4

    #@52
    .line 849
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@55
    move-result v6

    #@56
    move-object/from16 v0, p4

    #@58
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@5b
    .line 854
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
    .line 855
    return-object p3

    #@67
    .line 837
    :cond_3
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@6a
    move-result-object v6

    #@6b
    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@6d
    if-ne v6, v7, :cond_0

    #@6f
    .line 838
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
    .line 850
    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@7c
    move-result-object v6

    #@7d
    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@7f
    if-ne v6, v7, :cond_2

    #@81
    .line 851
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
    .line 860
    :cond_5
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/DecimalFormat;->multiply(D)D

    #@8e
    move-result-wide p1

    #@8f
    .line 861
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/DecimalFormat;->isNegative(D)Z

    #@92
    move-result v13

    #@93
    .line 862
    .local v13, "isNegative":Z
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/DecimalFormat;->round(D)D

    #@96
    move-result-wide p1

    #@97
    .line 864
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    #@9a
    move-result v6

    #@9b
    if-eqz v6, :cond_b

    #@9d
    .line 865
    const/4 v6, 0x1

    #@9e
    move-object/from16 v0, p0

    #@a0
    move-object/from16 v1, p3

    #@a2
    move/from16 v2, p5

    #@a4
    invoke-direct {v0, v1, v13, v6, v2}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZZ)I

    #@a7
    move-result v24

    #@a8
    .line 867
    .local v24, "prefixLen":I
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    #@ab
    move-result v6

    #@ac
    if-nez v6, :cond_9

    #@ae
    .line 868
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@b1
    move-result v6

    #@b2
    move-object/from16 v0, p4

    #@b4
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@b7
    .line 874
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    #@b9
    iget-object v6, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@bb
    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@be
    move-result-object v6

    #@bf
    move-object/from16 v0, p3

    #@c1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c4
    .line 875
    if-eqz p5, :cond_7

    #@c6
    .line 876
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@c8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@cb
    move-result v7

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-object v12, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@d0
    invoke-virtual {v12}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@d3
    move-result-object v12

    #@d4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@d7
    move-result v12

    #@d8
    sub-int/2addr v7, v12

    #@d9
    .line 877
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@dc
    move-result v12

    #@dd
    .line 876
    move-object/from16 v0, p0

    #@df
    invoke-direct {v0, v6, v7, v12}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@e2
    .line 879
    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    #@e5
    move-result v6

    #@e6
    if-nez v6, :cond_a

    #@e8
    .line 880
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@eb
    move-result v6

    #@ec
    move-object/from16 v0, p4

    #@ee
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@f1
    .line 885
    :cond_8
    :goto_3
    const/4 v6, 0x0

    #@f2
    move-object/from16 v0, p0

    #@f4
    move-object/from16 v1, p3

    #@f6
    move/from16 v2, p5

    #@f8
    invoke-direct {v0, v1, v13, v6, v2}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZZ)I

    #@fb
    move-result v25

    #@fc
    .line 887
    .local v25, "suffixLen":I
    move-object/from16 v0, p0

    #@fe
    move-object/from16 v1, p3

    #@100
    move-object/from16 v2, p4

    #@102
    move/from16 v3, v24

    #@104
    move/from16 v4, v25

    #@106
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    #@109
    .line 888
    return-object p3

    #@10a
    .line 869
    .end local v25    # "suffixLen":I
    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@10d
    move-result-object v6

    #@10e
    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@110
    if-ne v6, v7, :cond_6

    #@112
    .line 870
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@115
    move-result v6

    #@116
    move-object/from16 v0, p4

    #@118
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@11b
    goto :goto_2

    #@11c
    .line 881
    :cond_a
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@11f
    move-result-object v6

    #@120
    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@122
    if-ne v6, v7, :cond_8

    #@124
    .line 882
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@127
    move-result v6

    #@128
    move-object/from16 v0, p4

    #@12a
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@12d
    goto :goto_3

    #@12e
    .line 891
    .end local v24    # "prefixLen":I
    :cond_b
    const/4 v6, 0x0

    #@12f
    move-object/from16 v0, p0

    #@131
    invoke-direct {v0, v6}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    #@134
    move-result v23

    #@135
    .line 904
    .local v23, "precision":I
    move-object/from16 v0, p0

    #@137
    iget-boolean v6, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@139
    if-eqz v6, :cond_c

    #@13b
    if-lez v23, :cond_c

    #@13d
    const-wide/16 v6, 0x0

    #@13f
    cmpl-double v6, p1, v6

    #@141
    if-eqz v6, :cond_c

    #@143
    move-object/from16 v0, p0

    #@145
    iget v6, v0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@147
    const/4 v7, 0x6

    #@148
    if-eq v6, v7, :cond_c

    #@14a
    .line 905
    rsub-int/lit8 v6, v23, 0x1

    #@14c
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    #@14f
    move-result-wide v16

    #@150
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log10(D)D

    #@153
    move-result-wide v16

    #@154
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    #@157
    move-result-wide v16

    #@158
    move-wide/from16 v0, v16

    #@15a
    double-to-int v7, v0

    #@15b
    add-int v14, v6, v7

    #@15d
    .line 906
    .local v14, "log10RoundingIncr":I
    const-wide/16 v10, 0x0

    #@15f
    .line 907
    .local v10, "roundingIncReciprocal":D
    const-wide/16 v8, 0x0

    #@161
    .line 908
    .local v8, "roundingInc":D
    if-gez v14, :cond_d

    #@163
    .line 910
    sget-object v6, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@165
    neg-int v7, v14

    #@166
    invoke-virtual {v6, v7}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    #@169
    move-result-object v6

    #@16a
    invoke-virtual {v6}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@16d
    move-result-wide v10

    #@16e
    .line 915
    :goto_4
    move-object/from16 v0, p0

    #@170
    iget v12, v0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@172
    move-wide/from16 v6, p1

    #@174
    invoke-static/range {v6 .. v13}, Landroid/icu/text/DecimalFormat;->round(DDDIZ)D

    #@177
    move-result-wide p1

    #@178
    .line 921
    .end local v8    # "roundingInc":D
    .end local v10    # "roundingIncReciprocal":D
    .end local v14    # "log10RoundingIncr":I
    :cond_c
    move-object/from16 v0, p0

    #@17a
    iget-object v7, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@17c
    monitor-enter v7

    #@17d
    .line 922
    :try_start_0
    move-object/from16 v0, p0

    #@17f
    iget-object v12, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@181
    move-object/from16 v0, p0

    #@183
    iget-boolean v6, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@185
    if-nez v6, :cond_f

    #@187
    .line 923
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@18a
    move-result v6

    #@18b
    if-eqz v6, :cond_e

    #@18d
    const/4 v6, 0x0

    #@18e
    .line 922
    :goto_5
    move-wide/from16 v0, p1

    #@190
    move/from16 v2, v23

    #@192
    invoke-virtual {v12, v0, v1, v2, v6}, Landroid/icu/text/DigitList;->set(DIZ)V

    #@195
    .line 924
    const/16 v21, 0x0

    #@197
    move-object/from16 v15, p0

    #@199
    move-wide/from16 v16, p1

    #@19b
    move-object/from16 v18, p3

    #@19d
    move-object/from16 v19, p4

    #@19f
    move/from16 v20, v13

    #@1a1
    move/from16 v22, p5

    #@1a3
    invoke-direct/range {v15 .. v22}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a6
    move-result-object v6

    #@1a7
    monitor-exit v7

    #@1a8
    return-object v6

    #@1a9
    .line 913
    .restart local v8    # "roundingInc":D
    .restart local v10    # "roundingIncReciprocal":D
    .restart local v14    # "log10RoundingIncr":I
    :cond_d
    sget-object v6, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@1ab
    invoke-virtual {v6, v14}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    #@1ae
    move-result-object v6

    #@1af
    invoke-virtual {v6}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@1b2
    move-result-wide v8

    #@1b3
    goto :goto_4

    #@1b4
    .line 923
    .end local v8    # "roundingInc":D
    .end local v10    # "roundingIncReciprocal":D
    .end local v14    # "log10RoundingIncr":I
    :cond_e
    const/4 v6, 0x1

    #@1b5
    goto :goto_5

    #@1b6
    .line 922
    :cond_f
    const/4 v6, 0x0

    #@1b7
    goto :goto_5

    #@1b8
    .line 921
    :catchall_0
    move-exception v6

    #@1b9
    monitor-exit v7

    #@1ba
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
    .line 1082
    const/4 v5, 0x0

    #@1
    move-object/from16 v0, p4

    #@3
    invoke-virtual {v0, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@6
    .line 1083
    const/4 v5, 0x0

    #@7
    move-object/from16 v0, p4

    #@9
    invoke-virtual {v0, v5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@c
    .line 1087
    move-object/from16 v0, p0

    #@e
    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 1088
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
    .line 1091
    :cond_0
    const-wide/16 v6, 0x0

    #@23
    cmp-long v5, p1, v6

    #@25
    if-gez v5, :cond_3

    #@27
    const/4 v10, 0x1

    #@28
    .line 1092
    .local v10, "isNegative":Z
    :goto_0
    if-eqz v10, :cond_1

    #@2a
    .line 1093
    move-wide/from16 v0, p1

    #@2c
    neg-long v0, v0

    #@2d
    move-wide/from16 p1, v0

    #@2f
    .line 1100
    :cond_1
    move-object/from16 v0, p0

    #@31
    iget v5, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@33
    const/4 v6, 0x1

    #@34
    if-eq v5, v6, :cond_7

    #@36
    .line 1101
    const/4 v4, 0x0

    #@37
    .line 1102
    .local v4, "tooBig":Z
    const-wide/16 v6, 0x0

    #@39
    cmp-long v5, p1, v6

    #@3b
    if-gez v5, :cond_5

    #@3d
    .line 1103
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
    .line 1104
    .local v14, "cutoff":J
    cmp-long v5, p1, v14

    #@48
    if-gtz v5, :cond_4

    #@4a
    const/4 v4, 0x1

    #@4b
    .line 1109
    :goto_1
    if-eqz v4, :cond_7

    #@4d
    .line 1113
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
    .line 1091
    .end local v4    # "tooBig":Z
    .end local v10    # "isNegative":Z
    .end local v14    # "cutoff":J
    .restart local p1    # "number":J
    :cond_3
    const/4 v10, 0x0

    #@66
    .restart local v10    # "isNegative":Z
    goto :goto_0

    #@67
    .line 1104
    .restart local v4    # "tooBig":Z
    .restart local v14    # "cutoff":J
    :cond_4
    const/4 v4, 0x0

    #@68
    goto :goto_1

    #@69
    .line 1106
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
    .line 1107
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
    .line 1118
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
    .line 1119
    move-object/from16 v0, p0

    #@86
    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@88
    monitor-enter v13

    #@89
    .line 1120
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
    .line 1121
    move-wide/from16 v0, p1

    #@9b
    long-to-double v6, v0

    #@9c
    const/4 v11, 0x1

    #@9d
    move-object/from16 v5, p0

    #@9f
    move-object/from16 v8, p3

    #@a1
    move-object/from16 v9, p4

    #@a3
    move/from16 v12, p5

    #@a5
    invoke-direct/range {v5 .. v12}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a8
    move-result-object v5

    #@a9
    monitor-exit v13

    #@aa
    return-object v5

    #@ab
    .line 1119
    :catchall_0
    move-exception v5

    #@ac
    monitor-exit v13

    #@ad
    throw v5
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
    .line 1171
    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@4
    if-eq v1, v6, :cond_0

    #@6
    .line 1172
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
    .line 1175
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 1176
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
    .line 1179
    :cond_1
    iget-object v9, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@25
    monitor-enter v9

    #@26
    .line 1180
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
    .line 1181
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_2

    #@37
    move v1, v0

    #@38
    .line 1180
    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Landroid/icu/text/DigitList;->set(Ljava/math/BigDecimal;IZ)V

    #@3b
    .line 1182
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    #@3e
    move-result-wide v2

    #@3f
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    #@42
    move-result v1

    #@43
    if-gez v1, :cond_4

    #@45
    .line 1183
    :goto_1
    const/4 v7, 0x0

    #@46
    move-object v1, p0

    #@47
    move-object v4, p2

    #@48
    move-object v5, p3

    #@49
    move v8, p4

    #@4a
    .line 1182
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    move-result-object v0

    #@4e
    monitor-exit v9

    #@4f
    return-object v0

    #@50
    :cond_2
    move v1, v6

    #@51
    .line 1181
    goto :goto_0

    #@52
    :cond_3
    move v1, v0

    #@53
    .line 1180
    goto :goto_0

    #@54
    :cond_4
    move v6, v0

    #@55
    .line 1182
    goto :goto_1

    #@56
    .line 1179
    :catchall_0
    move-exception v0

    #@57
    monitor-exit v9

    #@58
    throw v0
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
    .line 1152
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    #@2f
    move-result v1

    #@30
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@33
    move-result v2

    #@34
    if-gez v2, :cond_2

    #@36
    :goto_0
    const/4 v5, 0x1

    #@37
    move-object v0, p0

    #@38
    move-object v2, p2

    #@39
    move-object v3, p3

    #@3a
    move v6, p4

    #@3b
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DecimalFormat;->subformat(ILjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    move-result-object v0

    #@3f
    monitor-exit v7

    #@40
    return-object v0

    #@41
    :cond_2
    move v4, v0

    #@42
    goto :goto_0

    #@43
    .line 1150
    :catchall_0
    move-exception v0

    #@44
    monitor-exit v7

    #@45
    throw v0
.end method

.method private formatAffix2Attribute(Ljava/lang/String;II)V
    .locals 2
    .param p1, "affix"    # Ljava/lang/String;
    .param p2, "begin"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 4236
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@3
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    if-le v0, v1, :cond_1

    #@d
    .line 4237
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    #@f
    invoke-direct {p0, v0, p2, p3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@12
    .line 4232
    :cond_0
    :goto_0
    return-void

    #@13
    .line 4238
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@15
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    #@18
    move-result v0

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result v0

    #@1d
    if-le v0, v1, :cond_2

    #@1f
    .line 4239
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    #@21
    invoke-direct {p0, v0, p2, p3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@24
    goto :goto_0

    #@25
    .line 4240
    :cond_2
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@27
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    #@2a
    move-result v0

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@2e
    move-result v0

    #@2f
    if-le v0, v1, :cond_3

    #@31
    .line 4241
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    #@33
    invoke-direct {p0, v0, p2, p3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@36
    goto :goto_0

    #@37
    .line 4242
    :cond_3
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@39
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    #@3c
    move-result v0

    #@3d
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@40
    move-result v0

    #@41
    if-le v0, v1, :cond_0

    #@43
    .line 4243
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    #@45
    invoke-direct {p0, v0, p2, p3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@48
    goto :goto_0
.end method

.method private getEquivalentDecimals(CZ)Landroid/icu/text/UnicodeSet;
    .locals 2
    .param p1, "decimal"    # C
    .param p2, "strictParse"    # Z

    #@0
    .prologue
    .line 2743
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@2
    .line 2744
    .local v0, "equivSet":Landroid/icu/text/UnicodeSet;
    if-eqz p2, :cond_2

    #@4
    .line 2745
    sget-object v1, Landroid/icu/text/DecimalFormat;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    #@6
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 2746
    sget-object v0, Landroid/icu/text/DecimalFormat;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    #@e
    .line 2757
    :cond_0
    :goto_0
    return-object v0

    #@f
    .line 2747
    :cond_1
    sget-object v1, Landroid/icu/text/DecimalFormat;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    #@11
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 2748
    sget-object v0, Landroid/icu/text/DecimalFormat;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    #@19
    goto :goto_0

    #@1a
    .line 2751
    :cond_2
    sget-object v1, Landroid/icu/text/DecimalFormat;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    #@1c
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_3

    #@22
    .line 2752
    sget-object v0, Landroid/icu/text/DecimalFormat;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    #@24
    goto :goto_0

    #@25
    .line 2753
    :cond_3
    sget-object v1, Landroid/icu/text/DecimalFormat;->commaEquivalents:Landroid/icu/text/UnicodeSet;

    #@27
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 2754
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
    .line 2806
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
    .line 1225
    const/4 v0, 0x0

    #@1
    .line 1226
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
    .line 1227
    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@f
    if-lez v1, :cond_2

    #@11
    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@13
    if-le p1, v1, :cond_2

    #@15
    .line 1228
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
    .line 1233
    :cond_0
    :goto_0
    return v0

    #@20
    .line 1228
    :cond_1
    const/4 v0, 0x0

    #@21
    goto :goto_0

    #@22
    .line 1230
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
    .line 797
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
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "ch"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 3085
    if-ltz p1, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-lt p1, v1, :cond_1

    #@9
    .line 3086
    :cond_0
    return v2

    #@a
    .line 3088
    :cond_1
    invoke-static {p0, p1}, Landroid/icu/text/DecimalFormat;->skipBidiMarks(Ljava/lang/String;I)I

    #@d
    move-result p1

    #@e
    .line 3089
    invoke-static {p2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_3

    #@14
    .line 3092
    move v0, p1

    #@15
    .line 3093
    .local v0, "s":I
    invoke-static {p0, p1}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    #@18
    move-result p1

    #@19
    .line 3094
    if-ne p1, v0, :cond_2

    #@1b
    .line 3095
    return v2

    #@1c
    .line 3097
    :cond_2
    return p1

    #@1d
    .line 3099
    .end local v0    # "s":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v1

    #@21
    if-ge p1, v1, :cond_4

    #@23
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@26
    move-result v1

    #@27
    if-eq v1, p2, :cond_5

    #@29
    .line 3100
    :cond_4
    return v2

    #@2a
    .line 3102
    :cond_5
    invoke-static {p2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@2d
    move-result v1

    #@2e
    add-int/2addr v1, p1

    #@2f
    invoke-static {p0, v1}, Landroid/icu/text/DecimalFormat;->skipBidiMarks(Ljava/lang/String;I)I

    #@32
    move-result p1

    #@33
    .line 3103
    return p1
.end method

.method static final match(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3112
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
    .line 3113
    invoke-static {p2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    .line 3114
    .local v0, "ch":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@10
    move-result v2

    #@11
    add-int/2addr v1, v2

    #@12
    .line 3115
    invoke-static {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    #@15
    move-result p1

    #@16
    .line 3116
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 3117
    invoke-static {p2, v1}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    #@1f
    move-result v1

    #@20
    goto :goto_0

    #@21
    .line 3120
    .end local v0    # "ch":I
    :cond_1
    return p1
.end method

.method private multiply(D)D
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 821
    iget v0, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 822
    iget v0, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@7
    int-to-double v0, v0

    #@8
    mul-double/2addr v0, p1

    #@9
    return-wide v0

    #@a
    .line 824
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
    .line 1909
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v16

    #@4
    .local v16, "backup":I
    move/from16 v19, v16

    #@6
    .line 1914
    .local v19, "i":I
    move-object/from16 v0, p0

    #@8
    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@a
    if-lez v4, :cond_1

    #@c
    .line 1915
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
    .line 1916
    :cond_0
    move-object/from16 v0, p0

    #@1b
    move-object/from16 v1, p1

    #@1d
    move/from16 v2, v19

    #@1f
    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@22
    move-result v19

    #@23
    .line 1918
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
    .line 1919
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
    .line 1921
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
    .line 1922
    move-object/from16 v0, p0

    #@5f
    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@61
    const/4 v5, 0x3

    #@62
    if-ne v4, v5, :cond_3

    #@64
    .line 1923
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
    .line 1925
    :cond_3
    move-object/from16 v0, p2

    #@70
    move/from16 v1, v19

    #@72
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@75
    .line 1926
    new-instance v4, Ljava/lang/Double;

    #@77
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    #@79
    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    #@7c
    return-object v4

    #@7d
    .line 1930
    :cond_4
    move/from16 v19, v16

    #@7f
    .line 1932
    const/4 v4, 0x3

    #@80
    new-array v8, v4, [Z

    #@82
    .line 1933
    .local v8, "status":[Z
    move-object/from16 v0, p0

    #@84
    iget v4, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@86
    if-eqz v4, :cond_5

    #@88
    .line 1934
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
    .line 1935
    const/4 v4, 0x0

    #@97
    return-object v4

    #@98
    .line 1938
    :cond_5
    move-object/from16 v0, p0

    #@9a
    iget-object v7, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget-object v10, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@a0
    .line 1939
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
    .line 1940
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
    .line 1938
    invoke-direct/range {v4 .. v15}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    #@b9
    move-result v4

    #@ba
    if-nez v4, :cond_6

    #@bc
    .line 1941
    move-object/from16 v0, p2

    #@be
    move/from16 v1, v16

    #@c0
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@c3
    .line 1942
    const/4 v4, 0x0

    #@c4
    return-object v4

    #@c5
    .line 1946
    :cond_6
    const/16 v23, 0x0

    #@c7
    .line 1949
    .local v23, "n":Ljava/lang/Number;
    const/4 v4, 0x0

    #@c8
    aget-boolean v4, v8, v4

    #@ca
    if-eqz v4, :cond_a

    #@cc
    .line 1950
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
    .line 2007
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
    .line 1951
    :cond_9
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@eb
    goto :goto_0

    #@ec
    .line 1955
    .local v23, "n":Ljava/lang/Number;
    :cond_a
    const/4 v4, 0x2

    #@ed
    aget-boolean v4, v8, v4

    #@ef
    if-eqz v4, :cond_c

    #@f1
    .line 1956
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
    .line 1960
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
    .line 1961
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
    .line 1967
    .local v23, "n":Ljava/lang/Number;
    :cond_d
    move-object/from16 v0, p0

    #@128
    iget v0, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@12a
    move/from16 v22, v0

    #@12c
    .line 1968
    .local v22, "mult":I
    :goto_3
    rem-int/lit8 v4, v22, 0xa

    #@12e
    if-nez v4, :cond_e

    #@130
    .line 1969
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
    .line 1970
    div-int/lit8 v22, v22, 0xa

    #@13c
    goto :goto_3

    #@13d
    .line 1974
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
    .line 1976
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
    .line 1977
    const-wide/16 v20, 0x0

    #@15e
    .line 1978
    .local v20, "l":J
    move-object/from16 v0, p0

    #@160
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@162
    iget v4, v4, Landroid/icu/text/DigitList;->count:I

    #@164
    if-lez v4, :cond_11

    #@166
    .line 1979
    const/16 v24, 0x0

    #@168
    .line 1980
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
    .line 1981
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
    .line 1983
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
    .line 1984
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
    .line 1986
    .end local v24    # "nx":I
    .restart local v25    # "nx":I
    :cond_10
    const/4 v4, 0x1

    #@19e
    aget-boolean v4, v8, v4

    #@1a0
    if-nez v4, :cond_11

    #@1a2
    .line 1987
    move-wide/from16 v0, v20

    #@1a4
    neg-long v0, v0

    #@1a5
    move-wide/from16 v20, v0

    #@1a7
    .line 1990
    .end local v25    # "nx":I
    :cond_11
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1aa
    move-result-object v23

    #@1ab
    .local v23, "n":Ljava/lang/Number;
    goto/16 :goto_1

    #@1ad
    .line 1992
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
    .line 1993
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
    .line 1998
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
    .line 1999
    .local v17, "big":Landroid/icu/math/BigDecimal;
    move-object/from16 v23, v17

    #@1db
    .line 2000
    .local v23, "n":Ljava/lang/Number;
    const/4 v4, 0x1

    #@1dc
    move/from16 v0, v22

    #@1de
    if-eq v0, v4, :cond_7

    #@1e0
    .line 2001
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
    .line 2012
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v20

    #@4
    .line 2013
    .local v20, "origPos":I
    move-object/from16 v0, p0

    #@6
    iget-boolean v2, v0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@8
    if-nez v2, :cond_0

    #@a
    .line 2014
    move-object/from16 v0, p0

    #@c
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@e
    move/from16 v22, v0

    #@10
    .line 2015
    .local v22, "savedCurrencySignCount":I
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->setupCurrencyAffixForAllPatterns()V

    #@13
    .line 2017
    const/4 v2, 0x3

    #@14
    move/from16 v0, v22

    #@16
    if-ne v0, v2, :cond_3

    #@18
    .line 2018
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
    .line 2022
    :goto_0
    const/4 v2, 0x1

    #@23
    move-object/from16 v0, p0

    #@25
    iput-boolean v2, v0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@27
    .line 2024
    .end local v22    # "savedCurrencySignCount":I
    :cond_0
    move/from16 v19, v20

    #@29
    .line 2025
    .local v19, "maxPosIndex":I
    const/16 v18, -0x1

    #@2b
    .line 2026
    .local v18, "maxErrorPos":I
    const/16 v23, 0x0

    #@2d
    .line 2031
    .local v23, "savedStatus":[Z
    const/4 v2, 0x3

    #@2e
    new-array v6, v2, [Z

    #@30
    .line 2032
    .local v6, "tmpStatus":[Z
    new-instance v4, Ljava/text/ParsePosition;

    #@32
    move/from16 v0, v20

    #@34
    invoke-direct {v4, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@37
    .line 2033
    .local v4, "tmpPos":Ljava/text/ParsePosition;
    new-instance v5, Landroid/icu/text/DigitList;

    #@39
    invoke-direct {v5}, Landroid/icu/text/DigitList;-><init>()V

    #@3c
    .line 2035
    .local v5, "tmpDigitList":Landroid/icu/text/DigitList;
    move-object/from16 v0, p0

    #@3e
    iget v2, v0, Landroid/icu/text/DecimalFormat;->style:I

    #@40
    const/4 v3, 0x6

    #@41
    if-ne v2, v3, :cond_4

    #@43
    .line 2037
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
    .line 2038
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
    .line 2036
    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    #@5e
    move-result v16

    #@5f
    .line 2044
    .local v16, "found":Z
    :goto_1
    if-eqz v16, :cond_5

    #@61
    .line 2045
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@64
    move-result v2

    #@65
    move/from16 v0, v19

    #@67
    if-le v2, v0, :cond_1

    #@69
    .line 2046
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@6c
    move-result v19

    #@6d
    .line 2047
    move-object/from16 v23, v6

    #@6f
    .line 2048
    .local v23, "savedStatus":[Z
    move-object/from16 v0, p0

    #@71
    iput-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@73
    .line 2055
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
    .line 2056
    .local v14, "affix":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    const/4 v2, 0x3

    #@88
    new-array v6, v2, [Z

    #@8a
    .line 2057
    new-instance v4, Ljava/text/ParsePosition;

    #@8c
    .end local v4    # "tmpPos":Ljava/text/ParsePosition;
    move/from16 v0, v20

    #@8e
    invoke-direct {v4, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@91
    .line 2058
    .restart local v4    # "tmpPos":Ljava/text/ParsePosition;
    new-instance v5, Landroid/icu/text/DigitList;

    #@93
    .end local v5    # "tmpDigitList":Landroid/icu/text/DigitList;
    invoke-direct {v5}, Landroid/icu/text/DigitList;-><init>()V

    #@96
    .line 2060
    .restart local v5    # "tmpDigitList":Landroid/icu/text/DigitList;
    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getNegPrefix()Ljava/lang/String;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getNegSuffix()Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    .line 2061
    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getPosPrefix()Ljava/lang/String;

    #@a1
    move-result-object v10

    #@a2
    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getPosSuffix()Ljava/lang/String;

    #@a5
    move-result-object v11

    #@a6
    .line 2062
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
    .line 2059
    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    #@b4
    move-result v21

    #@b5
    .line 2063
    .local v21, "result":Z
    if-eqz v21, :cond_6

    #@b7
    .line 2064
    const/16 v16, 0x1

    #@b9
    .line 2065
    .local v16, "found":Z
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@bc
    move-result v2

    #@bd
    move/from16 v0, v19

    #@bf
    if-le v2, v0, :cond_2

    #@c1
    .line 2066
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@c4
    move-result v19

    #@c5
    .line 2067
    move-object/from16 v23, v6

    #@c7
    .line 2068
    .restart local v23    # "savedStatus":[Z
    move-object/from16 v0, p0

    #@c9
    iput-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@cb
    goto :goto_3

    #@cc
    .line 2020
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
    .line 2041
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
    .line 2042
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
    .line 2040
    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    #@f3
    move-result v16

    #@f4
    .local v16, "found":Z
    goto/16 :goto_1

    #@f6
    .line 2051
    :cond_5
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@f9
    move-result v18

    #@fa
    goto/16 :goto_2

    #@fc
    .line 2071
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
    .line 2086
    .end local v14    # "affix":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    .end local v21    # "result":Z
    :cond_7
    const/4 v2, 0x3

    #@10b
    new-array v6, v2, [Z

    #@10d
    .line 2087
    new-instance v4, Ljava/text/ParsePosition;

    #@10f
    .end local v4    # "tmpPos":Ljava/text/ParsePosition;
    move/from16 v0, v20

    #@111
    invoke-direct {v4, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@114
    .line 2088
    .restart local v4    # "tmpPos":Ljava/text/ParsePosition;
    new-instance v5, Landroid/icu/text/DigitList;

    #@116
    .end local v5    # "tmpDigitList":Landroid/icu/text/DigitList;
    invoke-direct {v5}, Landroid/icu/text/DigitList;-><init>()V

    #@119
    .line 2092
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
    .line 2093
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
    .line 2091
    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    #@134
    move-result v21

    #@135
    .line 2094
    .restart local v21    # "result":Z
    if-eqz v21, :cond_b

    #@137
    .line 2095
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@13a
    move-result v2

    #@13b
    move/from16 v0, v19

    #@13d
    if-le v2, v0, :cond_8

    #@13f
    .line 2096
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@142
    move-result v19

    #@143
    .line 2097
    move-object/from16 v23, v6

    #@145
    .line 2098
    .local v23, "savedStatus":[Z
    move-object/from16 v0, p0

    #@147
    iput-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@149
    .line 2100
    .end local v23    # "savedStatus":[Z
    :cond_8
    const/16 v16, 0x1

    #@14b
    .line 2106
    :cond_9
    :goto_4
    if-nez v16, :cond_c

    #@14d
    .line 2108
    move-object/from16 v0, p2

    #@14f
    move/from16 v1, v18

    #@151
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@154
    .line 2116
    :cond_a
    return v16

    #@155
    .line 2102
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
    .line 2110
    :cond_c
    move-object/from16 v0, p2

    #@164
    move/from16 v1, v19

    #@166
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@169
    .line 2111
    const/4 v2, -0x1

    #@16a
    move-object/from16 v0, p2

    #@16c
    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@16f
    .line 2112
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
    .line 2113
    aget-boolean v2, v23, v17

    #@178
    aput-boolean v2, p4, v17

    #@17a
    .line 2112
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
    .line 5088
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
    .line 1242
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1243
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1244
    :cond_0
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1245
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
    .line 1247
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
    const/16 v4, 0x154

    #@3
    const/16 v1, 0x135

    #@5
    const/4 v3, 0x4

    #@6
    const/4 v2, 0x0

    #@7
    .line 5397
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@a
    .line 5413
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@d
    move-result v0

    #@e
    if-le v0, v1, :cond_0

    #@10
    .line 5414
    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    #@13
    .line 5416
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@16
    move-result v0

    #@17
    if-le v0, v4, :cond_1

    #@19
    .line 5417
    invoke-direct {p0, v4}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@1c
    .line 5419
    :cond_1
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@1e
    const/4 v1, 0x2

    #@1f
    if-ge v0, v1, :cond_2

    #@21
    .line 5420
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@23
    .line 5421
    invoke-direct {p0, v5}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@26
    .line 5422
    const/4 v0, 0x6

    #@27
    iput v0, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@29
    .line 5423
    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@2b
    .line 5424
    const/16 v0, 0x20

    #@2d
    iput-char v0, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@2f
    .line 5425
    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@31
    .line 5426
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@33
    const/4 v1, 0x1

    #@34
    if-ge v0, v1, :cond_2

    #@36
    .line 5428
    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@38
    .line 5431
    :cond_2
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@3a
    const/4 v1, 0x3

    #@3b
    if-ge v0, v1, :cond_3

    #@3d
    .line 5434
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    #@40
    .line 5436
    :cond_3
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@42
    if-ge v0, v3, :cond_4

    #@44
    .line 5437
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@46
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@48
    .line 5439
    :cond_4
    iput v3, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    #@4a
    .line 5440
    new-instance v0, Landroid/icu/text/DigitList;

    #@4c
    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    #@4f
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@51
    .line 5442
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@53
    if-eqz v0, :cond_5

    #@55
    .line 5443
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@57
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@59
    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    #@5c
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@5f
    .line 5445
    :cond_5
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@62
    .line 5396
    return-void
.end method

.method private resetActualRounding()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6076
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@3
    if-eqz v2, :cond_3

    #@5
    .line 6077
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@8
    move-result v2

    #@9
    if-lez v2, :cond_0

    #@b
    .line 6078
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
    .line 6079
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
    .line 6080
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@1f
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@21
    .line 6099
    .end local v0    # "byWidth":Landroid/icu/math/BigDecimal;
    :goto_1
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@23
    if-nez v2, :cond_7

    #@25
    .line 6100
    const-wide/16 v2, 0x0

    #@27
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->setRoundingDouble(D)V

    #@2a
    .line 6101
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    #@2c
    .line 6075
    :goto_2
    return-void

    #@2d
    .line 6078
    :cond_0
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@2f
    .restart local v0    # "byWidth":Landroid/icu/math/BigDecimal;
    goto :goto_0

    #@30
    .line 6082
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
    .line 6085
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
    .line 6089
    :cond_4
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@49
    goto :goto_1

    #@4a
    .line 6091
    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@4d
    move-result v2

    #@4e
    if-lez v2, :cond_6

    #@50
    .line 6092
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
    .line 6094
    :cond_6
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@5f
    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@61
    goto :goto_1

    #@62
    .line 6103
    :cond_7
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@64
    invoke-virtual {v1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@67
    move-result-wide v2

    #@68
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->setRoundingDouble(D)V

    #@6b
    .line 6104
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
    .line 803
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->isNegative(D)Z

    #@3
    move-result v7

    #@4
    .line 804
    .local v7, "isNegative":Z
    if-eqz v7, :cond_0

    #@6
    .line 805
    neg-double p1, p1

    #@7
    .line 808
    :cond_0
    iget-wide v0, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@9
    const-wide/16 v2, 0x0

    #@b
    cmpl-double v0, v0, v2

    #@d
    if-lez v0, :cond_1

    #@f
    .line 812
    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@11
    iget-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@13
    iget v6, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@15
    move-wide v0, p1

    #@16
    .line 811
    invoke-static/range {v0 .. v7}, Landroid/icu/text/DecimalFormat;->round(DDDIZ)D

    #@19
    move-result-wide v0

    #@1a
    return-wide v0

    #@1b
    .line 815
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
    .line 998
    const-wide/16 v14, 0x0

    #@2
    cmpl-double v14, p4, v14

    #@4
    if-nez v14, :cond_0

    #@6
    div-double v6, p0, p2

    #@8
    .line 1003
    .local v6, "div":D
    :goto_0
    packed-switch p6, :pswitch_data_0

    #@b
    .line 1029
    :pswitch_0
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v2

    #@f
    .line 1030
    .local v2, "ceil":D
    sub-double v4, v2, v6

    #@11
    .line 1031
    .local v4, "ceildiff":D
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@14
    move-result-wide v8

    #@15
    .line 1032
    .local v8, "floor":D
    sub-double v10, v6, v8

    #@17
    .line 1041
    .local v10, "floordiff":D
    packed-switch p6, :pswitch_data_1

    #@1a
    .line 1062
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
    .line 998
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
    .line 1005
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
    .line 1065
    :goto_1
    const-wide/16 v14, 0x0

    #@44
    cmpl-double v14, p4, v14

    #@46
    if-nez v14, :cond_9

    #@48
    mul-double p0, v6, p2

    #@4a
    .line 1066
    :goto_2
    return-wide p0

    #@4b
    .line 1005
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
    .line 1008
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
    .line 1011
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
    .line 1014
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
    .line 1017
    :pswitch_5
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@7b
    move-result-wide v14

    #@7c
    cmpl-double v14, v6, v14

    #@7e
    if-eqz v14, :cond_3

    #@80
    .line 1018
    new-instance v14, Ljava/lang/ArithmeticException;

    #@82
    const-string/jumbo v15, "Rounding necessary"

    #@85
    invoke-direct {v14, v15}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@88
    throw v14

    #@89
    .line 1020
    :cond_3
    return-wide p0

    #@8a
    .line 1046
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
    .line 1047
    move-wide v6, v8

    #@92
    goto :goto_1

    #@93
    .line 1048
    :cond_4
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    #@95
    add-double/2addr v14, v4

    #@96
    cmpg-double v14, v14, v10

    #@98
    if-gez v14, :cond_5

    #@9a
    .line 1049
    move-wide v6, v2

    #@9b
    goto :goto_1

    #@9c
    .line 1051
    :cond_5
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    #@9e
    div-double v12, v8, v14

    #@a0
    .line 1052
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
    .line 1056
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
    .line 1059
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
    .line 1065
    .end local v2    # "ceil":D
    .end local v4    # "ceildiff":D
    .end local v8    # "floor":D
    .end local v10    # "floordiff":D
    :cond_9
    div-double p0, v6, p4

    #@c4
    goto :goto_2

    #@c5
    .line 1003
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
    .line 1041
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
    .line 3168
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
    .line 3170
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
    .line 3171
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@1d
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 3172
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 3171
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    .line 3170
    if-eqz v1, :cond_0

    #@2b
    .line 3173
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
    .line 3158
    :goto_0
    return-void

    #@39
    .line 3175
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
    .line 5449
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@3
    .line 5450
    if-nez p1, :cond_0

    #@5
    :goto_0
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    #@7
    .line 5448
    return-void

    #@8
    .line 5450
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
    .line 6111
    iput-wide p1, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@4
    .line 6112
    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@6
    cmpl-double v2, v2, v6

    #@8
    if-lez v2, :cond_1

    #@a
    .line 6113
    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    #@c
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@e
    div-double v0, v4, v2

    #@10
    .line 6114
    .local v0, "rawRoundedReciprocal":D
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    #@13
    move-result-wide v2

    #@14
    iput-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@16
    .line 6115
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
    .line 6116
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@29
    .line 6110
    .end local v0    # "rawRoundedReciprocal":D
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 6119
    :cond_1
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    #@2c
    goto :goto_0
.end method

.method private setupCurrencyAffixForAllPatterns()V
    .locals 11

    #@0
    .prologue
    .line 2122
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2123
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
    .line 2125
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    #@13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@16
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@18
    .line 2129
    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@1a
    .line 2134
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
    .line 2135
    const/4 v2, 0x0

    #@26
    .line 2134
    invoke-direct {p0, v1, v2}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@29
    .line 2136
    new-instance v0, Landroid/icu/text/DecimalFormat$AffixForCurrency;

    #@2b
    .line 2137
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@2d
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@2f
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@31
    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@33
    .line 2138
    const/4 v5, 0x0

    #@34
    .line 2136
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat$AffixForCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@37
    .line 2139
    .local v0, "affixes":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@39
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    .line 2142
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@3e
    invoke-virtual {v1}, Landroid/icu/text/CurrencyPluralInfo;->pluralPatternIterator()Ljava/util/Iterator;

    #@41
    move-result-object v8

    #@42
    .line 2143
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    #@44
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@47
    .line 2144
    .local v7, "currencyUnitPatternSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_2

    #@4d
    .line 2145
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v9

    #@51
    check-cast v9, Ljava/lang/String;

    #@53
    .line 2146
    .local v9, "pluralCount":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@55
    invoke-virtual {v1, v9}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    .line 2147
    .local v6, "currencyPattern":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@5b
    .line 2148
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5e
    move-result v1

    #@5f
    if-nez v1, :cond_1

    #@61
    .line 2149
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@64
    .line 2150
    const/4 v1, 0x0

    #@65
    invoke-direct {p0, v6, v1}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@68
    .line 2151
    new-instance v0, Landroid/icu/text/DecimalFormat$AffixForCurrency;

    #@6a
    .end local v0    # "affixes":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@6c
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@6e
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@70
    .line 2152
    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@72
    const/4 v5, 0x1

    #@73
    .line 2151
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat$AffixForCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@76
    .line 2153
    .restart local v0    # "affixes":Landroid/icu/text/DecimalFormat$AffixForCurrency;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    #@78
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7b
    goto :goto_0

    #@7c
    .line 2157
    .end local v6    # "currencyPattern":Ljava/lang/String;
    .end local v9    # "pluralCount":Ljava/lang/String;
    :cond_2
    iput-object v10, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@7e
    .line 2121
    return-void
.end method

.method private static skipBidiMarks(Ljava/lang/String;I)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2958
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 2959
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    .line 2960
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 2965
    .end local v0    # "c":I
    :cond_0
    return p1

    #@11
    .line 2963
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
    .line 2766
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
    .line 2767
    add-int/lit8 p2, p2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 2769
    :cond_0
    return p2
.end method

.method private static skipPatternWhiteSpace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2930
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 2931
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    .line 2932
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 2937
    .end local v0    # "c":I
    :cond_0
    return p1

    #@11
    .line 2935
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
    .line 2944
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 2945
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    .line 2946
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 2951
    .end local v0    # "c":I
    :cond_0
    return p1

    #@11
    .line 2949
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
    .line 1312
    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1314
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
    .line 1318
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
    .line 1253
    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1255
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
    .line 1259
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
    .line 1335
    iget v0, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1337
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@7
    invoke-virtual {v0, p1}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v6

    #@b
    .line 1338
    .local v6, "currencyPluralPattern":Ljava/lang/String;
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 1339
    const/4 v0, 0x0

    #@14
    invoke-direct {p0, v6, v0}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    #@17
    .line 1348
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
    .line 1349
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method private subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "isNegative"    # Z
    .param p4, "isInteger"    # Z
    .param p5, "parseAttr"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1378
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@3
    invoke-virtual {v2}, Landroid/icu/text/DigitList;->isZero()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1379
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@b
    iput v3, v2, Landroid/icu/text/DigitList;->decimalAt:I

    #@d
    .line 1382
    :cond_0
    const/4 v2, 0x1

    #@e
    invoke-direct {p0, p1, p3, v2, p5}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZZ)I

    #@11
    move-result v0

    #@12
    .line 1384
    .local v0, "prefixLen":I
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 1385
    invoke-direct {p0, p1, p2, p5}, Landroid/icu/text/DecimalFormat;->subformatExponential(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)V

    #@19
    .line 1390
    :goto_0
    invoke-direct {p0, p1, p3, v3, p5}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZZ)I

    #@1c
    move-result v1

    #@1d
    .line 1392
    .local v1, "suffixLen":I
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    #@20
    .line 1393
    return-object p1

    #@21
    .line 1387
    .end local v1    # "suffixLen":I
    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/icu/text/DecimalFormat;->subformatFixed(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZ)V

    #@24
    goto :goto_0
.end method

.method private subformatExponential(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)V
    .locals 32
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "parseAttr"    # Z

    #@0
    .prologue
    .line 1604
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
    .line 1605
    .local v7, "digits":[C
    move-object/from16 v0, p0

    #@c
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@e
    move/from16 v28, v0

    #@10
    if-nez v28, :cond_a

    #@12
    .line 1606
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
    .line 1607
    .local v4, "decimal":C
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@1f
    move-result v27

    #@20
    .line 1608
    .local v27, "useSigDig":Z
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@23
    move-result v20

    #@24
    .line 1609
    .local v20, "maxIntDig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@27
    move-result v22

    #@28
    .line 1612
    .local v22, "minIntDig":I
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@2b
    move-result v28

    #@2c
    if-nez v28, :cond_b

    #@2e
    .line 1613
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
    .line 1614
    const/16 v28, -0x1

    #@3b
    move-object/from16 v0, p2

    #@3d
    move/from16 v1, v28

    #@3f
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@42
    .line 1629
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@45
    move-result v17

    #@46
    .line 1630
    .local v17, "intBegin":I
    const/16 v18, -0x1

    #@48
    .line 1631
    .local v18, "intEnd":I
    const/4 v12, -0x1

    #@49
    .line 1632
    .local v12, "fracBegin":I
    const/16 v21, 0x0

    #@4b
    .line 1633
    .local v21, "minFracDig":I
    if-eqz v27, :cond_e

    #@4d
    .line 1634
    const/16 v22, 0x1

    #@4f
    const/16 v20, 0x1

    #@51
    .line 1635
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    #@54
    move-result v28

    #@55
    add-int/lit8 v21, v28, -0x1

    #@57
    .line 1648
    :cond_1
    :goto_2
    const-wide/16 v14, 0x0

    #@59
    .line 1649
    .local v14, "fractionalDigits":J
    const/4 v13, 0x0

    #@5a
    .line 1650
    .local v13, "fractionalDigitsCount":I
    const/16 v25, 0x0

    #@5c
    .line 1661
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
    .line 1662
    .local v11, "exponent":I
    const/16 v28, 0x1

    #@68
    move/from16 v0, v20

    #@6a
    move/from16 v1, v28

    #@6c
    if-le v0, v1, :cond_11

    #@6e
    move/from16 v0, v20

    #@70
    move/from16 v1, v22

    #@72
    if-eq v0, v1, :cond_11

    #@74
    .line 1664
    if-lez v11, :cond_10

    #@76
    add-int/lit8 v28, v11, -0x1

    #@78
    div-int v11, v28, v20

    #@7a
    .line 1665
    :goto_3
    mul-int v11, v11, v20

    #@7c
    .line 1676
    :goto_4
    add-int v23, v22, v21

    #@7e
    .line 1679
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
    if-eqz v28, :cond_14

    #@8a
    move/from16 v19, v22

    #@8c
    .line 1680
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
    .line 1681
    .local v26, "totalDigits":I
    move/from16 v0, v23

    #@9a
    move/from16 v1, v26

    #@9c
    if-le v0, v1, :cond_2

    #@9e
    .line 1682
    move/from16 v26, v23

    #@a0
    .line 1683
    :cond_2
    move/from16 v0, v19

    #@a2
    move/from16 v1, v26

    #@a4
    if-le v0, v1, :cond_3

    #@a6
    .line 1684
    move/from16 v26, v19

    #@a8
    .line 1686
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
    if-ge v0, v1, :cond_18

    #@b0
    .line 1687
    move/from16 v0, v16

    #@b2
    move/from16 v1, v19

    #@b4
    if-ne v0, v1, :cond_8

    #@b6
    .line 1689
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@b9
    move-result v28

    #@ba
    if-nez v28, :cond_15

    #@bc
    .line 1690
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
    .line 1696
    :cond_4
    :goto_7
    if-eqz p3, :cond_5

    #@c9
    .line 1697
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@cc
    move-result v18

    #@cd
    .line 1698
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
    .line 1700
    :cond_5
    move-object/from16 v0, p1

    #@e0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@e3
    .line 1702
    if-eqz p3, :cond_6

    #@e5
    .line 1704
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@e8
    move-result v28

    #@e9
    add-int/lit8 v5, v28, -0x1

    #@eb
    .line 1705
    .local v5, "decimalSeparatorBegin":I
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@ed
    .line 1706
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@f0
    move-result v29

    #@f1
    .line 1705
    move-object/from16 v0, p0

    #@f3
    move-object/from16 v1, v28

    #@f5
    move/from16 v2, v29

    #@f7
    invoke-direct {v0, v1, v5, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@fa
    .line 1707
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@fd
    move-result v12

    #@fe
    .line 1710
    .end local v5    # "decimalSeparatorBegin":I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@101
    move-result v28

    #@102
    const/16 v29, 0x1

    #@104
    move/from16 v0, v28

    #@106
    move/from16 v1, v29

    #@108
    if-ne v0, v1, :cond_16

    #@10a
    .line 1711
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@10d
    move-result v28

    #@10e
    move-object/from16 v0, p2

    #@110
    move/from16 v1, v28

    #@112
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@115
    .line 1715
    :cond_7
    :goto_8
    move-object/from16 v0, p2

    #@117
    instance-of v0, v0, Landroid/icu/text/UFieldPosition;

    #@119
    move/from16 v25, v0

    #@11b
    .line 1718
    :cond_8
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@11f
    move-object/from16 v28, v0

    #@121
    move-object/from16 v0, v28

    #@123
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@125
    move/from16 v28, v0

    #@127
    move/from16 v0, v16

    #@129
    move/from16 v1, v28

    #@12b
    if-ge v0, v1, :cond_17

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@131
    move-object/from16 v28, v0

    #@133
    move-object/from16 v0, v28

    #@135
    move/from16 v1, v16

    #@137
    invoke-virtual {v0, v1}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    #@13a
    move-result v6

    #@13b
    .line 1719
    :goto_9
    aget-char v28, v7, v6

    #@13d
    move-object/from16 v0, p1

    #@13f
    move/from16 v1, v28

    #@141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@144
    .line 1720
    if-eqz v25, :cond_9

    #@146
    .line 1721
    add-int/lit8 v13, v13, 0x1

    #@148
    .line 1722
    const-wide/16 v28, 0xa

    #@14a
    mul-long v14, v14, v28

    #@14c
    .line 1723
    int-to-long v0, v6

    #@14d
    move-wide/from16 v28, v0

    #@14f
    add-long v14, v14, v28

    #@151
    .line 1686
    :cond_9
    add-int/lit8 v16, v16, 0x1

    #@153
    goto/16 :goto_6

    #@155
    .line 1606
    .end local v4    # "decimal":C
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
    :cond_a
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@159
    move-object/from16 v28, v0

    #@15b
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    #@15e
    move-result v4

    #@15f
    .restart local v4    # "decimal":C
    goto/16 :goto_0

    #@161
    .line 1615
    .restart local v20    # "maxIntDig":I
    .restart local v22    # "minIntDig":I
    .restart local v27    # "useSigDig":Z
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@164
    move-result v28

    #@165
    const/16 v29, 0x1

    #@167
    move/from16 v0, v28

    #@169
    move/from16 v1, v29

    #@16b
    if-ne v0, v1, :cond_c

    #@16d
    .line 1616
    const/16 v28, -0x1

    #@16f
    move-object/from16 v0, p2

    #@171
    move/from16 v1, v28

    #@173
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@176
    goto/16 :goto_1

    #@178
    .line 1617
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@17b
    move-result-object v28

    #@17c
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@17e
    move-object/from16 v0, v28

    #@180
    move-object/from16 v1, v29

    #@182
    if-ne v0, v1, :cond_d

    #@184
    .line 1618
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@187
    move-result v28

    #@188
    move-object/from16 v0, p2

    #@18a
    move/from16 v1, v28

    #@18c
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@18f
    .line 1619
    const/16 v28, -0x1

    #@191
    move-object/from16 v0, p2

    #@193
    move/from16 v1, v28

    #@195
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@198
    goto/16 :goto_1

    #@19a
    .line 1620
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@19d
    move-result-object v28

    #@19e
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@1a0
    move-object/from16 v0, v28

    #@1a2
    move-object/from16 v1, v29

    #@1a4
    if-ne v0, v1, :cond_0

    #@1a6
    .line 1621
    const/16 v28, -0x1

    #@1a8
    move-object/from16 v0, p2

    #@1aa
    move/from16 v1, v28

    #@1ac
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@1af
    goto/16 :goto_1

    #@1b1
    .line 1637
    .restart local v12    # "fracBegin":I
    .restart local v17    # "intBegin":I
    .restart local v18    # "intEnd":I
    .restart local v21    # "minFracDig":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@1b4
    move-result v21

    #@1b5
    .line 1638
    const/16 v28, 0x8

    #@1b7
    move/from16 v0, v20

    #@1b9
    move/from16 v1, v28

    #@1bb
    if-le v0, v1, :cond_f

    #@1bd
    .line 1639
    const/16 v20, 0x1

    #@1bf
    const/16 v28, 0x1

    #@1c1
    .line 1640
    move/from16 v0, v28

    #@1c3
    move/from16 v1, v22

    #@1c5
    if-ge v0, v1, :cond_f

    #@1c7
    .line 1641
    move/from16 v20, v22

    #@1c9
    .line 1644
    :cond_f
    move/from16 v0, v20

    #@1cb
    move/from16 v1, v22

    #@1cd
    if-le v0, v1, :cond_1

    #@1cf
    .line 1645
    const/16 v22, 0x1

    #@1d1
    goto/16 :goto_2

    #@1d3
    .line 1664
    .restart local v11    # "exponent":I
    .restart local v13    # "fractionalDigitsCount":I
    .restart local v14    # "fractionalDigits":J
    .restart local v25    # "recordFractionDigits":Z
    :cond_10
    div-int v28, v11, v20

    #@1d5
    add-int/lit8 v11, v28, -0x1

    #@1d7
    goto/16 :goto_3

    #@1d9
    .line 1669
    :cond_11
    if-gtz v22, :cond_12

    #@1db
    if-lez v21, :cond_13

    #@1dd
    :cond_12
    move/from16 v28, v22

    #@1df
    :goto_a
    sub-int v11, v11, v28

    #@1e1
    goto/16 :goto_4

    #@1e3
    :cond_13
    const/16 v28, 0x1

    #@1e5
    goto :goto_a

    #@1e6
    .line 1679
    .restart local v23    # "minimumDigits":I
    :cond_14
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@1ea
    move-object/from16 v28, v0

    #@1ec
    move-object/from16 v0, v28

    #@1ee
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1f0
    move/from16 v28, v0

    #@1f2
    sub-int v19, v28, v11

    #@1f4
    .restart local v19    # "integerDigits":I
    goto/16 :goto_5

    #@1f6
    .line 1691
    .end local v25    # "recordFractionDigits":Z
    .restart local v16    # "i":I
    .restart local v26    # "totalDigits":I
    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@1f9
    move-result-object v28

    #@1fa
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@1fc
    move-object/from16 v0, v28

    #@1fe
    move-object/from16 v1, v29

    #@200
    if-ne v0, v1, :cond_4

    #@202
    .line 1692
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@205
    move-result v28

    #@206
    move-object/from16 v0, p2

    #@208
    move/from16 v1, v28

    #@20a
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@20d
    goto/16 :goto_7

    #@20f
    .line 1712
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@212
    move-result-object v28

    #@213
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@215
    move-object/from16 v0, v28

    #@217
    move-object/from16 v1, v29

    #@219
    if-ne v0, v1, :cond_7

    #@21b
    .line 1713
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@21e
    move-result v28

    #@21f
    move-object/from16 v0, p2

    #@221
    move/from16 v1, v28

    #@223
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@226
    goto/16 :goto_8

    #@228
    .line 1718
    :cond_17
    const/4 v6, 0x0

    #@229
    .local v6, "digit":B
    goto/16 :goto_9

    #@22b
    .line 1728
    .end local v6    # "digit":B
    :cond_18
    move-object/from16 v0, p0

    #@22d
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@22f
    move-object/from16 v28, v0

    #@231
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DigitList;->isZero()Z

    #@234
    move-result v28

    #@235
    if-eqz v28, :cond_19

    #@237
    if-nez v26, :cond_19

    #@239
    .line 1729
    const/16 v28, 0x0

    #@23b
    aget-char v28, v7, v28

    #@23d
    move-object/from16 v0, p1

    #@23f
    move/from16 v1, v28

    #@241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@244
    .line 1733
    :cond_19
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@247
    move-result v28

    #@248
    if-nez v28, :cond_22

    #@24a
    .line 1734
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    #@24d
    move-result v28

    #@24e
    if-gez v28, :cond_1a

    #@250
    .line 1735
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@253
    move-result v28

    #@254
    move-object/from16 v0, p2

    #@256
    move/from16 v1, v28

    #@258
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@25b
    .line 1752
    :cond_1a
    :goto_b
    if-eqz v25, :cond_1b

    #@25d
    .line 1753
    check-cast p2, Landroid/icu/text/UFieldPosition;

    #@25f
    .end local p2    # "fieldPosition":Ljava/text/FieldPosition;
    move-object/from16 v0, p2

    #@261
    invoke-virtual {v0, v13, v14, v15}, Landroid/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    #@264
    .line 1758
    :cond_1b
    if-eqz p3, :cond_1d

    #@266
    .line 1759
    if-gez v18, :cond_1c

    #@268
    .line 1760
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@26a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@26d
    move-result v29

    #@26e
    move-object/from16 v0, p0

    #@270
    move-object/from16 v1, v28

    #@272
    move/from16 v2, v17

    #@274
    move/from16 v3, v29

    #@276
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@279
    .line 1762
    :cond_1c
    if-lez v12, :cond_1d

    #@27b
    .line 1763
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@27d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@280
    move-result v29

    #@281
    move-object/from16 v0, p0

    #@283
    move-object/from16 v1, v28

    #@285
    move/from16 v2, v29

    #@287
    invoke-direct {v0, v1, v12, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@28a
    .line 1770
    :cond_1d
    move-object/from16 v0, p0

    #@28c
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@28e
    move-object/from16 v28, v0

    #@290
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    #@293
    move-result-object v28

    #@294
    move-object/from16 v0, p1

    #@296
    move-object/from16 v1, v28

    #@298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29b
    .line 1772
    if-eqz p3, :cond_1e

    #@29d
    .line 1773
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@29f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2a2
    move-result v29

    #@2a3
    .line 1774
    move-object/from16 v0, p0

    #@2a5
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@2a7
    move-object/from16 v30, v0

    #@2a9
    invoke-virtual/range {v30 .. v30}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    #@2ac
    move-result-object v30

    #@2ad
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    #@2b0
    move-result v30

    #@2b1
    .line 1773
    sub-int v29, v29, v30

    #@2b3
    .line 1774
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2b6
    move-result v30

    #@2b7
    .line 1773
    move-object/from16 v0, p0

    #@2b9
    move-object/from16 v1, v28

    #@2bb
    move/from16 v2, v29

    #@2bd
    move/from16 v3, v30

    #@2bf
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@2c2
    .line 1779
    :cond_1e
    move-object/from16 v0, p0

    #@2c4
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@2c6
    move-object/from16 v28, v0

    #@2c8
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DigitList;->isZero()Z

    #@2cb
    move-result v28

    #@2cc
    if-eqz v28, :cond_1f

    #@2ce
    .line 1780
    const/4 v11, 0x0

    #@2cf
    .line 1782
    :cond_1f
    if-gez v11, :cond_27

    #@2d1
    const/16 v24, 0x1

    #@2d3
    .line 1783
    .local v24, "negativeExponent":Z
    :goto_c
    if-eqz v24, :cond_28

    #@2d5
    .line 1784
    neg-int v11, v11

    #@2d6
    .line 1785
    move-object/from16 v0, p0

    #@2d8
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@2da
    move-object/from16 v28, v0

    #@2dc
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getMinusString()Ljava/lang/String;

    #@2df
    move-result-object v28

    #@2e0
    move-object/from16 v0, p1

    #@2e2
    move-object/from16 v1, v28

    #@2e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e7
    .line 1788
    if-eqz p3, :cond_20

    #@2e9
    .line 1790
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@2eb
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2ee
    move-result v29

    #@2ef
    add-int/lit8 v29, v29, -0x1

    #@2f1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2f4
    move-result v30

    #@2f5
    move-object/from16 v0, p0

    #@2f7
    move-object/from16 v1, v28

    #@2f9
    move/from16 v2, v29

    #@2fb
    move/from16 v3, v30

    #@2fd
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@300
    .line 1801
    :cond_20
    :goto_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@303
    move-result v8

    #@304
    .line 1802
    .local v8, "expBegin":I
    move-object/from16 v0, p0

    #@306
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@308
    move-object/from16 v28, v0

    #@30a
    int-to-long v0, v11

    #@30b
    move-wide/from16 v30, v0

    #@30d
    move-object/from16 v0, v28

    #@30f
    move-wide/from16 v1, v30

    #@311
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DigitList;->set(J)V

    #@314
    .line 1804
    move-object/from16 v0, p0

    #@316
    iget-byte v9, v0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@318
    .line 1805
    .local v9, "expDig":I
    move-object/from16 v0, p0

    #@31a
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@31c
    move/from16 v28, v0

    #@31e
    if-eqz v28, :cond_21

    #@320
    const/16 v28, 0x1

    #@322
    move/from16 v0, v28

    #@324
    if-ge v9, v0, :cond_21

    #@326
    .line 1806
    const/4 v9, 0x1

    #@327
    .line 1808
    :cond_21
    move-object/from16 v0, p0

    #@329
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@32b
    move-object/from16 v28, v0

    #@32d
    move-object/from16 v0, v28

    #@32f
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@331
    move/from16 v16, v0

    #@333
    :goto_e
    move/from16 v0, v16

    #@335
    if-ge v0, v9, :cond_29

    #@337
    .line 1809
    const/16 v28, 0x0

    #@339
    aget-char v28, v7, v28

    #@33b
    move-object/from16 v0, p1

    #@33d
    move/from16 v1, v28

    #@33f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@342
    .line 1808
    add-int/lit8 v16, v16, 0x1

    #@344
    goto :goto_e

    #@345
    .line 1737
    .end local v8    # "expBegin":I
    .end local v9    # "expDig":I
    .end local v24    # "negativeExponent":Z
    .restart local p2    # "fieldPosition":Ljava/text/FieldPosition;
    :cond_22
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@348
    move-result v28

    #@349
    const/16 v29, 0x1

    #@34b
    move/from16 v0, v28

    #@34d
    move/from16 v1, v29

    #@34f
    if-ne v0, v1, :cond_24

    #@351
    .line 1738
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@354
    move-result v28

    #@355
    if-gez v28, :cond_23

    #@357
    .line 1739
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@35a
    move-result v28

    #@35b
    move-object/from16 v0, p2

    #@35d
    move/from16 v1, v28

    #@35f
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@362
    .line 1741
    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@365
    move-result v28

    #@366
    move-object/from16 v0, p2

    #@368
    move/from16 v1, v28

    #@36a
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@36d
    goto/16 :goto_b

    #@36f
    .line 1742
    :cond_24
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@372
    move-result-object v28

    #@373
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@375
    move-object/from16 v0, v28

    #@377
    move-object/from16 v1, v29

    #@379
    if-ne v0, v1, :cond_25

    #@37b
    .line 1743
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    #@37e
    move-result v28

    #@37f
    if-gez v28, :cond_1a

    #@381
    .line 1744
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@384
    move-result v28

    #@385
    move-object/from16 v0, p2

    #@387
    move/from16 v1, v28

    #@389
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@38c
    goto/16 :goto_b

    #@38e
    .line 1746
    :cond_25
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@391
    move-result-object v28

    #@392
    sget-object v29, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@394
    move-object/from16 v0, v28

    #@396
    move-object/from16 v1, v29

    #@398
    if-ne v0, v1, :cond_1a

    #@39a
    .line 1747
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@39d
    move-result v28

    #@39e
    if-gez v28, :cond_26

    #@3a0
    .line 1748
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@3a3
    move-result v28

    #@3a4
    move-object/from16 v0, p2

    #@3a6
    move/from16 v1, v28

    #@3a8
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@3ab
    .line 1750
    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@3ae
    move-result v28

    #@3af
    move-object/from16 v0, p2

    #@3b1
    move/from16 v1, v28

    #@3b3
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@3b6
    goto/16 :goto_b

    #@3b8
    .line 1782
    .end local p2    # "fieldPosition":Ljava/text/FieldPosition;
    :cond_27
    const/16 v24, 0x0

    #@3ba
    .restart local v24    # "negativeExponent":Z
    goto/16 :goto_c

    #@3bc
    .line 1792
    :cond_28
    move-object/from16 v0, p0

    #@3be
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@3c0
    move/from16 v28, v0

    #@3c2
    if-eqz v28, :cond_20

    #@3c4
    .line 1793
    move-object/from16 v0, p0

    #@3c6
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@3c8
    move-object/from16 v28, v0

    #@3ca
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getPlusString()Ljava/lang/String;

    #@3cd
    move-result-object v28

    #@3ce
    move-object/from16 v0, p1

    #@3d0
    move-object/from16 v1, v28

    #@3d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d5
    .line 1795
    if-eqz p3, :cond_20

    #@3d7
    .line 1797
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@3da
    move-result v28

    #@3db
    add-int/lit8 v10, v28, -0x1

    #@3dd
    .line 1798
    .local v10, "expSignBegin":I
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@3df
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@3e2
    move-result v29

    #@3e3
    move-object/from16 v0, p0

    #@3e5
    move-object/from16 v1, v28

    #@3e7
    move/from16 v2, v29

    #@3e9
    invoke-direct {v0, v1, v10, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@3ec
    goto/16 :goto_d

    #@3ee
    .line 1811
    .end local v10    # "expSignBegin":I
    .restart local v8    # "expBegin":I
    .restart local v9    # "expDig":I
    :cond_29
    const/16 v16, 0x0

    #@3f0
    :goto_f
    move-object/from16 v0, p0

    #@3f2
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@3f4
    move-object/from16 v28, v0

    #@3f6
    move-object/from16 v0, v28

    #@3f8
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@3fa
    move/from16 v28, v0

    #@3fc
    move/from16 v0, v16

    #@3fe
    move/from16 v1, v28

    #@400
    if-ge v0, v1, :cond_2b

    #@402
    .line 1812
    move-object/from16 v0, p0

    #@404
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@406
    move-object/from16 v28, v0

    #@408
    move-object/from16 v0, v28

    #@40a
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@40c
    move/from16 v28, v0

    #@40e
    move/from16 v0, v16

    #@410
    move/from16 v1, v28

    #@412
    if-ge v0, v1, :cond_2a

    #@414
    move-object/from16 v0, p0

    #@416
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@418
    move-object/from16 v28, v0

    #@41a
    move-object/from16 v0, v28

    #@41c
    move/from16 v1, v16

    #@41e
    invoke-virtual {v0, v1}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    #@421
    move-result v28

    #@422
    aget-char v28, v7, v28

    #@424
    :goto_10
    move-object/from16 v0, p1

    #@426
    move/from16 v1, v28

    #@428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@42b
    .line 1811
    add-int/lit8 v16, v16, 0x1

    #@42d
    goto :goto_f

    #@42e
    .line 1813
    :cond_2a
    const/16 v28, 0x0

    #@430
    aget-char v28, v7, v28

    #@432
    goto :goto_10

    #@433
    .line 1816
    :cond_2b
    if-eqz p3, :cond_2c

    #@435
    .line 1817
    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@437
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@43a
    move-result v29

    #@43b
    move-object/from16 v0, p0

    #@43d
    move-object/from16 v1, v28

    #@43f
    move/from16 v2, v29

    #@441
    invoke-direct {v0, v1, v8, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@444
    .line 1603
    :cond_2c
    return-void
.end method

.method private subformatFixed(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZ)V
    .locals 29
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "isInteger"    # Z
    .param p4, "parseAttr"    # Z

    #@0
    .prologue
    .line 1400
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@4
    move-object/from16 v26, v0

    #@6
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/DecimalFormatSymbols;->getDigitsLocal()[C

    #@9
    move-result-object v9

    #@a
    .line 1402
    .local v9, "digits":[C
    move-object/from16 v0, p0

    #@c
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@e
    move/from16 v26, v0

    #@10
    if-nez v26, :cond_5

    #@12
    .line 1403
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@16
    move-object/from16 v26, v0

    #@18
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@1b
    move-result v15

    #@1c
    .line 1404
    .local v15, "grouping":C
    :goto_0
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@20
    move/from16 v26, v0

    #@22
    if-nez v26, :cond_6

    #@24
    .line 1405
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@28
    move-object/from16 v26, v0

    #@2a
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@2d
    move-result v5

    #@2e
    .line 1406
    .local v5, "decimal":C
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@31
    move-result v25

    #@32
    .line 1407
    .local v25, "useSigDig":Z
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@35
    move-result v18

    #@36
    .line 1408
    .local v18, "maxIntDig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@39
    move-result v20

    #@3a
    .line 1411
    .local v20, "minIntDig":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@3d
    move-result v17

    #@3e
    .line 1413
    .local v17, "intBegin":I
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@41
    move-result v26

    #@42
    if-nez v26, :cond_7

    #@44
    .line 1414
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@47
    move-result v26

    #@48
    move-object/from16 v0, p2

    #@4a
    move/from16 v1, v26

    #@4c
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@4f
    .line 1418
    :cond_0
    :goto_2
    const-wide/16 v12, 0x0

    #@51
    .line 1419
    .local v12, "fractionalDigits":J
    const/4 v14, 0x0

    #@52
    .line 1420
    .local v14, "fractionalDigitsCount":I
    const/16 v22, 0x0

    #@54
    .line 1422
    .local v22, "recordFractionDigits":Z
    const/16 v23, 0x0

    #@56
    .line 1423
    .local v23, "sigCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    #@59
    move-result v21

    #@5a
    .line 1424
    .local v21, "minSigDig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    #@5d
    move-result v19

    #@5e
    .line 1425
    .local v19, "maxSigDig":I
    if-nez v25, :cond_1

    #@60
    .line 1426
    const/16 v21, 0x0

    #@62
    .line 1427
    const v19, 0x7fffffff

    #@65
    .line 1433
    :cond_1
    if-eqz v25, :cond_8

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@6b
    move-object/from16 v26, v0

    #@6d
    move-object/from16 v0, v26

    #@6f
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@71
    move/from16 v26, v0

    #@73
    const/16 v27, 0x1

    #@75
    move/from16 v0, v27

    #@77
    move/from16 v1, v26

    #@79
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@7c
    move-result v4

    #@7d
    .line 1434
    .local v4, "count":I
    :goto_3
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@81
    move-object/from16 v26, v0

    #@83
    move-object/from16 v0, v26

    #@85
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@87
    move/from16 v26, v0

    #@89
    if-lez v26, :cond_2

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@8f
    move-object/from16 v26, v0

    #@91
    move-object/from16 v0, v26

    #@93
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@95
    move/from16 v26, v0

    #@97
    move/from16 v0, v26

    #@99
    if-ge v4, v0, :cond_2

    #@9b
    .line 1435
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@9f
    move-object/from16 v26, v0

    #@a1
    move-object/from16 v0, v26

    #@a3
    iget v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@a5
    .line 1443
    :cond_2
    const/4 v7, 0x0

    #@a6
    .line 1444
    .local v7, "digitIndex":I
    move/from16 v0, v18

    #@a8
    if-le v4, v0, :cond_3

    #@aa
    if-ltz v18, :cond_3

    #@ac
    .line 1445
    move/from16 v4, v18

    #@ae
    .line 1446
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@b2
    move-object/from16 v26, v0

    #@b4
    move-object/from16 v0, v26

    #@b6
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@b8
    move/from16 v26, v0

    #@ba
    sub-int v7, v26, v4

    #@bc
    .line 1449
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@bf
    move-result v24

    #@c0
    .line 1450
    .local v24, "sizeBeforeIntegerPart":I
    add-int/lit8 v16, v4, -0x1

    #@c2
    .local v16, "i":I
    move v8, v7

    #@c3
    .end local v7    # "digitIndex":I
    .local v8, "digitIndex":I
    :goto_4
    if-ltz v16, :cond_a

    #@c5
    .line 1451
    move-object/from16 v0, p0

    #@c7
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@c9
    move-object/from16 v26, v0

    #@cb
    move-object/from16 v0, v26

    #@cd
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@cf
    move/from16 v26, v0

    #@d1
    move/from16 v0, v16

    #@d3
    move/from16 v1, v26

    #@d5
    if-ge v0, v1, :cond_9

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@db
    move-object/from16 v26, v0

    #@dd
    move-object/from16 v0, v26

    #@df
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@e1
    move/from16 v26, v0

    #@e3
    move/from16 v0, v26

    #@e5
    if-ge v8, v0, :cond_9

    #@e7
    .line 1452
    move/from16 v0, v23

    #@e9
    move/from16 v1, v19

    #@eb
    if-ge v0, v1, :cond_9

    #@ed
    .line 1454
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@f1
    move-object/from16 v26, v0

    #@f3
    add-int/lit8 v7, v8, 0x1

    #@f5
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    move-object/from16 v0, v26

    #@f7
    invoke-virtual {v0, v8}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    #@fa
    move-result v26

    #@fb
    aget-char v26, v9, v26

    #@fd
    move-object/from16 v0, p1

    #@ff
    move/from16 v1, v26

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@104
    .line 1455
    add-int/lit8 v23, v23, 0x1

    #@106
    .line 1465
    :goto_5
    move-object/from16 v0, p0

    #@108
    move/from16 v1, v16

    #@10a
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;->isGroupingPosition(I)Z

    #@10d
    move-result v26

    #@10e
    if-eqz v26, :cond_4

    #@110
    .line 1466
    move-object/from16 v0, p1

    #@112
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@115
    .line 1468
    if-eqz p4, :cond_4

    #@117
    .line 1470
    sget-object v26, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@119
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@11c
    move-result v27

    #@11d
    add-int/lit8 v27, v27, -0x1

    #@11f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@122
    move-result v28

    #@123
    move-object/from16 v0, p0

    #@125
    move-object/from16 v1, v26

    #@127
    move/from16 v2, v27

    #@129
    move/from16 v3, v28

    #@12b
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@12e
    .line 1450
    :cond_4
    add-int/lit8 v16, v16, -0x1

    #@130
    move v8, v7

    #@131
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    goto :goto_4

    #@132
    .line 1403
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
    .end local v22    # "recordFractionDigits":Z
    .end local v23    # "sigCount":I
    .end local v24    # "sizeBeforeIntegerPart":I
    .end local v25    # "useSigDig":Z
    :cond_5
    move-object/from16 v0, p0

    #@134
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@136
    move-object/from16 v26, v0

    #@138
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparator()C

    #@13b
    move-result v15

    #@13c
    .restart local v15    # "grouping":C
    goto/16 :goto_0

    #@13e
    .line 1405
    :cond_6
    move-object/from16 v0, p0

    #@140
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@142
    move-object/from16 v26, v0

    #@144
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    #@147
    move-result v5

    #@148
    .restart local v5    # "decimal":C
    goto/16 :goto_1

    #@14a
    .line 1415
    .restart local v17    # "intBegin":I
    .restart local v18    # "maxIntDig":I
    .restart local v20    # "minIntDig":I
    .restart local v25    # "useSigDig":Z
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@14d
    move-result-object v26

    #@14e
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@150
    move-object/from16 v0, v26

    #@152
    move-object/from16 v1, v27

    #@154
    if-ne v0, v1, :cond_0

    #@156
    .line 1416
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@159
    move-result v26

    #@15a
    move-object/from16 v0, p2

    #@15c
    move/from16 v1, v26

    #@15e
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@161
    goto/16 :goto_2

    #@163
    .line 1433
    .restart local v12    # "fractionalDigits":J
    .restart local v14    # "fractionalDigitsCount":I
    .restart local v19    # "maxSigDig":I
    .restart local v21    # "minSigDig":I
    .restart local v22    # "recordFractionDigits":Z
    .restart local v23    # "sigCount":I
    :cond_8
    move/from16 v4, v20

    #@165
    .restart local v4    # "count":I
    goto/16 :goto_3

    #@167
    .line 1458
    .restart local v8    # "digitIndex":I
    .restart local v16    # "i":I
    .restart local v24    # "sizeBeforeIntegerPart":I
    :cond_9
    const/16 v26, 0x0

    #@169
    aget-char v26, v9, v26

    #@16b
    move-object/from16 v0, p1

    #@16d
    move/from16 v1, v26

    #@16f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@172
    .line 1459
    if-lez v23, :cond_2b

    #@174
    .line 1460
    add-int/lit8 v23, v23, 0x1

    #@176
    move v7, v8

    #@177
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto :goto_5

    #@178
    .line 1476
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@17b
    move-result v26

    #@17c
    if-nez v26, :cond_1c

    #@17e
    .line 1477
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@181
    move-result v26

    #@182
    move-object/from16 v0, p2

    #@184
    move/from16 v1, v26

    #@186
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@189
    .line 1486
    :cond_b
    :goto_6
    if-nez v23, :cond_c

    #@18b
    move-object/from16 v0, p0

    #@18d
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@18f
    move-object/from16 v26, v0

    #@191
    move-object/from16 v0, v26

    #@193
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@195
    move/from16 v26, v0

    #@197
    if-nez v26, :cond_c

    #@199
    .line 1487
    const/16 v23, 0x1

    #@19b
    .line 1492
    :cond_c
    if-nez p3, :cond_1d

    #@19d
    move-object/from16 v0, p0

    #@19f
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@1a1
    move-object/from16 v26, v0

    #@1a3
    move-object/from16 v0, v26

    #@1a5
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@1a7
    move/from16 v26, v0

    #@1a9
    move/from16 v0, v26

    #@1ab
    if-ge v8, v0, :cond_1d

    #@1ad
    const/4 v11, 0x1

    #@1ae
    .line 1498
    .local v11, "fractionPresent":Z
    :goto_7
    if-nez v11, :cond_d

    #@1b0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@1b3
    move-result v26

    #@1b4
    move/from16 v0, v26

    #@1b6
    move/from16 v1, v24

    #@1b8
    if-ne v0, v1, :cond_d

    #@1ba
    .line 1499
    const/16 v26, 0x0

    #@1bc
    aget-char v26, v9, v26

    #@1be
    move-object/from16 v0, p1

    #@1c0
    move/from16 v1, v26

    #@1c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1c5
    .line 1501
    :cond_d
    if-eqz p4, :cond_e

    #@1c7
    .line 1502
    sget-object v26, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@1c9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@1cc
    move-result v27

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    move-object/from16 v1, v26

    #@1d1
    move/from16 v2, v17

    #@1d3
    move/from16 v3, v27

    #@1d5
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@1d8
    .line 1505
    :cond_e
    move-object/from16 v0, p0

    #@1da
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@1dc
    move/from16 v26, v0

    #@1de
    if-nez v26, :cond_f

    #@1e0
    if-eqz v11, :cond_12

    #@1e2
    .line 1506
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@1e5
    move-result-object v26

    #@1e6
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@1e8
    move-object/from16 v0, v26

    #@1ea
    move-object/from16 v1, v27

    #@1ec
    if-ne v0, v1, :cond_10

    #@1ee
    .line 1507
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@1f1
    move-result v26

    #@1f2
    move-object/from16 v0, p2

    #@1f4
    move/from16 v1, v26

    #@1f6
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@1f9
    .line 1509
    :cond_10
    move-object/from16 v0, p1

    #@1fb
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1fe
    .line 1510
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@201
    move-result-object v26

    #@202
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@204
    move-object/from16 v0, v26

    #@206
    move-object/from16 v1, v27

    #@208
    if-ne v0, v1, :cond_11

    #@20a
    .line 1511
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@20d
    move-result v26

    #@20e
    move-object/from16 v0, p2

    #@210
    move/from16 v1, v26

    #@212
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@215
    .line 1514
    :cond_11
    if-eqz p4, :cond_12

    #@217
    .line 1515
    sget-object v26, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@219
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@21c
    move-result v27

    #@21d
    add-int/lit8 v27, v27, -0x1

    #@21f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@222
    move-result v28

    #@223
    move-object/from16 v0, p0

    #@225
    move-object/from16 v1, v26

    #@227
    move/from16 v2, v27

    #@229
    move/from16 v3, v28

    #@22b
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@22e
    .line 1520
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@231
    move-result v26

    #@232
    const/16 v27, 0x1

    #@234
    move/from16 v0, v26

    #@236
    move/from16 v1, v27

    #@238
    if-ne v0, v1, :cond_20

    #@23a
    .line 1521
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@23d
    move-result v26

    #@23e
    move-object/from16 v0, p2

    #@240
    move/from16 v1, v26

    #@242
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@245
    .line 1527
    :cond_13
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@248
    move-result v10

    #@249
    .line 1528
    .local v10, "fracBegin":I
    move-object/from16 v0, p2

    #@24b
    instance-of v0, v0, Landroid/icu/text/UFieldPosition;

    #@24d
    move/from16 v22, v0

    #@24f
    .line 1530
    .local v22, "recordFractionDigits":Z
    if-eqz v25, :cond_21

    #@251
    const v4, 0x7fffffff

    #@254
    .line 1531
    :goto_9
    if-eqz v25, :cond_15

    #@256
    move/from16 v0, v23

    #@258
    move/from16 v1, v19

    #@25a
    if-eq v0, v1, :cond_14

    #@25c
    .line 1532
    move/from16 v0, v23

    #@25e
    move/from16 v1, v21

    #@260
    if-lt v0, v1, :cond_15

    #@262
    move-object/from16 v0, p0

    #@264
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@266
    move-object/from16 v26, v0

    #@268
    move-object/from16 v0, v26

    #@26a
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@26c
    move/from16 v26, v0

    #@26e
    move/from16 v0, v26

    #@270
    if-ne v8, v0, :cond_15

    #@272
    .line 1533
    :cond_14
    const/4 v4, 0x0

    #@273
    .line 1535
    :cond_15
    const/16 v16, 0x0

    #@275
    :goto_a
    move/from16 v0, v16

    #@277
    if-ge v0, v4, :cond_2a

    #@279
    .line 1541
    if-nez v25, :cond_22

    #@27b
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@27e
    move-result v26

    #@27f
    move/from16 v0, v16

    #@281
    move/from16 v1, v26

    #@283
    if-lt v0, v1, :cond_22

    #@285
    .line 1542
    if-nez p3, :cond_16

    #@287
    move-object/from16 v0, p0

    #@289
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@28b
    move-object/from16 v26, v0

    #@28d
    move-object/from16 v0, v26

    #@28f
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@291
    move/from16 v26, v0

    #@293
    move/from16 v0, v26

    #@295
    if-lt v8, v0, :cond_22

    #@297
    :cond_16
    move v7, v8

    #@298
    .line 1586
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    :cond_17
    :goto_b
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    #@29b
    move-result v26

    #@29c
    const/16 v27, 0x1

    #@29e
    move/from16 v0, v26

    #@2a0
    move/from16 v1, v27

    #@2a2
    if-ne v0, v1, :cond_28

    #@2a4
    .line 1587
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2a7
    move-result v26

    #@2a8
    move-object/from16 v0, p2

    #@2aa
    move/from16 v1, v26

    #@2ac
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@2af
    .line 1591
    :cond_18
    :goto_c
    if-eqz v22, :cond_19

    #@2b1
    .line 1592
    check-cast p2, Landroid/icu/text/UFieldPosition;

    #@2b3
    .end local p2    # "fieldPosition":Ljava/text/FieldPosition;
    move-object/from16 v0, p2

    #@2b5
    invoke-virtual {v0, v14, v12, v13}, Landroid/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    #@2b8
    .line 1596
    :cond_19
    if-eqz p4, :cond_1b

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@2be
    move/from16 v26, v0

    #@2c0
    if-nez v26, :cond_1a

    #@2c2
    if-eqz v11, :cond_1b

    #@2c4
    .line 1597
    :cond_1a
    sget-object v26, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@2c6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2c9
    move-result v27

    #@2ca
    move-object/from16 v0, p0

    #@2cc
    move-object/from16 v1, v26

    #@2ce
    move/from16 v2, v27

    #@2d0
    invoke-direct {v0, v1, v10, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    #@2d3
    .line 1399
    :cond_1b
    return-void

    #@2d4
    .line 1478
    .end local v7    # "digitIndex":I
    .end local v10    # "fracBegin":I
    .end local v11    # "fractionPresent":Z
    .restart local v8    # "digitIndex":I
    .local v22, "recordFractionDigits":Z
    .restart local p2    # "fieldPosition":Ljava/text/FieldPosition;
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@2d7
    move-result-object v26

    #@2d8
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@2da
    move-object/from16 v0, v26

    #@2dc
    move-object/from16 v1, v27

    #@2de
    if-ne v0, v1, :cond_b

    #@2e0
    .line 1479
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@2e3
    move-result v26

    #@2e4
    move-object/from16 v0, p2

    #@2e6
    move/from16 v1, v26

    #@2e8
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@2eb
    goto/16 :goto_6

    #@2ed
    .line 1493
    :cond_1d
    if-eqz v25, :cond_1f

    #@2ef
    move/from16 v0, v23

    #@2f1
    move/from16 v1, v21

    #@2f3
    if-ge v0, v1, :cond_1e

    #@2f5
    :goto_d
    const/4 v11, 0x1

    #@2f6
    .restart local v11    # "fractionPresent":Z
    goto/16 :goto_7

    #@2f8
    .end local v11    # "fractionPresent":Z
    :cond_1e
    const/4 v11, 0x0

    #@2f9
    .restart local v11    # "fractionPresent":Z
    goto/16 :goto_7

    #@2fb
    .end local v11    # "fractionPresent":Z
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@2fe
    move-result v26

    #@2ff
    if-lez v26, :cond_1e

    #@301
    goto :goto_d

    #@302
    .line 1522
    .restart local v11    # "fractionPresent":Z
    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@305
    move-result-object v26

    #@306
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@308
    move-object/from16 v0, v26

    #@30a
    move-object/from16 v1, v27

    #@30c
    if-ne v0, v1, :cond_13

    #@30e
    .line 1523
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@311
    move-result v26

    #@312
    move-object/from16 v0, p2

    #@314
    move/from16 v1, v26

    #@316
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@319
    goto/16 :goto_8

    #@31b
    .line 1530
    .restart local v10    # "fracBegin":I
    .local v22, "recordFractionDigits":Z
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@31e
    move-result v4

    #@31f
    goto/16 :goto_9

    #@321
    .line 1549
    :cond_22
    rsub-int/lit8 v26, v16, -0x1

    #@323
    move-object/from16 v0, p0

    #@325
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@327
    move-object/from16 v27, v0

    #@329
    move-object/from16 v0, v27

    #@32b
    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@32d
    move/from16 v27, v0

    #@32f
    add-int/lit8 v27, v27, -0x1

    #@331
    move/from16 v0, v26

    #@333
    move/from16 v1, v27

    #@335
    if-le v0, v1, :cond_25

    #@337
    .line 1550
    const/16 v26, 0x0

    #@339
    aget-char v26, v9, v26

    #@33b
    move-object/from16 v0, p1

    #@33d
    move/from16 v1, v26

    #@33f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@342
    .line 1551
    if-eqz v22, :cond_23

    #@344
    .line 1552
    add-int/lit8 v14, v14, 0x1

    #@346
    .line 1553
    const-wide/16 v26, 0xa

    #@348
    mul-long v12, v12, v26

    #@34a
    :cond_23
    move v7, v8

    #@34b
    .line 1535
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    :cond_24
    add-int/lit8 v16, v16, 0x1

    #@34d
    move v8, v7

    #@34e
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    goto/16 :goto_a

    #@350
    .line 1560
    :cond_25
    if-nez p3, :cond_27

    #@352
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@356
    move-object/from16 v26, v0

    #@358
    move-object/from16 v0, v26

    #@35a
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@35c
    move/from16 v26, v0

    #@35e
    move/from16 v0, v26

    #@360
    if-ge v8, v0, :cond_27

    #@362
    .line 1561
    move-object/from16 v0, p0

    #@364
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@366
    move-object/from16 v26, v0

    #@368
    add-int/lit8 v7, v8, 0x1

    #@36a
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    move-object/from16 v0, v26

    #@36c
    invoke-virtual {v0, v8}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    #@36f
    move-result v6

    #@370
    .line 1562
    .local v6, "digit":B
    aget-char v26, v9, v6

    #@372
    move-object/from16 v0, p1

    #@374
    move/from16 v1, v26

    #@376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@379
    .line 1563
    if-eqz v22, :cond_26

    #@37b
    .line 1564
    add-int/lit8 v14, v14, 0x1

    #@37d
    .line 1565
    const-wide/16 v26, 0xa

    #@37f
    mul-long v12, v12, v26

    #@381
    .line 1566
    int-to-long v0, v6

    #@382
    move-wide/from16 v26, v0

    #@384
    add-long v12, v12, v26

    #@386
    .line 1578
    .end local v6    # "digit":B
    :cond_26
    :goto_e
    add-int/lit8 v23, v23, 0x1

    #@388
    .line 1579
    if-eqz v25, :cond_24

    #@38a
    move/from16 v0, v23

    #@38c
    move/from16 v1, v19

    #@38e
    if-eq v0, v1, :cond_17

    #@390
    .line 1580
    move-object/from16 v0, p0

    #@392
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@394
    move-object/from16 v26, v0

    #@396
    move-object/from16 v0, v26

    #@398
    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    #@39a
    move/from16 v26, v0

    #@39c
    move/from16 v0, v26

    #@39e
    if-ne v7, v0, :cond_24

    #@3a0
    move/from16 v0, v23

    #@3a2
    move/from16 v1, v21

    #@3a4
    if-lt v0, v1, :cond_24

    #@3a6
    goto/16 :goto_b

    #@3a8
    .line 1569
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    :cond_27
    const/16 v26, 0x0

    #@3aa
    aget-char v26, v9, v26

    #@3ac
    move-object/from16 v0, p1

    #@3ae
    move/from16 v1, v26

    #@3b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3b3
    .line 1570
    if-eqz v22, :cond_29

    #@3b5
    .line 1571
    add-int/lit8 v14, v14, 0x1

    #@3b7
    .line 1572
    const-wide/16 v26, 0xa

    #@3b9
    mul-long v12, v12, v26

    #@3bb
    move v7, v8

    #@3bc
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto :goto_e

    #@3bd
    .line 1588
    :cond_28
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@3c0
    move-result-object v26

    #@3c1
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@3c3
    move-object/from16 v0, v26

    #@3c5
    move-object/from16 v1, v27

    #@3c7
    if-ne v0, v1, :cond_18

    #@3c9
    .line 1589
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    #@3cc
    move-result v26

    #@3cd
    move-object/from16 v0, p2

    #@3cf
    move/from16 v1, v26

    #@3d1
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@3d4
    goto/16 :goto_c

    #@3d6
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    :cond_29
    move v7, v8

    #@3d7
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto :goto_e

    #@3d8
    .end local v7    # "digitIndex":I
    .restart local v8    # "digitIndex":I
    :cond_2a
    move v7, v8

    #@3d9
    .end local v8    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto/16 :goto_b

    #@3db
    .end local v7    # "digitIndex":I
    .end local v10    # "fracBegin":I
    .end local v11    # "fractionPresent":Z
    .restart local v8    # "digitIndex":I
    .local v22, "recordFractionDigits":Z
    :cond_2b
    move v7, v8

    #@3dc
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
    .line 2343
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v6

    #@4
    .line 2344
    .local v6, "position":I
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@7
    move-result v34

    #@8
    .line 2347
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
    .line 2348
    move-object/from16 v0, p0

    #@16
    move-object/from16 v1, p1

    #@18
    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@1b
    move-result v6

    #@1c
    .line 2352
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
    .line 2353
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
    .line 2354
    .local v33, "negMatch":I
    if-ltz v36, :cond_1

    #@42
    if-ltz v33, :cond_1

    #@44
    .line 2355
    move/from16 v0, v36

    #@46
    move/from16 v1, v33

    #@48
    if-le v0, v1, :cond_8

    #@4a
    .line 2356
    const/16 v33, -0x1

    #@4c
    .line 2361
    :cond_1
    :goto_0
    if-ltz v36, :cond_9

    #@4e
    .line 2362
    add-int v6, v6, v36

    #@50
    .line 2371
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
    .line 2372
    move-object/from16 v0, p0

    #@5f
    move-object/from16 v1, p1

    #@61
    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@64
    move-result v6

    #@65
    .line 2376
    :cond_2
    const/4 v4, 0x0

    #@66
    const/4 v5, 0x0

    #@67
    aput-boolean v4, p4, v5

    #@69
    .line 2377
    move-object/from16 v0, p0

    #@6b
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@6d
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 2378
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
    .line 2377
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
    .line 2379
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
    .line 2380
    const/4 v4, 0x1

    #@94
    const/4 v5, 0x0

    #@95
    aput-boolean v4, p4, v5

    #@97
    .line 2685
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
    .line 2686
    move-object/from16 v0, p0

    #@a6
    move-object/from16 v1, p1

    #@a8
    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@ab
    move-result v6

    #@ac
    .line 2690
    :cond_4
    if-ltz v36, :cond_5

    #@ae
    .line 2691
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
    .line 2693
    :cond_5
    if-ltz v33, :cond_6

    #@c3
    .line 2694
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
    .line 2696
    :cond_6
    if-ltz v36, :cond_7

    #@d8
    if-ltz v33, :cond_7

    #@da
    .line 2697
    move/from16 v0, v36

    #@dc
    move/from16 v1, v33

    #@de
    if-le v0, v1, :cond_43

    #@e0
    .line 2698
    const/16 v33, -0x1

    #@e2
    .line 2705
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
    .line 2706
    move-object/from16 v0, p2

    #@ed
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@f0
    .line 2707
    const/4 v4, 0x0

    #@f1
    return v4

    #@f2
    .line 2357
    :cond_8
    move/from16 v0, v33

    #@f4
    move/from16 v1, v36

    #@f6
    if-le v0, v1, :cond_1

    #@f8
    .line 2358
    const/16 v36, -0x1

    #@fa
    goto/16 :goto_0

    #@fc
    .line 2363
    :cond_9
    if-ltz v33, :cond_a

    #@fe
    .line 2364
    add-int v6, v6, v33

    #@100
    goto/16 :goto_1

    #@102
    .line 2366
    :cond_a
    move-object/from16 v0, p2

    #@104
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@107
    .line 2367
    const/4 v4, 0x0

    #@108
    return v4

    #@109
    .line 2388
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
    .line 2389
    move-object/from16 v0, p0

    #@115
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@117
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getDigitsLocal()[C

    #@11a
    move-result-object v24

    #@11b
    .line 2390
    .local v24, "digitSymbols":[C
    move-object/from16 v0, p0

    #@11d
    iget v4, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@11f
    if-nez v4, :cond_12

    #@121
    .line 2391
    move-object/from16 v0, p0

    #@123
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@125
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@128
    move-result v19

    #@129
    .line 2392
    .local v19, "decimal":C
    :goto_5
    move-object/from16 v0, p0

    #@12b
    iget v4, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@12d
    if-nez v4, :cond_13

    #@12f
    .line 2393
    move-object/from16 v0, p0

    #@131
    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@133
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@136
    move-result v29

    #@137
    .line 2395
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
    .line 2396
    .local v7, "exponentSep":Ljava/lang/String;
    const/16 v37, 0x0

    #@141
    .line 2397
    .local v37, "sawDecimal":Z
    const/16 v40, 0x0

    #@143
    .line 2398
    .local v40, "sawGrouping":Z
    const/16 v39, 0x0

    #@145
    .line 2399
    .local v39, "sawExponent":Z
    const/16 v38, 0x0

    #@147
    .line 2400
    .local v38, "sawDigit":Z
    const-wide/16 v26, 0x0

    #@149
    .line 2401
    .local v26, "exponent":J
    const/16 v21, 0x0

    #@14b
    .line 2404
    .local v21, "digit":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isParseStrict()Z

    #@14e
    move-result v42

    #@14f
    .line 2405
    .local v42, "strictParse":Z
    const/16 v41, 0x0

    #@151
    .line 2406
    .local v41, "strictFail":Z
    const/16 v31, -0x1

    #@153
    .line 2407
    .local v31, "lastGroup":I
    move/from16 v23, v6

    #@155
    .line 2408
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
    .line 2410
    .local v30, "gs2":I
    :goto_7
    sget-boolean v4, Landroid/icu/text/DecimalFormat;->skipExtendedSeparatorParsing:Z

    #@163
    if-eqz v4, :cond_15

    #@165
    sget-object v20, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@167
    .line 2412
    .local v20, "decimalEquiv":Landroid/icu/text/UnicodeSet;
    :goto_8
    sget-boolean v4, Landroid/icu/text/DecimalFormat;->skipExtendedSeparatorParsing:Z

    #@169
    if-eqz v4, :cond_16

    #@16b
    sget-object v28, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@16d
    .line 2417
    .local v28, "groupEquiv":Landroid/icu/text/UnicodeSet;
    :goto_9
    const/16 v22, 0x0

    #@16f
    .line 2419
    .local v22, "digitCount":I
    const/16 v17, -0x1

    #@171
    .line 2421
    .local v17, "backup":I
    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@174
    move-result v4

    #@175
    if-ge v6, v4, :cond_11

    #@177
    .line 2422
    move-object/from16 v0, p1

    #@179
    invoke-static {v0, v6}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@17c
    move-result v18

    #@17d
    .line 2434
    .local v18, "ch":I
    const/4 v4, 0x0

    #@17e
    aget-char v4, v24, v4

    #@180
    sub-int v21, v18, v4

    #@182
    .line 2435
    if-ltz v21, :cond_c

    #@184
    const/16 v4, 0x9

    #@186
    move/from16 v0, v21

    #@188
    if-le v0, v4, :cond_d

    #@18a
    .line 2436
    :cond_c
    const/16 v4, 0xa

    #@18c
    move/from16 v0, v18

    #@18e
    invoke-static {v0, v4}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@191
    move-result v21

    #@192
    .line 2437
    :cond_d
    if-ltz v21, :cond_e

    #@194
    const/16 v4, 0x9

    #@196
    move/from16 v0, v21

    #@198
    if-le v0, v4, :cond_f

    #@19a
    .line 2438
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
    .line 2439
    aget-char v4, v24, v21

    #@1a4
    move/from16 v0, v18

    #@1a6
    if-ne v0, v4, :cond_18

    #@1a8
    .line 2446
    :cond_f
    if-nez v21, :cond_1e

    #@1aa
    .line 2448
    if-eqz v42, :cond_1b

    #@1ac
    const/4 v4, -0x1

    #@1ad
    move/from16 v0, v17

    #@1af
    if-eq v0, v4, :cond_1b

    #@1b1
    .line 2453
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
    .line 2455
    :cond_10
    const/16 v41, 0x1

    #@1ca
    .line 2633
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
    .line 2634
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
    .line 2635
    move-object/from16 v0, p2

    #@1e5
    move/from16 v1, v34

    #@1e7
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@1ea
    .line 2636
    move-object/from16 v0, p2

    #@1ec
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@1ef
    .line 2637
    const/4 v4, 0x0

    #@1f0
    return v4

    #@1f1
    .line 2391
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
    .line 2393
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
    .line 2408
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
    .line 2411
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
    .line 2413
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
    .line 2438
    .restart local v17    # "backup":I
    .restart local v18    # "ch":I
    .restart local v22    # "digitCount":I
    :cond_18
    add-int/lit8 v21, v21, 0x1

    #@225
    goto/16 :goto_b

    #@227
    .line 2454
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
    .line 2458
    :cond_1a
    move/from16 v31, v17

    #@23e
    .line 2460
    :cond_1b
    const/16 v17, -0x1

    #@240
    .line 2461
    const/16 v38, 0x1

    #@242
    .line 2464
    move-object/from16 v0, p3

    #@244
    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    #@246
    if-nez v4, :cond_1d

    #@248
    .line 2465
    if-nez v37, :cond_1c

    #@24a
    .line 2421
    :goto_d
    invoke-static/range {v18 .. v18}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@24d
    move-result v4

    #@24e
    add-int/2addr v6, v4

    #@24f
    goto/16 :goto_a

    #@251
    .line 2473
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
    .line 2475
    :cond_1d
    add-int/lit8 v22, v22, 0x1

    #@25e
    .line 2476
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
    .line 2478
    :cond_1e
    if-lez v21, :cond_23

    #@269
    const/16 v4, 0x9

    #@26b
    move/from16 v0, v21

    #@26d
    if-gt v0, v4, :cond_23

    #@26f
    .line 2480
    if-eqz v42, :cond_22

    #@271
    .line 2481
    const/4 v4, -0x1

    #@272
    move/from16 v0, v17

    #@274
    if-eq v0, v4, :cond_22

    #@276
    .line 2482
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
    .line 2484
    :cond_1f
    const/16 v41, 0x1

    #@28f
    .line 2485
    goto/16 :goto_c

    #@291
    .line 2483
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
    .line 2487
    :cond_21
    move/from16 v31, v17

    #@2a8
    .line 2491
    :cond_22
    const/16 v38, 0x1

    #@2aa
    .line 2492
    add-int/lit8 v22, v22, 0x1

    #@2ac
    .line 2493
    add-int/lit8 v4, v21, 0x30

    #@2ae
    int-to-char v4, v4

    #@2af
    move-object/from16 v0, p3

    #@2b1
    invoke-virtual {v0, v4}, Landroid/icu/text/DigitList;->append(I)V

    #@2b4
    .line 2496
    const/16 v17, -0x1

    #@2b6
    .line 2479
    goto :goto_d

    #@2b7
    .line 2497
    :cond_23
    move/from16 v0, v18

    #@2b9
    move/from16 v1, v19

    #@2bb
    if-ne v0, v1, :cond_26

    #@2bd
    .line 2498
    if-eqz v42, :cond_25

    #@2bf
    .line 2499
    const/4 v4, -0x1

    #@2c0
    move/from16 v0, v17

    #@2c2
    if-ne v0, v4, :cond_24

    #@2c4
    .line 2500
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
    .line 2501
    :cond_24
    const/16 v41, 0x1

    #@2dd
    .line 2502
    goto/16 :goto_c

    #@2df
    .line 2507
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    #@2e2
    move-result v4

    #@2e3
    if-nez v4, :cond_11

    #@2e5
    if-nez v37, :cond_11

    #@2e7
    .line 2510
    move/from16 v0, v22

    #@2e9
    move-object/from16 v1, p3

    #@2eb
    iput v0, v1, Landroid/icu/text/DigitList;->decimalAt:I

    #@2ed
    .line 2511
    const/16 v37, 0x1

    #@2ef
    goto/16 :goto_d

    #@2f1
    .line 2512
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
    .line 2513
    if-nez v37, :cond_11

    #@2ff
    .line 2516
    if-eqz v42, :cond_28

    #@301
    .line 2517
    if-eqz v38, :cond_27

    #@303
    const/4 v4, -0x1

    #@304
    move/from16 v0, v17

    #@306
    if-eq v0, v4, :cond_28

    #@308
    .line 2519
    :cond_27
    const/16 v41, 0x1

    #@30a
    .line 2520
    goto/16 :goto_c

    #@30c
    .line 2526
    :cond_28
    move/from16 v17, v6

    #@30e
    .line 2527
    const/16 v40, 0x1

    #@310
    .line 2512
    goto/16 :goto_d

    #@312
    .line 2528
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
    .line 2529
    if-eqz v42, :cond_2b

    #@320
    .line 2530
    const/4 v4, -0x1

    #@321
    move/from16 v0, v17

    #@323
    if-ne v0, v4, :cond_2a

    #@325
    .line 2531
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
    .line 2532
    :cond_2a
    const/16 v41, 0x1

    #@33e
    .line 2533
    goto/16 :goto_c

    #@340
    .line 2537
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    #@343
    move-result v4

    #@344
    if-nez v4, :cond_11

    #@346
    .line 2539
    move/from16 v0, v22

    #@348
    move-object/from16 v1, p3

    #@34a
    iput v0, v1, Landroid/icu/text/DigitList;->decimalAt:I

    #@34c
    .line 2543
    move/from16 v0, v18

    #@34e
    int-to-char v0, v0

    #@34f
    move/from16 v19, v0

    #@351
    .line 2544
    const/16 v37, 0x1

    #@353
    goto/16 :goto_d

    #@355
    .line 2545
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    #@358
    move-result v4

    #@359
    if-eqz v4, :cond_2d

    #@35b
    if-eqz v40, :cond_31

    #@35d
    .line 2565
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
    .line 2567
    const/16 v32, 0x0

    #@36f
    .line 2568
    .local v32, "negExp":Z
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@372
    move-result v4

    #@373
    add-int v35, v6, v4

    #@375
    .line 2569
    .local v35, "pos":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@378
    move-result v4

    #@379
    move/from16 v0, v35

    #@37b
    if-ge v0, v4, :cond_2e

    #@37d
    .line 2570
    move-object/from16 v0, p1

    #@37f
    move/from16 v1, v35

    #@381
    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@384
    move-result v18

    #@385
    .line 2571
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
    .line 2572
    add-int/lit8 v35, v35, 0x1

    #@393
    .line 2579
    :cond_2e
    :goto_e
    new-instance v25, Landroid/icu/text/DigitList;

    #@395
    invoke-direct/range {v25 .. v25}, Landroid/icu/text/DigitList;-><init>()V

    #@398
    .line 2580
    .local v25, "exponentDigits":Landroid/icu/text/DigitList;
    const/4 v4, 0x0

    #@399
    move-object/from16 v0, v25

    #@39b
    iput v4, v0, Landroid/icu/text/DigitList;->count:I

    #@39d
    .line 2581
    :goto_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3a0
    move-result v4

    #@3a1
    move/from16 v0, v35

    #@3a3
    if-ge v0, v4, :cond_35

    #@3a5
    .line 2582
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
    .line 2583
    if-ltz v21, :cond_2f

    #@3b4
    const/16 v4, 0x9

    #@3b6
    move/from16 v0, v21

    #@3b8
    if-le v0, v4, :cond_30

    #@3ba
    .line 2587
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
    .line 2589
    :cond_30
    if-ltz v21, :cond_35

    #@3ca
    const/16 v4, 0x9

    #@3cc
    move/from16 v0, v21

    #@3ce
    if-gt v0, v4, :cond_35

    #@3d0
    .line 2590
    add-int/lit8 v4, v21, 0x30

    #@3d2
    int-to-char v4, v4

    #@3d3
    move-object/from16 v0, v25

    #@3d5
    invoke-virtual {v0, v4}, Landroid/icu/text/DigitList;->append(I)V

    #@3d8
    .line 2591
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
    .line 2589
    goto :goto_f

    #@3e7
    .line 2545
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
    .line 2546
    if-nez v37, :cond_11

    #@3f3
    .line 2549
    if-eqz v42, :cond_33

    #@3f5
    .line 2550
    if-eqz v38, :cond_32

    #@3f7
    const/4 v4, -0x1

    #@3f8
    move/from16 v0, v17

    #@3fa
    if-eq v0, v4, :cond_33

    #@3fc
    .line 2552
    :cond_32
    const/16 v41, 0x1

    #@3fe
    .line 2553
    goto/16 :goto_c

    #@400
    .line 2558
    :cond_33
    move/from16 v0, v18

    #@402
    int-to-char v0, v0

    #@403
    move/from16 v29, v0

    #@405
    .line 2563
    move/from16 v17, v6

    #@407
    .line 2564
    const/16 v40, 0x1

    #@409
    goto/16 :goto_d

    #@40b
    .line 2573
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
    .line 2574
    add-int/lit8 v35, v35, 0x1

    #@419
    .line 2575
    const/16 v32, 0x1

    #@41b
    goto/16 :goto_e

    #@41d
    .line 2597
    .restart local v25    # "exponentDigits":Landroid/icu/text/DigitList;
    :cond_35
    move-object/from16 v0, v25

    #@41f
    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    #@421
    if-lez v4, :cond_11

    #@423
    .line 2599
    if-eqz v42, :cond_37

    #@425
    .line 2600
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
    .line 2601
    :cond_36
    const/16 v41, 0x1

    #@431
    .line 2602
    goto/16 :goto_c

    #@433
    .line 2608
    :cond_37
    move-object/from16 v0, v25

    #@435
    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    #@437
    const/16 v5, 0xa

    #@439
    if-le v4, v5, :cond_3a

    #@43b
    .line 2609
    if-eqz v32, :cond_39

    #@43d
    .line 2611
    const/4 v4, 0x1

    #@43e
    const/4 v5, 0x2

    #@43f
    aput-boolean v4, p4, v5

    #@441
    .line 2623
    :cond_38
    :goto_10
    move/from16 v6, v35

    #@443
    .line 2624
    const/16 v39, 0x1

    #@445
    goto/16 :goto_c

    #@447
    .line 2614
    :cond_39
    const/4 v4, 0x1

    #@448
    const/4 v5, 0x0

    #@449
    aput-boolean v4, p4, v5

    #@44b
    goto :goto_10

    #@44c
    .line 2617
    :cond_3a
    move-object/from16 v0, v25

    #@44e
    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    #@450
    move-object/from16 v0, v25

    #@452
    iput v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@454
    .line 2618
    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/DigitList;->getLong()J

    #@457
    move-result-wide v26

    #@458
    .line 2619
    if-eqz v32, :cond_38

    #@45a
    .line 2620
    move-wide/from16 v0, v26

    #@45c
    neg-long v0, v0

    #@45d
    move-wide/from16 v26, v0

    #@45f
    goto :goto_10

    #@460
    .line 2641
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
    .line 2642
    move/from16 v6, v17

    #@467
    .line 2645
    :cond_3c
    if-nez v37, :cond_3d

    #@469
    .line 2646
    move/from16 v0, v22

    #@46b
    move-object/from16 v1, p3

    #@46d
    iput v0, v1, Landroid/icu/text/DigitList;->decimalAt:I

    #@46f
    .line 2649
    :cond_3d
    if-eqz v42, :cond_3e

    #@471
    if-eqz v37, :cond_3f

    #@473
    .line 2654
    :cond_3e
    :goto_11
    if-eqz v41, :cond_40

    #@475
    .line 2659
    move-object/from16 v0, p2

    #@477
    move/from16 v1, v34

    #@479
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@47c
    .line 2660
    move-object/from16 v0, p2

    #@47e
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@481
    .line 2661
    const/4 v4, 0x0

    #@482
    return v4

    #@483
    .line 2650
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
    .line 2651
    const/16 v41, 0x1

    #@49c
    goto :goto_11

    #@49d
    .line 2665
    :cond_40
    move-object/from16 v0, p3

    #@49f
    iget v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@4a1
    int-to-long v4, v4

    #@4a2
    add-long v26, v26, v4

    #@4a4
    .line 2666
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
    .line 2667
    const/4 v4, 0x1

    #@4af
    const/4 v5, 0x2

    #@4b0
    aput-boolean v4, p4, v5

    #@4b2
    .line 2677
    :goto_12
    if-nez v38, :cond_3

    #@4b4
    if-nez v22, :cond_3

    #@4b6
    .line 2678
    move-object/from16 v0, p2

    #@4b8
    move/from16 v1, v34

    #@4ba
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@4bd
    .line 2679
    move-object/from16 v0, p2

    #@4bf
    move/from16 v1, v34

    #@4c1
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@4c4
    .line 2680
    const/4 v4, 0x0

    #@4c5
    return v4

    #@4c6
    .line 2668
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
    .line 2669
    const/4 v4, 0x1

    #@4d0
    const/4 v5, 0x0

    #@4d1
    aput-boolean v4, p4, v5

    #@4d3
    goto :goto_12

    #@4d4
    .line 2671
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
    .line 2699
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
    .line 2700
    const/16 v36, -0x1

    #@4e4
    goto/16 :goto_2

    #@4e6
    .line 2705
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
    .line 2710
    :cond_46
    if-ltz v36, :cond_47

    #@4ef
    move/from16 v33, v36

    #@4f1
    .end local v33    # "negMatch":I
    :cond_47
    add-int v6, v6, v33

    #@4f3
    .line 2713
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
    .line 2714
    move-object/from16 v0, p0

    #@502
    move-object/from16 v1, p1

    #@504
    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    #@507
    move-result v6

    #@508
    .line 2717
    :cond_48
    move-object/from16 v0, p2

    #@50a
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    #@50d
    .line 2719
    if-ltz v36, :cond_49

    #@50f
    const/4 v4, 0x1

    #@510
    :goto_13
    const/4 v5, 0x1

    #@511
    aput-boolean v4, p4, v5

    #@513
    .line 2721
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@516
    move-result v4

    #@517
    move/from16 v0, v34

    #@519
    if-ne v4, v0, :cond_4a

    #@51b
    .line 2722
    move-object/from16 v0, p2

    #@51d
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@520
    .line 2723
    const/4 v4, 0x0

    #@521
    return v4

    #@522
    .line 2719
    :cond_49
    const/4 v4, 0x0

    #@523
    goto :goto_13

    #@524
    .line 2725
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
    .line 4374
    new-instance v17, Ljava/lang/StringBuffer;

    #@2
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 4375
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
    .line 4376
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
    .line 4377
    :goto_1
    const/16 v20, 0x0

    #@1f
    .line 4378
    .local v20, "sigDigit":C
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@22
    move-result v22

    #@23
    .line 4379
    .local v22, "useSigDig":Z
    if-eqz v22, :cond_0

    #@25
    .line 4380
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
    .line 4382
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
    .line 4384
    :goto_3
    const/16 v18, 0x0

    #@3f
    .line 4385
    .local v18, "roundingDecimalPos":I
    const/16 v19, 0x0

    #@41
    .line 4386
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
    .line 4387
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
    .line 4388
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
    .line 4389
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
    .line 4388
    :goto_5
    move-object/from16 v0, v25

    #@6e
    move/from16 v1, v24

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@73
    move-result-object v24

    #@74
    .line 4390
    move-object/from16 v0, p0

    #@76
    iget-char v0, v0, Landroid/icu/text/DecimalFormat;->pad:C

    #@78
    move/from16 v25, v0

    #@7a
    .line 4388
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7d
    move-result-object v24

    #@7e
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@81
    move-result-object v14

    #@82
    .line 4392
    :goto_6
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@86
    move-object/from16 v24, v0

    #@88
    if-eqz v24, :cond_1

    #@8a
    .line 4393
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
    .line 4394
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
    .line 4395
    .local v19, "roundingDigits":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@a7
    move-result v24

    #@a8
    sub-int v18, v24, v9

    #@aa
    .line 4397
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
    .line 4399
    if-nez v13, :cond_2

    #@b3
    .line 4400
    move-object/from16 v0, v17

    #@b5
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b8
    .line 4405
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
    .line 4406
    const/16 v24, 0x1

    #@cd
    move/from16 v0, v24

    #@cf
    if-ne v13, v0, :cond_3

    #@d1
    .line 4407
    move-object/from16 v0, v17

    #@d3
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d6
    .line 4409
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    #@d9
    move-result v21

    #@da
    .line 4410
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
    .line 4411
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
    .line 4412
    move-object/from16 v0, p0

    #@10e
    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@110
    move/from16 v24, v0

    #@112
    add-int v7, v7, v24

    #@114
    .line 4414
    :cond_4
    const/4 v10, 0x0

    #@115
    .local v10, "maxDig":I
    const/4 v12, 0x0

    #@116
    .local v12, "minDig":I
    const/4 v11, 0x0

    #@117
    .line 4415
    .local v11, "maxSigDig":I
    if-eqz v22, :cond_10

    #@119
    .line 4416
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    #@11c
    move-result v12

    #@11d
    .line 4417
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    #@120
    move-result v11

    #@121
    move v10, v11

    #@122
    .line 4422
    :goto_a
    move-object/from16 v0, p0

    #@124
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@126
    move/from16 v24, v0

    #@128
    if-eqz v24, :cond_11

    #@12a
    .line 4423
    const/16 v24, 0x8

    #@12c
    move/from16 v0, v24

    #@12e
    if-le v10, v0, :cond_5

    #@130
    .line 4424
    const/4 v10, 0x1

    #@131
    .line 4431
    :cond_5
    :goto_b
    move v9, v10

    #@132
    .restart local v9    # "i":I
    :goto_c
    if-lez v9, :cond_17

    #@134
    .line 4432
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
    .line 4433
    move-object/from16 v0, v17

    #@148
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@14b
    .line 4435
    :cond_6
    if-eqz v22, :cond_14

    #@14d
    .line 4440
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
    .line 4431
    :goto_e
    add-int/lit8 v9, v9, -0x1

    #@160
    goto :goto_c

    #@161
    .line 4375
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
    .line 4376
    .end local v23    # "zero":C
    :cond_8
    const/16 v6, 0x23

    #@167
    .local v6, "digit":C
    goto/16 :goto_1

    #@169
    .line 4380
    .end local v6    # "digit":C
    .restart local v20    # "sigDigit":C
    .restart local v22    # "useSigDig":Z
    :cond_9
    const/16 v20, 0x40

    #@16b
    goto/16 :goto_2

    #@16d
    .line 4382
    .end local v20    # "sigDigit":C
    :cond_a
    const/16 v8, 0x2c

    #@16f
    .local v8, "group":C
    goto/16 :goto_3

    #@171
    .line 4386
    .end local v8    # "group":C
    .restart local v18    # "roundingDecimalPos":I
    .local v19, "roundingDigits":Ljava/lang/String;
    :cond_b
    const/4 v13, -0x1

    #@172
    .restart local v13    # "padPos":I
    goto/16 :goto_4

    #@174
    .line 4390
    :cond_c
    const/16 v24, 0x2a

    #@176
    goto/16 :goto_5

    #@178
    .line 4391
    :cond_d
    const/4 v14, 0x0

    #@179
    .local v14, "padSpec":Ljava/lang/String;
    goto/16 :goto_6

    #@17b
    .line 4405
    .end local v14    # "padSpec":Ljava/lang/String;
    .end local v19    # "roundingDigits":Ljava/lang/String;
    .restart local v15    # "part":I
    :cond_e
    const/16 v24, 0x0

    #@17d
    goto/16 :goto_8

    #@17f
    .line 4410
    .restart local v21    # "sub0Start":I
    :cond_f
    const/4 v7, 0x0

    #@180
    .restart local v7    # "g":I
    goto/16 :goto_9

    #@182
    .line 4419
    .restart local v10    # "maxDig":I
    .restart local v11    # "maxSigDig":I
    .restart local v12    # "minDig":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@185
    move-result v12

    #@186
    .line 4420
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@189
    move-result v10

    #@18a
    goto :goto_a

    #@18b
    .line 4426
    :cond_11
    if-eqz v22, :cond_12

    #@18d
    .line 4427
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
    .line 4429
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
    .line 4440
    goto :goto_d

    #@1ae
    .line 4442
    :cond_14
    if-eqz v19, :cond_15

    #@1b0
    .line 4443
    sub-int v16, v18, v9

    #@1b2
    .line 4444
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
    .line 4445
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
    .line 4449
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
    .line 4452
    :cond_17
    if-nez v22, :cond_1e

    #@1e9
    .line 4453
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
    .line 4454
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
    .line 4457
    :cond_19
    move/from16 v16, v18

    #@20c
    .line 4458
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
    .line 4459
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
    .line 4460
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
    .line 4462
    add-int/lit8 v16, v16, 0x1

    #@22e
    .line 4458
    :goto_13
    add-int/lit8 v9, v9, 0x1

    #@230
    goto :goto_11

    #@231
    .line 4455
    .end local v16    # "pos":I
    :cond_1a
    const/16 v24, 0x2e

    #@233
    goto :goto_10

    #@234
    .line 4461
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
    .line 4465
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
    .line 4468
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
    .line 4469
    if-eqz p1, :cond_20

    #@265
    .line 4470
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
    .line 4474
    :goto_15
    move-object/from16 v0, p0

    #@278
    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@27a
    move/from16 v24, v0

    #@27c
    if-eqz v24, :cond_1f

    #@27e
    .line 4475
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
    .line 4477
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
    .line 4478
    move-object/from16 v0, v17

    #@29e
    move/from16 v1, v23

    #@2a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2a3
    .line 4477
    add-int/lit8 v9, v9, 0x1

    #@2a5
    goto :goto_17

    #@2a6
    .line 4472
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
    .line 4475
    :cond_21
    const/16 v24, 0x2b

    #@2b2
    goto :goto_16

    #@2b3
    .line 4481
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
    .line 4500
    :cond_23
    const/16 v24, 0x2

    #@2bf
    move/from16 v0, v24

    #@2c1
    if-ne v13, v0, :cond_24

    #@2c3
    .line 4501
    move-object/from16 v0, v17

    #@2c5
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c8
    .line 4505
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
    .line 4506
    const/16 v24, 0x3

    #@2dd
    move/from16 v0, v24

    #@2df
    if-ne v13, v0, :cond_25

    #@2e1
    .line 4507
    move-object/from16 v0, v17

    #@2e3
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e6
    .line 4509
    :cond_25
    if-nez v15, :cond_2c

    #@2e8
    .line 4510
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
    .line 4511
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
    .line 4510
    if-eqz v24, :cond_2b

    #@31f
    .line 4518
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
    .line 4482
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
    .line 4483
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    #@32d
    move-result v25

    #@32e
    .line 4482
    sub-int v24, v24, v25

    #@330
    add-int v25, v24, v21

    #@332
    .line 4485
    if-nez v15, :cond_29

    #@334
    .line 4486
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
    .line 4482
    :goto_19
    sub-int v5, v25, v24

    #@34c
    .line 4488
    .local v5, "add":I
    :cond_28
    :goto_1a
    if-lez v5, :cond_23

    #@34e
    .line 4489
    move-object/from16 v0, v17

    #@350
    move/from16 v1, v21

    #@352
    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@355
    .line 4490
    add-int/lit8 v10, v10, 0x1

    #@357
    .line 4491
    add-int/lit8 v5, v5, -0x1

    #@359
    .line 4494
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
    .line 4495
    move-object/from16 v0, v17

    #@369
    move/from16 v1, v21

    #@36b
    invoke-virtual {v0, v1, v8}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@36e
    .line 4496
    add-int/lit8 v5, v5, -0x1

    #@370
    goto :goto_1a

    #@371
    .line 4487
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
    .line 4505
    :cond_2a
    const/16 v24, 0x0

    #@38a
    goto/16 :goto_18

    #@38c
    .line 4514
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
    .line 4397
    :cond_2c
    add-int/lit8 v15, v15, 0x1

    #@3a1
    goto/16 :goto_7

    #@3a3
    .line 4514
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
    .line 2813
    const/4 v2, 0x0

    #@1
    .line 2814
    .local v2, "hasBidiMark":Z
    const/4 v3, 0x0

    #@2
    .line 2815
    .local v3, "idx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-ge v3, v4, :cond_0

    #@8
    .line 2816
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
    .line 2817
    const/4 v2, 0x1

    #@13
    .line 2821
    :cond_0
    if-nez v2, :cond_2

    #@15
    .line 2822
    return-object p0

    #@16
    .line 2815
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2825
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    .line 2826
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@1f
    invoke-virtual {v0, p0, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@22
    .line 2827
    add-int/lit8 v3, v3, 0x1

    #@24
    .line 2828
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@27
    move-result v4

    #@28
    if-ge v3, v4, :cond_4

    #@2a
    .line 2829
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v1

    #@2e
    .line 2830
    .local v1, "c":C
    invoke-static {v1}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_3

    #@34
    .line 2831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 2828
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 2835
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
    .line 3930
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 3931
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@a
    .line 3932
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v4

    #@e
    if-ge v2, v4, :cond_1

    #@10
    .line 3933
    add-int/lit8 v3, v2, 0x1

    #@12
    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v1

    #@16
    .line 3934
    .local v1, "ch":C
    const/16 v4, 0x27

    #@18
    if-eq v1, v4, :cond_0

    #@1a
    .line 3935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    :cond_0
    move v2, v3

    #@1e
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@1f
    .line 3938
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
    .line 5383
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 5385
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@8
    .line 5376
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
    .line 942
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 943
    return-wide p1

    #@7
    .line 945
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->multiply(D)D

    #@a
    move-result-wide v0

    #@b
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->round(D)D

    #@e
    move-result-wide p1

    #@f
    .line 946
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 947
    return-wide p1

    #@16
    .line 949
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
    .line 4569
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    #@4
    .line 4568
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4543
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    #@4
    .line 4542
    return-void
.end method

.method public areSignificantDigitsUsed()Z
    .locals 1

    #@0
    .prologue
    .line 5193
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@2
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 3864
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/DecimalFormat;

    #@6
    .line 3865
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
    .line 3866
    new-instance v2, Landroid/icu/text/DigitList;

    #@12
    invoke-direct {v2}, Landroid/icu/text/DigitList;-><init>()V

    #@15
    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@17
    .line 3867
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 3868
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
    .line 3870
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2a
    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@2c
    .line 3871
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@2e
    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 3876
    return-object v1

    #@31
    .line 3877
    .end local v1    # "other":Landroid/icu/text/DecimalFormat;
    :catch_0
    move-exception v0

    #@32
    .line 3878
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
    .line 3888
    if-nez p1, :cond_0

    #@3
    .line 3889
    return v1

    #@4
    .line 3890
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 3891
    return v1

    #@b
    :cond_1
    move-object v0, p1

    #@c
    .line 3893
    check-cast v0, Landroid/icu/text/DecimalFormat;

    #@e
    .line 3897
    .local v0, "other":Landroid/icu/text/DecimalFormat;
    iget v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@10
    iget v3, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@12
    if-ne v2, v3, :cond_5

    #@14
    .line 3898
    iget v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@16
    const/4 v3, 0x6

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 3899
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
    .line 3900
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@25
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@27
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    #@2a
    move-result v2

    #@2b
    .line 3899
    if-eqz v2, :cond_5

    #@2d
    .line 3901
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@2f
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@31
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    #@34
    move-result v2

    #@35
    .line 3899
    if-eqz v2, :cond_5

    #@37
    .line 3902
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@39
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@3b
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    #@3e
    move-result v2

    #@3f
    .line 3897
    if-eqz v2, :cond_5

    #@41
    .line 3903
    :cond_2
    iget v2, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@43
    iget v3, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@45
    if-ne v2, v3, :cond_5

    #@47
    .line 3904
    iget-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@49
    iget-byte v3, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@4b
    if-ne v2, v3, :cond_5

    #@4d
    .line 3905
    iget-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@4f
    iget-byte v3, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@51
    if-ne v2, v3, :cond_5

    #@53
    .line 3906
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@55
    iget-boolean v3, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@57
    if-ne v2, v3, :cond_5

    #@59
    .line 3907
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@5b
    iget-boolean v3, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@5d
    if-ne v2, v3, :cond_5

    #@5f
    .line 3908
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
    .line 3909
    :cond_3
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@6b
    iget-boolean v3, v0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@6d
    if-ne v2, v3, :cond_5

    #@6f
    .line 3910
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
    .line 3911
    iget v2, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@7b
    iget v3, v0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@7d
    if-ne v2, v3, :cond_5

    #@7f
    .line 3912
    :cond_4
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@81
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@83
    invoke-virtual {v2, v3}, Landroid/icu/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v2

    #@87
    .line 3897
    if-eqz v2, :cond_5

    #@89
    .line 3913
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@8b
    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@8d
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@90
    move-result v2

    #@91
    .line 3897
    if-eqz v2, :cond_5

    #@93
    .line 3914
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@95
    iget-object v2, v0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@97
    invoke-virtual {v1, v2}, Landroid/icu/util/Currency$CurrencyUsage;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v1

    #@9b
    .line 3897
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
    .line 783
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
    .line 1077
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
    .line 1199
    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@4
    if-eq v1, v6, :cond_0

    #@6
    .line 1200
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
    .line 1203
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1204
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@19
    iget v2, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@1b
    invoke-virtual {p1, v1, v0, v2}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;II)Landroid/icu/math/BigDecimal;

    #@1e
    move-result-object v1

    #@1f
    .line 1205
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@21
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@23
    .line 1204
    invoke-virtual {v1, v2, v3}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@26
    move-result-object p1

    #@27
    .line 1208
    :cond_1
    iget-object v9, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    #@29
    monitor-enter v9

    #@2a
    .line 1209
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
    .line 1210
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_2

    #@3b
    move v1, v0

    #@3c
    .line 1209
    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Landroid/icu/text/DigitList;->set(Landroid/icu/math/BigDecimal;IZ)V

    #@3f
    .line 1211
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@42
    move-result-wide v2

    #@43
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->signum()I

    #@46
    move-result v1

    #@47
    if-gez v1, :cond_4

    #@49
    .line 1212
    :goto_1
    const/4 v7, 0x0

    #@4a
    const/4 v8, 0x0

    #@4b
    move-object v1, p0

    #@4c
    move-object v4, p2

    #@4d
    move-object v5, p3

    #@4e
    .line 1211
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    move-result-object v0

    #@52
    monitor-exit v9

    #@53
    return-object v0

    #@54
    :cond_2
    move v1, v6

    #@55
    .line 1210
    goto :goto_0

    #@56
    :cond_3
    move v1, v0

    #@57
    .line 1209
    goto :goto_0

    #@58
    :cond_4
    move v6, v0

    #@59
    .line 1211
    goto :goto_1

    #@5a
    .line 1208
    :catchall_0
    move-exception v0

    #@5b
    monitor-exit v9

    #@5c
    throw v0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 1165
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
    .line 4264
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
    .line 4268
    instance-of v1, p1, Ljava/lang/Number;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 4269
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v1

    #@c
    :cond_0
    move-object v9, p1

    #@d
    .line 4270
    check-cast v9, Ljava/lang/Number;

    #@f
    .line 4271
    .local v9, "number":Ljava/lang/Number;
    new-instance v4, Ljava/lang/StringBuffer;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@14
    .line 4272
    .local v4, "text":Ljava/lang/StringBuffer;
    invoke-virtual {p2, v4}, Landroid/icu/text/DecimalFormat$Unit;->writePrefix(Ljava/lang/StringBuffer;)V

    #@17
    .line 4273
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 4274
    instance-of v1, p1, Ljava/math/BigInteger;

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 4275
    check-cast v9, Ljava/math/BigInteger;

    #@22
    .end local v9    # "number":Ljava/lang/Number;
    new-instance v1, Ljava/text/FieldPosition;

    #@24
    invoke-direct {v1, v11}, Ljava/text/FieldPosition;-><init>(I)V

    #@27
    invoke-direct {p0, v9, v4, v1, v6}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    #@2a
    .line 4286
    :goto_0
    invoke-virtual {p2, v4}, Landroid/icu/text/DecimalFormat$Unit;->writeSuffix(Ljava/lang/StringBuffer;)V

    #@2d
    .line 4287
    new-instance v0, Ljava/text/AttributedString;

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@36
    .line 4290
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
    .line 4291
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v10

    #@45
    check-cast v10, Ljava/text/FieldPosition;

    #@47
    .line 4292
    .local v10, "pos":Ljava/text/FieldPosition;
    invoke-virtual {v10}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@4a
    move-result-object v7

    #@4b
    .line 4293
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
    .line 4290
    add-int/lit8 v8, v8, 0x1

    #@58
    goto :goto_1

    #@59
    .line 4276
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
    .line 4277
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
    .line 4279
    .restart local v9    # "number":Ljava/lang/Number;
    :cond_2
    instance-of v1, p1, Ljava/lang/Double;

    #@6a
    if-eqz v1, :cond_3

    #@6c
    .line 4280
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
    .line 4281
    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    #@7c
    if-nez v1, :cond_4

    #@7e
    instance-of v1, p1, Ljava/lang/Long;

    #@80
    if-eqz v1, :cond_5

    #@82
    .line 4282
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
    .line 4284
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@92
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@95
    throw v1

    #@96
    .line 4297
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
    .line 3837
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
    .line 3838
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
    .line 3839
    :catch_0
    move-exception v0

    #@11
    .line 3840
    .local v0, "foo":Ljava/lang/Exception;
    return-object v2
.end method

.method public getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;
    .locals 1

    #@0
    .prologue
    .line 5278
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@2
    return-object v0
.end method

.method public getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 2

    #@0
    .prologue
    .line 3133
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
    .line 3134
    :catch_0
    move-exception v0

    #@a
    .line 3135
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
    .line 5291
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    #@3
    move-result-object v0

    #@4
    .line 5292
    .local v0, "c":Landroid/icu/util/Currency;
    if-nez v0, :cond_0

    #@6
    .line 5293
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
    .line 5295
    :cond_0
    return-object v0
.end method

.method getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;
    .locals 1
    .param p1, "number"    # D

    #@0
    .prologue
    .line 1268
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
    .line 1272
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
    .line 1277
    .local v8, "fractionalDigitsInDigitList":I
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@f
    if-eqz v2, :cond_3

    #@11
    .line 1278
    iget v2, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@13
    move-object/from16 v0, p3

    #@15
    iget v3, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@17
    sub-int v10, v2, v3

    #@19
    .line 1279
    .local v10, "maxFractionalDigits":I
    iget v2, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@1b
    move-object/from16 v0, p3

    #@1d
    iget v3, v0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1f
    sub-int v11, v2, v3

    #@21
    .line 1280
    .local v11, "minFractionalDigits":I
    if-gez v11, :cond_0

    #@23
    .line 1281
    const/4 v11, 0x0

    #@24
    .line 1283
    :cond_0
    if-gez v10, :cond_1

    #@26
    .line 1284
    const/4 v10, 0x0

    #@27
    .line 1290
    :cond_1
    :goto_0
    move v5, v8

    #@28
    .line 1291
    .local v5, "v":I
    if-ge v5, v11, :cond_4

    #@2a
    .line 1292
    move v5, v11

    #@2b
    .line 1296
    :cond_2
    :goto_1
    const-wide/16 v6, 0x0

    #@2d
    .line 1297
    .local v6, "f":J
    if-lez v5, :cond_6

    #@2f
    .line 1298
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
    .line 1299
    mul-long/2addr v6, v12

    #@3e
    .line 1300
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
    .line 1298
    add-int/lit8 v9, v9, 0x1

    #@4a
    goto :goto_2

    #@4b
    .line 1287
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
    .line 1288
    .restart local v10    # "maxFractionalDigits":I
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@52
    move-result v11

    #@53
    .restart local v11    # "minFractionalDigits":I
    goto :goto_0

    #@54
    .line 1293
    .restart local v5    # "v":I
    :cond_4
    if-le v5, v10, :cond_2

    #@56
    .line 1294
    move v5, v10

    #@57
    goto :goto_1

    #@58
    .line 1302
    .restart local v6    # "f":J
    .restart local v9    # "i":I
    :cond_5
    move v9, v5

    #@59
    :goto_3
    if-ge v9, v8, :cond_6

    #@5b
    .line 1303
    mul-long/2addr v6, v12

    #@5c
    .line 1302
    add-int/lit8 v9, v9, 0x1

    #@5e
    goto :goto_3

    #@5f
    .line 1306
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
    .line 3446
    iget v0, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@2
    return v0
.end method

.method public getGroupingSize()I
    .locals 1

    #@0
    .prologue
    .line 3668
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
    .line 3739
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
    .line 3740
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
    .line 3739
    invoke-direct {v2, v3, v4}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-object v1, v2

    #@1c
    goto :goto_0

    #@1d
    .line 3741
    :catch_0
    move-exception v0

    #@1e
    .line 3742
    .local v0, "foo":Ljava/lang/Exception;
    return-object v1
.end method

.method public getMathContextICU()Landroid/icu/math/MathContext;
    .locals 1

    #@0
    .prologue
    .line 3726
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@2
    return-object v0
.end method

.method public getMaximumSignificantDigits()I
    .locals 1

    #@0
    .prologue
    .line 5140
    iget v0, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@2
    return v0
.end method

.method public getMinimumExponentDigits()B
    .locals 1

    #@0
    .prologue
    .line 3598
    iget-byte v0, p0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@2
    return v0
.end method

.method public getMinimumSignificantDigits()I
    .locals 1

    #@0
    .prologue
    .line 5128
    iget v0, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@2
    return v0
.end method

.method public getMultiplier()I
    .locals 1

    #@0
    .prologue
    .line 3286
    iget v0, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@2
    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3211
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3259
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPadCharacter()C
    .locals 1

    #@0
    .prologue
    .line 3483
    iget-char v0, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@2
    return v0
.end method

.method public getPadPosition()I
    .locals 1

    #@0
    .prologue
    .line 3522
    iget v0, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@2
    return v0
.end method

.method public getParseMaxDigits()I
    .locals 1

    #@0
    .prologue
    .line 5373
    iget v0, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@2
    return v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3187
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3235
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
    .line 3318
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 3319
    return-object v1

    #@6
    .line 3320
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
    .line 3407
    iget v0, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@2
    return v0
.end method

.method public getSecondaryGroupingSize()I
    .locals 1

    #@0
    .prologue
    .line 3701
    iget-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 3970
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
    .line 3801
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@2
    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 1

    #@0
    .prologue
    .line 3777
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@2
    return v0
.end method

.method public isExponentSignAlwaysShown()Z
    .locals 1

    #@0
    .prologue
    .line 3636
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
    .line 970
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 971
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 973
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
    .line 5350
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@2
    return v0
.end method

.method public isScientificNotation()Z
    .locals 1

    #@0
    .prologue
    .line 3564
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
    .line 1872
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
    .line 1891
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [Landroid/icu/util/Currency;

    #@3
    .line 1892
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
    .line 5224
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@5
    .line 5225
    if-eqz p1, :cond_0

    #@7
    .line 5226
    const/4 v3, 0x1

    #@8
    new-array v1, v3, [Z

    #@a
    .line 5227
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
    .line 5229
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@16
    invoke-virtual {v3, p1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V

    #@19
    .line 5230
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@1b
    invoke-virtual {v3, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    #@1e
    .line 5233
    .end local v1    # "isChoiceFormat":[Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    iget v3, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 5234
    if-eqz p1, :cond_1

    #@24
    .line 5235
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@26
    invoke-virtual {p1, v3}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    #@29
    move-result-wide v4

    #@2a
    invoke-virtual {p0, v4, v5}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(D)V

    #@2d
    .line 5236
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@2f
    invoke-virtual {p1, v3}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    #@32
    move-result v0

    #@33
    .line 5237
    .local v0, "d":I
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@36
    .line 5238
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@39
    .line 5240
    .end local v0    # "d":I
    :cond_1
    iget v3, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    #@3b
    const/4 v4, 0x3

    #@3c
    if-eq v3, v4, :cond_2

    #@3e
    .line 5243
    invoke-direct {p0, v6}, Landroid/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    #@41
    .line 5218
    :cond_2
    return-void
.end method

.method public setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)V
    .locals 1
    .param p1, "newInfo"    # Landroid/icu/text/CurrencyPluralInfo;

    #@0
    .prologue
    .line 3853
    invoke-virtual {p1}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/CurrencyPluralInfo;

    #@6
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    #@8
    .line 3854
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    #@b
    .line 3852
    return-void
.end method

.method public setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V
    .locals 4
    .param p1, "newUsage"    # Landroid/icu/util/Currency$CurrencyUsage;

    #@0
    .prologue
    .line 5257
    if-nez p1, :cond_0

    #@2
    .line 5258
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "return value is null at method AAA"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 5260
    :cond_0
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@d
    .line 5261
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    #@10
    move-result-object v1

    #@11
    .line 5264
    .local v1, "theCurrency":Landroid/icu/util/Currency;
    if-eqz v1, :cond_1

    #@13
    .line 5265
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@15
    invoke-virtual {v1, v2}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    #@18
    move-result-wide v2

    #@19
    invoke-virtual {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(D)V

    #@1c
    .line 5266
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    #@1e
    invoke-virtual {v1, v2}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    #@21
    move-result v0

    #@22
    .line 5267
    .local v0, "d":I
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@25
    .line 5268
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@28
    .line 5256
    .end local v0    # "d":I
    :cond_1
    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 3148
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    #@6
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    #@8
    .line 3149
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    #@b
    .line 3150
    const/4 v0, 0x0

    #@c
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    #@f
    .line 3147
    return-void
.end method

.method public setDecimalPatternMatchRequired(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 3790
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    #@2
    .line 3789
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 3820
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    #@2
    .line 3819
    return-void
.end method

.method public setExponentSignAlwaysShown(Z)V
    .locals 0
    .param p1, "expSignAlways"    # Z

    #@0
    .prologue
    .line 3654
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    #@2
    .line 3653
    return-void
.end method

.method public setFormatWidth(I)V
    .locals 2
    .param p1, "width"    # I

    #@0
    .prologue
    .line 3465
    if-gez p1, :cond_0

    #@2
    .line 3466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal format width"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 3468
    :cond_0
    iput p1, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    #@d
    .line 3464
    return-void
.end method

.method public setGroupingSize(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 3682
    int-to-byte v0, p1

    #@1
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    #@3
    .line 3681
    return-void
.end method

.method public setMathContext(Ljava/math/MathContext;)V
    .locals 5
    .param p1, "newValue"    # Ljava/math/MathContext;

    #@0
    .prologue
    .line 3765
    new-instance v0, Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    #@5
    move-result v1

    #@6
    .line 3766
    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/math/RoundingMode;->ordinal()I

    #@d
    move-result v2

    #@e
    .line 3765
    const/4 v3, 0x1

    #@f
    const/4 v4, 0x0

    #@10
    invoke-direct {v0, v1, v3, v4, v2}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    #@13
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@15
    .line 3764
    return-void
.end method

.method public setMathContextICU(Landroid/icu/math/MathContext;)V
    .locals 0
    .param p1, "newValue"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 3754
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    #@2
    .line 3753
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 0
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5307
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    #@3
    .line 5308
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@6
    .line 5306
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5104
    const/16 v0, 0x135

    #@2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@9
    .line 5103
    return-void
.end method

.method public setMaximumSignificantDigits(I)V
    .locals 3
    .param p1, "max"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 5175
    if-ge p1, v2, :cond_0

    #@3
    .line 5176
    const/4 p1, 0x1

    #@4
    .line 5179
    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@6
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v0

    #@a
    .line 5180
    .local v0, "min":I
    iput v0, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@c
    .line 5181
    iput p1, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@e
    .line 5182
    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    #@11
    .line 5174
    return-void
.end method

.method public setMinimumExponentDigits(B)V
    .locals 2
    .param p1, "minExpDig"    # B

    #@0
    .prologue
    .line 3616
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 3617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Exponent digits must be >= 1"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 3619
    :cond_0
    iput-byte p1, p0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    #@e
    .line 3615
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5328
    const/16 v0, 0x154

    #@2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    #@9
    .line 5327
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5116
    const/16 v0, 0x135

    #@2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@9
    .line 5115
    return-void
.end method

.method public setMinimumSignificantDigits(I)V
    .locals 3
    .param p1, "min"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 5154
    if-ge p1, v2, :cond_0

    #@3
    .line 5155
    const/4 p1, 0x1

    #@4
    .line 5158
    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@6
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    .line 5159
    .local v0, "max":I
    iput p1, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    #@c
    .line 5160
    iput v0, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    #@e
    .line 5161
    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    #@11
    .line 5153
    return-void
.end method

.method public setMultiplier(I)V
    .locals 3
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 3301
    if-nez p1, :cond_0

    #@2
    .line 3302
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
    .line 3304
    :cond_0
    iput p1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    #@1e
    .line 3300
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3222
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    #@2
    .line 3223
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    #@5
    .line 3221
    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3270
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    #@2
    .line 3271
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    #@5
    .line 3269
    return-void
.end method

.method public setPadCharacter(C)V
    .locals 0
    .param p1, "padChar"    # C

    #@0
    .prologue
    .line 3499
    iput-char p1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    #@2
    .line 3498
    return-void
.end method

.method public setPadPosition(I)V
    .locals 2
    .param p1, "padPos"    # I

    #@0
    .prologue
    .line 3546
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 3547
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Illegal pad position"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 3549
    :cond_1
    iput p1, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    #@10
    .line 3545
    return-void
.end method

.method public setParseBigDecimal(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 5340
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    #@2
    .line 5339
    return-void
.end method

.method public setParseMaxDigits(I)V
    .locals 0
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 5361
    if-lez p1, :cond_0

    #@2
    .line 5362
    iput p1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    #@4
    .line 5360
    :cond_0
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3198
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    #@2
    .line 3199
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    #@5
    .line 3197
    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3246
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    #@2
    .line 3247
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    #@5
    .line 3245
    return-void
.end method

.method public setRoundingIncrement(D)V
    .locals 5
    .param p1, "newValue"    # D

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 3381
    cmpg-double v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 3382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Illegal rounding increment"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 3384
    :cond_0
    cmpl-double v0, p1, v2

    #@11
    if-nez v0, :cond_1

    #@13
    .line 3385
    const/4 v0, 0x0

    #@14
    check-cast v0, Landroid/icu/math/BigDecimal;

    #@16
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@19
    .line 3391
    :goto_0
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@1c
    .line 3380
    return-void

    #@1d
    .line 3389
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
    .line 3356
    if-nez p1, :cond_0

    #@3
    const/4 v0, 0x0

    #@4
    .line 3357
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    #@6
    .line 3358
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Illegal rounding increment"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 3356
    .end local v0    # "i":I
    :cond_0
    sget-object v1, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@11
    invoke-virtual {p1, v1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    #@14
    move-result v0

    #@15
    .restart local v0    # "i":I
    goto :goto_0

    #@16
    .line 3360
    :cond_1
    if-nez v0, :cond_2

    #@18
    .line 3361
    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@1b
    .line 3365
    :goto_1
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@1e
    .line 3355
    return-void

    #@1f
    .line 3363
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
    .line 3336
    if-nez p1, :cond_0

    #@3
    .line 3337
    check-cast v0, Landroid/icu/math/BigDecimal;

    #@5
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    #@8
    .line 3335
    :goto_0
    return-void

    #@9
    .line 3339
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
    .line 3425
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x7

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 3426
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
    .line 3429
    :cond_1
    iput p1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    #@21
    .line 3430
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    #@24
    .line 3424
    return-void
.end method

.method public setScientificNotation(Z)V
    .locals 0
    .param p1, "useScientific"    # Z

    #@0
    .prologue
    .line 3583
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    #@2
    .line 3582
    return-void
.end method

.method public setSecondaryGroupingSize(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 3715
    int-to-byte v0, p1

    #@1
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    #@3
    .line 3714
    return-void
.end method

.method public setSignificantDigitsUsed(Z)V
    .locals 0
    .param p1, "useSignificantDigits"    # Z

    #@0
    .prologue
    .line 5205
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    #@2
    .line 5204
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
    .line 954
    new-instance v0, Landroid/icu/text/DigitList;

    #@3
    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    #@6
    .line 955
    .local v0, "result":Landroid/icu/text/DigitList;
    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/icu/text/DigitList;->set(DIZ)V

    #@d
    .line 956
    return-object v0
.end method

.method public toLocalizedPattern()Ljava/lang/String;
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
    .line 4001
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 4003
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
    .line 3982
    iget v0, p0, Landroid/icu/text/DecimalFormat;->style:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 3987
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 3989
    :cond_0
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->toPattern(Z)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.class public final Llibcore/icu/NativeDecimalFormat;
.super Ljava/lang/Object;
.source "NativeDecimalFormat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    }
.end annotation


# static fields
.field private static synthetic -java_math_RoundingModeSwitchesValues:[I = null

.field private static final ICU4C_FIELD_IDS:[Ljava/text/Format$Field;

.field private static final UNUM_CURRENCY_CODE:I = 0x5

.field private static final UNUM_CURRENCY_SYMBOL:I = 0x8

.field private static final UNUM_DECIMAL_ALWAYS_SHOWN:I = 0x2

.field private static final UNUM_DECIMAL_SEPARATOR_SYMBOL:I = 0x0

.field private static final UNUM_DEFAULT_RULESET:I = 0x6

.field private static final UNUM_DIGIT_SYMBOL:I = 0x5

.field private static final UNUM_EXPONENTIAL_SYMBOL:I = 0xb

.field private static final UNUM_FORMAT_SYMBOL_COUNT:I = 0x12

.field private static final UNUM_FORMAT_WIDTH:I = 0xd

.field private static final UNUM_FRACTION_DIGITS:I = 0x8

.field private static final UNUM_GROUPING_SEPARATOR_SYMBOL:I = 0x1

.field private static final UNUM_GROUPING_SIZE:I = 0xa

.field private static final UNUM_GROUPING_USED:I = 0x1

.field private static final UNUM_INFINITY_SYMBOL:I = 0xe

.field private static final UNUM_INTEGER_DIGITS:I = 0x5

.field private static final UNUM_INTL_CURRENCY_SYMBOL:I = 0x9

.field private static final UNUM_LENIENT_PARSE:I = 0x13

.field private static final UNUM_MAX_FRACTION_DIGITS:I = 0x6

.field private static final UNUM_MAX_INTEGER_DIGITS:I = 0x3

.field private static final UNUM_MAX_SIGNIFICANT_DIGITS:I = 0x12

.field private static final UNUM_MINUS_SIGN_SYMBOL:I = 0x6

.field private static final UNUM_MIN_FRACTION_DIGITS:I = 0x7

.field private static final UNUM_MIN_INTEGER_DIGITS:I = 0x4

.field private static final UNUM_MIN_SIGNIFICANT_DIGITS:I = 0x11

.field private static final UNUM_MONETARY_GROUPING_SEPARATOR_SYMBOL:I = 0x11

.field private static final UNUM_MONETARY_SEPARATOR_SYMBOL:I = 0xa

.field private static final UNUM_MULTIPLIER:I = 0x9

.field private static final UNUM_NAN_SYMBOL:I = 0xf

.field private static final UNUM_NEGATIVE_PREFIX:I = 0x2

.field private static final UNUM_NEGATIVE_SUFFIX:I = 0x3

.field private static final UNUM_PADDING_CHARACTER:I = 0x4

.field private static final UNUM_PADDING_POSITION:I = 0xe

.field private static final UNUM_PAD_ESCAPE_SYMBOL:I = 0xd

.field private static final UNUM_PARSE_INT_ONLY:I = 0x0

.field private static final UNUM_PATTERN_SEPARATOR_SYMBOL:I = 0x2

.field private static final UNUM_PERCENT_SYMBOL:I = 0x3

.field private static final UNUM_PERMILL_SYMBOL:I = 0xc

.field private static final UNUM_PLUS_SIGN_SYMBOL:I = 0x7

.field private static final UNUM_POSITIVE_PREFIX:I = 0x0

.field private static final UNUM_POSITIVE_SUFFIX:I = 0x1

.field private static final UNUM_PUBLIC_RULESETS:I = 0x7

.field private static final UNUM_ROUNDING_INCREMENT:I = 0xc

.field private static final UNUM_ROUNDING_MODE:I = 0xb

.field private static final UNUM_SECONDARY_GROUPING_SIZE:I = 0xf

.field private static final UNUM_SIGNIFICANT_DIGITS_USED:I = 0x10

.field private static final UNUM_SIGNIFICANT_DIGIT_SYMBOL:I = 0x10

.field private static final UNUM_ZERO_DIGIT_SYMBOL:I = 0x4


# instance fields
.field private address:J

.field private lastPattern:Ljava/lang/String;

.field private negPrefNull:Z

.field private negSuffNull:Z

.field private transient parseBigDecimal:Z

.field private posPrefNull:Z

.field private posSuffNull:Z


# direct methods
.method static synthetic -get0()[Ljava/text/Format$Field;
    .locals 1

    #@0
    sget-object v0, Llibcore/icu/NativeDecimalFormat;->ICU4C_FIELD_IDS:[Ljava/text/Format$Field;

    #@2
    return-object v0
.end method

.method private static synthetic -getjava_math_RoundingModeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Llibcore/icu/NativeDecimalFormat;->-java_math_RoundingModeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Llibcore/icu/NativeDecimalFormat;->-java_math_RoundingModeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    #@10
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    #@19
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    #@22
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    #@2b
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@34
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    #@3d
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    #@46
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    #@4f
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    #@57
    :goto_7
    sput-object v0, Llibcore/icu/NativeDecimalFormat;->-java_math_RoundingModeSwitchesValues:[I

    #@59
    return-object v0

    #@5a
    :catch_0
    move-exception v1

    #@5b
    goto :goto_7

    #@5c
    :catch_1
    move-exception v1

    #@5d
    goto :goto_6

    #@5e
    :catch_2
    move-exception v1

    #@5f
    goto :goto_5

    #@60
    :catch_3
    move-exception v1

    #@61
    goto :goto_4

    #@62
    :catch_4
    move-exception v1

    #@63
    goto :goto_3

    #@64
    :catch_5
    move-exception v1

    #@65
    goto :goto_2

    #@66
    :catch_6
    move-exception v1

    #@67
    goto :goto_1

    #@68
    :catch_7
    move-exception v1

    #@69
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 97
    const/16 v0, 0xb

    #@2
    new-array v0, v0, [Ljava/text/Format$Field;

    #@4
    .line 102
    sget-object v1, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 103
    sget-object v1, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    #@b
    const/4 v2, 0x1

    #@c
    aput-object v1, v0, v2

    #@e
    .line 104
    sget-object v1, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@10
    const/4 v2, 0x2

    #@11
    aput-object v1, v0, v2

    #@13
    .line 105
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    #@15
    const/4 v2, 0x3

    #@16
    aput-object v1, v0, v2

    #@18
    .line 106
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    #@1a
    const/4 v2, 0x4

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 107
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    #@1f
    const/4 v2, 0x5

    #@20
    aput-object v1, v0, v2

    #@22
    .line 108
    sget-object v1, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@24
    const/4 v2, 0x6

    #@25
    aput-object v1, v0, v2

    #@27
    .line 109
    sget-object v1, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    #@29
    const/4 v2, 0x7

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 110
    sget-object v1, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    #@2e
    const/16 v2, 0x8

    #@30
    aput-object v1, v0, v2

    #@32
    .line 111
    sget-object v1, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    #@34
    const/16 v2, 0x9

    #@36
    aput-object v1, v0, v2

    #@38
    .line 112
    sget-object v1, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    #@3a
    const/16 v2, 0xa

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 97
    sput-object v0, Llibcore/icu/NativeDecimalFormat;->ICU4C_FIELD_IDS:[Ljava/text/Format$Field;

    #@40
    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 19
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "dfs"    # Ljava/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 157
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@a
    move-result v4

    #@b
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    #@e
    move-result v5

    #@f
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    #@12
    move-result-object v6

    #@13
    .line 158
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@16
    move-result v7

    #@17
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@1a
    move-result-object v8

    #@1b
    .line 159
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    #@22
    move-result-object v10

    #@23
    .line 160
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    #@26
    move-result v11

    #@27
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@2a
    move-result-object v12

    #@2b
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    #@2e
    move-result v13

    #@2f
    .line 161
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    #@32
    move-result-object v14

    #@33
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    #@36
    move-result v15

    #@37
    invoke-virtual/range {p2 .. p2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    #@3a
    move-result v16

    #@3b
    move-object/from16 v2, p1

    #@3d
    .line 156
    invoke-static/range {v2 .. v16}, Llibcore/icu/NativeDecimalFormat;->open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)J

    #@40
    move-result-wide v2

    #@41
    move-object/from16 v0, p0

    #@43
    iput-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@45
    .line 162
    move-object/from16 v0, p1

    #@47
    move-object/from16 v1, p0

    #@49
    iput-object v0, v1, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 154
    return-void

    #@4c
    .line 165
    :catch_0
    move-exception v18

    #@4d
    .line 166
    .local v18, "re":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4f
    new-instance v3, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v4, "syntax error: "

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    const-string/jumbo v4, ": "

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    move-object/from16 v0, p1

    #@6c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@77
    throw v2

    #@78
    .line 163
    .end local v18    # "re":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v17

    #@79
    .line 164
    .local v17, "npe":Ljava/lang/NullPointerException;
    throw v17
.end method

.method public constructor <init>(Ljava/lang/String;Llibcore/icu/LocaleData;)V
    .locals 17
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "data"    # Llibcore/icu/LocaleData;

    #@0
    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 172
    move-object/from16 v0, p2

    #@5
    iget-object v3, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    #@7
    .line 173
    move-object/from16 v0, p2

    #@9
    iget-char v4, v0, Llibcore/icu/LocaleData;->decimalSeparator:C

    #@b
    move-object/from16 v0, p2

    #@d
    iget-object v6, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    #@f
    move-object/from16 v0, p2

    #@11
    iget-char v7, v0, Llibcore/icu/LocaleData;->groupingSeparator:C

    #@13
    .line 174
    move-object/from16 v0, p2

    #@15
    iget-object v8, v0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    #@17
    move-object/from16 v0, p2

    #@19
    iget-object v9, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    #@1b
    move-object/from16 v0, p2

    #@1d
    iget-object v10, v0, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    #@1f
    .line 175
    move-object/from16 v0, p2

    #@21
    iget-char v11, v0, Llibcore/icu/LocaleData;->monetarySeparator:C

    #@23
    move-object/from16 v0, p2

    #@25
    iget-object v12, v0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    #@27
    move-object/from16 v0, p2

    #@29
    iget-char v13, v0, Llibcore/icu/LocaleData;->patternSeparator:C

    #@2b
    .line 176
    move-object/from16 v0, p2

    #@2d
    iget-object v14, v0, Llibcore/icu/LocaleData;->percent:Ljava/lang/String;

    #@2f
    move-object/from16 v0, p2

    #@31
    iget-char v15, v0, Llibcore/icu/LocaleData;->perMill:C

    #@33
    move-object/from16 v0, p2

    #@35
    iget-char v0, v0, Llibcore/icu/LocaleData;->zeroDigit:C

    #@37
    move/from16 v16, v0

    #@39
    .line 173
    const/16 v5, 0x23

    #@3b
    move-object/from16 v2, p1

    #@3d
    .line 172
    invoke-static/range {v2 .. v16}, Llibcore/icu/NativeDecimalFormat;->open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)J

    #@40
    move-result-wide v2

    #@41
    move-object/from16 v0, p0

    #@43
    iput-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@45
    .line 177
    move-object/from16 v0, p1

    #@47
    move-object/from16 v1, p0

    #@49
    iput-object v0, v1, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    #@4b
    .line 171
    return-void
.end method

.method private static applyPattern(JZLjava/lang/String;)V
    .locals 6
    .param p0, "addr"    # J
    .param p2, "localized"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 551
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/icu/NativeDecimalFormat;->applyPatternImpl(JZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 549
    return-void

    #@4
    .line 554
    :catch_0
    move-exception v1

    #@5
    .line 555
    .local v1, "re":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "syntax error: "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    const-string/jumbo v4, ": "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 552
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    #@2f
    .line 553
    .local v0, "npe":Ljava/lang/NullPointerException;
    throw v0
.end method

.method private static native applyPatternImpl(JZLjava/lang/String;)V
.end method

.method private static native cloneImpl(J)J
.end method

.method private static native close(J)V
.end method

.method private static native formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native formatDouble(JDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native formatLong(JJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C
.end method

.method private static native getAttribute(JI)I
.end method

.method private static native getTextAttribute(JI)Ljava/lang/String;
.end method

.method private makeScalePositive(ILjava/lang/StringBuilder;)I
    .locals 2
    .param p1, "scale"    # I
    .param p2, "val"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 377
    if-gez p1, :cond_1

    #@2
    .line 378
    neg-int p1, p1

    #@3
    .line 379
    move v0, p1

    #@4
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@6
    .line 380
    const/16 v1, 0x30

    #@8
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b
    .line 379
    add-int/lit8 v0, v0, -0x1

    #@d
    goto :goto_0

    #@e
    .line 382
    :cond_0
    const/4 p1, 0x0

    #@f
    .line 384
    .end local v0    # "i":I
    :cond_1
    return p1
.end method

.method private static native open(Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)J
.end method

.method private static native parse(JLjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;
.end method

.method private static native setAttribute(JII)V
.end method

.method private static native setDecimalFormatSymbols(JLjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)V
.end method

.method private static native setRoundingMode(JID)V
.end method

.method private static native setSymbol(JILjava/lang/String;)V
.end method

.method private static native setTextAttribute(JILjava/lang/String;)V
.end method

.method private static native toPatternImpl(JZ)Ljava/lang/String;
.end method

.method private static translateFieldId(Ljava/text/FieldPosition;)I
    .locals 5
    .param p0, "fp"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 116
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getField()I

    #@4
    move-result v2

    #@5
    .line 117
    .local v2, "id":I
    if-lt v2, v4, :cond_0

    #@7
    const/4 v3, 0x1

    #@8
    if-le v2, v3, :cond_1

    #@a
    .line 118
    :cond_0
    const/4 v2, -0x1

    #@b
    .line 120
    :cond_1
    if-ne v2, v4, :cond_2

    #@d
    .line 121
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@10
    move-result-object v0

    #@11
    .line 122
    .local v0, "attr":Ljava/text/Format$Field;
    if-eqz v0, :cond_2

    #@13
    .line 123
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    sget-object v3, Llibcore/icu/NativeDecimalFormat;->ICU4C_FIELD_IDS:[Ljava/text/Format$Field;

    #@16
    array-length v3, v3

    #@17
    if-ge v1, v3, :cond_2

    #@19
    .line 124
    sget-object v3, Llibcore/icu/NativeDecimalFormat;->ICU4C_FIELD_IDS:[Ljava/text/Format$Field;

    #@1b
    aget-object v3, v3, v1

    #@1d
    invoke-virtual {v3, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 125
    move v2, v1

    #@24
    .line 131
    .end local v0    # "attr":Ljava/text/Format$Field;
    .end local v1    # "i":I
    :cond_2
    return v2

    #@25
    .line 123
    .restart local v0    # "attr":Ljava/text/Format$Field;
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0
.end method

.method private static updateFieldPosition(Ljava/text/FieldPosition;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V
    .locals 2
    .param p0, "fp"    # Ljava/text/FieldPosition;
    .param p1, "fpi"    # Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    #@0
    .prologue
    .line 320
    invoke-static {p0}, Llibcore/icu/NativeDecimalFormat;->translateFieldId(Ljava/text/FieldPosition;)I

    #@3
    move-result v0

    #@4
    .line 321
    .local v0, "field":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_1

    #@7
    .line 322
    :cond_0
    invoke-virtual {p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->next()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 323
    invoke-virtual {p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fieldId()I

    #@10
    move-result v1

    #@11
    if-ne v1, v0, :cond_0

    #@13
    .line 324
    invoke-virtual {p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->start()I

    #@16
    move-result v1

    #@17
    invoke-virtual {p0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@1a
    .line 325
    invoke-virtual {p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->limit()I

    #@1d
    move-result v1

    #@1e
    invoke-virtual {p0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@21
    .line 326
    return-void

    #@22
    .line 319
    :cond_1
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 333
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x1

    #@3
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(JZLjava/lang/String;)V

    #@6
    .line 334
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    #@9
    .line 332
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 339
    return-void

    #@d
    .line 341
    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(JZLjava/lang/String;)V

    #@13
    .line 342
    iput-object p1, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    #@15
    .line 337
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 197
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Llibcore/icu/NativeDecimalFormat;

    #@6
    .line 198
    .local v0, "clone":Llibcore/icu/NativeDecimalFormat;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@8
    invoke-static {v2, v3}, Llibcore/icu/NativeDecimalFormat;->cloneImpl(J)J

    #@b
    move-result-wide v2

    #@c
    iput-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@e
    .line 199
    iget-object v2, p0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    #@10
    iput-object v2, v0, Llibcore/icu/NativeDecimalFormat;->lastPattern:Ljava/lang/String;

    #@12
    .line 200
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    #@14
    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    #@16
    .line 201
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    #@18
    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    #@1a
    .line 202
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    #@1c
    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    #@1e
    .line 203
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    #@20
    iput-boolean v2, v0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 204
    return-object v0

    #@23
    .line 205
    .end local v0    # "clone":Llibcore/icu/NativeDecimalFormat;
    :catch_0
    move-exception v1

    #@24
    .line 206
    .local v1, "unexpected":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@29
    throw v2
.end method

.method public declared-synchronized close()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 181
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 182
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@b
    invoke-static {v0, v1}, Llibcore/icu/NativeDecimalFormat;->close(J)V

    #@e
    .line 183
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 180
    return-void

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 222
    if-ne p1, p0, :cond_0

    #@4
    .line 223
    return v1

    #@5
    .line 225
    :cond_0
    instance-of v3, p1, Llibcore/icu/NativeDecimalFormat;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 226
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 228
    check-cast v0, Llibcore/icu/NativeDecimalFormat;

    #@d
    .line 229
    .local v0, "obj":Llibcore/icu/NativeDecimalFormat;
    iget-wide v4, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@f
    iget-wide v6, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@11
    cmp-long v3, v4, v6

    #@13
    if-nez v3, :cond_2

    #@15
    .line 230
    return v1

    #@16
    .line 232
    :cond_2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_4

    #@24
    .line 233
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    #@27
    move-result v3

    #@28
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    #@2b
    move-result v4

    #@2c
    if-ne v3, v4, :cond_4

    #@2e
    .line 234
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    #@31
    move-result v3

    #@32
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    #@35
    move-result v4

    #@36
    if-ne v3, v4, :cond_4

    #@38
    .line 235
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    #@3b
    move-result v3

    #@3c
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    #@3f
    move-result v4

    #@40
    if-ne v3, v4, :cond_4

    #@42
    .line 236
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v3

    #@4e
    .line 232
    if-eqz v3, :cond_4

    #@50
    .line 237
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v3

    #@5c
    .line 232
    if-eqz v3, :cond_4

    #@5e
    .line 238
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v3

    #@6a
    .line 232
    if-eqz v3, :cond_4

    #@6c
    .line 239
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v3

    #@78
    .line 232
    if-eqz v3, :cond_4

    #@7a
    .line 240
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    #@7d
    move-result v3

    #@7e
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    #@81
    move-result v4

    #@82
    if-ne v3, v4, :cond_4

    #@84
    .line 241
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    #@87
    move-result v3

    #@88
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    #@8b
    move-result v4

    #@8c
    if-ne v3, v4, :cond_4

    #@8e
    .line 242
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    #@91
    move-result v3

    #@92
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    #@95
    move-result v4

    #@96
    if-ne v3, v4, :cond_4

    #@98
    .line 243
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    #@9b
    move-result v3

    #@9c
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    #@9f
    move-result v4

    #@a0
    if-ne v3, v4, :cond_4

    #@a2
    .line 244
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    #@a5
    move-result v3

    #@a6
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    #@a9
    move-result v4

    #@aa
    if-ne v3, v4, :cond_3

    #@ac
    .line 232
    :goto_0
    return v1

    #@ad
    :cond_3
    move v1, v2

    #@ae
    .line 244
    goto :goto_0

    #@af
    :cond_4
    move v1, v2

    #@b0
    .line 232
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 191
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 187
    return-void

    #@7
    .line 190
    :catchall_0
    move-exception v0

    #@8
    .line 191
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 190
    throw v0
.end method

.method public formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C
    .locals 5
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "field"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 284
    invoke-static {p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    #@3
    move-result-object v0

    #@4
    .line 285
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@6
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    invoke-static {v2, v3, v4, v0}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    #@d
    move-result-object v1

    #@e
    .line 286
    .local v1, "result":[C
    if-eqz v0, :cond_0

    #@10
    if-eqz p2, :cond_0

    #@12
    .line 287
    invoke-static {p2, v0}, Llibcore/icu/NativeDecimalFormat;->updateFieldPosition(Ljava/text/FieldPosition;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V

    #@15
    .line 289
    :cond_0
    return-object v1
.end method

.method public formatBigInteger(Ljava/math/BigInteger;Ljava/text/FieldPosition;)[C
    .locals 5
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "field"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 293
    invoke-static {p2}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    #@3
    move-result-object v0

    #@4
    .line 294
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@6
    const/16 v4, 0xa

    #@8
    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-static {v2, v3, v4, v0}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    #@f
    move-result-object v1

    #@10
    .line 295
    .local v1, "result":[C
    if-eqz v0, :cond_0

    #@12
    if-eqz p2, :cond_0

    #@14
    .line 296
    invoke-static {p2, v0}, Llibcore/icu/NativeDecimalFormat;->updateFieldPosition(Ljava/text/FieldPosition;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V

    #@17
    .line 298
    :cond_0
    return-object v1
.end method

.method public formatDouble(DLjava/text/FieldPosition;)[C
    .locals 5
    .param p1, "value"    # D
    .param p3, "field"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 311
    invoke-static {p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    #@3
    move-result-object v0

    #@4
    .line 312
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@6
    invoke-static {v2, v3, p1, p2, v0}, Llibcore/icu/NativeDecimalFormat;->formatDouble(JDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    #@9
    move-result-object v1

    #@a
    .line 313
    .local v1, "result":[C
    if-eqz v0, :cond_0

    #@c
    if-eqz p3, :cond_0

    #@e
    .line 314
    invoke-static {p3, v0}, Llibcore/icu/NativeDecimalFormat;->updateFieldPosition(Ljava/text/FieldPosition;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V

    #@11
    .line 316
    :cond_0
    return-object v1
.end method

.method public formatLong(JLjava/text/FieldPosition;)[C
    .locals 5
    .param p1, "value"    # J
    .param p3, "field"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 302
    invoke-static {p3}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    #@3
    move-result-object v0

    #@4
    .line 303
    .local v0, "fpi":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@6
    invoke-static {v2, v3, p1, p2, v0}, Llibcore/icu/NativeDecimalFormat;->formatLong(JJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    #@9
    move-result-object v1

    #@a
    .line 304
    .local v1, "result":[C
    if-eqz v0, :cond_0

    #@c
    if-eqz p3, :cond_0

    #@e
    .line 305
    invoke-static {p3, v0}, Llibcore/icu/NativeDecimalFormat;->updateFieldPosition(Ljava/text/FieldPosition;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V

    #@11
    .line 307
    :cond_0
    return-object v1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 346
    if-nez p1, :cond_0

    #@3
    .line 347
    new-instance v9, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v10, "object == null"

    #@8
    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v9

    #@c
    .line 349
    :cond_0
    instance-of v9, p1, Ljava/lang/Number;

    #@e
    if-nez v9, :cond_1

    #@10
    .line 350
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v10, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v11, "object not a Number: "

    #@1a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v10

    #@1e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@21
    move-result-object v11

    #@22
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v10

    #@26
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v10

    #@2a
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v9

    #@2e
    :cond_1
    move-object v5, p1

    #@2f
    .line 352
    check-cast v5, Ljava/lang/Number;

    #@31
    .line 353
    .local v5, "number":Ljava/lang/Number;
    new-instance v4, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    #@33
    invoke-direct {v4, v10}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)V

    #@36
    .line 355
    .local v4, "fpIter":Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    instance-of v9, v5, Ljava/math/BigInteger;

    #@38
    if-nez v9, :cond_2

    #@3a
    instance-of v9, v5, Ljava/math/BigDecimal;

    #@3c
    if-eqz v9, :cond_3

    #@3e
    .line 356
    :cond_2
    new-instance v8, Ljava/lang/String;

    #@40
    iget-wide v10, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@42
    invoke-virtual {v5}, Ljava/lang/Number;->toString()Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    invoke-static {v10, v11, v9, v4}, Llibcore/icu/NativeDecimalFormat;->formatDigitList(JLjava/lang/String;Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    #@49
    move-result-object v9

    #@4a
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    #@4d
    .line 365
    .local v8, "text":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/text/AttributedString;

    #@4f
    invoke-direct {v0, v8}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@52
    .line 367
    .local v0, "as":Ljava/text/AttributedString;
    :goto_1
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->next()Z

    #@55
    move-result v9

    #@56
    if-eqz v9, :cond_6

    #@58
    .line 368
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->field()Ljava/text/Format$Field;

    #@5b
    move-result-object v1

    #@5c
    .line 369
    .local v1, "field":Ljava/text/Format$Field;
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->start()I

    #@5f
    move-result v9

    #@60
    invoke-virtual {v4}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->limit()I

    #@63
    move-result v10

    #@64
    invoke-virtual {v0, v1, v1, v9, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@67
    goto :goto_1

    #@68
    .line 357
    .end local v0    # "as":Ljava/text/AttributedString;
    .end local v1    # "field":Ljava/text/Format$Field;
    .end local v8    # "text":Ljava/lang/String;
    :cond_3
    instance-of v9, v5, Ljava/lang/Double;

    #@6a
    if-nez v9, :cond_4

    #@6c
    instance-of v9, v5, Ljava/lang/Float;

    #@6e
    if-eqz v9, :cond_5

    #@70
    .line 358
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    #@73
    move-result-wide v2

    #@74
    .line 359
    .local v2, "dv":D
    new-instance v8, Ljava/lang/String;

    #@76
    iget-wide v10, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@78
    invoke-static {v10, v11, v2, v3, v4}, Llibcore/icu/NativeDecimalFormat;->formatDouble(JDLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    #@7b
    move-result-object v9

    #@7c
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    #@7f
    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_0

    #@80
    .line 361
    .end local v2    # "dv":D
    .end local v8    # "text":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    #@83
    move-result-wide v6

    #@84
    .line 362
    .local v6, "lv":J
    new-instance v8, Ljava/lang/String;

    #@86
    iget-wide v10, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@88
    invoke-static {v10, v11, v6, v7, v4}, Llibcore/icu/NativeDecimalFormat;->formatLong(JJLlibcore/icu/NativeDecimalFormat$FieldPositionIterator;)[C

    #@8b
    move-result-object v9

    #@8c
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    #@8f
    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_0

    #@90
    .line 373
    .end local v6    # "lv":J
    .restart local v0    # "as":Ljava/text/AttributedString;
    :cond_6
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@93
    move-result-object v9

    #@94
    return-object v9
.end method

.method public getGroupingSize()I
    .locals 3

    #@0
    .prologue
    .line 419
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 420
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 422
    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@a
    const/16 v2, 0xa

    #@c
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getMaximumFractionDigits()I
    .locals 3

    #@0
    .prologue
    .line 402
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x6

    #@3
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 3

    #@0
    .prologue
    .line 406
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x3

    #@3
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 3

    #@0
    .prologue
    .line 410
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x7

    #@3
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 3

    #@0
    .prologue
    .line 414
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x4

    #@3
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMultiplier()I
    .locals 3

    #@0
    .prologue
    .line 426
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/16 v2, 0x9

    #@4
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 430
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 431
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 433
    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@8
    const/4 v2, 0x2

    #@9
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 437
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 438
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 440
    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@8
    const/4 v2, 0x3

    #@9
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 444
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 445
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 447
    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 451
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 452
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 454
    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@8
    const/4 v2, 0x1

    #@9
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->getTextAttribute(JI)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 458
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v2, v3, v1}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method public isGroupingUsed()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 470
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@4
    invoke-static {v2, v3, v0}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    move v0, v1

    #@c
    goto :goto_0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    #@0
    .prologue
    .line 462
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    #@2
    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 466
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@3
    invoke-static {v2, v3, v0}, Llibcore/icu/NativeDecimalFormat;->getAttribute(JI)I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 396
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    iget-boolean v2, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    #@4
    invoke-static {v0, v1, p1, p2, v2}, Llibcore/icu/NativeDecimalFormat;->parse(JLjava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Number;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "currencySymbol"    # Ljava/lang/String;
    .param p2, "currencyCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 479
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/16 v2, 0x8

    #@4
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setSymbol(JILjava/lang/String;)V

    #@7
    .line 480
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@9
    const/16 v2, 0x9

    #@b
    invoke-static {v0, v1, v2, p2}, Llibcore/icu/NativeDecimalFormat;->setSymbol(JILjava/lang/String;)V

    #@e
    .line 478
    return-void
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 18
    .param p1, "dfs"    # Ljava/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 268
    move-object/from16 v0, p0

    #@2
    iget-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@4
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@b
    move-result v5

    #@c
    .line 269
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    #@f
    move-result v6

    #@10
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@17
    move-result v8

    #@18
    .line 270
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@1f
    move-result-object v10

    #@20
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    #@23
    move-result-object v11

    #@24
    .line 271
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    #@27
    move-result v12

    #@28
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@2b
    move-result-object v13

    #@2c
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    #@2f
    move-result v14

    #@30
    .line 272
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    #@33
    move-result-object v15

    #@34
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    #@37
    move-result v16

    #@38
    invoke-virtual/range {p1 .. p1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    #@3b
    move-result v17

    #@3c
    .line 268
    invoke-static/range {v2 .. v17}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(JLjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)V

    #@3f
    .line 267
    return-void
.end method

.method public setDecimalFormatSymbols(Llibcore/icu/LocaleData;)V
    .locals 18
    .param p1, "localeData"    # Llibcore/icu/LocaleData;

    #@0
    .prologue
    .line 276
    move-object/from16 v0, p0

    #@2
    iget-wide v2, v0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@4
    move-object/from16 v0, p1

    #@6
    iget-object v4, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    #@8
    move-object/from16 v0, p1

    #@a
    iget-char v5, v0, Llibcore/icu/LocaleData;->decimalSeparator:C

    #@c
    .line 277
    move-object/from16 v0, p1

    #@e
    iget-object v7, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    #@10
    move-object/from16 v0, p1

    #@12
    iget-char v8, v0, Llibcore/icu/LocaleData;->groupingSeparator:C

    #@14
    .line 278
    move-object/from16 v0, p1

    #@16
    iget-object v9, v0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    #@18
    move-object/from16 v0, p1

    #@1a
    iget-object v10, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    #@1c
    move-object/from16 v0, p1

    #@1e
    iget-object v11, v0, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    #@20
    .line 279
    move-object/from16 v0, p1

    #@22
    iget-char v12, v0, Llibcore/icu/LocaleData;->monetarySeparator:C

    #@24
    move-object/from16 v0, p1

    #@26
    iget-object v13, v0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    #@28
    move-object/from16 v0, p1

    #@2a
    iget-char v14, v0, Llibcore/icu/LocaleData;->patternSeparator:C

    #@2c
    .line 280
    move-object/from16 v0, p1

    #@2e
    iget-object v15, v0, Llibcore/icu/LocaleData;->percent:Ljava/lang/String;

    #@30
    move-object/from16 v0, p1

    #@32
    iget-char v0, v0, Llibcore/icu/LocaleData;->perMill:C

    #@34
    move/from16 v16, v0

    #@36
    move-object/from16 v0, p1

    #@38
    iget-char v0, v0, Llibcore/icu/LocaleData;->zeroDigit:C

    #@3a
    move/from16 v17, v0

    #@3c
    .line 277
    const/16 v6, 0x23

    #@3e
    .line 276
    invoke-static/range {v2 .. v17}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(JLjava/lang/String;CCLjava/lang/String;CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;CLjava/lang/String;CC)V

    #@41
    .line 275
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 4
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 474
    if-eqz p1, :cond_0

    #@2
    const/4 v0, -0x1

    #@3
    .line 475
    .local v0, "i":I
    :goto_0
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@5
    const/4 v1, 0x2

    #@6
    invoke-static {v2, v3, v1, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    #@9
    .line 473
    return-void

    #@a
    .line 474
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@b
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public setGroupingSize(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 484
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/16 v2, 0xa

    #@4
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    #@7
    .line 483
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 4
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 488
    if-eqz p1, :cond_0

    #@2
    const/4 v0, -0x1

    #@3
    .line 489
    .local v0, "i":I
    :goto_0
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@5
    const/4 v1, 0x1

    #@6
    invoke-static {v2, v3, v1, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    #@9
    .line 487
    return-void

    #@a
    .line 488
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@b
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public setMaximumFractionDigits(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 493
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x6

    #@3
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    #@6
    .line 492
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 497
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x3

    #@3
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    #@6
    .line 496
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 501
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x7

    #@3
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    #@6
    .line 500
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 505
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x4

    #@3
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    #@6
    .line 504
    return-void
.end method

.method public setMultiplier(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 509
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/16 v2, 0x9

    #@4
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    #@7
    .line 508
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 513
    if-nez p1, :cond_1

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    #@5
    .line 514
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negPrefNull:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 515
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@b
    const/4 v2, 0x2

    #@c
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    #@f
    .line 512
    :cond_0
    return-void

    #@10
    .line 513
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 520
    if-nez p1, :cond_1

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    #@5
    .line 521
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->negSuffNull:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 522
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@b
    const/4 v2, 0x3

    #@c
    invoke-static {v0, v1, v2, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    #@f
    .line 519
    :cond_0
    return-void

    #@10
    .line 520
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setParseBigDecimal(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 541
    iput-boolean p1, p0, Llibcore/icu/NativeDecimalFormat;->parseBigDecimal:Z

    #@2
    .line 540
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 4
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 545
    if-eqz p1, :cond_0

    #@2
    const/4 v0, -0x1

    #@3
    .line 546
    .local v0, "i":I
    :goto_0
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {v2, v3, v1, v0}, Llibcore/icu/NativeDecimalFormat;->setAttribute(JII)V

    #@9
    .line 544
    return-void

    #@a
    .line 545
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@b
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 527
    if-nez p1, :cond_1

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    #@6
    .line 528
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posPrefNull:Z

    #@8
    if-nez v0, :cond_0

    #@a
    .line 529
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@c
    invoke-static {v2, v3, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    #@f
    .line 526
    :cond_0
    return-void

    #@10
    :cond_1
    move v0, v1

    #@11
    .line 527
    goto :goto_0
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 534
    if-nez p1, :cond_1

    #@3
    move v0, v1

    #@4
    :goto_0
    iput-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    #@6
    .line 535
    iget-boolean v0, p0, Llibcore/icu/NativeDecimalFormat;->posSuffNull:Z

    #@8
    if-nez v0, :cond_0

    #@a
    .line 536
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@c
    invoke-static {v2, v3, v1, p1}, Llibcore/icu/NativeDecimalFormat;->setTextAttribute(JILjava/lang/String;)V

    #@f
    .line 533
    :cond_0
    return-void

    #@10
    .line 534
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;D)V
    .locals 4
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;
    .param p2, "roundingIncrement"    # D

    #@0
    .prologue
    .line 561
    invoke-static {}, Llibcore/icu/NativeDecimalFormat;->-getjava_math_RoundingModeSwitchesValues()[I

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    #@7
    move-result v2

    #@8
    aget v1, v1, v2

    #@a
    packed-switch v1, :pswitch_data_0

    #@d
    .line 570
    new-instance v1, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v1

    #@13
    .line 562
    :pswitch_0
    const/4 v0, 0x0

    #@14
    .line 572
    .local v0, "nativeRoundingMode":I
    :goto_0
    iget-wide v2, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@16
    invoke-static {v2, v3, v0, p2, p3}, Llibcore/icu/NativeDecimalFormat;->setRoundingMode(JID)V

    #@19
    .line 559
    return-void

    #@1a
    .line 563
    .end local v0    # "nativeRoundingMode":I
    :pswitch_1
    const/4 v0, 0x1

    #@1b
    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    #@1c
    .line 564
    .end local v0    # "nativeRoundingMode":I
    :pswitch_2
    const/4 v0, 0x2

    #@1d
    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    #@1e
    .line 565
    .end local v0    # "nativeRoundingMode":I
    :pswitch_3
    const/4 v0, 0x3

    #@1f
    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    #@20
    .line 566
    .end local v0    # "nativeRoundingMode":I
    :pswitch_4
    const/4 v0, 0x4

    #@21
    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    #@22
    .line 567
    .end local v0    # "nativeRoundingMode":I
    :pswitch_5
    const/4 v0, 0x5

    #@23
    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    #@24
    .line 568
    .end local v0    # "nativeRoundingMode":I
    :pswitch_6
    const/4 v0, 0x6

    #@25
    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    #@26
    .line 569
    .end local v0    # "nativeRoundingMode":I
    :pswitch_7
    const/4 v0, 0x7

    #@27
    .restart local v0    # "nativeRoundingMode":I
    goto :goto_0

    #@28
    .line 561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 388
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x1

    #@3
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->toPatternImpl(JZ)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 392
    iget-wide v0, p0, Llibcore/icu/NativeDecimalFormat;->address:J

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;->toPatternImpl(JZ)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "[\""

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "\""

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 249
    const-string/jumbo v1, ",isDecimalSeparatorAlwaysShown="

    #@2a
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 249
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    #@31
    move-result v1

    #@32
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 250
    const-string/jumbo v1, ",groupingSize="

    #@39
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 250
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    #@40
    move-result v1

    #@41
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 251
    const-string/jumbo v1, ",multiplier="

    #@48
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 251
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    #@4f
    move-result v1

    #@50
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 252
    const-string/jumbo v1, ",negativePrefix="

    #@57
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 252
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 253
    const-string/jumbo v1, ",negativeSuffix="

    #@66
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    .line 253
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    .line 254
    const-string/jumbo v1, ",positivePrefix="

    #@75
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    .line 254
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 255
    const-string/jumbo v1, ",positiveSuffix="

    #@84
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    .line 255
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    .line 256
    const-string/jumbo v1, ",maxIntegerDigits="

    #@93
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    .line 256
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    #@9a
    move-result v1

    #@9b
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    .line 257
    const-string/jumbo v1, ",maxFractionDigits="

    #@a2
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v0

    #@a6
    .line 257
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    #@a9
    move-result v1

    #@aa
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    .line 258
    const-string/jumbo v1, ",minIntegerDigits="

    #@b1
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    .line 258
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    #@b8
    move-result v1

    #@b9
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v0

    #@bd
    .line 259
    const-string/jumbo v1, ",minFractionDigits="

    #@c0
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    .line 259
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    #@c7
    move-result v1

    #@c8
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v0

    #@cc
    .line 260
    const-string/jumbo v1, ",grouping="

    #@cf
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    .line 260
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    #@d6
    move-result v1

    #@d7
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@da
    move-result-object v0

    #@db
    .line 261
    const-string/jumbo v1, "]"

    #@de
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v0

    #@e2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v0

    #@e6
    return-object v0
.end method

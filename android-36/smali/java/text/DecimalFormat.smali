.class public Ljava/text/DecimalFormat;
.super Ljava/text/NumberFormat;
.source "DecimalFormat.java"


# static fields
.field static final greylist-max-o DOUBLE_FRACTION_DIGITS:I = 0x154

.field static final greylist-max-o DOUBLE_INTEGER_DIGITS:I = 0x135

.field static final greylist-max-o MAXIMUM_FRACTION_DIGITS:I = 0x7fffffff

.field static final greylist-max-o MAXIMUM_INTEGER_DIGITS:I = 0x7fffffff

.field static final greylist-max-o currentSerialVersion:I = 0x4

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field private transient blacklist icuDecimalFormat:Landroid/icu/text/DecimalFormat;

.field private greylist-max-o maximumFractionDigits:I

.field private greylist-max-o maximumIntegerDigits:I

.field private greylist-max-o minimumFractionDigits:I

.field private greylist-max-o minimumIntegerDigits:I

.field private greylist-max-o roundingMode:Ljava/math/RoundingMode;

.field private greylist-max-o symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 4394
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "positivePrefix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "positiveSuffix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "negativePrefix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "negativeSuffix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "posPrefixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "posSuffixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "negPrefixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "negSuffixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "multiplier"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "groupingSize"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "groupingUsed"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "decimalSeparatorAlwaysShown"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "parseBigDecimal"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "roundingMode"

    const-class v3, Ljava/math/RoundingMode;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "symbols"

    const-class v3, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "useExponentialNotation"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "minExponentDigits"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "maximumIntegerDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "minimumIntegerDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "maximumFractionDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "minimumFractionDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "serialVersionOnStream"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Ljava/text/DecimalFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 4

    .line 413
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 4777
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 4890
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 415
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 424
    .local v0, "def":Ljava/util/Locale;
    invoke-static {v0}, Llibcore/icu/DecimalFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/DecimalFormatData;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/icu/DecimalFormatData;->getNumberPattern()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "pattern":Ljava/lang/String;
    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 431
    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->initPattern(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 454
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 4777
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 4890
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 456
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 459
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->initPattern(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "symbols"    # Ljava/text/DecimalFormatSymbols;

    .line 484
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 4777
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 4890
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 486
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 488
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->initPattern(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private blacklist compareIcuRoundingIncrement(Landroid/icu/text/DecimalFormat;)Z
    .registers 6
    .param p1, "other"    # Landroid/icu/text/DecimalFormat;

    .line 3347
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0

    .line 3348
    .local v0, "increment":Ljava/math/BigDecimal;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 3349
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 3350
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 3349
    :goto_1c
    return v1

    .line 3352
    :cond_1d
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v3

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1
.end method

.method private static greylist-max-o convertRoundingMode(Ljava/math/RoundingMode;)I
    .registers 3
    .param p0, "rm"    # Ljava/math/RoundingMode;

    .line 4314
    sget-object v0, Ljava/text/DecimalFormat$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 4332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rounding mode specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4330
    :pswitch_13
    const/4 v0, 0x7

    return v0

    .line 4328
    :pswitch_15
    const/4 v0, 0x6

    return v0

    .line 4326
    :pswitch_17
    const/4 v0, 0x5

    return v0

    .line 4324
    :pswitch_19
    const/4 v0, 0x4

    return v0

    .line 4322
    :pswitch_1b
    const/4 v0, 0x3

    return v0

    .line 4320
    :pswitch_1d
    const/4 v0, 0x2

    return v0

    .line 4318
    :pswitch_1f
    const/4 v0, 0x1

    return v0

    .line 4316
    :pswitch_21
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
    .end packed-switch
.end method

.method private greylist-max-o format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 977
    invoke-static {p3}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 978
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, v0}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 979
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 980
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 981
    return-object p2
.end method

.method private greylist-max-o format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 1052
    invoke-static {p3}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 1053
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, v0}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1054
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1055
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1056
    return-object p2
.end method

.method private static greylist-max-o getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;
    .registers 5
    .param p0, "fp"    # Ljava/text/FieldPosition;

    .line 526
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    .line 527
    .local v0, "fieldAttribute":Ljava/text/Format$Field;
    if-nez v0, :cond_7

    return-object p0

    .line 530
    :cond_7
    sget-object v1, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_e

    .line 531
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    .local v1, "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_53

    .line 532
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_e
    sget-object v1, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_15

    .line 533
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    .restart local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_53

    .line 534
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_15
    sget-object v1, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_1c

    .line 535
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .restart local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_53

    .line 536
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_1c
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_23

    .line 537
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    .restart local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_53

    .line 538
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_23
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_2a

    .line 539
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    .restart local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_53

    .line 540
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_2a
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_31

    .line 541
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    .restart local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_53

    .line 542
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_31
    sget-object v1, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_38

    .line 543
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .restart local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_53

    .line 544
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_38
    sget-object v1, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_3f

    .line 545
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    .restart local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_53

    .line 546
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_3f
    sget-object v1, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_46

    .line 547
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    .restart local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_53

    .line 548
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_46
    sget-object v1, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_4d

    .line 549
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    .restart local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_53

    .line 550
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_4d
    sget-object v1, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    if-ne v0, v1, :cond_67

    .line 551
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    .line 556
    .restart local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :goto_53
    new-instance v2, Ljava/text/FieldPosition;

    invoke-direct {v2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 557
    .local v2, "icuFieldPosition":Ljava/text/FieldPosition;
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 558
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 559
    return-object v2

    .line 553
    .end local v1    # "attribute":Landroid/icu/text/NumberFormat$Field;
    .end local v2    # "icuFieldPosition":Ljava/text/FieldPosition;
    :cond_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected field position attribute type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o initPattern(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 498
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 499
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 498
    invoke-static {p1, v0}, Lcom/android/icu/text/CompatibleDecimalFormatFactory;->create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/text/DecimalFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    .line 500
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    .line 501
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 20
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4535
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 4536
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v2, "symbols"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DecimalFormatSymbols;

    iput-object v2, v0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 4538
    const-string v2, "#"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;->initPattern(Ljava/lang/String;)V

    .line 4547
    const-string v2, "positivePrefix"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4548
    .local v2, "positivePrefix":Ljava/lang/String;
    iget-object v4, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 4549
    iget-object v4, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v4, v2}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 4552
    :cond_31
    const-string v4, "positiveSuffix"

    invoke-virtual {v1, v4, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4553
    .local v4, "positiveSuffix":Ljava/lang/String;
    iget-object v5, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 4554
    iget-object v5, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v5, v4}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 4557
    :cond_4a
    const-string v5, "negativePrefix"

    const-string v6, "-"

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4558
    .local v5, "negativePrefix":Ljava/lang/String;
    iget-object v6, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    .line 4559
    iget-object v6, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 4562
    :cond_65
    const-string v6, "negativeSuffix"

    invoke-virtual {v1, v6, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4563
    .local v3, "negativeSuffix":Ljava/lang/String;
    iget-object v6, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 4564
    iget-object v6, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v6, v3}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 4567
    :cond_7e
    const-string v6, "multiplier"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v6

    .line 4568
    .local v6, "multiplier":I
    iget-object v8, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v8}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    move-result v8

    if-eq v6, v8, :cond_92

    .line 4569
    iget-object v8, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v8, v6}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    .line 4572
    :cond_92
    const-string v8, "groupingUsed"

    invoke-virtual {v1, v8, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v8

    .line 4573
    .local v8, "groupingUsed":Z
    iget-object v9, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v9}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v9

    if-eq v8, v9, :cond_a5

    .line 4574
    iget-object v9, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v9, v8}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 4577
    :cond_a5
    const-string v9, "groupingSize"

    const/4 v10, 0x3

    invoke-virtual {v1, v9, v10}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v9

    .line 4578
    .local v9, "groupingSize":I
    iget-object v11, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v11}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    move-result v11

    if-eq v9, v11, :cond_b9

    .line 4579
    iget-object v11, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v11, v9}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    .line 4582
    :cond_b9
    const-string v11, "decimalSeparatorAlwaysShown"

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v11

    .line 4583
    .local v11, "decimalSeparatorAlwaysShown":Z
    iget-object v13, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v13

    if-eq v11, v13, :cond_cd

    .line 4584
    iget-object v13, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v13, v11}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 4587
    :cond_cd
    sget-object v13, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 4588
    const-string v14, "roundingMode"

    invoke-virtual {v1, v14, v13}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/math/RoundingMode;

    .line 4589
    .local v13, "roundingMode":Ljava/math/RoundingMode;
    invoke-static {v13}, Ljava/text/DecimalFormat;->convertRoundingMode(Ljava/math/RoundingMode;)I

    move-result v14

    iget-object v15, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v15}, Landroid/icu/text/DecimalFormat;->getRoundingMode()I

    move-result v15

    if-eq v14, v15, :cond_e6

    .line 4590
    invoke-virtual {v0, v13}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 4593
    :cond_e6
    const-string v14, "maximumIntegerDigits"

    const/16 v15, 0x135

    invoke-virtual {v1, v14, v15}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v14

    .line 4594
    .local v14, "maximumIntegerDigits":I
    iget-object v10, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v10}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v10

    if-eq v14, v10, :cond_fb

    .line 4595
    iget-object v10, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v10, v14}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 4598
    :cond_fb
    const-string v10, "minimumIntegerDigits"

    invoke-virtual {v1, v10, v15}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v10

    .line 4599
    .local v10, "minimumIntegerDigits":I
    iget-object v15, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v15}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v15

    if-eq v10, v15, :cond_10e

    .line 4600
    iget-object v15, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v15, v10}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 4603
    :cond_10e
    const-string v15, "maximumFractionDigits"

    const/16 v12, 0x154

    invoke-virtual {v1, v15, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v15

    .line 4604
    .local v15, "maximumFractionDigits":I
    iget-object v7, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v7}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v7

    if-eq v15, v7, :cond_123

    .line 4605
    iget-object v7, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v7, v15}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 4608
    :cond_123
    const-string v7, "minimumFractionDigits"

    invoke-virtual {v1, v7, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v7

    .line 4609
    .local v7, "minimumFractionDigits":I
    iget-object v12, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v12}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v12

    if-eq v7, v12, :cond_136

    .line 4610
    iget-object v12, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v12, v7}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 4613
    :cond_136
    const-string v12, "parseBigDecimal"

    move-object/from16 v17, v2

    const/4 v2, 0x1

    .end local v2    # "positivePrefix":Ljava/lang/String;
    .local v17, "positivePrefix":Ljava/lang/String;
    invoke-virtual {v1, v12, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v2

    .line 4614
    .local v2, "parseBigDecimal":Z
    iget-object v12, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v12}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v12

    if-eq v2, v12, :cond_14c

    .line 4615
    iget-object v12, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v12, v2}, Landroid/icu/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 4618
    :cond_14c
    invoke-direct {v0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    .line 4620
    const-string v12, "serialVersionOnStream"

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "parseBigDecimal":Z
    .local v16, "parseBigDecimal":Z
    invoke-virtual {v1, v12, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    const/4 v12, 0x3

    if-ge v2, v12, :cond_177

    .line 4621
    invoke-super {v0}, Ljava/text/NumberFormat;->getMaximumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 4622
    invoke-super {v0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 4623
    invoke-super {v0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 4624
    invoke-super {v0}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 4627
    :cond_177
    return-void
.end method

.method private static greylist-max-o toJavaFieldAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/NumberFormat$Field;
    .registers 5
    .param p0, "icuAttribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .line 569
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 571
    sget-object v1, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 573
    :cond_13
    sget-object v1, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 574
    sget-object v1, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 576
    :cond_22
    sget-object v1, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 577
    sget-object v1, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 579
    :cond_31
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 580
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 582
    :cond_40
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 583
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 585
    :cond_4f
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 586
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 588
    :cond_5e
    sget-object v1, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 589
    sget-object v1, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 591
    :cond_6d
    sget-object v1, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 592
    sget-object v1, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 594
    :cond_7c
    sget-object v1, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 595
    sget-object v1, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 597
    :cond_8b
    sget-object v1, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 598
    sget-object v1, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 600
    :cond_9a
    sget-object v1, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 601
    sget-object v1, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    return-object v1

    .line 603
    :cond_a9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o updateFieldsFromIcu()V
    .registers 3

    .line 511
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    const/16 v1, 0x135

    if-ne v0, v1, :cond_12

    .line 512
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const v1, 0x77359400

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 514
    :cond_12
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 515
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 516
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 517
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 518
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4420
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 4421
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "positivePrefix"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4422
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "positiveSuffix"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4423
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "negativePrefix"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4424
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "negativeSuffix"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4425
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v2, "posPrefixPattern"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4426
    const-string v2, "posSuffixPattern"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4427
    const-string v2, "negPrefixPattern"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4428
    const-string v2, "negSuffixPattern"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4429
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    move-result v1

    const-string v2, "multiplier"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 4430
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    move-result v1

    int-to-byte v1, v1

    const-string v2, "groupingSize"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 4431
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v1

    const-string v2, "groupingUsed"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 4432
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v1

    const-string v2, "decimalSeparatorAlwaysShown"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 4433
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v1

    const-string v2, "parseBigDecimal"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 4434
    const-string v1, "roundingMode"

    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4435
    const-string v1, "symbols"

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4436
    const-string v1, "useExponentialNotation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 4437
    const-string v1, "minExponentDigits"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 4438
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    const-string v2, "maximumIntegerDigits"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 4439
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    const-string v2, "minimumIntegerDigits"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 4440
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    const-string v2, "maximumFractionDigits"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 4441
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    const-string v2, "minimumFractionDigits"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 4442
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 4443
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 4444
    return-void
.end method


# virtual methods
.method greylist-max-o adjustForCurrencyDefaultFractionDigits()V
    .registers 5

    .line 4367
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    .line 4368
    .local v0, "currency":Ljava/util/Currency;
    if-nez v0, :cond_15

    .line 4370
    :try_start_8
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_12} :catch_14

    move-object v0, v1

    .line 4372
    goto :goto_15

    .line 4371
    :catch_14
    move-exception v1

    .line 4374
    :cond_15
    :goto_15
    if-eqz v0, :cond_39

    .line 4375
    invoke-virtual {v0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v1

    .line 4376
    .local v1, "digits":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    .line 4377
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v2

    .line 4380
    .local v2, "oldMinDigits":I
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 4381
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 4382
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    goto :goto_39

    .line 4384
    :cond_2f
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 4385
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 4389
    .end local v1    # "digits":I
    .end local v2    # "oldMinDigits":I
    :cond_39
    :goto_39
    return-void
.end method

.method public whitelist test-api applyLocalizedPattern(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 3756
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 3757
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    .line 3758
    return-void
.end method

.method public whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 3726
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 3727
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    .line 3728
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 3279
    :try_start_0
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 3280
    .local v0, "other":Ljava/text/DecimalFormat;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormat;

    iput-object v1, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    .line 3281
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    iput-object v1, v0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 3282
    return-object v0

    .line 3283
    .end local v0    # "other":Ljava/text/DecimalFormat;
    :catch_1b
    move-exception v0

    .line 3284
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3332
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3333
    return v0

    .line 3335
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 3336
    return v1

    .line 3338
    :cond_8
    instance-of v2, p1, Ljava/text/DecimalFormat;

    if-nez v2, :cond_d

    .line 3339
    return v0

    .line 3341
    :cond_d
    move-object v2, p1

    check-cast v2, Ljava/text/DecimalFormat;

    .line 3342
    .local v2, "other":Ljava/text/DecimalFormat;
    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v4, v2, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3, v4}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v2, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    .line 3343
    invoke-direct {p0, v3}, Ljava/text/DecimalFormat;->compareIcuRoundingIncrement(Landroid/icu/text/DecimalFormat;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    nop

    .line 3342
    :goto_25
    return v0
.end method

.method public whitelist test-api format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "number"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 701
    invoke-static {p4}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 702
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 703
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 704
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 705
    return-object p3
.end method

.method public whitelist test-api format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "number"    # J
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 870
    invoke-static {p4}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 871
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 872
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 873
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 874
    return-object p3
.end method

.method public final whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 638
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_58

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_58

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_58

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_58

    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_58

    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_58

    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    .line 643
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_28

    goto :goto_58

    .line 645
    :cond_28
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_34

    .line 646
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 647
    :cond_34
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_40

    .line 648
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 649
    :cond_40
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_50

    .line 650
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 652
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_58
    :goto_58
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1159
    if-eqz p1, :cond_73

    .line 1166
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 1169
    .local v0, "original":Ljava/text/AttributedCharacterIterator;
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1170
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v2

    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1172
    .local v1, "textBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v2

    .local v2, "i":I
    :goto_1a
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 1173
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1174
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 1172
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1177
    .end local v2    # "i":I
    :cond_2d
    new-instance v2, Ljava/text/AttributedString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1179
    .local v2, "result":Ljava/text/AttributedString;
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    .local v3, "i":I
    :goto_3a
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v4

    if-ge v3, v4, :cond_6e

    .line 1180
    invoke-interface {v0, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 1183
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 1184
    .local v5, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    move-result v6

    .line 1185
    .local v6, "start":I
    invoke-interface {v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v7

    .line 1186
    .local v7, "end":I
    invoke-static {v5}, Ljava/text/DecimalFormat;->toJavaFieldAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/NumberFormat$Field;

    move-result-object v8

    .line 1187
    .local v8, "javaAttr":Ljava/text/NumberFormat$Field;
    invoke-virtual {v2, v8, v8, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 1188
    .end local v5    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v6    # "start":I
    .end local v7    # "end":I
    .end local v8    # "javaAttr":Ljava/text/NumberFormat$Field;
    goto :goto_4f

    .line 1179
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1191
    .end local v3    # "i":I
    :cond_6e
    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    return-object v3

    .line 1160
    .end local v0    # "original":Ljava/text/AttributedCharacterIterator;
    .end local v1    # "textBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "result":Ljava/text/AttributedString;
    :cond_73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "object == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getCurrency()Ljava/util/Currency;
    .registers 2

    .line 4258
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .registers 2

    .line 2819
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getGroupingSize()I
    .registers 2

    .line 3134
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMaximumFractionDigits()I
    .registers 2

    .line 4230
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    return v0
.end method

.method public whitelist test-api getMaximumIntegerDigits()I
    .registers 2

    .line 4204
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public whitelist test-api getMinimumFractionDigits()I
    .registers 2

    .line 4243
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    return v0
.end method

.method public whitelist test-api getMinimumIntegerDigits()I
    .registers 2

    .line 4217
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public whitelist test-api getMultiplier()I
    .registers 2

    .line 3065
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getNegativePrefix()Ljava/lang/String;
    .registers 2

    .line 2908
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNegativeSuffix()Ljava/lang/String;
    .registers 2

    .line 3012
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPositivePrefix()Ljava/lang/String;
    .registers 2

    .line 2855
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPositiveSuffix()Ljava/lang/String;
    .registers 2

    .line 2960
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRoundingMode()Ljava/math/RoundingMode;
    .registers 2

    .line 4309
    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 3363
    invoke-super {p0}, Ljava/text/NumberFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isDecimalSeparatorAlwaysShown()Z
    .registers 2

    .line 3182
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isGroupingUsed()Z
    .registers 2

    .line 3114
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isParseBigDecimal()Z
    .registers 2

    .line 3215
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isParseIntegerOnly()Z
    .registers 2

    .line 3239
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 2488
    iget v0, p2, Ljava/text/ParsePosition;->index:I

    const/4 v1, 0x0

    if-ltz v0, :cond_9c

    iget v0, p2, Ljava/text/ParsePosition;->index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_f

    goto/16 :goto_9c

    .line 2493
    :cond_f
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 2494
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_18

    .line 2495
    return-object v1

    .line 2497
    :cond_18
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 2498
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2c

    .line 2499
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    return-object v1

    .line 2501
    :cond_2c
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4c

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_4c

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    .line 2502
    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 2503
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 2505
    :cond_4c
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_63

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    .line 2506
    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_62

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 2507
    :cond_62
    return-object v0

    .line 2509
    :cond_63
    instance-of v1, v0, Landroid/icu/math/BigDecimal;

    if-eqz v1, :cond_6f

    .line 2510
    move-object v1, v0

    check-cast v1, Landroid/icu/math/BigDecimal;

    invoke-virtual {v1}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 2513
    :cond_6f
    instance-of v1, v0, Landroid/icu/math/BigDecimal;

    if-nez v1, :cond_93

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_78

    goto :goto_93

    .line 2516
    :cond_78
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v1

    if-eqz v1, :cond_92

    new-instance v1, Ljava/lang/Double;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 2517
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 2519
    :cond_92
    return-object v0

    .line 2514
    :cond_93
    :goto_93
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 2489
    .end local v0    # "number":Ljava/lang/Number;
    :cond_9c
    :goto_9c
    return-object v1
.end method

.method public whitelist test-api setCurrency(Ljava/util/Currency;)V
    .registers 4
    .param p1, "currency"    # Ljava/util/Currency;

    .line 4286
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    if-ne p1, v0, :cond_18

    .line 4287
    invoke-virtual {p1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 4288
    :cond_18
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    .line 4289
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 4292
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget v1, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 4293
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget v1, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 4298
    :cond_36
    return-void
.end method

.method public whitelist test-api setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .registers 4
    .param p1, "newSymbols"    # Ljava/text/DecimalFormatSymbols;

    .line 2833
    :try_start_0
    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 2839
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 2843
    goto :goto_15

    .line 2841
    :catch_14
    move-exception v0

    .line 2844
    :goto_15
    return-void
.end method

.method public whitelist test-api setDecimalSeparatorAlwaysShown(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 3199
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 3201
    return-void
.end method

.method public whitelist test-api setGroupingSize(I)V
    .registers 5
    .param p1, "newValue"    # I

    .line 3158
    if-ltz p1, :cond_c

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_c

    .line 3167
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    .line 3169
    return-void

    .line 3159
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newValue is out of valid range. value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setGroupingUsed(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 3104
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 3106
    return-void
.end method

.method public whitelist test-api setMaximumFractionDigits(I)V
    .registers 5
    .param p1, "newValue"    # I

    .line 4156
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 4157
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    const/16 v1, 0x154

    if-le v0, v1, :cond_16

    .line 4158
    move v0, v1

    goto :goto_18

    :cond_16
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 4157
    :goto_18
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 4159
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v2, :cond_2f

    .line 4160
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 4161
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_2a

    .line 4162
    goto :goto_2c

    :cond_2a
    iget v1, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 4161
    :goto_2c
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 4165
    :cond_2f
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 4168
    return-void
.end method

.method public whitelist test-api setMaximumIntegerDigits(I)V
    .registers 5
    .param p1, "newValue"    # I

    .line 4108
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 4109
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    const/16 v1, 0x135

    if-le v0, v1, :cond_16

    .line 4110
    move v0, v1

    goto :goto_18

    :cond_16
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 4109
    :goto_18
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 4111
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v2, :cond_2f

    .line 4112
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 4113
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_2a

    .line 4114
    goto :goto_2c

    :cond_2a
    iget v1, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 4113
    :goto_2c
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 4117
    :cond_2f
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 4120
    return-void
.end method

.method public whitelist test-api setMinimumFractionDigits(I)V
    .registers 5
    .param p1, "newValue"    # I

    .line 4180
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 4181
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    const/16 v1, 0x154

    if-le v0, v1, :cond_16

    .line 4182
    move v0, v1

    goto :goto_18

    :cond_16
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 4181
    :goto_18
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 4183
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v2, :cond_2f

    .line 4184
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 4185
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2a

    .line 4186
    goto :goto_2c

    :cond_2a
    iget v1, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 4185
    :goto_2c
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 4189
    :cond_2f
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 4192
    return-void
.end method

.method public whitelist test-api setMinimumIntegerDigits(I)V
    .registers 5
    .param p1, "newValue"    # I

    .line 4132
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 4133
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    const/16 v1, 0x135

    if-le v0, v1, :cond_16

    .line 4134
    move v0, v1

    goto :goto_18

    :cond_16
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 4133
    :goto_18
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 4135
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v2, :cond_2f

    .line 4136
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 4137
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_2a

    .line 4138
    goto :goto_2c

    :cond_2a
    iget v1, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 4137
    :goto_2c
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 4141
    :cond_2f
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 4144
    return-void
.end method

.method public whitelist test-api setMultiplier(I)V
    .registers 3
    .param p1, "newValue"    # I

    .line 3090
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    .line 3092
    return-void
.end method

.method public whitelist test-api setNegativePrefix(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .line 2924
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 2926
    return-void
.end method

.method public whitelist test-api setNegativeSuffix(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .line 3028
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 3030
    return-void
.end method

.method public whitelist test-api setParseBigDecimal(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 3230
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 3231
    return-void
.end method

.method public whitelist test-api setParseIntegerOnly(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 3247
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 3248
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 3249
    return-void
.end method

.method public whitelist test-api setPositivePrefix(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .line 2872
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 2874
    return-void
.end method

.method public whitelist test-api setPositiveSuffix(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .line 2976
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 2978
    return-void
.end method

.method public whitelist test-api setRoundingMode(Ljava/math/RoundingMode;)V
    .registers 4
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .line 4346
    if-eqz p1, :cond_e

    .line 4350
    iput-object p1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 4353
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-static {p1}, Ljava/text/DecimalFormat;->convertRoundingMode(Ljava/math/RoundingMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setRoundingMode(I)V

    .line 4356
    return-void

    .line 4347
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toLocalizedPattern()Ljava/lang/String;
    .registers 2

    .line 3390
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toPattern()Ljava/lang/String;
    .registers 2

    .line 3377
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

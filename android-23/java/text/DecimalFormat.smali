.class public Ljava/text/DecimalFormat;
.super Ljava/text/NumberFormat;
.source "DecimalFormat.java"


# static fields
.field private static final NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field private transient ndf:Llibcore/icu/NativeDecimalFormat;

.field private transient roundingMode:Ljava/math/RoundingMode;

.field private transient symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 831
    new-instance v0, Ljava/lang/Double;

    #@2
    const-wide/high16 v2, -0x8000000000000000L

    #@4
    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    #@7
    sput-object v0, Ljava/text/DecimalFormat;->NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

    #@9
    .line 1070
    const/16 v0, 0x16

    #@b
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@d
    .line 1071
    new-instance v1, Ljava/io/ObjectStreamField;

    #@f
    const-string/jumbo v2, "positivePrefix"

    #@12
    const-class v3, Ljava/lang/String;

    #@14
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@17
    const/4 v2, 0x0

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 1072
    new-instance v1, Ljava/io/ObjectStreamField;

    #@1c
    const-string/jumbo v2, "positiveSuffix"

    #@1f
    const-class v3, Ljava/lang/String;

    #@21
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@24
    const/4 v2, 0x1

    #@25
    aput-object v1, v0, v2

    #@27
    .line 1073
    new-instance v1, Ljava/io/ObjectStreamField;

    #@29
    const-string/jumbo v2, "negativePrefix"

    #@2c
    const-class v3, Ljava/lang/String;

    #@2e
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@31
    const/4 v2, 0x2

    #@32
    aput-object v1, v0, v2

    #@34
    .line 1074
    new-instance v1, Ljava/io/ObjectStreamField;

    #@36
    const-string/jumbo v2, "negativeSuffix"

    #@39
    const-class v3, Ljava/lang/String;

    #@3b
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@3e
    const/4 v2, 0x3

    #@3f
    aput-object v1, v0, v2

    #@41
    .line 1075
    new-instance v1, Ljava/io/ObjectStreamField;

    #@43
    const-string/jumbo v2, "posPrefixPattern"

    #@46
    const-class v3, Ljava/lang/String;

    #@48
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@4b
    const/4 v2, 0x4

    #@4c
    aput-object v1, v0, v2

    #@4e
    .line 1076
    new-instance v1, Ljava/io/ObjectStreamField;

    #@50
    const-string/jumbo v2, "posSuffixPattern"

    #@53
    const-class v3, Ljava/lang/String;

    #@55
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@58
    const/4 v2, 0x5

    #@59
    aput-object v1, v0, v2

    #@5b
    .line 1077
    new-instance v1, Ljava/io/ObjectStreamField;

    #@5d
    const-string/jumbo v2, "negPrefixPattern"

    #@60
    const-class v3, Ljava/lang/String;

    #@62
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@65
    const/4 v2, 0x6

    #@66
    aput-object v1, v0, v2

    #@68
    .line 1078
    new-instance v1, Ljava/io/ObjectStreamField;

    #@6a
    const-string/jumbo v2, "negSuffixPattern"

    #@6d
    const-class v3, Ljava/lang/String;

    #@6f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@72
    const/4 v2, 0x7

    #@73
    aput-object v1, v0, v2

    #@75
    .line 1079
    new-instance v1, Ljava/io/ObjectStreamField;

    #@77
    const-string/jumbo v2, "multiplier"

    #@7a
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@7c
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@7f
    const/16 v2, 0x8

    #@81
    aput-object v1, v0, v2

    #@83
    .line 1080
    new-instance v1, Ljava/io/ObjectStreamField;

    #@85
    const-string/jumbo v2, "groupingSize"

    #@88
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@8a
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@8d
    const/16 v2, 0x9

    #@8f
    aput-object v1, v0, v2

    #@91
    .line 1081
    new-instance v1, Ljava/io/ObjectStreamField;

    #@93
    const-string/jumbo v2, "groupingUsed"

    #@96
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@98
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@9b
    const/16 v2, 0xa

    #@9d
    aput-object v1, v0, v2

    #@9f
    .line 1082
    new-instance v1, Ljava/io/ObjectStreamField;

    #@a1
    const-string/jumbo v2, "decimalSeparatorAlwaysShown"

    #@a4
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@a6
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@a9
    const/16 v2, 0xb

    #@ab
    aput-object v1, v0, v2

    #@ad
    .line 1083
    new-instance v1, Ljava/io/ObjectStreamField;

    #@af
    const-string/jumbo v2, "parseBigDecimal"

    #@b2
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@b4
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@b7
    const/16 v2, 0xc

    #@b9
    aput-object v1, v0, v2

    #@bb
    .line 1084
    new-instance v1, Ljava/io/ObjectStreamField;

    #@bd
    const-string/jumbo v2, "roundingMode"

    #@c0
    const-class v3, Ljava/math/RoundingMode;

    #@c2
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@c5
    const/16 v2, 0xd

    #@c7
    aput-object v1, v0, v2

    #@c9
    .line 1085
    new-instance v1, Ljava/io/ObjectStreamField;

    #@cb
    const-string/jumbo v2, "symbols"

    #@ce
    const-class v3, Ljava/text/DecimalFormatSymbols;

    #@d0
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d3
    const/16 v2, 0xe

    #@d5
    aput-object v1, v0, v2

    #@d7
    .line 1086
    new-instance v1, Ljava/io/ObjectStreamField;

    #@d9
    const-string/jumbo v2, "useExponentialNotation"

    #@dc
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@de
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e1
    const/16 v2, 0xf

    #@e3
    aput-object v1, v0, v2

    #@e5
    .line 1087
    new-instance v1, Ljava/io/ObjectStreamField;

    #@e7
    const-string/jumbo v2, "minExponentDigits"

    #@ea
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@ec
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ef
    const/16 v2, 0x10

    #@f1
    aput-object v1, v0, v2

    #@f3
    .line 1088
    new-instance v1, Ljava/io/ObjectStreamField;

    #@f5
    const-string/jumbo v2, "maximumIntegerDigits"

    #@f8
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@fa
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@fd
    const/16 v2, 0x11

    #@ff
    aput-object v1, v0, v2

    #@101
    .line 1089
    new-instance v1, Ljava/io/ObjectStreamField;

    #@103
    const-string/jumbo v2, "minimumIntegerDigits"

    #@106
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@108
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@10b
    const/16 v2, 0x12

    #@10d
    aput-object v1, v0, v2

    #@10f
    .line 1090
    new-instance v1, Ljava/io/ObjectStreamField;

    #@111
    const-string/jumbo v2, "maximumFractionDigits"

    #@114
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@116
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@119
    const/16 v2, 0x13

    #@11b
    aput-object v1, v0, v2

    #@11d
    .line 1091
    new-instance v1, Ljava/io/ObjectStreamField;

    #@11f
    const-string/jumbo v2, "minimumFractionDigits"

    #@122
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@124
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@127
    const/16 v2, 0x14

    #@129
    aput-object v1, v0, v2

    #@12b
    .line 1092
    new-instance v1, Ljava/io/ObjectStreamField;

    #@12d
    const-string/jumbo v2, "serialVersionOnStream"

    #@130
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@132
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@135
    const/16 v2, 0x15

    #@137
    aput-object v1, v0, v2

    #@139
    .line 1070
    sput-object v0, Ljava/text/DecimalFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@13b
    .line 504
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 519
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    #@3
    .line 512
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@5
    iput-object v1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@7
    .line 520
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@a
    move-result-object v0

    #@b
    .line 521
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    #@d
    invoke-direct {v1, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@10
    iput-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@12
    .line 522
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@15
    move-result-object v1

    #@16
    iget-object v1, v1, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    #@18
    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    #@1b
    .line 519
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 535
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@7
    .line 534
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 549
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    #@3
    .line 512
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@5
    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@7
    .line 550
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/text/DecimalFormatSymbols;

    #@d
    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@f
    .line 551
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    #@12
    .line 549
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 555
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    #@3
    .line 512
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@5
    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@7
    .line 556
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    #@9
    invoke-direct {v0, p2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@c
    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@e
    .line 557
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    #@11
    .line 555
    return-void
.end method

.method private checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "position"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 669
    if-nez p1, :cond_0

    #@2
    .line 670
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "buffer == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 672
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 673
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "position == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 668
    :cond_1
    return-void
.end method

.method private initNative(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 562
    :try_start_0
    new-instance v1, Llibcore/icu/NativeDecimalFormat;

    #@2
    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@4
    invoke-direct {v1, p1, v2}, Llibcore/icu/NativeDecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    #@7
    iput-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 566
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@b
    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    #@e
    move-result v1

    #@f
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    #@12
    .line 567
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@14
    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    #@17
    move-result v1

    #@18
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@1b
    .line 568
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@1d
    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    #@20
    move-result v1

    #@21
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    #@24
    .line 569
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@26
    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    #@29
    move-result v1

    #@2a
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@2d
    .line 560
    return-void

    #@2e
    .line 563
    :catch_0
    move-exception v0

    #@2f
    .line 564
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@31
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0x154

    #@2
    const/16 v11, 0x135

    #@4
    const/4 v10, 0x3

    #@5
    const/4 v9, 0x1

    #@6
    const/4 v8, 0x0

    #@7
    .line 1144
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@a
    move-result-object v0

    #@b
    .line 1145
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v5, "symbols"

    #@e
    const/4 v6, 0x0

    #@f
    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Ljava/text/DecimalFormatSymbols;

    #@15
    iput-object v5, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@17
    .line 1147
    const-string/jumbo v5, ""

    #@1a
    invoke-direct {p0, v5}, Ljava/text/DecimalFormat;->initNative(Ljava/lang/String;)V

    #@1d
    .line 1148
    iget-object v6, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@1f
    const-string/jumbo v5, "positivePrefix"

    #@22
    const-string/jumbo v7, ""

    #@25
    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Ljava/lang/String;

    #@2b
    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    #@2e
    .line 1149
    iget-object v6, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@30
    const-string/jumbo v5, "positiveSuffix"

    #@33
    const-string/jumbo v7, ""

    #@36
    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v5

    #@3a
    check-cast v5, Ljava/lang/String;

    #@3c
    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    #@3f
    .line 1150
    iget-object v6, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@41
    const-string/jumbo v5, "negativePrefix"

    #@44
    const-string/jumbo v7, "-"

    #@47
    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    move-result-object v5

    #@4b
    check-cast v5, Ljava/lang/String;

    #@4d
    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    #@50
    .line 1151
    iget-object v6, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@52
    const-string/jumbo v5, "negativeSuffix"

    #@55
    const-string/jumbo v7, ""

    #@58
    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v5

    #@5c
    check-cast v5, Ljava/lang/String;

    #@5e
    invoke-virtual {v6, v5}, Llibcore/icu/NativeDecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    #@61
    .line 1152
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@63
    const-string/jumbo v6, "multiplier"

    #@66
    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@69
    move-result v6

    #@6a
    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setMultiplier(I)V

    #@6d
    .line 1153
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@6f
    const-string/jumbo v6, "groupingSize"

    #@72
    invoke-virtual {v0, v6, v10}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    #@75
    move-result v6

    #@76
    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setGroupingSize(I)V

    #@79
    .line 1154
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@7b
    const-string/jumbo v6, "groupingUsed"

    #@7e
    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@81
    move-result v6

    #@82
    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setGroupingUsed(Z)V

    #@85
    .line 1155
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@87
    const-string/jumbo v6, "decimalSeparatorAlwaysShown"

    #@8a
    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@8d
    move-result v6

    #@8e
    invoke-virtual {v5, v6}, Llibcore/icu/NativeDecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    #@91
    .line 1157
    const-string/jumbo v5, "roundingMode"

    #@94
    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@96
    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    move-result-object v5

    #@9a
    check-cast v5, Ljava/math/RoundingMode;

    #@9c
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    #@9f
    .line 1159
    const-string/jumbo v5, "maximumIntegerDigits"

    #@a2
    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@a5
    move-result v2

    #@a6
    .line 1160
    .local v2, "maximumIntegerDigits":I
    const-string/jumbo v5, "minimumIntegerDigits"

    #@a9
    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@ac
    move-result v4

    #@ad
    .line 1161
    .local v4, "minimumIntegerDigits":I
    const-string/jumbo v5, "maximumFractionDigits"

    #@b0
    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@b3
    move-result v1

    #@b4
    .line 1162
    .local v1, "maximumFractionDigits":I
    const-string/jumbo v5, "minimumFractionDigits"

    #@b7
    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@ba
    move-result v3

    #@bb
    .line 1168
    .local v3, "minimumFractionDigits":I
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@bd
    invoke-virtual {v5, v2}, Llibcore/icu/NativeDecimalFormat;->setMaximumIntegerDigits(I)V

    #@c0
    .line 1169
    iget-object v5, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@c2
    invoke-virtual {v5}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    #@c5
    move-result v5

    #@c6
    invoke-super {p0, v5}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@c9
    .line 1171
    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    #@cc
    .line 1172
    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@cf
    .line 1173
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@d2
    .line 1174
    const-string/jumbo v5, "parseBigDecimal"

    #@d5
    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@d8
    move-result v5

    #@d9
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    #@dc
    .line 1176
    const-string/jumbo v5, "serialVersionOnStream"

    #@df
    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@e2
    move-result v5

    #@e3
    if-ge v5, v10, :cond_0

    #@e5
    .line 1177
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumIntegerDigits()I

    #@e8
    move-result v5

    #@e9
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    #@ec
    .line 1178
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    #@ef
    move-result v5

    #@f0
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    #@f3
    .line 1179
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    #@f6
    move-result v5

    #@f7
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@fa
    .line 1180
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    #@fd
    move-result v5

    #@fe
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@101
    .line 1143
    :cond_0
    return-void
.end method

.method private updateFieldsFromNative()V
    .locals 1

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@8
    .line 605
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@a
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@10
    .line 606
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@12
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@18
    .line 607
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@1a
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@20
    .line 603
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1106
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@5
    move-result-object v0

    #@6
    .line 1107
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "positivePrefix"

    #@9
    iget-object v3, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@b
    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 1108
    const-string/jumbo v1, "positiveSuffix"

    #@15
    iget-object v3, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@17
    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@1e
    .line 1109
    const-string/jumbo v1, "negativePrefix"

    #@21
    iget-object v3, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@23
    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@2a
    .line 1110
    const-string/jumbo v1, "negativeSuffix"

    #@2d
    iget-object v3, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2f
    invoke-virtual {v3}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@36
    .line 1111
    const-string/jumbo v3, "posPrefixPattern"

    #@39
    move-object v1, v2

    #@3a
    check-cast v1, Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@3f
    .line 1112
    const-string/jumbo v3, "posSuffixPattern"

    #@42
    move-object v1, v2

    #@43
    check-cast v1, Ljava/lang/String;

    #@45
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@48
    .line 1113
    const-string/jumbo v3, "negPrefixPattern"

    #@4b
    move-object v1, v2

    #@4c
    check-cast v1, Ljava/lang/String;

    #@4e
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@51
    .line 1114
    const-string/jumbo v1, "negSuffixPattern"

    #@54
    check-cast v2, Ljava/lang/String;

    #@56
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@59
    .line 1115
    const-string/jumbo v1, "multiplier"

    #@5c
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@5e
    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    #@61
    move-result v2

    #@62
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@65
    .line 1116
    const-string/jumbo v1, "groupingSize"

    #@68
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@6a
    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    #@6d
    move-result v2

    #@6e
    int-to-byte v2, v2

    #@6f
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    #@72
    .line 1117
    const-string/jumbo v1, "groupingUsed"

    #@75
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@77
    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    #@7a
    move-result v2

    #@7b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@7e
    .line 1118
    const-string/jumbo v1, "decimalSeparatorAlwaysShown"

    #@81
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@83
    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    #@86
    move-result v2

    #@87
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@8a
    .line 1119
    const-string/jumbo v1, "parseBigDecimal"

    #@8d
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@8f
    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->isParseBigDecimal()Z

    #@92
    move-result v2

    #@93
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@96
    .line 1120
    const-string/jumbo v1, "roundingMode"

    #@99
    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@9b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@9e
    .line 1121
    const-string/jumbo v1, "symbols"

    #@a1
    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@a3
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@a6
    .line 1122
    const-string/jumbo v1, "useExponentialNotation"

    #@a9
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@ac
    .line 1123
    const-string/jumbo v1, "minExponentDigits"

    #@af
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    #@b2
    .line 1124
    const-string/jumbo v1, "maximumIntegerDigits"

    #@b5
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@b7
    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMaximumIntegerDigits()I

    #@ba
    move-result v2

    #@bb
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@be
    .line 1125
    const-string/jumbo v1, "minimumIntegerDigits"

    #@c1
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@c3
    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMinimumIntegerDigits()I

    #@c6
    move-result v2

    #@c7
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@ca
    .line 1126
    const-string/jumbo v1, "maximumFractionDigits"

    #@cd
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@cf
    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMaximumFractionDigits()I

    #@d2
    move-result v2

    #@d3
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@d6
    .line 1127
    const-string/jumbo v1, "minimumFractionDigits"

    #@d9
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@db
    invoke-virtual {v2}, Llibcore/icu/NativeDecimalFormat;->getMinimumFractionDigits()I

    #@de
    move-result v2

    #@df
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@e2
    .line 1128
    const-string/jumbo v1, "serialVersionOnStream"

    #@e5
    const/4 v2, 0x4

    #@e6
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@e9
    .line 1129
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@ec
    .line 1105
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    #@5
    .line 583
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromNative()V

    #@8
    .line 581
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 599
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->applyPattern(Ljava/lang/String;)V

    #@5
    .line 600
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromNative()V

    #@8
    .line 595
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 616
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/DecimalFormat;

    #@6
    .line 617
    .local v0, "clone":Ljava/text/DecimalFormat;
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@8
    invoke-virtual {v1}, Llibcore/icu/NativeDecimalFormat;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Llibcore/icu/NativeDecimalFormat;

    #@e
    iput-object v1, v0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@10
    .line 618
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@12
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/text/DecimalFormatSymbols;

    #@18
    iput-object v1, v0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@1a
    .line 619
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 635
    if-ne p0, p1, :cond_0

    #@3
    .line 636
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 638
    :cond_0
    instance-of v2, p1, Ljava/text/DecimalFormat;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 639
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 641
    check-cast v0, Ljava/text/DecimalFormat;

    #@d
    .line 642
    .local v0, "other":Ljava/text/DecimalFormat;
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@f
    if-nez v2, :cond_3

    #@11
    iget-object v2, v0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@13
    if-nez v2, :cond_2

    #@15
    .line 643
    :goto_0
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    .line 642
    :cond_2
    return v1

    #@22
    :cond_3
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@24
    iget-object v3, v0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@26
    invoke-virtual {v2, v3}, Llibcore/icu/NativeDecimalFormat;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2

    #@2c
    goto :goto_0
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "value"    # D
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 679
    invoke-direct {p0, p3, p4}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    #@3
    .line 680
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@5
    invoke-virtual {v0, p1, p2, p4}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@c
    .line 681
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "value"    # J
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 686
    invoke-direct {p0, p3, p4}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    #@3
    .line 687
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@5
    invoke-virtual {v0, p1, p2, p4}, Llibcore/icu/NativeDecimalFormat;->formatLong(JLjava/text/FieldPosition;)[C

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@c
    .line 688
    return-object p3
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "position"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 693
    invoke-direct {p0, p2, p3}, Ljava/text/DecimalFormat;->checkBufferAndFieldPosition(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    #@3
    .line 694
    instance-of v2, p1, Ljava/math/BigInteger;

    #@5
    if-eqz v2, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 695
    check-cast v0, Ljava/math/BigInteger;

    #@a
    .line 696
    .local v0, "bigInteger":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@d
    move-result v2

    #@e
    const/16 v3, 0x40

    #@10
    if-ge v2, v3, :cond_0

    #@12
    .line 697
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@14
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    #@17
    move-result-wide v4

    #@18
    invoke-virtual {v2, v4, v5, p3}, Llibcore/icu/NativeDecimalFormat;->formatLong(JLjava/text/FieldPosition;)[C

    #@1b
    move-result-object v1

    #@1c
    .line 699
    .local v1, "chars":[C
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@1f
    .line 700
    return-object p2

    #@20
    .line 698
    .end local v1    # "chars":[C
    :cond_0
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@22
    invoke-virtual {v2, v0, p3}, Llibcore/icu/NativeDecimalFormat;->formatBigInteger(Ljava/math/BigInteger;Ljava/text/FieldPosition;)[C

    #@25
    move-result-object v1

    #@26
    .restart local v1    # "chars":[C
    goto :goto_0

    #@27
    .line 701
    .end local v0    # "bigInteger":Ljava/math/BigInteger;
    .end local v1    # "chars":[C
    :cond_1
    instance-of v2, p1, Ljava/math/BigDecimal;

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 702
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2d
    check-cast p1, Ljava/math/BigDecimal;

    #@2f
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {v2, p1, p3}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    #@32
    move-result-object v2

    #@33
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@36
    .line 703
    return-object p2

    #@37
    .line 705
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v2

    #@3b
    return-object v2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 662
    if-nez p1, :cond_0

    #@2
    .line 663
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "object == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 665
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@d
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 726
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 715
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/text/DecimalFormatSymbols;

    #@8
    return-object v0
.end method

.method public getGroupingSize()I
    .locals 1

    #@0
    .prologue
    .line 737
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getGroupingSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMultiplier()I
    .locals 1

    #@0
    .prologue
    .line 996
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getMultiplier()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 755
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 764
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 773
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    #@0
    .prologue
    .line 1189
    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 778
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 1

    #@0
    .prologue
    .line 789
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    #@0
    .prologue
    .line 940
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isGroupingUsed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    #@0
    .prologue
    .line 801
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isParseBigDecimal()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    #@0
    .prologue
    .line 828
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->isParseIntegerOnly()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 858
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@3
    invoke-virtual {v1, p1, p2}, Llibcore/icu/NativeDecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@6
    move-result-object v0

    #@7
    .line 859
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    #@9
    .line 860
    return-object v2

    #@a
    .line 862
    :cond_0
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_5

    #@10
    .line 863
    instance-of v1, v0, Ljava/lang/Long;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 864
    new-instance v1, Ljava/math/BigDecimal;

    #@16
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    #@19
    move-result-wide v2

    #@1a
    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    #@1d
    return-object v1

    #@1e
    .line 866
    :cond_1
    instance-of v1, v0, Ljava/lang/Double;

    #@20
    if-eqz v1, :cond_2

    #@22
    move-object v1, v0

    #@23
    check-cast v1, Ljava/lang/Double;

    #@25
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_3

    #@2b
    .line 871
    :cond_2
    instance-of v1, v0, Ljava/math/BigInteger;

    #@2d
    if-eqz v1, :cond_4

    #@2f
    .line 872
    new-instance v1, Ljava/math/BigDecimal;

    #@31
    invoke-virtual {v0}, Ljava/lang/Number;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@38
    return-object v1

    #@39
    :cond_3
    move-object v1, v0

    #@3a
    .line 867
    check-cast v1, Ljava/lang/Double;

    #@3c
    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    #@3f
    move-result v1

    #@40
    if-nez v1, :cond_2

    #@42
    .line 869
    new-instance v1, Ljava/math/BigDecimal;

    #@44
    invoke-virtual {v0}, Ljava/lang/Number;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@4b
    return-object v1

    #@4c
    .line 874
    :cond_4
    return-object v0

    #@4d
    .line 876
    :cond_5
    instance-of v1, v0, Ljava/math/BigDecimal;

    #@4f
    if-nez v1, :cond_6

    #@51
    instance-of v1, v0, Ljava/math/BigInteger;

    #@53
    if-eqz v1, :cond_7

    #@55
    .line 877
    :cond_6
    new-instance v1, Ljava/lang/Double;

    #@57
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@5a
    move-result-wide v2

    #@5b
    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    #@5e
    return-object v1

    #@5f
    .line 879
    :cond_7
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseIntegerOnly()Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_8

    #@65
    sget-object v1, Ljava/text/DecimalFormat;->NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/Number;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v1

    #@6b
    if-eqz v1, :cond_8

    #@6d
    .line 880
    const-wide/16 v2, 0x0

    #@6f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@72
    move-result-object v1

    #@73
    return-object v1

    #@74
    .line 882
    :cond_8
    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 4
    .param p1, "currency"    # Ljava/util/Currency;

    #@0
    .prologue
    .line 903
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@7
    move-result-object v0

    #@8
    .line 904
    .local v0, "instance":Ljava/util/Currency;
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@a
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    #@d
    .line 905
    iget-object v1, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@f
    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@11
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v1, v2, v3}, Llibcore/icu/NativeDecimalFormat;->setCurrency(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 902
    return-void
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 2
    .param p1, "value"    # Ljava/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 890
    if-eqz p1, :cond_0

    #@2
    .line 892
    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/text/DecimalFormatSymbols;

    #@8
    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@a
    .line 893
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@c
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@e
    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    #@11
    .line 889
    :cond_0
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 913
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    #@5
    .line 912
    return-void
.end method

.method public setGroupingSize(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 922
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setGroupingSize(I)V

    #@5
    .line 921
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 931
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setGroupingUsed(Z)V

    #@5
    .line 930
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 950
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    #@3
    .line 951
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@5
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMaximumFractionDigits(I)V

    #@c
    .line 953
    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@e
    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    #@11
    .line 949
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 963
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@3
    .line 964
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@5
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMaximumIntegerDigits(I)V

    #@c
    .line 962
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 974
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    #@3
    .line 975
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@5
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMinimumFractionDigits(I)V

    #@c
    .line 973
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 985
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@3
    .line 986
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@5
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Llibcore/icu/NativeDecimalFormat;->setMinimumIntegerDigits(I)V

    #@c
    .line 984
    return-void
.end method

.method public setMultiplier(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1006
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setMultiplier(I)V

    #@5
    .line 1005
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1013
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    #@5
    .line 1012
    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1020
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    #@5
    .line 1019
    return-void
.end method

.method public setParseBigDecimal(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 1046
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setParseBigDecimal(Z)V

    #@5
    .line 1045
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 822
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    #@3
    .line 823
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@5
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setParseIntegerOnly(Z)V

    #@8
    .line 818
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1027
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    #@5
    .line 1026
    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1034
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    #@5
    .line 1033
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 4
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    .line 1197
    if-nez p1, :cond_0

    #@2
    .line 1198
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "roundingMode == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1200
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@d
    .line 1204
    const-wide/16 v0, 0x0

    #@f
    .line 1205
    .local v0, "roundingIncrement":D
    iget-object v2, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@11
    invoke-virtual {v2, p1, v0, v1}, Llibcore/icu/NativeDecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;D)V

    #@14
    .line 1196
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1056
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1066
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toPattern()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1208
    iget-object v0, p0, Ljava/text/DecimalFormat;->ndf:Llibcore/icu/NativeDecimalFormat;

    #@2
    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

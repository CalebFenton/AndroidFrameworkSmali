.class public Ljava/text/DecimalFormat;
.super Ljava/text/NumberFormat;
.source "DecimalFormat.java"


# static fields
.field private static final synthetic -java-math-RoundingModeSwitchesValues:[I = null

.field static final DOUBLE_FRACTION_DIGITS:I = 0x154

.field static final DOUBLE_INTEGER_DIGITS:I = 0x135

.field static final MAXIMUM_FRACTION_DIGITS:I = 0x7fffffff

.field static final MAXIMUM_INTEGER_DIGITS:I = 0x7fffffff

.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentSerialVersion:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field private transient icuDecimalFormat:Landroid/icu/text/DecimalFormat;

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private roundingMode:Ljava/math/RoundingMode;

.field private symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method private static synthetic -getjava-math-RoundingModeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljava/text/DecimalFormat;->-java-math-RoundingModeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/text/DecimalFormat;->-java-math-RoundingModeSwitchesValues:[I

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
    sput-object v0, Ljava/text/DecimalFormat;->-java-math-RoundingModeSwitchesValues:[I

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
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 1432
    const/16 v0, 0x16

    #@3
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@5
    .line 1433
    new-instance v1, Ljava/io/ObjectStreamField;

    #@7
    const-string/jumbo v2, "positivePrefix"

    #@a
    const-class v3, Ljava/lang/String;

    #@c
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@f
    const/4 v2, 0x0

    #@10
    aput-object v1, v0, v2

    #@12
    .line 1434
    new-instance v1, Ljava/io/ObjectStreamField;

    #@14
    const-string/jumbo v2, "positiveSuffix"

    #@17
    const-class v3, Ljava/lang/String;

    #@19
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1c
    const/4 v2, 0x1

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 1435
    new-instance v1, Ljava/io/ObjectStreamField;

    #@21
    const-string/jumbo v2, "negativePrefix"

    #@24
    const-class v3, Ljava/lang/String;

    #@26
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@29
    const/4 v2, 0x2

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 1436
    new-instance v1, Ljava/io/ObjectStreamField;

    #@2e
    const-string/jumbo v2, "negativeSuffix"

    #@31
    const-class v3, Ljava/lang/String;

    #@33
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@36
    aput-object v1, v0, v4

    #@38
    .line 1437
    new-instance v1, Ljava/io/ObjectStreamField;

    #@3a
    const-string/jumbo v2, "posPrefixPattern"

    #@3d
    const-class v3, Ljava/lang/String;

    #@3f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@42
    const/4 v2, 0x4

    #@43
    aput-object v1, v0, v2

    #@45
    .line 1438
    new-instance v1, Ljava/io/ObjectStreamField;

    #@47
    const-string/jumbo v2, "posSuffixPattern"

    #@4a
    const-class v3, Ljava/lang/String;

    #@4c
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@4f
    const/4 v2, 0x5

    #@50
    aput-object v1, v0, v2

    #@52
    .line 1439
    new-instance v1, Ljava/io/ObjectStreamField;

    #@54
    const-string/jumbo v2, "negPrefixPattern"

    #@57
    const-class v3, Ljava/lang/String;

    #@59
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@5c
    const/4 v2, 0x6

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 1440
    new-instance v1, Ljava/io/ObjectStreamField;

    #@61
    const-string/jumbo v2, "negSuffixPattern"

    #@64
    const-class v3, Ljava/lang/String;

    #@66
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@69
    const/4 v2, 0x7

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 1441
    new-instance v1, Ljava/io/ObjectStreamField;

    #@6e
    const-string/jumbo v2, "multiplier"

    #@71
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@73
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@76
    const/16 v2, 0x8

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 1442
    new-instance v1, Ljava/io/ObjectStreamField;

    #@7c
    const-string/jumbo v2, "groupingSize"

    #@7f
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@81
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@84
    const/16 v2, 0x9

    #@86
    aput-object v1, v0, v2

    #@88
    .line 1443
    new-instance v1, Ljava/io/ObjectStreamField;

    #@8a
    const-string/jumbo v2, "groupingUsed"

    #@8d
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@8f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@92
    const/16 v2, 0xa

    #@94
    aput-object v1, v0, v2

    #@96
    .line 1444
    new-instance v1, Ljava/io/ObjectStreamField;

    #@98
    const-string/jumbo v2, "decimalSeparatorAlwaysShown"

    #@9b
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@9d
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@a0
    const/16 v2, 0xb

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 1445
    new-instance v1, Ljava/io/ObjectStreamField;

    #@a6
    const-string/jumbo v2, "parseBigDecimal"

    #@a9
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@ab
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ae
    const/16 v2, 0xc

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 1446
    new-instance v1, Ljava/io/ObjectStreamField;

    #@b4
    const-string/jumbo v2, "roundingMode"

    #@b7
    const-class v3, Ljava/math/RoundingMode;

    #@b9
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@bc
    const/16 v2, 0xd

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 1447
    new-instance v1, Ljava/io/ObjectStreamField;

    #@c2
    const-string/jumbo v2, "symbols"

    #@c5
    const-class v3, Ljava/text/DecimalFormatSymbols;

    #@c7
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ca
    const/16 v2, 0xe

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 1448
    new-instance v1, Ljava/io/ObjectStreamField;

    #@d0
    const-string/jumbo v2, "useExponentialNotation"

    #@d3
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@d5
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d8
    const/16 v2, 0xf

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 1449
    new-instance v1, Ljava/io/ObjectStreamField;

    #@de
    const-string/jumbo v2, "minExponentDigits"

    #@e1
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@e3
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e6
    const/16 v2, 0x10

    #@e8
    aput-object v1, v0, v2

    #@ea
    .line 1450
    new-instance v1, Ljava/io/ObjectStreamField;

    #@ec
    const-string/jumbo v2, "maximumIntegerDigits"

    #@ef
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@f1
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@f4
    const/16 v2, 0x11

    #@f6
    aput-object v1, v0, v2

    #@f8
    .line 1451
    new-instance v1, Ljava/io/ObjectStreamField;

    #@fa
    const-string/jumbo v2, "minimumIntegerDigits"

    #@fd
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@ff
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@102
    const/16 v2, 0x12

    #@104
    aput-object v1, v0, v2

    #@106
    .line 1452
    new-instance v1, Ljava/io/ObjectStreamField;

    #@108
    const-string/jumbo v2, "maximumFractionDigits"

    #@10b
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@10d
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@110
    const/16 v2, 0x13

    #@112
    aput-object v1, v0, v2

    #@114
    .line 1453
    new-instance v1, Ljava/io/ObjectStreamField;

    #@116
    const-string/jumbo v2, "minimumFractionDigits"

    #@119
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@11b
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@11e
    const/16 v2, 0x14

    #@120
    aput-object v1, v0, v2

    #@122
    .line 1454
    new-instance v1, Ljava/io/ObjectStreamField;

    #@124
    const-string/jumbo v2, "serialVersionOnStream"

    #@127
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@129
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@12c
    const/16 v2, 0x15

    #@12e
    aput-object v1, v0, v2

    #@130
    .line 1432
    sput-object v0, Ljava/text/DecimalFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@132
    .line 1663
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@134
    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@137
    .line 1662
    sput-object v0, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    #@139
    .line 380
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 399
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    #@3
    .line 1640
    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@5
    iput-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@7
    .line 400
    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@9
    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@c
    move-result-object v0

    #@d
    .line 402
    .local v0, "def":Ljava/util/Locale;
    sget-object v2, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    #@f
    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/String;

    #@15
    .line 403
    .local v1, "pattern":Ljava/lang/String;
    if-nez v1, :cond_0

    #@17
    .line 405
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@1a
    move-result-object v2

    #@1b
    iget-object v1, v2, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    #@1d
    .line 407
    sget-object v2, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    #@1f
    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 409
    :cond_0
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    #@24
    invoke-direct {v2, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@27
    iput-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@29
    .line 410
    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    #@2c
    .line 399
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 432
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    #@3
    .line 1640
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@5
    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@7
    .line 433
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    #@9
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@b
    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@12
    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@14
    .line 434
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    #@17
    .line 432
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "symbols"    # Ljava/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 459
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    #@3
    .line 1640
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@5
    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@7
    .line 461
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/text/DecimalFormatSymbols;

    #@d
    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@f
    .line 462
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    #@12
    .line 459
    return-void
.end method

.method private compareIcuRoundingIncrement(Landroid/icu/text/DecimalFormat;)Z
    .locals 3
    .param p1, "other"    # Landroid/icu/text/DecimalFormat;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1080
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@3
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    #@6
    move-result-object v0

    #@7
    .line 1081
    .local v0, "increment":Ljava/math/BigDecimal;
    if-eqz v0, :cond_1

    #@9
    .line 1082
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    #@c
    move-result-object v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1083
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    .line 1082
    :cond_0
    return v1

    #@18
    .line 1085
    :cond_1
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    #@1b
    move-result-object v2

    #@1c
    if-nez v2, :cond_2

    #@1e
    const/4 v1, 0x1

    #@1f
    :cond_2
    return v1
.end method

.method private static convertRoundingMode(Ljava/math/RoundingMode;)I
    .locals 2
    .param p0, "rm"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    .line 1361
    invoke-static {}, Ljava/text/DecimalFormat;->-getjava-math-RoundingModeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 1379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Invalid rounding mode specified"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 1363
    :pswitch_0
    const/4 v0, 0x0

    #@17
    return v0

    #@18
    .line 1365
    :pswitch_1
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    .line 1367
    :pswitch_2
    const/4 v0, 0x2

    #@1b
    return v0

    #@1c
    .line 1369
    :pswitch_3
    const/4 v0, 0x3

    #@1d
    return v0

    #@1e
    .line 1371
    :pswitch_4
    const/4 v0, 0x4

    #@1f
    return v0

    #@20
    .line 1373
    :pswitch_5
    const/4 v0, 0x5

    #@21
    return v0

    #@22
    .line 1375
    :pswitch_6
    const/4 v0, 0x6

    #@23
    return v0

    #@24
    .line 1377
    :pswitch_7
    const/4 v0, 0x7

    #@25
    return v0

    #@26
    .line 1361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 650
    invoke-static {p3}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    #@3
    move-result-object v0

    #@4
    .line 651
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@6
    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@9
    .line 652
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@10
    .line 653
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@17
    .line 654
    return-object p2
.end method

.method private format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 670
    invoke-static {p3}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    #@3
    move-result-object v0

    #@4
    .line 671
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@6
    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@9
    .line 672
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@10
    .line 673
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@17
    .line 674
    return-object p2
.end method

.method private static getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;
    .locals 4
    .param p0, "fp"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@3
    move-result-object v2

    #@4
    if-nez v2, :cond_0

    #@6
    return-object p0

    #@7
    .line 480
    :cond_0
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@a
    move-result-object v2

    #@b
    sget-object v3, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 481
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    #@11
    .line 506
    .local v0, "attribute":Landroid/icu/text/NumberFormat$Field;
    :goto_0
    new-instance v1, Ljava/text/FieldPosition;

    #@13
    invoke-direct {v1, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    #@16
    .line 507
    .local v1, "icuFieldPosition":Ljava/text/FieldPosition;
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@1d
    .line 508
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getEndIndex()I

    #@20
    move-result v2

    #@21
    invoke-virtual {v1, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@24
    .line 509
    return-object v1

    #@25
    .line 482
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    .end local v1    # "icuFieldPosition":Ljava/text/FieldPosition;
    :cond_1
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@28
    move-result-object v2

    #@29
    sget-object v3, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    #@2b
    if-ne v2, v3, :cond_2

    #@2d
    .line 483
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    #@2f
    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    #@30
    .line 484
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_2
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@33
    move-result-object v2

    #@34
    sget-object v3, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@36
    if-ne v2, v3, :cond_3

    #@38
    .line 485
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@3a
    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    #@3b
    .line 486
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_3
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@3e
    move-result-object v2

    #@3f
    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    #@41
    if-ne v2, v3, :cond_4

    #@43
    .line 487
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@45
    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    #@46
    .line 488
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_4
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@49
    move-result-object v2

    #@4a
    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    #@4c
    if-ne v2, v3, :cond_5

    #@4e
    .line 489
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    #@50
    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    #@51
    .line 490
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_5
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@54
    move-result-object v2

    #@55
    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    #@57
    if-ne v2, v3, :cond_6

    #@59
    .line 491
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@5b
    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    #@5c
    .line 492
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_6
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@5f
    move-result-object v2

    #@60
    sget-object v3, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@62
    if-ne v2, v3, :cond_7

    #@64
    .line 493
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    #@66
    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    #@67
    .line 494
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_7
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@6a
    move-result-object v2

    #@6b
    sget-object v3, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    #@6d
    if-ne v2, v3, :cond_8

    #@6f
    .line 495
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    #@71
    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    #@72
    .line 496
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_8
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@75
    move-result-object v2

    #@76
    sget-object v3, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    #@78
    if-ne v2, v3, :cond_9

    #@7a
    .line 497
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    #@7c
    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    #@7d
    .line 498
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_9
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@80
    move-result-object v2

    #@81
    sget-object v3, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    #@83
    if-ne v2, v3, :cond_a

    #@85
    .line 499
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    #@87
    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    #@88
    .line 500
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_a
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@8b
    move-result-object v2

    #@8c
    sget-object v3, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    #@8e
    if-ne v2, v3, :cond_b

    #@90
    .line 501
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    #@92
    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto/16 :goto_0

    #@94
    .line 503
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@96
    const-string/jumbo v3, "Unexpected field position attribute type."

    #@99
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v2
.end method

.method private init(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 466
    new-instance v0, Landroid/icu/text/DecimalFormat;

    #@2
    .line 467
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@4
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@7
    move-result-object v1

    #@8
    .line 466
    invoke-direct {v0, p1, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    #@b
    iput-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@d
    .line 468
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    #@10
    .line 465
    return-void
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
    .line 1529
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@a
    move-result-object v0

    #@b
    .line 1530
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
    .line 1532
    const-string/jumbo v5, ""

    #@1a
    invoke-direct {p0, v5}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    #@1d
    .line 1534
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

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
    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    #@2e
    .line 1535
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

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
    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    #@3f
    .line 1536
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

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
    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    #@50
    .line 1537
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

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
    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    #@61
    .line 1538
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@63
    const-string/jumbo v6, "multiplier"

    #@66
    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@69
    move-result v6

    #@6a
    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    #@6d
    .line 1539
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@6f
    const-string/jumbo v6, "groupingSize"

    #@72
    invoke-virtual {v0, v6, v10}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    #@75
    move-result v6

    #@76
    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    #@79
    .line 1540
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@7b
    const-string/jumbo v6, "groupingUsed"

    #@7e
    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@81
    move-result v6

    #@82
    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    #@85
    .line 1541
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@87
    const-string/jumbo v6, "decimalSeparatorAlwaysShown"

    #@8a
    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@8d
    move-result v6

    #@8e
    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    #@91
    .line 1544
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
    .line 1546
    const-string/jumbo v5, "maximumIntegerDigits"

    #@a2
    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@a5
    move-result v2

    #@a6
    .line 1547
    .local v2, "maximumIntegerDigits":I
    const-string/jumbo v5, "minimumIntegerDigits"

    #@a9
    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@ac
    move-result v4

    #@ad
    .line 1548
    .local v4, "minimumIntegerDigits":I
    const-string/jumbo v5, "maximumFractionDigits"

    #@b0
    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@b3
    move-result v1

    #@b4
    .line 1549
    .local v1, "maximumFractionDigits":I
    const-string/jumbo v5, "minimumFractionDigits"

    #@b7
    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@ba
    move-result v3

    #@bb
    .line 1555
    .local v3, "minimumFractionDigits":I
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@bd
    invoke-virtual {v5, v2}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    #@c0
    .line 1556
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@c2
    invoke-virtual {v5}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@c5
    move-result v5

    #@c6
    invoke-super {p0, v5}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@c9
    .line 1558
    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    #@cc
    .line 1559
    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@cf
    .line 1560
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@d2
    .line 1561
    const-string/jumbo v5, "parseBigDecimal"

    #@d5
    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@d8
    move-result v5

    #@d9
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    #@dc
    .line 1563
    const-string/jumbo v5, "serialVersionOnStream"

    #@df
    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@e2
    move-result v5

    #@e3
    if-ge v5, v10, :cond_0

    #@e5
    .line 1564
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumIntegerDigits()I

    #@e8
    move-result v5

    #@e9
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    #@ec
    .line 1565
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    #@ef
    move-result v5

    #@f0
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    #@f3
    .line 1566
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    #@f6
    move-result v5

    #@f7
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@fa
    .line 1567
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    #@fd
    move-result v5

    #@fe
    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@101
    .line 1528
    :cond_0
    return-void
.end method

.method private static toJavaFieldAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/NumberFormat$Field;
    .locals 3
    .param p0, "icuAttribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    .line 519
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    #@6
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 520
    sget-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    #@12
    return-object v0

    #@13
    .line 522
    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    sget-object v1, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    #@19
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 523
    sget-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    #@25
    return-object v0

    #@26
    .line 525
    :cond_1
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    sget-object v1, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@2c
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_2

    #@36
    .line 526
    sget-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@38
    return-object v0

    #@39
    .line 528
    :cond_2
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    #@3f
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_3

    #@49
    .line 529
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    #@4b
    return-object v0

    #@4c
    .line 531
    :cond_3
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    #@52
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_4

    #@5c
    .line 532
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    #@5e
    return-object v0

    #@5f
    .line 534
    :cond_4
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    #@65
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_5

    #@6f
    .line 535
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    #@71
    return-object v0

    #@72
    .line 537
    :cond_5
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    sget-object v1, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    #@78
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v0

    #@80
    if-eqz v0, :cond_6

    #@82
    .line 538
    sget-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    #@84
    return-object v0

    #@85
    .line 540
    :cond_6
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    sget-object v1, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@8b
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v0

    #@93
    if-eqz v0, :cond_7

    #@95
    .line 541
    sget-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    #@97
    return-object v0

    #@98
    .line 543
    :cond_7
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    sget-object v1, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    #@9e
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v0

    #@a6
    if-eqz v0, :cond_8

    #@a8
    .line 544
    sget-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    #@aa
    return-object v0

    #@ab
    .line 546
    :cond_8
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    sget-object v1, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    #@b1
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v0

    #@b9
    if-eqz v0, :cond_9

    #@bb
    .line 547
    sget-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    #@bd
    return-object v0

    #@be
    .line 549
    :cond_9
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@c1
    move-result-object v0

    #@c2
    sget-object v1, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    #@c4
    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v0

    #@cc
    if-eqz v0, :cond_a

    #@ce
    .line 550
    sget-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    #@d0
    return-object v0

    #@d1
    .line 552
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d3
    new-instance v1, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v2, "Unrecognized attribute: "

    #@db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@e2
    move-result-object v2

    #@e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v1

    #@eb
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ee
    throw v0
.end method

.method private updateFieldsFromIcu()V
    .locals 2

    #@0
    .prologue
    .line 1172
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x135

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 1173
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@c
    const v1, 0x77359400

    #@f
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    #@12
    .line 1175
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@14
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@1a
    .line 1176
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@1c
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@22
    .line 1177
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@24
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@2a
    .line 1178
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2c
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@32
    .line 1168
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
    .line 1458
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@5
    move-result-object v0

    #@6
    .line 1459
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "positivePrefix"

    #@9
    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@b
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 1460
    const-string/jumbo v1, "positiveSuffix"

    #@15
    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@17
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@1e
    .line 1461
    const-string/jumbo v1, "negativePrefix"

    #@21
    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@23
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@2a
    .line 1462
    const-string/jumbo v1, "negativeSuffix"

    #@2d
    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2f
    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@36
    .line 1463
    const-string/jumbo v3, "posPrefixPattern"

    #@39
    move-object v1, v2

    #@3a
    check-cast v1, Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@3f
    .line 1464
    const-string/jumbo v3, "posSuffixPattern"

    #@42
    move-object v1, v2

    #@43
    check-cast v1, Ljava/lang/String;

    #@45
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@48
    .line 1465
    const-string/jumbo v3, "negPrefixPattern"

    #@4b
    move-object v1, v2

    #@4c
    check-cast v1, Ljava/lang/String;

    #@4e
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@51
    .line 1466
    const-string/jumbo v1, "negSuffixPattern"

    #@54
    check-cast v2, Ljava/lang/String;

    #@56
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@59
    .line 1467
    const-string/jumbo v1, "multiplier"

    #@5c
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@5e
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    #@61
    move-result v2

    #@62
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@65
    .line 1468
    const-string/jumbo v1, "groupingSize"

    #@68
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@6a
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    #@6d
    move-result v2

    #@6e
    int-to-byte v2, v2

    #@6f
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    #@72
    .line 1469
    const-string/jumbo v1, "groupingUsed"

    #@75
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@77
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    #@7a
    move-result v2

    #@7b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@7e
    .line 1470
    const-string/jumbo v1, "decimalSeparatorAlwaysShown"

    #@81
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@83
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    #@86
    move-result v2

    #@87
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@8a
    .line 1471
    const-string/jumbo v1, "parseBigDecimal"

    #@8d
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@8f
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    #@92
    move-result v2

    #@93
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@96
    .line 1472
    const-string/jumbo v1, "roundingMode"

    #@99
    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@9b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@9e
    .line 1473
    const-string/jumbo v1, "symbols"

    #@a1
    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@a3
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@a6
    .line 1474
    const-string/jumbo v1, "useExponentialNotation"

    #@a9
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@ac
    .line 1475
    const-string/jumbo v1, "minExponentDigits"

    #@af
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    #@b2
    .line 1476
    const-string/jumbo v1, "maximumIntegerDigits"

    #@b5
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@b7
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@ba
    move-result v2

    #@bb
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@be
    .line 1477
    const-string/jumbo v1, "minimumIntegerDigits"

    #@c1
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@c3
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@c6
    move-result v2

    #@c7
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@ca
    .line 1478
    const-string/jumbo v1, "maximumFractionDigits"

    #@cd
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@cf
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@d2
    move-result v2

    #@d3
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@d6
    .line 1479
    const-string/jumbo v1, "minimumFractionDigits"

    #@d9
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@db
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    #@de
    move-result v2

    #@df
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@e2
    .line 1480
    const-string/jumbo v1, "serialVersionOnStream"

    #@e5
    const/4 v2, 0x4

    #@e6
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@e9
    .line 1481
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@ec
    .line 1457
    return-void
.end method


# virtual methods
.method adjustForCurrencyDefaultFractionDigits()V
    .locals 5

    #@0
    .prologue
    .line 1405
    iget-object v4, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    #@5
    move-result-object v0

    #@6
    .line 1406
    .local v0, "currency":Ljava/util/Currency;
    if-nez v0, :cond_0

    #@8
    .line 1408
    :try_start_0
    iget-object v4, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@a
    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v0

    #@12
    .line 1412
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@14
    .line 1413
    invoke-virtual {v0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    #@17
    move-result v1

    #@18
    .line 1414
    .local v1, "digits":I
    const/4 v4, -0x1

    #@19
    if-eq v1, v4, :cond_1

    #@1b
    .line 1415
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    #@1e
    move-result v3

    #@1f
    .line 1418
    .local v3, "oldMinDigits":I
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    #@22
    move-result v4

    #@23
    if-ne v3, v4, :cond_2

    #@25
    .line 1419
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@28
    .line 1420
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@2b
    .line 1404
    .end local v1    # "digits":I
    .end local v3    # "oldMinDigits":I
    :cond_1
    :goto_1
    return-void

    #@2c
    .line 1422
    .restart local v1    # "digits":I
    .restart local v3    # "oldMinDigits":I
    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    #@2f
    move-result v4

    #@30
    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@33
    .line 1423
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@36
    goto :goto_1

    #@37
    .line 1409
    .end local v1    # "digits":I
    .end local v3    # "oldMinDigits":I
    :catch_0
    move-exception v2

    #@38
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1164
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    #@5
    .line 1165
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    #@8
    .line 1163
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1136
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    #@5
    .line 1137
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    #@8
    .line 1135
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 1051
    :try_start_0
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/text/DecimalFormat;

    #@6
    .line 1052
    .local v1, "other":Ljava/text/DecimalFormat;
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@8
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/icu/text/DecimalFormat;

    #@e
    iput-object v2, v1, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@10
    .line 1053
    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@12
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/text/DecimalFormatSymbols;

    #@18
    iput-object v2, v1, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1054
    return-object v1

    #@1b
    .line 1055
    .end local v1    # "other":Ljava/text/DecimalFormat;
    :catch_0
    move-exception v0

    #@1c
    .line 1056
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/InternalError;

    #@1e
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@21
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1065
    if-nez p1, :cond_0

    #@3
    .line 1066
    return v1

    #@4
    .line 1068
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 1069
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 1071
    :cond_1
    instance-of v2, p1, Ljava/text/DecimalFormat;

    #@a
    if-nez v2, :cond_2

    #@c
    .line 1072
    return v1

    #@d
    :cond_2
    move-object v0, p1

    #@e
    .line 1074
    check-cast v0, Ljava/text/DecimalFormat;

    #@10
    .line 1075
    .local v0, "other":Ljava/text/DecimalFormat;
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@12
    iget-object v3, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@14
    invoke-virtual {v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_3

    #@1a
    .line 1076
    iget-object v1, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@1c
    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->compareIcuRoundingIncrement(Landroid/icu/text/DecimalFormat;)Z

    #@1f
    move-result v1

    #@20
    .line 1075
    :cond_3
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "number"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 610
    invoke-static {p4}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    #@3
    move-result-object v0

    #@4
    .line 611
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@6
    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@9
    .line 612
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@10
    .line 613
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@17
    .line 614
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "number"    # J
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 630
    invoke-static {p4}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    #@3
    move-result-object v0

    #@4
    .line 631
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@6
    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@9
    .line 632
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@10
    .line 633
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@17
    .line 634
    return-object p3
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 579
    instance-of v0, p1, Ljava/lang/Long;

    #@2
    if-nez v0, :cond_0

    #@4
    instance-of v0, p1, Ljava/lang/Integer;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 580
    instance-of v0, p1, Ljava/lang/Short;

    #@a
    .line 579
    if-nez v0, :cond_0

    #@c
    .line 580
    instance-of v0, p1, Ljava/lang/Byte;

    #@e
    .line 579
    if-nez v0, :cond_0

    #@10
    .line 581
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    .line 579
    if-nez v0, :cond_0

    #@14
    .line 582
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    #@16
    .line 579
    if-nez v0, :cond_0

    #@18
    .line 583
    instance-of v0, p1, Ljava/math/BigInteger;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    move-object v0, p1

    #@1d
    .line 584
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
    .line 585
    :cond_0
    check-cast p1, Ljava/lang/Number;

    #@29
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    #@2c
    move-result-wide v0

    #@2d
    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@30
    move-result-object v0

    #@31
    return-object v0

    #@32
    .line 586
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    #@34
    if-eqz v0, :cond_2

    #@36
    .line 587
    check-cast p1, Ljava/math/BigDecimal;

    #@38
    .end local p1    # "number":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@3b
    move-result-object v0

    #@3c
    return-object v0

    #@3d
    .line 588
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/math/BigInteger;

    #@3f
    if-eqz v0, :cond_3

    #@41
    .line 589
    check-cast p1, Ljava/math/BigInteger;

    #@43
    .end local p1    # "number":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@46
    move-result-object v0

    #@47
    return-object v0

    #@48
    .line 590
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/lang/Number;

    #@4a
    if-eqz v0, :cond_4

    #@4c
    .line 591
    check-cast p1, Ljava/lang/Number;

    #@4e
    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@51
    move-result-wide v0

    #@52
    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@55
    move-result-object v0

    #@56
    return-object v0

    #@57
    .line 593
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@59
    const-string/jumbo v1, "Cannot format given Object as a Number"

    #@5c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 697
    if-nez p1, :cond_0

    #@2
    .line 698
    new-instance v9, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v10, "object == null"

    #@7
    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v9

    #@b
    .line 704
    :cond_0
    iget-object v9, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@d
    invoke-virtual {v9, p1}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    #@10
    move-result-object v5

    #@11
    .line 707
    .local v5, "original":Ljava/text/AttributedCharacterIterator;
    new-instance v8, Ljava/lang/StringBuilder;

    #@13
    .line 708
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@16
    move-result v9

    #@17
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@1a
    move-result v10

    #@1b
    sub-int/2addr v9, v10

    #@1c
    .line 707
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1f
    .line 710
    .local v8, "textBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@22
    move-result v3

    #@23
    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@26
    move-result v9

    #@27
    if-ge v3, v9, :cond_1

    #@29
    .line 711
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->current()C

    #@2c
    move-result v9

    #@2d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 712
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->next()C

    #@33
    .line 710
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_0

    #@36
    .line 715
    :cond_1
    new-instance v6, Ljava/text/AttributedString;

    #@38
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v9

    #@3c
    invoke-direct {v6, v9}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@3f
    .line 717
    .local v6, "result":Ljava/text/AttributedString;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@42
    move-result v3

    #@43
    :goto_1
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@46
    move-result v9

    #@47
    if-ge v3, v9, :cond_3

    #@49
    .line 718
    invoke-interface {v5, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@4c
    .line 721
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    #@4f
    move-result-object v9

    #@50
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@53
    move-result-object v9

    #@54
    .line 720
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v1

    #@58
    .local v1, "attribute$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v9

    #@5c
    if-eqz v9, :cond_2

    #@5e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@64
    .line 722
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    #@67
    move-result v7

    #@68
    .line 723
    .local v7, "start":I
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    #@6b
    move-result v2

    #@6c
    .line 724
    .local v2, "end":I
    invoke-static {v0}, Ljava/text/DecimalFormat;->toJavaFieldAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/NumberFormat$Field;

    #@6f
    move-result-object v4

    #@70
    .line 725
    .local v4, "javaAttr":Ljava/text/NumberFormat$Field;
    invoke-virtual {v6, v4, v4, v7, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@73
    goto :goto_2

    #@74
    .line 717
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v2    # "end":I
    .end local v4    # "javaAttr":Ljava/text/NumberFormat$Field;
    .end local v7    # "start":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@76
    goto :goto_1

    #@77
    .line 729
    .end local v1    # "attribute$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v6}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@7a
    move-result-object v9

    #@7b
    return-object v9
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 1320
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
    .line 831
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getGroupingSize()I
    .locals 1

    #@0
    .prologue
    .line 951
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 1294
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@2
    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 1270
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@2
    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 1306
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@2
    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 1282
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@2
    return v0
.end method

.method public getMultiplier()I
    .locals 1

    #@0
    .prologue
    .line 922
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 872
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 888
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    #@0
    .prologue
    .line 1357
    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 1092
    invoke-super {p0}, Ljava/text/NumberFormat;->hashCode()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x25

    #@6
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 1

    #@0
    .prologue
    .line 993
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    #@0
    .prologue
    .line 976
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    #@0
    .prologue
    .line 1012
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    #@0
    .prologue
    .line 1043
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 790
    iget v1, p2, Ljava/text/ParsePosition;->index:I

    #@3
    if-ltz v1, :cond_0

    #@5
    iget v1, p2, Ljava/text/ParsePosition;->index:I

    #@7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    if-lt v1, v2, :cond_1

    #@d
    .line 791
    :cond_0
    return-object v3

    #@e
    .line 795
    :cond_1
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@10
    invoke-virtual {v1, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@13
    move-result-object v0

    #@14
    .line 796
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_2

    #@16
    .line 797
    return-object v3

    #@17
    .line 799
    :cond_2
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_8

    #@1d
    .line 800
    instance-of v1, v0, Ljava/lang/Long;

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 801
    new-instance v1, Ljava/math/BigDecimal;

    #@23
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    #@26
    move-result-wide v2

    #@27
    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    #@2a
    return-object v1

    #@2b
    .line 803
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    #@2d
    if-eqz v1, :cond_4

    #@2f
    move-object v1, v0

    #@30
    check-cast v1, Ljava/lang/Double;

    #@32
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_6

    #@38
    .line 807
    :cond_4
    instance-of v1, v0, Ljava/lang/Double;

    #@3a
    if-eqz v1, :cond_7

    #@3c
    move-object v1, v0

    #@3d
    .line 808
    check-cast v1, Ljava/lang/Double;

    #@3f
    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    #@42
    move-result v1

    #@43
    if-nez v1, :cond_5

    #@45
    move-object v1, v0

    #@46
    check-cast v1, Ljava/lang/Double;

    #@48
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    #@4b
    move-result v1

    #@4c
    .line 807
    if-eqz v1, :cond_7

    #@4e
    .line 809
    :cond_5
    return-object v0

    #@4f
    :cond_6
    move-object v1, v0

    #@50
    .line 804
    check-cast v1, Ljava/lang/Double;

    #@52
    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    #@55
    move-result v1

    #@56
    if-nez v1, :cond_4

    #@58
    .line 805
    new-instance v1, Ljava/math/BigDecimal;

    #@5a
    invoke-virtual {v0}, Ljava/lang/Number;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@61
    return-object v1

    #@62
    .line 811
    :cond_7
    instance-of v1, v0, Landroid/icu/math/BigDecimal;

    #@64
    if-eqz v1, :cond_8

    #@66
    .line 812
    check-cast v0, Landroid/icu/math/BigDecimal;

    #@68
    .end local v0    # "number":Ljava/lang/Number;
    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    #@6b
    move-result-object v1

    #@6c
    return-object v1

    #@6d
    .line 815
    .restart local v0    # "number":Ljava/lang/Number;
    :cond_8
    instance-of v1, v0, Landroid/icu/math/BigDecimal;

    #@6f
    if-nez v1, :cond_9

    #@71
    instance-of v1, v0, Ljava/math/BigInteger;

    #@73
    if-eqz v1, :cond_a

    #@75
    .line 816
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@78
    move-result-wide v2

    #@79
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@7c
    move-result-object v1

    #@7d
    return-object v1

    #@7e
    .line 818
    :cond_a
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseIntegerOnly()Z

    #@81
    move-result v1

    #@82
    if-eqz v1, :cond_b

    #@84
    new-instance v1, Ljava/lang/Double;

    #@86
    const-wide/high16 v2, -0x8000000000000000L

    #@88
    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/Number;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v1

    #@8f
    if-eqz v1, :cond_b

    #@91
    .line 819
    const-wide/16 v2, 0x0

    #@93
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@96
    move-result-object v1

    #@97
    return-object v1

    #@98
    .line 821
    :cond_b
    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 2
    .param p1, "currency"    # Ljava/util/Currency;

    #@0
    .prologue
    .line 1338
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    #@5
    move-result-object v0

    #@6
    if-ne p1, v0, :cond_0

    #@8
    .line 1339
    invoke-virtual {p1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@e
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 1335
    :goto_0
    return-void

    #@19
    .line 1340
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@1b
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    #@1e
    .line 1341
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@20
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@22
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@29
    .line 1344
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2b
    iget v1, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@2d
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@30
    .line 1345
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@32
    iget v1, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@34
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@37
    goto :goto_0
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 3
    .param p1, "newSymbols"    # Ljava/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 844
    :try_start_0
    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/text/DecimalFormatSymbols;

    #@6
    iput-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@8
    .line 845
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@a
    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    #@c
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 841
    :goto_0
    return-void

    #@14
    .line 846
    :catch_0
    move-exception v0

    #@15
    .local v0, "foo":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 1002
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    #@5
    .line 1001
    return-void
.end method

.method public setGroupingSize(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 965
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    #@5
    .line 964
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 984
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    #@5
    .line 983
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    #@0
    .prologue
    const/16 v1, 0x154

    #@2
    .line 1230
    const/4 v0, 0x0

    #@3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@6
    move-result v0

    #@7
    const v2, 0x7fffffff

    #@a
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@10
    .line 1231
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@12
    if-le v0, v1, :cond_1

    #@14
    move v0, v1

    #@15
    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    #@18
    .line 1233
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@1a
    iget v2, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@1c
    if-le v0, v2, :cond_0

    #@1e
    .line 1234
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@20
    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@22
    .line 1235
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@24
    if-le v0, v1, :cond_2

    #@26
    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    #@29
    .line 1238
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2b
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@32
    .line 1229
    return-void

    #@33
    .line 1232
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@35
    goto :goto_0

    #@36
    .line 1236
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@38
    goto :goto_1
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    #@0
    .prologue
    const/16 v1, 0x135

    #@2
    .line 1190
    const/4 v0, 0x0

    #@3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@6
    move-result v0

    #@7
    const v2, 0x7fffffff

    #@a
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@10
    .line 1191
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@12
    if-le v0, v1, :cond_1

    #@14
    move v0, v1

    #@15
    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@18
    .line 1193
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@1a
    iget v2, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@1c
    if-le v0, v2, :cond_0

    #@1e
    .line 1194
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@20
    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@22
    .line 1195
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@24
    if-le v0, v1, :cond_2

    #@26
    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@29
    .line 1198
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2b
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumIntegerDigits()I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    #@32
    .line 1189
    return-void

    #@33
    .line 1192
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@35
    goto :goto_0

    #@36
    .line 1196
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@38
    goto :goto_1
.end method

.method public setMinimumFractionDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    #@0
    .prologue
    const/16 v1, 0x154

    #@2
    .line 1250
    const/4 v0, 0x0

    #@3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@6
    move-result v0

    #@7
    const v2, 0x7fffffff

    #@a
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@10
    .line 1251
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@12
    if-le v0, v1, :cond_1

    #@14
    move v0, v1

    #@15
    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    #@18
    .line 1253
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@1a
    iget v2, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@1c
    if-le v0, v2, :cond_0

    #@1e
    .line 1254
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@20
    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@22
    .line 1255
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@24
    if-le v0, v1, :cond_2

    #@26
    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    #@29
    .line 1258
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2b
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@32
    .line 1249
    return-void

    #@33
    .line 1252
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    #@35
    goto :goto_0

    #@36
    .line 1256
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    #@38
    goto :goto_1
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    #@0
    .prologue
    const/16 v1, 0x135

    #@2
    .line 1210
    const/4 v0, 0x0

    #@3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@6
    move-result v0

    #@7
    const v2, 0x7fffffff

    #@a
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@10
    .line 1211
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@12
    if-le v0, v1, :cond_1

    #@14
    move v0, v1

    #@15
    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@18
    .line 1213
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@1a
    iget v2, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@1c
    if-le v0, v2, :cond_0

    #@1e
    .line 1214
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@20
    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@22
    .line 1215
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@24
    if-le v0, v1, :cond_2

    #@26
    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@29
    .line 1218
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2b
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumIntegerDigits()I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    #@32
    .line 1209
    return-void

    #@33
    .line 1212
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    #@35
    goto :goto_0

    #@36
    .line 1216
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    #@38
    goto :goto_1
.end method

.method public setMultiplier(I)V
    .locals 1
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 939
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    #@5
    .line 938
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 880
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    #@5
    .line 879
    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 912
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    #@5
    .line 911
    return-void
.end method

.method public setParseBigDecimal(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 1022
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setParseBigDecimal(Z)V

    #@5
    .line 1021
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1030
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    #@3
    .line 1031
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    #@8
    .line 1029
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 864
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    #@5
    .line 863
    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 896
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    #@5
    .line 895
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 2
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    .line 1391
    if-nez p1, :cond_0

    #@2
    .line 1392
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1395
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    #@a
    .line 1397
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@c
    invoke-static {p1}, Ljava/text/DecimalFormat;->convertRoundingMode(Ljava/math/RoundingMode;)I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setRoundingMode(I)V

    #@13
    .line 1390
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1111
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1102
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

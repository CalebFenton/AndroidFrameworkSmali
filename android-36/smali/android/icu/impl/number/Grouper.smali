.class public Landroid/icu/impl/number/Grouper;
.super Ljava/lang/Object;
.source "Grouper.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist GROUPER_AUTO:Landroid/icu/impl/number/Grouper;

.field private static final blacklist GROUPER_INDIC:Landroid/icu/impl/number/Grouper;

.field private static final blacklist GROUPER_INDIC_MIN2:Landroid/icu/impl/number/Grouper;

.field private static final blacklist GROUPER_MIN2:Landroid/icu/impl/number/Grouper;

.field private static final blacklist GROUPER_NEVER:Landroid/icu/impl/number/Grouper;

.field private static final blacklist GROUPER_ON_ALIGNED:Landroid/icu/impl/number/Grouper;

.field private static final blacklist GROUPER_WESTERN:Landroid/icu/impl/number/Grouper;

.field private static final blacklist GROUPER_WESTERN_MIN2:Landroid/icu/impl/number/Grouper;


# instance fields
.field private final blacklist grouping1:S

.field private final blacklist grouping2:S

.field private final blacklist minGrouping:S


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 17
    nop

    .line 19
    new-instance v0, Landroid/icu/impl/number/Grouper;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v1, v2}, Landroid/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_NEVER:Landroid/icu/impl/number/Grouper;

    .line 20
    new-instance v0, Landroid/icu/impl/number/Grouper;

    const/4 v1, -0x3

    invoke-direct {v0, v2, v2, v1}, Landroid/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_MIN2:Landroid/icu/impl/number/Grouper;

    .line 21
    new-instance v0, Landroid/icu/impl/number/Grouper;

    invoke-direct {v0, v2, v2, v2}, Landroid/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_AUTO:Landroid/icu/impl/number/Grouper;

    .line 22
    new-instance v0, Landroid/icu/impl/number/Grouper;

    const/4 v1, -0x4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Landroid/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_ON_ALIGNED:Landroid/icu/impl/number/Grouper;

    .line 24
    new-instance v0, Landroid/icu/impl/number/Grouper;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v1, v2}, Landroid/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_WESTERN:Landroid/icu/impl/number/Grouper;

    .line 25
    new-instance v0, Landroid/icu/impl/number/Grouper;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_INDIC:Landroid/icu/impl/number/Grouper;

    .line 26
    new-instance v0, Landroid/icu/impl/number/Grouper;

    invoke-direct {v0, v1, v1, v3}, Landroid/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_WESTERN_MIN2:Landroid/icu/impl/number/Grouper;

    .line 27
    new-instance v0, Landroid/icu/impl/number/Grouper;

    invoke-direct {v0, v1, v3, v3}, Landroid/icu/impl/number/Grouper;-><init>(SSS)V

    sput-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_INDIC_MIN2:Landroid/icu/impl/number/Grouper;

    return-void
.end method

.method private constructor blacklist <init>(SSS)V
    .registers 4
    .param p1, "grouping1"    # S
    .param p2, "grouping2"    # S
    .param p3, "minGrouping"    # S

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-short p1, p0, Landroid/icu/impl/number/Grouper;->grouping1:S

    .line 119
    iput-short p2, p0, Landroid/icu/impl/number/Grouper;->grouping2:S

    .line 120
    iput-short p3, p0, Landroid/icu/impl/number/Grouper;->minGrouping:S

    .line 121
    return-void
.end method

.method public static blacklist forProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Grouper;
    .registers 5
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 53
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingUsed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 54
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_NEVER:Landroid/icu/impl/number/Grouper;

    return-object v0

    .line 56
    :cond_9
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v0

    int-to-short v0, v0

    .line 57
    .local v0, "grouping1":S
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v1

    int-to-short v1, v1

    .line 58
    .local v1, "grouping2":S
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumGroupingDigits()I

    move-result v2

    int-to-short v2, v2

    .line 59
    .local v2, "minGrouping":S
    if-lez v0, :cond_1b

    :cond_1a
    goto :goto_1f

    :cond_1b
    if-lez v1, :cond_1a

    move v3, v1

    goto :goto_20

    :goto_1f
    move v3, v0

    .line 60
    .end local v0    # "grouping1":S
    .local v3, "grouping1":S
    :goto_20
    if-lez v1, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    move v0, v3

    .line 61
    .end local v1    # "grouping2":S
    .local v0, "grouping2":S
    :goto_25
    invoke-static {v3, v0, v2}, Landroid/icu/impl/number/Grouper;->getInstance(SSS)Landroid/icu/impl/number/Grouper;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist forStrategy(Landroid/icu/number/NumberFormatter$GroupingStrategy;)Landroid/icu/impl/number/Grouper;
    .registers 3
    .param p0, "grouping"    # Landroid/icu/number/NumberFormatter$GroupingStrategy;

    .line 33
    sget-object v0, Landroid/icu/impl/number/Grouper$1;->$SwitchMap$android$icu$number$NumberFormatter$GroupingStrategy:[I

    invoke-virtual {p0}, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 45
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :pswitch_11
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_WESTERN:Landroid/icu/impl/number/Grouper;

    return-object v0

    .line 41
    :pswitch_14
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_ON_ALIGNED:Landroid/icu/impl/number/Grouper;

    return-object v0

    .line 39
    :pswitch_17
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_AUTO:Landroid/icu/impl/number/Grouper;

    return-object v0

    .line 37
    :pswitch_1a
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_MIN2:Landroid/icu/impl/number/Grouper;

    return-object v0

    .line 35
    :pswitch_1d
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_NEVER:Landroid/icu/impl/number/Grouper;

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public static blacklist getInstance(SSS)Landroid/icu/impl/number/Grouper;
    .registers 6
    .param p0, "grouping1"    # S
    .param p1, "grouping2"    # S
    .param p2, "minGrouping"    # S

    .line 65
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 66
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_NEVER:Landroid/icu/impl/number/Grouper;

    return-object v0

    .line 67
    :cond_6
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_11

    if-ne p1, v1, :cond_11

    if-ne p2, v0, :cond_11

    .line 68
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_WESTERN:Landroid/icu/impl/number/Grouper;

    return-object v0

    .line 69
    :cond_11
    const/4 v2, 0x2

    if-ne p0, v1, :cond_1b

    if-ne p1, v2, :cond_1b

    if-ne p2, v0, :cond_1b

    .line 70
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_INDIC:Landroid/icu/impl/number/Grouper;

    return-object v0

    .line 71
    :cond_1b
    if-ne p0, v1, :cond_24

    if-ne p1, v1, :cond_24

    if-ne p2, v2, :cond_24

    .line 72
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_WESTERN_MIN2:Landroid/icu/impl/number/Grouper;

    return-object v0

    .line 73
    :cond_24
    if-ne p0, v1, :cond_2d

    if-ne p1, v2, :cond_2d

    if-ne p2, v2, :cond_2d

    .line 74
    sget-object v0, Landroid/icu/impl/number/Grouper;->GROUPER_INDIC_MIN2:Landroid/icu/impl/number/Grouper;

    return-object v0

    .line 76
    :cond_2d
    new-instance v0, Landroid/icu/impl/number/Grouper;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/number/Grouper;-><init>(SSS)V

    return-object v0
.end method

.method private static blacklist getMinGroupingForLocale(Landroid/icu/util/ULocale;)S
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 82
    nop

    .line 83
    const-string v0, "android/icu/impl/data/icudata"

    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 84
    .local v0, "resource":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "NumberElements/minimumGroupingDigits"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    return v2
.end method


# virtual methods
.method public blacklist getPrimary()S
    .registers 2

    .line 166
    iget-short v0, p0, Landroid/icu/impl/number/Grouper;->grouping1:S

    return v0
.end method

.method public blacklist getSecondary()S
    .registers 2

    .line 170
    iget-short v0, p0, Landroid/icu/impl/number/Grouper;->grouping2:S

    return v0
.end method

.method public blacklist groupAtPosition(ILandroid/icu/impl/number/DecimalQuantity;)Z
    .registers 7
    .param p1, "position"    # I
    .param p2, "value"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 154
    nop

    .line 155
    iget-short v0, p0, Landroid/icu/impl/number/Grouper;->grouping1:S

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_28

    iget-short v0, p0, Landroid/icu/impl/number/Grouper;->grouping1:S

    if-nez v0, :cond_c

    goto :goto_28

    .line 159
    :cond_c
    iget-short v0, p0, Landroid/icu/impl/number/Grouper;->grouping1:S

    sub-int/2addr p1, v0

    .line 160
    if-ltz p1, :cond_26

    iget-short v0, p0, Landroid/icu/impl/number/Grouper;->grouping2:S

    rem-int v0, p1, v0

    if-nez v0, :cond_26

    .line 162
    invoke-interface {p2}, Landroid/icu/impl/number/DecimalQuantity;->getUpperDisplayMagnitude()I

    move-result v0

    iget-short v1, p0, Landroid/icu/impl/number/Grouper;->grouping1:S

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-short v3, p0, Landroid/icu/impl/number/Grouper;->minGrouping:S

    if-lt v0, v3, :cond_26

    move v2, v1

    goto :goto_27

    :cond_26
    nop

    .line 160
    :goto_27
    return v2

    .line 157
    :cond_28
    :goto_28
    return v2
.end method

.method public blacklist withLocaleData(Landroid/icu/util/ULocale;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;)Landroid/icu/impl/number/Grouper;
    .registers 12
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "patternInfo"    # Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    .line 125
    iget-short v0, p0, Landroid/icu/impl/number/Grouper;->minGrouping:S

    const/4 v1, -0x2

    if-ne v0, v1, :cond_a

    .line 126
    invoke-static {p1}, Landroid/icu/impl/number/Grouper;->getMinGroupingForLocale(Landroid/icu/util/ULocale;)S

    move-result v0

    .local v0, "minGrouping":S
    goto :goto_1c

    .line 127
    .end local v0    # "minGrouping":S
    :cond_a
    iget-short v0, p0, Landroid/icu/impl/number/Grouper;->minGrouping:S

    const/4 v2, -0x3

    if-ne v0, v2, :cond_1a

    .line 128
    const/4 v0, 0x2

    invoke-static {p1}, Landroid/icu/impl/number/Grouper;->getMinGroupingForLocale(Landroid/icu/util/ULocale;)S

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    .restart local v0    # "minGrouping":S
    goto :goto_1c

    .line 130
    .end local v0    # "minGrouping":S
    :cond_1a
    iget-short v0, p0, Landroid/icu/impl/number/Grouper;->minGrouping:S

    .line 133
    .restart local v0    # "minGrouping":S
    :goto_1c
    iget-short v2, p0, Landroid/icu/impl/number/Grouper;->grouping1:S

    const/4 v3, -0x4

    if-eq v2, v1, :cond_33

    iget-short v1, p0, Landroid/icu/impl/number/Grouper;->grouping2:S

    if-eq v1, v3, :cond_33

    .line 134
    iget-short v1, p0, Landroid/icu/impl/number/Grouper;->minGrouping:S

    if-ne v0, v1, :cond_2a

    .line 135
    return-object p0

    .line 137
    :cond_2a
    iget-short v1, p0, Landroid/icu/impl/number/Grouper;->grouping1:S

    iget-short v2, p0, Landroid/icu/impl/number/Grouper;->grouping2:S

    invoke-static {v1, v2, v0}, Landroid/icu/impl/number/Grouper;->getInstance(SSS)Landroid/icu/impl/number/Grouper;

    move-result-object v1

    return-object v1

    .line 140
    :cond_33
    iget-object v1, p2, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v1, v1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide/32 v4, 0xffff

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-short v1, v1

    .line 141
    .local v1, "grouping1":S
    iget-object v2, p2, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v6, v2, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v2, 0x10

    ushr-long/2addr v6, v2

    and-long/2addr v6, v4

    long-to-int v2, v6

    int-to-short v2, v2

    .line 142
    .local v2, "grouping2":S
    iget-object v6, p2, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v6, v6, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-short v4, v4

    .line 143
    .local v4, "grouping3":S
    const/4 v5, -0x1

    if-ne v2, v5, :cond_5c

    .line 144
    iget-short v6, p0, Landroid/icu/impl/number/Grouper;->grouping1:S

    if-ne v6, v3, :cond_5a

    const/4 v3, 0x3

    goto :goto_5b

    :cond_5a
    move v3, v5

    :goto_5b
    move v1, v3

    .line 146
    :cond_5c
    if-ne v4, v5, :cond_5f

    .line 147
    move v2, v1

    .line 150
    :cond_5f
    invoke-static {v1, v2, v0}, Landroid/icu/impl/number/Grouper;->getInstance(SSS)Landroid/icu/impl/number/Grouper;

    move-result-object v3

    return-object v3
.end method

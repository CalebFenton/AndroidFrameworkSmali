.class synthetic Landroid/icu/number/NumberSkeletonImpl$2;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$android$icu$number$NumberFormatter$DecimalSeparatorDisplay:[I

.field static final synthetic blacklist $SwitchMap$android$icu$number$NumberFormatter$GroupingStrategy:[I

.field static final synthetic blacklist $SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

.field static final synthetic blacklist $SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

.field static final synthetic blacklist $SwitchMap$java$math$RoundingMode:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 509
    invoke-static {}, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->values()[Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$DecimalSeparatorDisplay:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$DecimalSeparatorDisplay:[I

    sget-object v2, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-virtual {v2}, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$DecimalSeparatorDisplay:[I

    sget-object v3, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-virtual {v3}, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    .line 475
    :goto_23
    invoke-static {}, Landroid/icu/number/NumberFormatter$SignDisplay;->values()[Landroid/icu/number/NumberFormatter$SignDisplay;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    :try_start_2c
    sget-object v2, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v3, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v3}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v2

    :goto_38
    :try_start_38
    sget-object v2, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v3, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v3}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception v2

    :goto_44
    const/4 v2, 0x3

    :try_start_45
    sget-object v3, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v4}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v3

    :goto_51
    const/4 v3, 0x4

    :try_start_52
    sget-object v4, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v5, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v5}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v4

    :goto_5e
    const/4 v4, 0x5

    :try_start_5f
    sget-object v5, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v6, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v6}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception v5

    :goto_6b
    const/4 v5, 0x6

    :try_start_6c
    sget-object v6, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v7, Landroid/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v7}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    move-exception v6

    :goto_78
    const/4 v6, 0x7

    :try_start_79
    sget-object v7, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v8, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v8}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    move-exception v7

    :goto_85
    const/16 v7, 0x8

    :try_start_87
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$SignDisplay;->NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_91} :catch_92

    goto :goto_93

    :catch_92
    move-exception v8

    :goto_93
    :try_start_93
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v9

    const/16 v10, 0x9

    aput v10, v8, v9
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9f} :catch_a0

    goto :goto_a1

    :catch_a0
    move-exception v8

    .line 447
    :goto_a1
    invoke-static {}, Landroid/icu/number/NumberFormatter$UnitWidth;->values()[Landroid/icu/number/NumberFormatter$UnitWidth;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

    :try_start_aa
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v8

    :goto_b6
    :try_start_b6
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c0} :catch_c1

    goto :goto_c2

    :catch_c1
    move-exception v8

    :goto_c2
    :try_start_c2
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_cc} :catch_cd

    goto :goto_ce

    :catch_cd
    move-exception v8

    :goto_ce
    :try_start_ce
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_d8} :catch_d9

    goto :goto_da

    :catch_d9
    move-exception v8

    :goto_da
    :try_start_da
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$UnitWidth;->FORMAL:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e4} :catch_e5

    goto :goto_e6

    :catch_e5
    move-exception v8

    :goto_e6
    :try_start_e6
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$UnitWidth;->VARIANT:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f0} :catch_f1

    goto :goto_f2

    :catch_f1
    move-exception v8

    :goto_f2
    :try_start_f2
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v9

    aput v6, v8, v9
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fc} :catch_fd

    goto :goto_fe

    :catch_fd
    move-exception v8

    .line 425
    :goto_fe
    invoke-static {}, Landroid/icu/number/NumberFormatter$GroupingStrategy;->values()[Landroid/icu/number/NumberFormatter$GroupingStrategy;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$GroupingStrategy:[I

    :try_start_107
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$GroupingStrategy:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$GroupingStrategy;->OFF:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_111} :catch_112

    goto :goto_113

    :catch_112
    move-exception v8

    :goto_113
    :try_start_113
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$GroupingStrategy:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$GroupingStrategy;->MIN2:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_11d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11d} :catch_11e

    goto :goto_11f

    :catch_11e
    move-exception v8

    :goto_11f
    :try_start_11f
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$GroupingStrategy:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_12a

    goto :goto_12b

    :catch_12a
    move-exception v8

    :goto_12b
    :try_start_12b
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$GroupingStrategy:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ON_ALIGNED:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_135} :catch_136

    goto :goto_137

    :catch_136
    move-exception v8

    :goto_137
    :try_start_137
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$GroupingStrategy:[I

    sget-object v9, Landroid/icu/number/NumberFormatter$GroupingStrategy;->THOUSANDS:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v9}, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_141
    .catch Ljava/lang/NoSuchFieldError; {:try_start_137 .. :try_end_141} :catch_142

    goto :goto_143

    :catch_142
    move-exception v8

    .line 394
    :goto_143
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    :try_start_14c
    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v9, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v9}, Ljava/math/RoundingMode;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_156
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14c .. :try_end_156} :catch_157

    goto :goto_158

    :catch_157
    move-exception v0

    :goto_158
    :try_start_158
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v8, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v8}, Ljava/math/RoundingMode;->ordinal()I

    move-result v8

    aput v1, v0, v8
    :try_end_162
    .catch Ljava/lang/NoSuchFieldError; {:try_start_158 .. :try_end_162} :catch_163

    goto :goto_164

    :catch_163
    move-exception v0

    :goto_164
    :try_start_164
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_16e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_164 .. :try_end_16e} :catch_16f

    goto :goto_170

    :catch_16f
    move-exception v0

    :goto_170
    :try_start_170
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_17a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_170 .. :try_end_17a} :catch_17b

    goto :goto_17c

    :catch_17b
    move-exception v0

    :goto_17c
    :try_start_17c
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_186
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17c .. :try_end_186} :catch_187

    goto :goto_188

    :catch_187
    move-exception v0

    :goto_188
    :try_start_188
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_192
    .catch Ljava/lang/NoSuchFieldError; {:try_start_188 .. :try_end_192} :catch_193

    goto :goto_194

    :catch_193
    move-exception v0

    :goto_194
    :try_start_194
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_19e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_194 .. :try_end_19e} :catch_19f

    goto :goto_1a0

    :catch_19f
    move-exception v0

    :goto_1a0
    :try_start_1a0
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_1aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a0 .. :try_end_1aa} :catch_1ab

    goto :goto_1ac

    :catch_1ab
    move-exception v0

    :goto_1ac
    return-void
.end method

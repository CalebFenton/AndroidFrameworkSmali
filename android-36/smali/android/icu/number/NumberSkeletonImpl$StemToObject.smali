.class final Landroid/icu/number/NumberSkeletonImpl$StemToObject;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StemToObject"
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdecimalSeparatorDisplay(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;
    .registers 1

    invoke-static {p0}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->decimalSeparatorDisplay(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgroupingStrategy(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$GroupingStrategy;
    .registers 1

    invoke-static {p0}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->groupingStrategy(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$GroupingStrategy;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnotation(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/Notation;
    .registers 1

    invoke-static {p0}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->notation(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/Notation;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smprecision(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/Precision;
    .registers 1

    invoke-static {p0}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->precision(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/Precision;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smroundingMode(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Ljava/math/RoundingMode;
    .registers 1

    invoke-static {p0}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->roundingMode(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Ljava/math/RoundingMode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsignDisplay(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$SignDisplay;
    .registers 1

    invoke-static {p0}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->signDisplay(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$SignDisplay;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smunit(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/util/MeasureUnit;
    .registers 1

    invoke-static {p0}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->unit(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/util/MeasureUnit;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smunitWidth(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$UnitWidth;
    .registers 1

    invoke-static {p0}, Landroid/icu/number/NumberSkeletonImpl$StemToObject;->unitWidth(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$UnitWidth;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist decimalSeparatorDisplay(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;
    .registers 2
    .param p0, "stem"    # Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    .line 376
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 380
    :pswitch_9
    sget-object v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    return-object v0

    .line 378
    :pswitch_c
    sget-object v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x2c
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private static blacklist groupingStrategy(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$GroupingStrategy;
    .registers 2
    .param p0, "stem"    # Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    .line 313
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 325
    const/4 v0, 0x0

    return-object v0

    .line 323
    :pswitch_9
    sget-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->THOUSANDS:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    return-object v0

    .line 321
    :pswitch_c
    sget-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ON_ALIGNED:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    return-object v0

    .line 319
    :pswitch_f
    sget-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    return-object v0

    .line 317
    :pswitch_12
    sget-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->MIN2:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    return-object v0

    .line 315
    :pswitch_15
    sget-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->OFF:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    return-object v0

    :pswitch_data_18
    .packed-switch 0x16
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private static blacklist notation(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/Notation;
    .registers 2
    .param p0, "stem"    # Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    .line 245
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 257
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 255
    :pswitch_d
    invoke-static {}, Landroid/icu/number/Notation;->simple()Landroid/icu/number/SimpleNotation;

    move-result-object v0

    return-object v0

    .line 253
    :pswitch_12
    invoke-static {}, Landroid/icu/number/Notation;->engineering()Landroid/icu/number/ScientificNotation;

    move-result-object v0

    return-object v0

    .line 251
    :pswitch_17
    invoke-static {}, Landroid/icu/number/Notation;->scientific()Landroid/icu/number/ScientificNotation;

    move-result-object v0

    return-object v0

    .line 249
    :pswitch_1c
    invoke-static {}, Landroid/icu/number/Notation;->compactLong()Landroid/icu/number/CompactNotation;

    move-result-object v0

    return-object v0

    .line 247
    :pswitch_21
    invoke-static {}, Landroid/icu/number/Notation;->compactShort()Landroid/icu/number/CompactNotation;

    move-result-object v0

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1c
        :pswitch_17
        :pswitch_12
        :pswitch_d
    .end packed-switch
.end method

.method private static blacklist precision(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/Precision;
    .registers 2
    .param p0, "stem"    # Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    .line 275
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 285
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 283
    :pswitch_d
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-static {v0}, Landroid/icu/number/Precision;->currency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyPrecision;

    move-result-object v0

    return-object v0

    .line 281
    :pswitch_14
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-static {v0}, Landroid/icu/number/Precision;->currency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyPrecision;

    move-result-object v0

    return-object v0

    .line 279
    :pswitch_1b
    invoke-static {}, Landroid/icu/number/Precision;->unlimited()Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0

    .line 277
    :pswitch_20
    invoke-static {}, Landroid/icu/number/Precision;->integer()Landroid/icu/number/FractionPrecision;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x9
        :pswitch_20
        :pswitch_1b
        :pswitch_14
        :pswitch_d
    .end packed-switch
.end method

.method private static blacklist roundingMode(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Ljava/math/RoundingMode;
    .registers 2
    .param p0, "stem"    # Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    .line 290
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 308
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 306
    :pswitch_d
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    return-object v0

    .line 304
    :pswitch_10
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    return-object v0

    .line 302
    :pswitch_13
    sget-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    return-object v0

    .line 300
    :pswitch_16
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    return-object v0

    .line 298
    :pswitch_19
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    return-object v0

    .line 296
    :pswitch_1c
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    return-object v0

    .line 294
    :pswitch_1f
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    return-object v0

    .line 292
    :pswitch_22
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0xd
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private static blacklist signDisplay(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$SignDisplay;
    .registers 2
    .param p0, "stem"    # Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    .line 351
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 371
    const/4 v0, 0x0

    return-object v0

    .line 369
    :pswitch_9
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0

    .line 367
    :pswitch_c
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0

    .line 365
    :pswitch_f
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0

    .line 363
    :pswitch_12
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0

    .line 361
    :pswitch_15
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0

    .line 359
    :pswitch_18
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0

    .line 357
    :pswitch_1b
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0

    .line 355
    :pswitch_1e
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0

    .line 353
    :pswitch_21
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0

    :pswitch_data_24
    .packed-switch 0x23
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private static blacklist unit(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/util/MeasureUnit;
    .registers 2
    .param p0, "stem"    # Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    .line 262
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 270
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 268
    :pswitch_d
    sget-object v0, Landroid/icu/util/NoUnit;->PERMILLE:Landroid/icu/util/MeasureUnit;

    return-object v0

    .line 266
    :pswitch_10
    sget-object v0, Landroid/icu/util/NoUnit;->PERCENT:Landroid/icu/util/MeasureUnit;

    return-object v0

    .line 264
    :pswitch_13
    sget-object v0, Landroid/icu/util/NoUnit;->BASE:Landroid/icu/util/MeasureUnit;

    return-object v0

    :pswitch_data_16
    .packed-switch 0x5
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private static blacklist unitWidth(Landroid/icu/number/NumberSkeletonImpl$StemEnum;)Landroid/icu/number/NumberFormatter$UnitWidth;
    .registers 2
    .param p0, "stem"    # Landroid/icu/number/NumberSkeletonImpl$StemEnum;

    .line 330
    invoke-virtual {p0}, Landroid/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 346
    const/4 v0, 0x0

    return-object v0

    .line 344
    :pswitch_9
    sget-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object v0

    .line 342
    :pswitch_c
    sget-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->VARIANT:Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object v0

    .line 340
    :pswitch_f
    sget-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->FORMAL:Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object v0

    .line 338
    :pswitch_12
    sget-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object v0

    .line 336
    :pswitch_15
    sget-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object v0

    .line 334
    :pswitch_18
    sget-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object v0

    .line 332
    :pswitch_1b
    sget-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1c
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

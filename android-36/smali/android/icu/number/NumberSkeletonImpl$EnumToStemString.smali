.class final Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnumToStemString"
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdecimalSeparatorDisplay(Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->decimalSeparatorDisplay(Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgroupingStrategy(Landroid/icu/number/NumberFormatter$GroupingStrategy;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->groupingStrategy(Landroid/icu/number/NumberFormatter$GroupingStrategy;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smroundingMode(Ljava/math/RoundingMode;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->roundingMode(Ljava/math/RoundingMode;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsignDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->signDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smunitWidth(Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->unitWidth(Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist decimalSeparatorDisplay(Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "value"    # Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 509
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$DecimalSeparatorDisplay:[I

    invoke-virtual {p0}, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 517
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 514
    :pswitch_11
    const-string v0, "decimal-always"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    goto :goto_1d

    .line 511
    :pswitch_17
    const-string v0, "decimal-auto"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    nop

    .line 519
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method

.method private static blacklist groupingStrategy(Landroid/icu/number/NumberFormatter$GroupingStrategy;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "value"    # Landroid/icu/number/NumberFormatter$GroupingStrategy;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 425
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$GroupingStrategy:[I

    invoke-virtual {p0}, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 442
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 439
    :pswitch_11
    const-string v0, "group-thousands"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    goto :goto_2f

    .line 436
    :pswitch_17
    const-string v0, "group-on-aligned"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    goto :goto_2f

    .line 433
    :pswitch_1d
    const-string v0, "group-auto"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    goto :goto_2f

    .line 430
    :pswitch_23
    const-string v0, "group-min2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    goto :goto_2f

    .line 427
    :pswitch_29
    const-string v0, "group-off"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    nop

    .line 444
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method

.method private static blacklist roundingMode(Ljava/math/RoundingMode;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "value"    # Ljava/math/RoundingMode;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 394
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 420
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 417
    :pswitch_11
    const-string v0, "rounding-mode-unnecessary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    goto :goto_41

    .line 414
    :pswitch_17
    const-string v0, "rounding-mode-half-up"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    goto :goto_41

    .line 411
    :pswitch_1d
    const-string v0, "rounding-mode-half-down"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    goto :goto_41

    .line 408
    :pswitch_23
    const-string v0, "rounding-mode-half-even"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    goto :goto_41

    .line 405
    :pswitch_29
    const-string v0, "rounding-mode-up"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    goto :goto_41

    .line 402
    :pswitch_2f
    const-string v0, "rounding-mode-down"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    goto :goto_41

    .line 399
    :pswitch_35
    const-string v0, "rounding-mode-floor"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    goto :goto_41

    .line 396
    :pswitch_3b
    const-string v0, "rounding-mode-ceiling"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    nop

    .line 422
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method

.method private static blacklist signDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "value"    # Landroid/icu/number/NumberFormatter$SignDisplay;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 475
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    invoke-virtual {p0}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 504
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 501
    :pswitch_11
    const-string v0, "sign-accounting-negative"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    goto :goto_47

    .line 498
    :pswitch_17
    const-string v0, "sign-negative"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    goto :goto_47

    .line 495
    :pswitch_1d
    const-string v0, "sign-accounting-except-zero"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    goto :goto_47

    .line 492
    :pswitch_23
    const-string v0, "sign-except-zero"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    goto :goto_47

    .line 489
    :pswitch_29
    const-string v0, "sign-accounting-always"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    goto :goto_47

    .line 486
    :pswitch_2f
    const-string v0, "sign-accounting"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    goto :goto_47

    .line 483
    :pswitch_35
    const-string v0, "sign-never"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    goto :goto_47

    .line 480
    :pswitch_3b
    const-string v0, "sign-always"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    goto :goto_47

    .line 477
    :pswitch_41
    const-string v0, "sign-auto"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    nop

    .line 506
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method

.method private static blacklist unitWidth(Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "value"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 447
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$2;->$SwitchMap$android$icu$number$NumberFormatter$UnitWidth:[I

    invoke-virtual {p0}, Landroid/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 470
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 467
    :pswitch_11
    const-string v0, "unit-width-hidden"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    goto :goto_3b

    .line 464
    :pswitch_17
    const-string v0, "unit-width-variant"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    goto :goto_3b

    .line 461
    :pswitch_1d
    const-string v0, "unit-width-formal"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    goto :goto_3b

    .line 458
    :pswitch_23
    const-string v0, "unit-width-iso-code"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    goto :goto_3b

    .line 455
    :pswitch_29
    const-string v0, "unit-width-full-name"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    goto :goto_3b

    .line 452
    :pswitch_2f
    const-string v0, "unit-width-short"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    goto :goto_3b

    .line 449
    :pswitch_35
    const-string v0, "unit-width-narrow"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    nop

    .line 472
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method

.class Landroid/icu/impl/units/UnitsConverter$Factor;
.super Ljava/lang/Object;
.source "UnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/UnitsConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factor"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist exponentAMU:I

.field private blacklist exponentFtToM:I

.field private blacklist exponentG:I

.field private blacklist exponentGalImpToM3:I

.field private blacklist exponentGlucoseMolarMass:I

.field private blacklist exponentGravity:I

.field private blacklist exponentItemPerMole:I

.field private blacklist exponentLbToKg:I

.field private blacklist exponentMetersPerAU:I

.field private blacklist exponentPi:I

.field private blacklist exponentSecPerJulianYear:I

.field private blacklist exponentShakuToM:I

.field private blacklist exponentShoToM3:I

.field private blacklist exponentSpeedOfLightMetersPerSecond:I

.field private blacklist exponentTsuboToM2:I

.field private blacklist factorDen:Ljava/math/BigDecimal;

.field private blacklist factorNum:Ljava/math/BigDecimal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 309
    const-class v0, Landroid/icu/impl/units/UnitsConverter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 318
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    .line 320
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    .line 322
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    .line 324
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    .line 326
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    .line 328
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    .line 330
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    .line 332
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    .line 334
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    .line 336
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    .line 338
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    .line 340
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    .line 342
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    .line 344
    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    .line 350
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 351
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 352
    return-void
.end method

.method private blacklist addEntity(Ljava/lang/String;I)V
    .registers 8
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "power"    # I

    .line 573
    const-string v0, "ft_to_m"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 574
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    goto/16 :goto_161

    .line 575
    :cond_f
    const-string v0, "ft2_to_m2"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 576
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    goto/16 :goto_161

    .line 577
    :cond_20
    const-string v0, "ft3_to_m3"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 578
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    goto/16 :goto_161

    .line 579
    :cond_31
    const-string v0, "in3_to_m3"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 580
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 581
    iget-object v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    goto/16 :goto_161

    .line 582
    :cond_56
    const-string v0, "gal_to_m3"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 583
    iget-object v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    const-wide/16 v1, 0xe7

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 584
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 585
    iget-object v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    const-wide/16 v1, 0x6c0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    goto/16 :goto_161

    .line 586
    :cond_83
    const-string v0, "gal_imp_to_m3"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 587
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    goto/16 :goto_161

    .line 588
    :cond_92
    const-string v0, "G"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 589
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    goto/16 :goto_161

    .line 590
    :cond_a1
    const-string v0, "gravity"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 591
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    goto/16 :goto_161

    .line 592
    :cond_b0
    const-string v0, "lb_to_kg"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 593
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    goto/16 :goto_161

    .line 594
    :cond_bf
    const-string v0, "glucose_molar_mass"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 595
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    goto/16 :goto_161

    .line 596
    :cond_ce
    const-string v0, "item_per_mole"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 597
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    goto/16 :goto_161

    .line 598
    :cond_dd
    const-string v0, "meters_per_AU"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 599
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    goto/16 :goto_161

    .line 600
    :cond_ec
    const-string v0, "PI"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 601
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    goto :goto_161

    .line 602
    :cond_fa
    const-string v0, "sec_per_julian_year"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 603
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    goto :goto_161

    .line 604
    :cond_108
    const-string v0, "speed_of_light_meters_per_second"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 605
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    goto :goto_161

    .line 606
    :cond_116
    const-string v0, "sho_to_m3"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 607
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    goto :goto_161

    .line 608
    :cond_124
    const-string v0, "tsubo_to_m2"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 609
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    goto :goto_161

    .line 610
    :cond_132
    const-string v0, "shaku_to_m"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 611
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    goto :goto_161

    .line 612
    :cond_140
    const-string v0, "AMU"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 613
    iget v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    goto :goto_161

    .line 615
    :cond_14e
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 616
    .local v0, "decimalEntity":Ljava/math/BigDecimal;
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 618
    .end local v0    # "decimalEntity":Ljava/math/BigDecimal;
    :goto_161
    return-void
.end method

.method private blacklist addPoweredEntity(Ljava/lang/String;)V
    .registers 6
    .param p1, "poweredEntity"    # Ljava/lang/String;

    .line 565
    const-string v0, "^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "entities":[Ljava/lang/String;
    nop

    .line 568
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_16

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 569
    .local v3, "power":I
    :cond_16
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {p0, v1, v3}, Landroid/icu/impl/units/UnitsConverter$Factor;->addEntity(Ljava/lang/String;I)V

    .line 570
    return-void
.end method

.method private blacklist multiply(Ljava/math/BigDecimal;I)V
    .registers 5
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "power"    # I

    .line 445
    if-nez p2, :cond_3

    return-void

    .line 447
    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 448
    .local v0, "absPoweredValue":Ljava/math/BigDecimal;
    if-lez p2, :cond_18

    .line 449
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    goto :goto_20

    .line 451
    :cond_18
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 453
    :goto_20
    return-void
.end method

.method public static blacklist processFactor(Ljava/lang/String;)Landroid/icu/impl/units/UnitsConverter$Factor;
    .registers 5
    .param p0, "factor"    # Ljava/lang/String;

    .line 355
    nop

    .line 358
    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 360
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "fractions":[Ljava/lang/String;
    nop

    .line 363
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    .line 364
    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/icu/impl/units/UnitsConverter$Factor;->processFactorWithoutDivision(Ljava/lang/String;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v1

    return-object v1

    .line 367
    :cond_1c
    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/icu/impl/units/UnitsConverter$Factor;->processFactorWithoutDivision(Ljava/lang/String;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v1

    .line 368
    .local v1, "num":Landroid/icu/impl/units/UnitsConverter$Factor;
    aget-object v2, v0, v3

    invoke-static {v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->processFactorWithoutDivision(Ljava/lang/String;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v2

    .line 369
    .local v2, "den":Landroid/icu/impl/units/UnitsConverter$Factor;
    invoke-virtual {v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->divide(Landroid/icu/impl/units/UnitsConverter$Factor;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist processFactorWithoutDivision(Ljava/lang/String;)Landroid/icu/impl/units/UnitsConverter$Factor;
    .registers 6
    .param p0, "factorWithoutDivision"    # Ljava/lang/String;

    .line 373
    new-instance v0, Landroid/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Landroid/icu/impl/units/UnitsConverter$Factor;-><init>()V

    .line 375
    .local v0, "result":Landroid/icu/impl/units/UnitsConverter$Factor;
    const-string v1, "*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 376
    .local v4, "poweredEntity":Ljava/lang/String;
    invoke-direct {v0, v4}, Landroid/icu/impl/units/UnitsConverter$Factor;->addPoweredEntity(Ljava/lang/String;)V

    .line 375
    .end local v4    # "poweredEntity":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 379
    :cond_1b
    return-object v0
.end method


# virtual methods
.method public blacklist applyPrefix(Landroid/icu/util/MeasureUnit$MeasurePrefix;)Landroid/icu/impl/units/UnitsConverter$Factor;
    .registers 8
    .param p1, "unitPrefix"    # Landroid/icu/util/MeasureUnit$MeasurePrefix;

    .line 457
    invoke-virtual {p0}, Landroid/icu/impl/units/UnitsConverter$Factor;->copy()Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    .line 458
    .local v0, "result":Landroid/icu/impl/units/UnitsConverter$Factor;
    sget-object v1, Landroid/icu/util/MeasureUnit$MeasurePrefix;->ONE:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    if-ne p1, v1, :cond_9

    .line 459
    return-object v0

    .line 462
    :cond_9
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getBase()I

    move-result v1

    .line 463
    .local v1, "base":I
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result v2

    .line 464
    .local v2, "power":I
    int-to-long v3, v1

    .line 465
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sget-object v5, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 467
    .local v3, "absFactor":Ljava/math/BigDecimal;
    if-gez v2, :cond_2b

    .line 468
    iget-object v4, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 469
    return-object v0

    .line 472
    :cond_2b
    iget-object v4, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 473
    return-object v0
.end method

.method protected blacklist copy()Landroid/icu/impl/units/UnitsConverter$Factor;
    .registers 3

    .line 386
    new-instance v0, Landroid/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Landroid/icu/impl/units/UnitsConverter$Factor;-><init>()V

    .line 387
    .local v0, "result":Landroid/icu/impl/units/UnitsConverter$Factor;
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 388
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 390
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 391
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    .line 392
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    .line 393
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    .line 394
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    .line 395
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    .line 396
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    .line 397
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    .line 398
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    .line 399
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    .line 400
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    .line 401
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    .line 402
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    .line 403
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    .line 404
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    .line 406
    return-object v0
.end method

.method public blacklist divide(Landroid/icu/impl/units/UnitsConverter$Factor;)Landroid/icu/impl/units/UnitsConverter$Factor;
    .registers 5
    .param p1, "other"    # Landroid/icu/impl/units/UnitsConverter$Factor;

    .line 508
    new-instance v0, Landroid/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Landroid/icu/impl/units/UnitsConverter$Factor;-><init>()V

    .line 509
    .local v0, "result":Landroid/icu/impl/units/UnitsConverter$Factor;
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 510
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 512
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 513
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    .line 514
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    .line 515
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    .line 516
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    .line 517
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    .line 518
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    .line 520
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    .line 521
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    .line 522
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    .line 523
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    .line 525
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    .line 526
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    .line 527
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    .line 528
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    .line 530
    return-object v0
.end method

.method public blacklist getConversionRate()Ljava/math/BigDecimal;
    .registers 5

    .line 416
    invoke-virtual {p0}, Landroid/icu/impl/units/UnitsConverter$Factor;->copy()Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    .line 423
    .local v0, "resultCollector":Landroid/icu/impl/units/UnitsConverter$Factor;
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "0.3048"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 425
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "411557987.0"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "131002976.0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 426
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "9.80665"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 427
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "6.67408E-11"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 428
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "0.00454609"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 429
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "0.45359237"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 430
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "180.1557"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 431
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "6.02214076E+23"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 432
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "149597870700"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 433
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "31557600"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 434
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "299792458"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 435
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "0.001803906836964688204"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 436
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "3.305785123966942"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 437
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "0.033057851239669"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 438
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "1.66053878283E-27"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 440
    iget-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    iget-object v2, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public blacklist multiply(Landroid/icu/impl/units/UnitsConverter$Factor;)Landroid/icu/impl/units/UnitsConverter$Factor;
    .registers 5
    .param p1, "other"    # Landroid/icu/impl/units/UnitsConverter$Factor;

    .line 534
    new-instance v0, Landroid/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Landroid/icu/impl/units/UnitsConverter$Factor;-><init>()V

    .line 535
    .local v0, "result":Landroid/icu/impl/units/UnitsConverter$Factor;
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 536
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    iget-object v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 538
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 539
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    .line 540
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    .line 541
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    .line 542
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    .line 543
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    .line 544
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    .line 546
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    .line 547
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    .line 548
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    .line 549
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    .line 551
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    .line 552
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    .line 553
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    .line 554
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    iget v2, p1, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    .line 556
    return-object v0
.end method

.method public blacklist power(I)Landroid/icu/impl/units/UnitsConverter$Factor;
    .registers 5
    .param p1, "power"    # I

    .line 477
    new-instance v0, Landroid/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Landroid/icu/impl/units/UnitsConverter$Factor;-><init>()V

    .line 478
    .local v0, "result":Landroid/icu/impl/units/UnitsConverter$Factor;
    if-nez p1, :cond_8

    return-object v0

    .line 479
    :cond_8
    if-lez p1, :cond_1b

    .line 480
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 481
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    goto :goto_2f

    .line 483
    :cond_1b
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    mul-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 484
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    mul-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 487
    :goto_2f
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 488
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    .line 489
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    .line 490
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    .line 491
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    .line 492
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    .line 493
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    .line 494
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    .line 495
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentMetersPerAU:I

    .line 496
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSecPerJulianYear:I

    .line 497
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentSpeedOfLightMetersPerSecond:I

    .line 499
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShoToM3:I

    .line 500
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentTsuboToM2:I

    .line 501
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentShakuToM:I

    .line 502
    iget v1, p0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/icu/impl/units/UnitsConverter$Factor;->exponentAMU:I

    .line 504
    return-object v0
.end method

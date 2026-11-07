.class public Landroid/icu/util/GregorianCalendar;
.super Landroid/icu/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final whitelist test-api AD:I = 0x1

.field public static final whitelist test-api BC:I = 0x0

.field private static final greylist-max-o EPOCH_YEAR:I = 0x7b2

.field private static final greylist-max-o LIMITS:[[I

.field private static final greylist-max-o MONTH_COUNT:[[I

.field private static final whitelist serialVersionUID:J = 0x7faacb46ed8a2479L


# instance fields
.field private transient greylist-max-o cutoverJulianDay:I

.field private greylist-max-o gregorianCutover:J

.field private transient greylist-max-o gregorianCutoverYear:I

.field protected transient whitelist test-api invertGregorian:Z

.field protected transient whitelist test-api isGregorian:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 40

    .line 232
    const/16 v0, 0x1f

    const/4 v1, 0x0

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v2

    const/16 v3, 0x1d

    const/16 v14, 0x1c

    filled-new-array {v14, v3, v0, v0}, [I

    move-result-object v3

    const/16 v4, 0x3b

    const/16 v5, 0x3c

    filled-new-array {v0, v0, v4, v5}, [I

    move-result-object v4

    const/16 v5, 0x5a

    const/16 v6, 0x5b

    const/16 v7, 0x1e

    filled-new-array {v7, v7, v5, v6}, [I

    move-result-object v5

    const/16 v6, 0x78

    const/16 v8, 0x79

    filled-new-array {v0, v0, v6, v8}, [I

    move-result-object v6

    const/16 v8, 0x97

    const/16 v9, 0x98

    filled-new-array {v7, v7, v8, v9}, [I

    move-result-object v8

    const/16 v9, 0xb5

    const/16 v10, 0xb6

    filled-new-array {v0, v0, v9, v10}, [I

    move-result-object v9

    const/16 v10, 0xd4

    const/16 v11, 0xd5

    filled-new-array {v0, v0, v10, v11}, [I

    move-result-object v10

    const/16 v11, 0xf3

    const/16 v12, 0xf4

    filled-new-array {v7, v7, v11, v12}, [I

    move-result-object v11

    const/16 v12, 0x111

    const/16 v13, 0x112

    filled-new-array {v0, v0, v12, v13}, [I

    move-result-object v12

    const/16 v13, 0x130

    const/16 v15, 0x131

    filled-new-array {v7, v7, v13, v15}, [I

    move-result-object v7

    const/16 v13, 0x14e

    const/16 v15, 0x14f

    filled-new-array {v0, v0, v13, v15}, [I

    move-result-object v13

    move-object/from16 v39, v12

    move-object v12, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v39

    filled-new-array/range {v2 .. v13}, [[I

    move-result-object v2

    sput-object v2, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    .line 255
    const/4 v2, 0x1

    filled-new-array {v1, v1, v2, v2}, [I

    move-result-object v15

    const v3, 0x58f163

    const v4, 0x5915be

    filled-new-array {v2, v2, v3, v4}, [I

    move-result-object v16

    const/16 v5, 0xb

    filled-new-array {v1, v1, v5, v5}, [I

    move-result-object v17

    const/16 v6, 0x34

    const/16 v7, 0x35

    filled-new-array {v2, v2, v6, v7}, [I

    move-result-object v18

    new-array v6, v1, [I

    filled-new-array {v2, v2, v14, v0}, [I

    move-result-object v20

    const/16 v0, 0x16d

    const/16 v7, 0x16e

    filled-new-array {v2, v2, v0, v7}, [I

    move-result-object v21

    new-array v0, v1, [I

    const/4 v2, 0x4

    const/4 v7, 0x5

    const/4 v8, -0x1

    filled-new-array {v8, v8, v2, v7}, [I

    move-result-object v23

    new-array v2, v1, [I

    new-array v7, v1, [I

    new-array v8, v1, [I

    new-array v9, v1, [I

    new-array v10, v1, [I

    new-array v11, v1, [I

    new-array v12, v1, [I

    new-array v13, v1, [I

    const v14, 0x58f164

    const v5, 0x5915bf

    const v3, -0x5915be

    filled-new-array {v3, v3, v14, v5}, [I

    move-result-object v32

    new-array v3, v1, [I

    const v5, -0x5915bd

    const v14, 0x58f163

    filled-new-array {v5, v5, v14, v4}, [I

    move-result-object v34

    new-array v4, v1, [I

    new-array v5, v1, [I

    new-array v14, v1, [I

    move-object/from16 v22, v0

    const/16 v0, 0xb

    filled-new-array {v1, v1, v0, v0}, [I

    move-result-object v38

    move-object/from16 v24, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v19, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v37, v14

    filled-new-array/range {v15 .. v38}, [[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 335
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 336
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 398
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 302
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    .line 307
    const v0, 0x231519

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    .line 313
    const/16 v0, 0x62e

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 399
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 400
    invoke-virtual {p0, v1, p1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 401
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 402
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 403
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIII)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .line 420
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 302
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    .line 307
    const v0, 0x231519

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    .line 313
    const/16 v0, 0x62e

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 421
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 422
    invoke-virtual {p0, v1, p1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 423
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 424
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 425
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 426
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 427
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIIII)V
    .registers 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .line 446
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 302
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    .line 307
    const v0, 0x231519

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    .line 313
    const/16 v0, 0x62e

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 447
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 448
    invoke-virtual {p0, v1, p1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 449
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 450
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 451
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 452
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 453
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 454
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 345
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 346
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 384
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 302
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    .line 307
    const v0, 0x231519

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    .line 313
    const/16 v0, 0x62e

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 386
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 373
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 302
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    .line 307
    const v0, 0x231519

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    .line 313
    const/16 v0, 0x62e

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 375
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 363
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 364
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 354
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forLocaleOrDefault(Ljava/util/Locale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 355
    return-void
.end method


# virtual methods
.method public whitelist test-api getActualMaximum(I)I
    .registers 12
    .param p1, "field"    # I

    .line 627
    packed-switch p1, :pswitch_data_48

    .line 676
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    return v0

    .line 650
    :pswitch_8
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 651
    .local v0, "cal":Landroid/icu/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 653
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    .line 654
    .local v3, "era":I
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 659
    .local v4, "d":Ljava/util/Date;
    sget-object v5, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v5, v5, v1

    aget v5, v5, v1

    .line 660
    .local v5, "lowGood":I
    sget-object v6, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v6, v6, v1

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v6, v1

    .line 661
    .local v6, "highBad":I
    :goto_29
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v6, :cond_46

    .line 662
    add-int v8, v5, v6

    div-int/2addr v8, v7

    .line 663
    .local v8, "y":I
    invoke-virtual {v0, v1, v8}, Landroid/icu/util/Calendar;->set(II)V

    .line 664
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    if-ne v9, v8, :cond_41

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    if-ne v9, v3, :cond_41

    .line 665
    move v5, v8

    goto :goto_45

    .line 667
    :cond_41
    move v6, v8

    .line 668
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 670
    .end local v8    # "y":I
    :goto_45
    goto :goto_29

    .line 672
    :cond_46
    return v5

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist test-api getActualMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 598
    invoke-virtual {p0, p1}, Landroid/icu/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getGregorianChange()Ljava/util/Date;
    .registers 4

    .line 502
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 867
    const-string v0, "gregorian"

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 20
    .param p1, "julianDay"    # I

    .line 737
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v1, v2, :cond_1d

    .line 738
    invoke-virtual {v0}, Landroid/icu/util/GregorianCalendar;->getGregorianMonth()I

    move-result v2

    .line 739
    .local v2, "month":I
    invoke-virtual {v0}, Landroid/icu/util/GregorianCalendar;->getGregorianDayOfMonth()I

    move-result v7

    .line 740
    .local v7, "dayOfMonth":I
    invoke-virtual {v0}, Landroid/icu/util/GregorianCalendar;->getGregorianDayOfYear()I

    move-result v8

    .line 741
    .local v8, "dayOfYear":I
    invoke-virtual {v0}, Landroid/icu/util/GregorianCalendar;->getGregorianYear()I

    move-result v9

    .local v9, "eyear":I
    goto :goto_78

    .line 745
    .end local v2    # "month":I
    .end local v7    # "dayOfMonth":I
    .end local v8    # "dayOfYear":I
    .end local v9    # "eyear":I
    :cond_1d
    const v2, 0x1a4450

    sub-int v2, v1, v2

    int-to-long v7, v2

    .line 746
    .local v7, "julianEpochDay":J
    const-wide/16 v9, 0x4

    mul-long v11, v7, v9

    const-wide/16 v13, 0x5b8

    add-long/2addr v11, v13

    const-wide/16 v13, 0x5b5

    invoke-static {v11, v12, v13, v14}, Landroid/icu/util/GregorianCalendar;->floorDivide(JJ)J

    move-result-wide v11

    long-to-int v2, v11

    .line 749
    .local v2, "eyear":I
    int-to-long v11, v2

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    const-wide/16 v15, 0x16d

    mul-long/2addr v11, v15

    move-wide v15, v13

    int-to-long v13, v2

    sub-long/2addr v13, v15

    invoke-static {v13, v14, v9, v10}, Landroid/icu/util/GregorianCalendar;->floorDivide(JJ)J

    move-result-wide v9

    add-long/2addr v11, v9

    .line 750
    .local v11, "january1":J
    sub-long v9, v7, v11

    long-to-int v9, v9

    .line 758
    .local v9, "dayOfYear":I
    and-int/lit8 v10, v2, 0x3

    if-nez v10, :cond_49

    move v10, v6

    goto :goto_4a

    :cond_49
    move v10, v4

    .line 761
    .local v10, "isLeap":Z
    :goto_4a
    const/4 v13, 0x0

    .line 762
    .local v13, "correction":I
    if-eqz v10, :cond_50

    const/16 v14, 0x3c

    goto :goto_52

    :cond_50
    const/16 v14, 0x3b

    .line 763
    .local v14, "march1":I
    :goto_52
    if-lt v9, v14, :cond_5a

    .line 764
    if-eqz v10, :cond_58

    move v15, v6

    goto :goto_59

    :cond_58
    move v15, v5

    :goto_59
    move v13, v15

    .line 766
    :cond_5a
    add-int v15, v9, v13

    mul-int/lit8 v15, v15, 0xc

    add-int/2addr v15, v3

    div-int/lit16 v15, v15, 0x16f

    .line 767
    .local v15, "month":I
    sget-object v16, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v16, v16, v15

    if-eqz v10, :cond_6a

    const/16 v17, 0x3

    goto :goto_6c

    :cond_6a
    move/from16 v17, v5

    :goto_6c
    aget v16, v16, v17

    sub-int v16, v9, v16

    add-int/lit8 v16, v16, 0x1

    .line 768
    .local v16, "dayOfMonth":I
    add-int/2addr v9, v6

    move v8, v9

    move/from16 v7, v16

    move v9, v2

    move v2, v15

    .line 770
    .end local v10    # "isLeap":Z
    .end local v11    # "january1":J
    .end local v13    # "correction":I
    .end local v14    # "march1":I
    .end local v15    # "month":I
    .end local v16    # "dayOfMonth":I
    .local v2, "month":I
    .local v7, "dayOfMonth":I
    .restart local v8    # "dayOfYear":I
    .local v9, "eyear":I
    :goto_78
    invoke-virtual {v0, v5, v2}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    .line 771
    const/16 v5, 0x17

    invoke-virtual {v0, v5, v2}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    .line 772
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    .line 773
    invoke-virtual {v0, v3, v8}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    .line 774
    const/16 v3, 0x13

    invoke-virtual {v0, v3, v9}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    .line 775
    const/4 v3, 0x1

    .line 776
    .local v3, "era":I
    if-ge v9, v6, :cond_92

    .line 777
    const/4 v3, 0x0

    .line 778
    rsub-int/lit8 v9, v9, 0x1

    .line 780
    :cond_92
    invoke-virtual {v0, v4, v3}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    .line 781
    invoke-virtual {v0, v6, v9}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    .line 782
    return-void
.end method

.method protected whitelist test-api handleComputeJulianDay(I)I
    .registers 7
    .param p1, "bestField"    # I

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/GregorianCalendar;->invertGregorian:Z

    .line 812
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v1

    .line 816
    .local v1, "jd":I
    iget-boolean v2, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    iget v3, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/4 v4, 0x1

    if-lt v1, v3, :cond_f

    move v0, v4

    :cond_f
    if-eq v2, v0, :cond_17

    .line 817
    iput-boolean v4, p0, Landroid/icu/util/GregorianCalendar;->invertGregorian:Z

    .line 818
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v1

    .line 821
    :cond_17
    return v1
.end method

.method protected whitelist test-api handleComputeMonthStart(IIZ)I
    .registers 11
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    .line 831
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_8

    const/16 v2, 0xb

    if-le p2, v2, :cond_13

    .line 832
    :cond_8
    new-array v2, v1, [I

    .line 833
    .local v2, "rem":[I
    const/16 v3, 0xc

    invoke-static {p2, v3, v2}, Landroid/icu/util/GregorianCalendar;->floorDivide(II[I)I

    move-result v3

    add-int/2addr p1, v3

    .line 834
    aget p2, v2, v0

    .line 837
    .end local v2    # "rem":[I
    :cond_13
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_19

    move v2, v1

    goto :goto_1a

    :cond_19
    move v2, v0

    .line 838
    .local v2, "isLeap":Z
    :goto_1a
    add-int/lit8 v3, p1, -0x1

    .line 839
    .local v3, "y":I
    mul-int/lit16 v4, v3, 0x16d

    const/4 v5, 0x4

    invoke-static {v3, v5}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0x1a444f

    add-int/2addr v4, v5

    .line 841
    .local v4, "julianDay":I
    iget v5, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    if-lt p1, v5, :cond_2e

    move v5, v1

    goto :goto_2f

    :cond_2e
    move v5, v0

    :goto_2f
    iput-boolean v5, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    .line 842
    iget-boolean v5, p0, Landroid/icu/util/GregorianCalendar;->invertGregorian:Z

    if-eqz v5, :cond_3a

    .line 843
    iget-boolean v5, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    xor-int/2addr v5, v1

    iput-boolean v5, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    .line 845
    :cond_3a
    iget-boolean v5, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_5a

    .line 846
    if-eqz v2, :cond_4a

    rem-int/lit8 v5, p1, 0x64

    if-nez v5, :cond_49

    rem-int/lit16 v5, p1, 0x190

    if-nez v5, :cond_4a

    :cond_49
    move v0, v1

    :cond_4a
    move v2, v0

    .line 849
    const/16 v0, 0x190

    invoke-static {v3, v0}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v3, v1}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v6

    add-int/2addr v4, v0

    .line 856
    :cond_5a
    if-eqz p2, :cond_66

    .line 857
    sget-object v0, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v0, v0, p2

    if-eqz v2, :cond_63

    const/4 v6, 0x3

    :cond_63
    aget v0, v0, v6

    add-int/2addr v4, v0

    .line 860
    :cond_66
    return v4
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 5

    .line 792
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->newerField(II)I

    move-result v2

    const/16 v3, 0x7b2

    if-ne v2, v0, :cond_10

    .line 793
    invoke-virtual {p0, v0, v3}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v0

    .local v0, "year":I
    goto :goto_23

    .line 796
    .end local v0    # "year":I
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v0

    .line 797
    .local v0, "era":I
    if-nez v0, :cond_1e

    .line 798
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .local v1, "year":I
    goto :goto_23

    .line 800
    .end local v1    # "year":I
    :cond_1e
    invoke-virtual {p0, v1, v3}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v1

    move v0, v1

    .line 803
    .local v0, "year":I
    :goto_23
    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    .line 287
    sget-object v0, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected whitelist test-api handleGetMonthLength(II)I
    .registers 5
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    .line 704
    if-ltz p2, :cond_6

    const/16 v0, 0xb

    if-le p2, v0, :cond_13

    .line 705
    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 706
    .local v0, "rem":[I
    const/16 v1, 0xc

    invoke-static {p2, v1, v0}, Landroid/icu/util/GregorianCalendar;->floorDivide(II[I)I

    move-result v1

    add-int/2addr p1, v1

    .line 707
    const/4 v1, 0x0

    aget p2, v0, v1

    .line 710
    .end local v0    # "rem":[I
    :cond_13
    sget-object v0, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v0, v0, p2

    invoke-virtual {p0, p1}, Landroid/icu/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected whitelist test-api handleGetYearLength(I)I
    .registers 3
    .param p1, "eyear"    # I

    .line 716
    invoke-virtual {p0, p1}, Landroid/icu/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 533
    invoke-super {p0}, Landroid/icu/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v1, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o inDaylightTime()Z
    .registers 3

    .line 689
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 690
    :cond_c
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->complete()V

    .line 691
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public whitelist test-api isEquivalentTo(Landroid/icu/util/Calendar;)Z
    .registers 6
    .param p1, "other"    # Landroid/icu/util/Calendar;

    .line 524
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    move-object v2, p1

    check-cast v2, Landroid/icu/util/GregorianCalendar;

    iget-wide v2, v2, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method protected blacklist isEra0CountingBackward()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api isLeapYear(I)Z
    .registers 5
    .param p1, "year"    # I

    .line 512
    iget v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_15

    .line 513
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_13

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_12

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_13

    :cond_12
    goto :goto_1b

    :cond_13
    move v1, v2

    goto :goto_1b

    .line 514
    :cond_15
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 512
    :goto_1b
    return v1
.end method

.method public whitelist test-api roll(II)V
    .registers 12
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 541
    packed-switch p1, :pswitch_data_6a

    .line 588
    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->roll(II)V

    .line 589
    return-void

    .line 551
    :pswitch_7
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 554
    .local v1, "woy":I
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 555
    .local v2, "isoYear":I
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 556
    .local v3, "isoDoy":I
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->internalGetMonth()I

    move-result v4

    const/16 v5, 0x34

    const/4 v6, 0x1

    if-nez v4, :cond_28

    .line 557
    if-lt v1, v5, :cond_31

    .line 558
    invoke-virtual {p0, v2}, Landroid/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_31

    .line 561
    :cond_28
    if-ne v1, v6, :cond_31

    .line 562
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Landroid/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 565
    :cond_31
    :goto_31
    add-int/2addr v1, p2

    .line 567
    if-lt v1, v6, :cond_36

    if-le v1, v5, :cond_62

    .line 574
    :cond_36
    invoke-virtual {p0, v2}, Landroid/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    move-result v4

    .line 575
    .local v4, "lastDoy":I
    sub-int v5, v4, v3

    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v8

    add-int/2addr v5, v8

    .line 576
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v8

    sub-int/2addr v5, v8

    rem-int/2addr v5, v7

    .line 577
    .local v5, "lastRelDow":I
    if-gez v5, :cond_4c

    add-int/lit8 v5, v5, 0x7

    .line 578
    :cond_4c
    rsub-int/lit8 v7, v5, 0x6

    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v7, v8, :cond_56

    add-int/lit8 v4, v4, -0x7

    .line 579
    :cond_56
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v4, v7}, Landroid/icu/util/GregorianCalendar;->weekNumber(II)I

    move-result v7

    .line 580
    .local v7, "lastWoy":I
    add-int v8, v1, v7

    sub-int/2addr v8, v6

    rem-int/2addr v8, v7

    add-int/lit8 v1, v8, 0x1

    .line 582
    .end local v4    # "lastDoy":I
    .end local v5    # "lastRelDow":I
    .end local v7    # "lastWoy":I
    :cond_62
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 583
    invoke-virtual {p0, v6, v2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 584
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x3
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist test-api setGregorianChange(Ljava/util/Date;)V
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .line 472
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    .line 477
    iget-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const-wide v2, -0x28ec76c40e65000L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    .line 478
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    goto :goto_4b

    .line 479
    :cond_18
    iget-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const-wide v2, 0x28d47dbbf19b000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2b

    .line 480
    const v0, 0x7fffffff

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    goto :goto_4b

    .line 485
    :cond_2b
    iget-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/GregorianCalendar;->floorDivide(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    .line 488
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    .line 489
    .local v0, "cal":Landroid/icu/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 490
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 492
    .end local v0    # "cal":Landroid/icu/util/GregorianCalendar;
    :goto_4b
    return-void
.end method

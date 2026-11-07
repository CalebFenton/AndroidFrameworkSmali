.class public Landroid/icu/util/JapaneseCalendar;
.super Landroid/icu/util/GregorianCalendar;
.source "JapaneseCalendar.java"


# static fields
.field public static final greylist CURRENT_ERA:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist ERA_RULES:Landroid/icu/impl/EraRules;

.field private static final greylist-max-o GREGORIAN_EPOCH:I = 0x7b2

.field public static final whitelist test-api HEISEI:I

.field public static final whitelist test-api MEIJI:I

.field public static final whitelist test-api REIWA:I

.field public static final whitelist test-api SHOWA:I

.field public static final whitelist test-api TAISHO:I

.field private static final whitelist serialVersionUID:J = -0x29511a714d92d973L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 224
    sget-object v0, Landroid/icu/impl/CalType;->JAPANESE:Landroid/icu/impl/CalType;

    invoke-static {}, Landroid/icu/util/JapaneseCalendar;->enableTentativeEra()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/icu/impl/EraRules;->getInstance(Landroid/icu/impl/CalType;Z)Landroid/icu/impl/EraRules;

    move-result-object v0

    sput-object v0, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    .line 383
    const/16 v0, 0xe8

    sput v0, Landroid/icu/util/JapaneseCalendar;->MEIJI:I

    .line 384
    const/16 v0, 0xe9

    sput v0, Landroid/icu/util/JapaneseCalendar;->TAISHO:I

    .line 385
    const/16 v0, 0xea

    sput v0, Landroid/icu/util/JapaneseCalendar;->SHOWA:I

    .line 386
    const/16 v0, 0xeb

    sput v0, Landroid/icu/util/JapaneseCalendar;->HEISEI:I

    .line 391
    const/16 v0, 0xec

    sput v0, Landroid/icu/util/JapaneseCalendar;->REIWA:I

    .line 392
    sget v0, Landroid/icu/util/JapaneseCalendar;->REIWA:I

    sput v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    .line 393
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    .line 82
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 186
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    .line 187
    const/4 v0, 0x0

    sget v1, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/JapaneseCalendar;->set(II)V

    .line 188
    return-void
.end method

.method public constructor whitelist test-api <init>(IIII)V
    .registers 6
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "date"    # I

    .line 168
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/JapaneseCalendar;->set(II)V

    .line 170
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIIII)V
    .registers 10
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .line 212
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/GregorianCalendar;-><init>(IIIIII)V

    .line 213
    move v0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "year":I
    .local v0, "second":I
    .local p2, "year":I
    .local p3, "month":I
    .local p4, "date":I
    .local p5, "hour":I
    .local p6, "minute":I
    const/4 v1, 0x0

    sget v2, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    invoke-virtual {p0, v1, v2}, Landroid/icu/util/JapaneseCalendar;->set(II)V

    .line 214
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;)V
    .registers 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 90
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    .line 91
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 133
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 121
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 108
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/ULocale;)V

    .line 109
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Date;)V
    .registers 2
    .param p1, "date"    # Ljava/util/Date;

    .line 142
    invoke-direct {p0}, Landroid/icu/util/JapaneseCalendar;-><init>()V

    .line 143
    invoke-virtual {p0, p1}, Landroid/icu/util/JapaneseCalendar;->setTime(Ljava/util/Date;)V

    .line 144
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 2
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 99
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 100
    return-void
.end method

.method public static blacklist enableTentativeEra()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "includeTentativeEra":Z
    const-string v1, "ICU_ENABLE_TENTATIVE_ERA"

    .line 250
    .local v1, "VAR_NAME":Ljava/lang/String;
    const-string v2, "ICU_ENABLE_TENTATIVE_ERA"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "eraConf":Ljava/lang/String;
    if-nez v3, :cond_f

    .line 252
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    :cond_f
    if-eqz v3, :cond_18

    .line 256
    const-string v2, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_24

    .line 258
    :cond_18
    const-string v2, "jdk.calendar.japanese.supplemental.era"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "jdkEraConf":Ljava/lang/String;
    if-eqz v2, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    move v0, v4

    .line 261
    .end local v2    # "jdkEraConf":Ljava/lang/String;
    :goto_24
    return v0
.end method


# virtual methods
.method public whitelist test-api getActualMaximum(I)I
    .registers 9
    .param p1, "field"    # I

    .line 452
    const/4 v0, 0x1

    if-ne p1, v0, :cond_37

    .line 453
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/icu/util/JapaneseCalendar;->get(I)I

    move-result v2

    .line 454
    .local v2, "era":I
    sget-object v3, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    invoke-virtual {v3}, Landroid/icu/impl/EraRules;->getNumberOfEras()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_17

    .line 456
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/JapaneseCalendar;->handleGetLimit(II)I

    move-result v0

    return v0

    .line 458
    :cond_17
    sget-object v3, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/icu/impl/EraRules;->getStartDate(I[I)[I

    move-result-object v3

    .line 459
    .local v3, "nextEraStart":[I
    aget v1, v3, v1

    .line 460
    .local v1, "nextEraYear":I
    aget v4, v3, v0

    .line 461
    .local v4, "nextEraMonth":I
    const/4 v5, 0x2

    aget v5, v3, v5

    .line 463
    .local v5, "nextEraDate":I
    sget-object v6, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    invoke-virtual {v6, v2}, Landroid/icu/impl/EraRules;->getStartYear(I)I

    move-result v6

    sub-int v6, v1, v6

    add-int/2addr v6, v0

    .line 464
    .local v6, "maxYear":I
    if-ne v4, v0, :cond_36

    if-ne v5, v0, :cond_36

    .line 466
    add-int/lit8 v6, v6, -0x1

    .line 468
    :cond_36
    return v6

    .line 471
    .end local v1    # "nextEraYear":I
    .end local v2    # "era":I
    .end local v3    # "nextEraStart":[I
    .end local v4    # "nextEraMonth":I
    .end local v5    # "nextEraDate":I
    .end local v6    # "maxYear":I
    :cond_37
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o getDefaultDayInMonth(II)I
    .registers 7
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    .line 317
    sget v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    .line 318
    .local v0, "era":I
    sget-object v2, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/icu/impl/EraRules;->getStartDate(I[I)[I

    move-result-object v2

    .line 320
    .local v2, "eraStart":[I
    aget v1, v2, v1

    if-ne p1, v1, :cond_1c

    .line 321
    const/4 v1, 0x1

    aget v3, v2, v1

    sub-int/2addr v3, v1

    if-ne p2, v3, :cond_1c

    .line 322
    const/4 v1, 0x2

    aget v1, v2, v1

    return v1

    .line 326
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->getDefaultDayInMonth(II)I

    move-result v1

    return v1
.end method

.method protected greylist-max-o getDefaultMonthInYear(I)I
    .registers 6
    .param p1, "extendedYear"    # I

    .line 293
    sget v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    .line 297
    .local v0, "era":I
    sget-object v2, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/icu/impl/EraRules;->getStartDate(I[I)[I

    move-result-object v2

    .line 298
    .local v2, "eraStart":[I
    aget v1, v2, v1

    if-ne p1, v1, :cond_17

    .line 299
    const/4 v1, 0x1

    aget v3, v2, v1

    sub-int/2addr v3, v1

    return v3

    .line 302
    :cond_17
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->getDefaultMonthInYear(I)I

    move-result v1

    return v1
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 432
    const-string v0, "japanese"

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 7
    .param p1, "julianDay"    # I

    .line 333
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->handleComputeFields(I)V

    .line 334
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/icu/util/JapaneseCalendar;->internalGet(I)I

    move-result v0

    .line 335
    .local v0, "year":I
    sget-object v1, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/icu/util/JapaneseCalendar;->internalGet(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroid/icu/util/JapaneseCalendar;->internalGet(I)I

    move-result v4

    invoke-virtual {v1, v0, v2, v4}, Landroid/icu/impl/EraRules;->getEraIndex(III)I

    move-result v1

    .line 337
    .local v1, "eraIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/icu/util/JapaneseCalendar;->internalSet(II)V

    .line 338
    sget-object v2, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    invoke-virtual {v2, v1}, Landroid/icu/impl/EraRules;->getStartYear(I)I

    move-result v2

    sub-int v2, v0, v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/JapaneseCalendar;->internalSet(II)V

    .line 339
    return-void
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 6

    .line 271
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/JapaneseCalendar;->newerField(II)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_17

    .line 272
    invoke-virtual {p0, v0, v3}, Landroid/icu/util/JapaneseCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_17

    .line 273
    const/16 v1, 0x7b2

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    .local v0, "year":I
    goto :goto_29

    .line 276
    .end local v0    # "year":I
    :cond_17
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    sget-object v2, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    sget v4, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    .line 277
    invoke-virtual {p0, v3, v4}, Landroid/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/EraRules;->getStartYear(I)I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 280
    .restart local v0    # "year":I
    :goto_29
    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 6
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    .line 403
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_2e

    goto :goto_29

    .line 411
    :pswitch_5
    packed-switch p2, :pswitch_data_36

    goto :goto_29

    .line 418
    :pswitch_9
    const/4 v0, 0x3

    invoke-super {p0, p1, v0}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result v0

    sget-object v1, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    sget v2, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/EraRules;->getStartYear(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 416
    :pswitch_18
    return v0

    .line 414
    :pswitch_19
    return v0

    .line 405
    :pswitch_1a
    if-eqz p2, :cond_27

    if-ne p2, v0, :cond_1f

    goto :goto_27

    .line 408
    :cond_1f
    sget-object v1, Landroid/icu/util/JapaneseCalendar;->ERA_RULES:Landroid/icu/impl/EraRules;

    invoke-virtual {v1}, Landroid/icu/impl/EraRules;->getNumberOfEras()I

    move-result v1

    sub-int/2addr v1, v0

    return v1

    .line 406
    :cond_27
    :goto_27
    const/4 v0, 0x0

    return v0

    .line 423
    :goto_29
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result v0

    return v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_5
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_9
    .end packed-switch
.end method

.method public greylist-max-o haveDefaultCentury()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist isEra0CountingBackward()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 482
    const/4 v0, 0x0

    return v0
.end method

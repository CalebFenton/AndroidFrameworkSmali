.class public final Landroid/icu/util/EthiopicCalendar;
.super Landroid/icu/util/CECalendar;
.source "EthiopicCalendar.java"


# static fields
.field private static final greylist-max-o AMETE_ALEM:I = 0x0

.field private static final greylist-max-o AMETE_ALEM_ERA:I = 0x1

.field private static final greylist-max-o AMETE_MIHRET:I = 0x1

.field private static final greylist-max-o AMETE_MIHRET_DELTA:I = 0x157c

.field private static final greylist-max-o AMETE_MIHRET_ERA:I = 0x0

.field public static final whitelist test-api GENBOT:I = 0x8

.field public static final whitelist test-api HAMLE:I = 0xa

.field public static final whitelist test-api HEDAR:I = 0x2

.field private static final greylist-max-o JD_EPOCH_OFFSET_AMETE_MIHRET:I = 0x1a4dd0

.field public static final whitelist test-api MEGABIT:I = 0x6

.field public static final whitelist test-api MESKEREM:I = 0x0

.field public static final whitelist test-api MIAZIA:I = 0x7

.field public static final whitelist test-api NEHASSE:I = 0xb

.field public static final whitelist test-api PAGUMEN:I = 0xc

.field public static final whitelist test-api SENE:I = 0x9

.field public static final whitelist test-api TAHSAS:I = 0x3

.field public static final whitelist test-api TEKEMT:I = 0x1

.field public static final whitelist test-api TER:I = 0x4

.field public static final whitelist test-api YEKATIT:I = 0x5

.field private static final whitelist serialVersionUID:J = -0x21d746fbfcf8d998L


# instance fields
.field private greylist-max-o eraType:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 144
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 145
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;-><init>(III)V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    .line 211
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

    .line 238
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/CECalendar;-><init>(IIIIII)V

    .line 137
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

    iput v1, p1, Landroid/icu/util/EthiopicCalendar;->eraType:I

    .line 239
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 154
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 155
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    .line 197
    invoke-direct {p0, p2}, Landroid/icu/util/EthiopicCalendar;->setCalcTypeForLocale(Landroid/icu/util/ULocale;)V

    .line 198
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 4
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 185
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 186
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 174
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 175
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Date;)V
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 220
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Date;)V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    .line 221
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 164
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forLocaleOrDefault(Ljava/util/Locale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 165
    return-void
.end method

.method public static greylist-max-o EthiopicToJD(JII)I
    .registers 5
    .param p0, "year"    # J
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 375
    const v0, 0x1a4dd0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/EthiopicCalendar;->ceToJD(JIII)I

    move-result v0

    return v0
.end method

.method private greylist-max-o setCalcTypeForLocale(Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 382
    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "localeCalType":Ljava/lang/String;
    const-string v1, "ethiopic-amete-alem"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 384
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    goto :goto_15

    .line 386
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    .line 388
    :goto_15
    return-void
.end method


# virtual methods
.method protected greylist-max-o getJDEpochOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    const v0, 0x1a4dd0

    return v0
.end method

.method public bridge synthetic whitelist test-api getTemporalMonthCode()Ljava/lang/String;
    .registers 2

    .line 28
    invoke-super {p0}, Landroid/icu/util/CECalendar;->getTemporalMonthCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 246
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 247
    const-string v0, "ethiopic-amete-alem"

    return-object v0

    .line 249
    :cond_9
    const-string v0, "ethiopic"

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 9
    .param p1, "julianDay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 308
    .local v0, "fields":[I
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->getJDEpochOffset()I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/icu/util/EthiopicCalendar;->jdToCE(II[I)V

    .line 314
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "era":I
    aget v3, v0, v2

    add-int/lit16 v3, v3, 0x157c

    .local v3, "year":I
    goto :goto_24

    .line 318
    .end local v1    # "era":I
    .end local v3    # "year":I
    :cond_17
    aget v1, v0, v2

    if-lez v1, :cond_1f

    .line 319
    const/4 v1, 0x1

    .line 320
    .restart local v1    # "era":I
    aget v3, v0, v2

    .restart local v3    # "year":I
    goto :goto_24

    .line 322
    .end local v1    # "era":I
    .end local v3    # "year":I
    :cond_1f
    const/4 v1, 0x0

    .line 323
    .restart local v1    # "era":I
    aget v3, v0, v2

    add-int/lit16 v3, v3, 0x157c

    .line 327
    .restart local v3    # "year":I
    :goto_24
    const/16 v4, 0x13

    aget v5, v0, v2

    invoke-virtual {p0, v4, v5}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 328
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 329
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 330
    aget v4, v0, v2

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v4}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 331
    const/16 v4, 0x17

    aget v6, v0, v2

    invoke-virtual {p0, v4, v6}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 332
    const/4 v4, 0x5

    aget v6, v0, v5

    invoke-virtual {p0, v4, v6}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 333
    aget v2, v0, v2

    mul-int/lit8 v2, v2, 0x1e

    aget v4, v0, v5

    add-int/2addr v2, v4

    const/4 v4, 0x6

    invoke-virtual {p0, v4, v2}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 334
    return-void
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/EthiopicCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 282
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    .local v0, "eyear":I
    goto :goto_31

    .line 283
    .end local v0    # "eyear":I
    :cond_e
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 284
    const/16 v0, 0x157d

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    add-int/lit16 v0, v0, -0x157c

    .restart local v0    # "eyear":I
    goto :goto_31

    .line 288
    .end local v0    # "eyear":I
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    .line 289
    .local v0, "era":I
    if-ne v0, v1, :cond_2a

    .line 290
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v1

    move v0, v1

    .local v1, "eyear":I
    goto :goto_31

    .line 292
    .end local v1    # "eyear":I
    :cond_2a
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v1

    add-int/lit16 v1, v1, -0x157c

    move v0, v1

    .line 295
    .local v0, "eyear":I
    :goto_31
    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "limitType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    .line 345
    const/4 v0, 0x0

    return v0

    .line 347
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/icu/util/CECalendar;->handleGetLimit(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isAmeteAlemEra()Z
    .registers 3

    .line 267
    iget v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist test-api setAmeteAlemEra(Z)V
    .registers 2
    .param p1, "onOff"    # Z

    .line 258
    iput p1, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    .line 259
    return-void
.end method

.method public bridge synthetic whitelist test-api setTemporalMonthCode(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    invoke-super {p0, p1}, Landroid/icu/util/CECalendar;->setTemporalMonthCode(Ljava/lang/String;)V

    return-void
.end method

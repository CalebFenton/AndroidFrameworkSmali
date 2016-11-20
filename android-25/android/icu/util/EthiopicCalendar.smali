.class public final Landroid/icu/util/EthiopicCalendar;
.super Landroid/icu/util/CECalendar;
.source "EthiopicCalendar.java"


# static fields
.field private static final AMETE_ALEM:I = 0x0

.field private static final AMETE_ALEM_ERA:I = 0x1

.field private static final AMETE_MIHRET:I = 0x1

.field private static final AMETE_MIHRET_DELTA:I = 0x157c

.field private static final AMETE_MIHRET_ERA:I = 0x0

.field public static final GENBOT:I = 0x8

.field public static final HAMLE:I = 0xa

.field public static final HEDAR:I = 0x2

.field private static final JD_EPOCH_OFFSET_AMETE_MIHRET:I = 0x1a4dd0

.field public static final MEGABIT:I = 0x6

.field public static final MESKEREM:I = 0x0

.field public static final MIAZIA:I = 0x7

.field public static final NEHASSE:I = 0xb

.field public static final PAGUMEN:I = 0xc

.field public static final SENE:I = 0x9

.field public static final TAHSAS:I = 0x3

.field public static final TEKEMT:I = 0x1

.field public static final TER:I = 0x4

.field public static final YEKATIT:I = 0x5

.field private static final serialVersionUID:J = -0x21d746fbfcf8d998L


# instance fields
.field private eraType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 143
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 142
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 209
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;-><init>(III)V

    #@3
    .line 136
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    #@6
    .line 208
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 237
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/CECalendar;-><init>(IIIIII)V

    #@3
    .line 136
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    #@6
    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 153
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@9
    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 136
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    #@6
    .line 196
    invoke-direct {p0, p2}, Landroid/icu/util/EthiopicCalendar;->setCalcTypeForLocale(Landroid/icu/util/ULocale;)V

    #@9
    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 184
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7
    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 173
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7
    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 219
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Date;)V

    #@3
    .line 136
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    #@6
    .line 218
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 163
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 162
    return-void
.end method

.method public static EthiopicToJD(JII)I
    .locals 2
    .param p0, "year"    # J
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 368
    const v0, 0x1a4dd0

    #@3
    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/EthiopicCalendar;->ceToJD(JIII)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private setCalcTypeForLocale(Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 375
    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 376
    .local v0, "localeCalType":Ljava/lang/String;
    const-string/jumbo v1, "ethiopic-amete-alem"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 377
    const/4 v1, 0x1

    #@e
    invoke-virtual {p0, v1}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    #@11
    .line 374
    :goto_0
    return-void

    #@12
    .line 379
    :cond_0
    const/4 v1, 0x0

    #@13
    invoke-virtual {p0, v1}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    #@16
    goto :goto_0
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 351
    const v0, 0x1a4dd0

    #@3
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 245
    const-string/jumbo v0, "ethiopic-amete-alem"

    #@9
    return-object v0

    #@a
    .line 247
    :cond_0
    const-string/jumbo v0, "ethiopic"

    #@d
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 8
    .param p1, "julianDay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 303
    const/4 v3, 0x3

    #@4
    new-array v1, v3, [I

    #@6
    .line 304
    .local v1, "fields":[I
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->getJDEpochOffset()I

    #@9
    move-result v3

    #@a
    invoke-static {p1, v3, v1}, Landroid/icu/util/EthiopicCalendar;->jdToCE(II[I)V

    #@d
    .line 310
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 311
    const/4 v0, 0x0

    #@14
    .line 312
    .local v0, "era":I
    aget v3, v1, v5

    #@16
    add-int/lit16 v2, v3, 0x157c

    #@18
    .line 323
    .local v2, "year":I
    :goto_0
    aget v3, v1, v5

    #@1a
    const/16 v4, 0x13

    #@1c
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@1f
    .line 324
    invoke-virtual {p0, v5, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@22
    .line 325
    invoke-virtual {p0, v6, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@25
    .line 326
    aget v3, v1, v6

    #@27
    invoke-virtual {p0, v7, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@2a
    .line 327
    aget v3, v1, v7

    #@2c
    const/4 v4, 0x5

    #@2d
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@30
    .line 328
    aget v3, v1, v6

    #@32
    mul-int/lit8 v3, v3, 0x1e

    #@34
    aget v4, v1, v7

    #@36
    add-int/2addr v3, v4

    #@37
    const/4 v4, 0x6

    #@38
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@3b
    .line 301
    return-void

    #@3c
    .line 314
    .end local v0    # "era":I
    .end local v2    # "year":I
    :cond_0
    aget v3, v1, v5

    #@3e
    if-lez v3, :cond_1

    #@40
    .line 315
    const/4 v0, 0x1

    #@41
    .line 316
    .restart local v0    # "era":I
    aget v2, v1, v5

    #@43
    .restart local v2    # "year":I
    goto :goto_0

    #@44
    .line 318
    .end local v0    # "era":I
    .end local v2    # "year":I
    :cond_1
    const/4 v0, 0x0

    #@45
    .line 319
    .restart local v0    # "era":I
    aget v3, v1, v5

    #@47
    add-int/lit16 v2, v3, 0x157c

    #@49
    .restart local v2    # "year":I
    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x13

    #@2
    const/4 v3, 0x1

    #@3
    .line 278
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->newerField(II)I

    #@6
    move-result v2

    #@7
    if-ne v2, v4, :cond_0

    #@9
    .line 279
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@c
    move-result v1

    #@d
    .line 292
    .local v1, "eyear":I
    :goto_0
    return v1

    #@e
    .line 280
    .end local v1    # "eyear":I
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 281
    const/16 v2, 0x157d

    #@16
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@19
    move-result v2

    #@1a
    add-int/lit16 v1, v2, -0x157c

    #@1c
    .restart local v1    # "eyear":I
    goto :goto_0

    #@1d
    .line 285
    .end local v1    # "eyear":I
    :cond_1
    const/4 v2, 0x0

    #@1e
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@21
    move-result v0

    #@22
    .line 286
    .local v0, "era":I
    if-ne v0, v3, :cond_2

    #@24
    .line 287
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@27
    move-result v1

    #@28
    .restart local v1    # "eyear":I
    goto :goto_0

    #@29
    .line 289
    .end local v1    # "eyear":I
    :cond_2
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@2c
    move-result v2

    #@2d
    add-int/lit16 v1, v2, -0x157c

    #@2f
    .restart local v1    # "eyear":I
    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 2
    .param p1, "field"    # I
    .param p2, "limitType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 338
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    if-nez p1, :cond_0

    #@9
    .line 339
    return v1

    #@a
    .line 341
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/icu/util/CECalendar;->handleGetLimit(II)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public isAmeteAlemEra()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 265
    iget v1, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setAmeteAlemEra(Z)V
    .locals 1
    .param p1, "onOff"    # Z

    #@0
    .prologue
    .line 256
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    #@5
    .line 255
    return-void

    #@6
    .line 256
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

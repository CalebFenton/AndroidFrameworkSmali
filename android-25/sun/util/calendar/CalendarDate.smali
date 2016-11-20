.class public abstract Lsun/util/calendar/CalendarDate;
.super Ljava/lang/Object;
.source "CalendarDate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final FIELD_UNDEFINED:I = -0x80000000

.field public static final TIME_UNDEFINED:J = -0x8000000000000000L


# instance fields
.field private dayOfMonth:I

.field private dayOfWeek:I

.field private daylightSaving:I

.field private era:Lsun/util/calendar/Era;

.field private forceStandardTime:Z

.field private fraction:J

.field private hours:I

.field private leapYear:Z

.field private locale:Ljava/util/Locale;

.field private millis:I

.field private minutes:I

.field private month:I

.field private normalized:Z

.field private seconds:I

.field private year:I

.field private zoneOffset:I

.field private zoneinfo:Ljava/util/TimeZone;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 90
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lsun/util/calendar/CalendarDate;-><init>(Ljava/util/TimeZone;)V

    #@7
    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/high16 v0, -0x80000000

    #@5
    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    #@7
    .line 94
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    #@9
    .line 93
    return-void
.end method


# virtual methods
.method public addDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    #@3
    .line 314
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->addMonth(I)Lsun/util/calendar/CalendarDate;

    #@6
    .line 315
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->addDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@9
    .line 316
    return-object p0
.end method

.method public addDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 198
    if-eqz p1, :cond_0

    #@3
    .line 199
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    #@5
    add-int/2addr v0, p1

    #@6
    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    #@8
    .line 200
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@a
    .line 202
    :cond_0
    return-object p0
.end method

.method public addHours(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 231
    if-eqz p1, :cond_0

    #@3
    .line 232
    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    #@5
    add-int/2addr v0, p1

    #@6
    iput v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    #@8
    .line 233
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@a
    .line 235
    :cond_0
    return-object p0
.end method

.method public addMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 291
    if-eqz p1, :cond_0

    #@3
    .line 292
    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    #@5
    add-int/2addr v0, p1

    #@6
    iput v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    #@8
    .line 293
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@a
    .line 295
    :cond_0
    return-object p0
.end method

.method public addMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 251
    if-eqz p1, :cond_0

    #@3
    .line 252
    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    #@5
    add-int/2addr v0, p1

    #@6
    iput v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    #@8
    .line 253
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@a
    .line 255
    :cond_0
    return-object p0
.end method

.method public addMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 178
    if-eqz p1, :cond_0

    #@3
    .line 179
    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    #@5
    add-int/2addr v0, p1

    #@6
    iput v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    #@8
    .line 180
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@a
    .line 182
    :cond_0
    return-object p0
.end method

.method public addSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 271
    if-eqz p1, :cond_0

    #@3
    .line 272
    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    #@5
    add-int/2addr v0, p1

    #@6
    iput v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    #@8
    .line 273
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@a
    .line 275
    :cond_0
    return-object p0
.end method

.method public addTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "millis"    # I

    #@0
    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    #@3
    .line 329
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->addMinutes(I)Lsun/util/calendar/CalendarDate;

    #@6
    .line 330
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->addSeconds(I)Lsun/util/calendar/CalendarDate;

    #@9
    .line 331
    invoke-virtual {p0, p4}, Lsun/util/calendar/CalendarDate;->addMillis(I)Lsun/util/calendar/CalendarDate;

    #@c
    .line 332
    return-object p0
.end method

.method public addYear(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 135
    if-eqz p1, :cond_0

    #@3
    .line 136
    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    #@5
    add-int/2addr v0, p1

    #@6
    iput v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    #@8
    .line 137
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@a
    .line 139
    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 435
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 436
    :catch_0
    move-exception v0

    #@6
    .line 438
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    #@8
    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    #@b
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 385
    instance-of v5, p1, Lsun/util/calendar/CalendarDate;

    #@4
    if-nez v5, :cond_0

    #@6
    .line 386
    return v4

    #@7
    :cond_0
    move-object v1, p1

    #@8
    .line 388
    check-cast v1, Lsun/util/calendar/CalendarDate;

    #@a
    .line 389
    .local v1, "that":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    #@d
    move-result v5

    #@e
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    #@11
    move-result v6

    #@12
    if-eq v5, v6, :cond_1

    #@14
    .line 390
    return v4

    #@15
    .line 392
    :cond_1
    iget-object v5, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    #@17
    if-eqz v5, :cond_2

    #@19
    const/4 v0, 0x1

    #@1a
    .line 393
    .local v0, "hasZone":Z
    :goto_0
    iget-object v5, v1, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    #@1c
    if-eqz v5, :cond_3

    #@1e
    move v2, v3

    #@1f
    .line 394
    .local v2, "thatHasZone":Z
    :goto_1
    if-eq v0, v2, :cond_4

    #@21
    .line 395
    return v4

    #@22
    .line 392
    .end local v0    # "hasZone":Z
    .end local v2    # "thatHasZone":Z
    :cond_2
    const/4 v0, 0x0

    #@23
    .restart local v0    # "hasZone":Z
    goto :goto_0

    #@24
    :cond_3
    move v2, v4

    #@25
    .line 393
    goto :goto_1

    #@26
    .line 397
    .restart local v2    # "thatHasZone":Z
    :cond_4
    if-eqz v0, :cond_5

    #@28
    iget-object v5, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    #@2a
    iget-object v6, v1, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    #@2c
    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_6

    #@32
    .line 400
    :cond_5
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    #@39
    move-result-object v6

    #@3a
    if-ne v5, v6, :cond_8

    #@3c
    .line 401
    iget v5, p0, Lsun/util/calendar/CalendarDate;->year:I

    #@3e
    iget v6, v1, Lsun/util/calendar/CalendarDate;->year:I

    #@40
    if-ne v5, v6, :cond_8

    #@42
    .line 402
    iget v5, p0, Lsun/util/calendar/CalendarDate;->month:I

    #@44
    iget v6, v1, Lsun/util/calendar/CalendarDate;->month:I

    #@46
    if-ne v5, v6, :cond_8

    #@48
    .line 403
    iget v5, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    #@4a
    iget v6, v1, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    #@4c
    if-ne v5, v6, :cond_8

    #@4e
    .line 404
    iget v5, p0, Lsun/util/calendar/CalendarDate;->hours:I

    #@50
    iget v6, v1, Lsun/util/calendar/CalendarDate;->hours:I

    #@52
    if-ne v5, v6, :cond_8

    #@54
    .line 405
    iget v5, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    #@56
    iget v6, v1, Lsun/util/calendar/CalendarDate;->minutes:I

    #@58
    if-ne v5, v6, :cond_8

    #@5a
    .line 406
    iget v5, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    #@5c
    iget v6, v1, Lsun/util/calendar/CalendarDate;->seconds:I

    #@5e
    if-ne v5, v6, :cond_8

    #@60
    .line 407
    iget v5, p0, Lsun/util/calendar/CalendarDate;->millis:I

    #@62
    iget v6, v1, Lsun/util/calendar/CalendarDate;->millis:I

    #@64
    if-ne v5, v6, :cond_8

    #@66
    .line 408
    iget v5, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    #@68
    iget v6, v1, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    #@6a
    if-ne v5, v6, :cond_7

    #@6c
    .line 400
    :goto_2
    return v3

    #@6d
    .line 398
    :cond_6
    return v4

    #@6e
    :cond_7
    move v3, v4

    #@6f
    .line 408
    goto :goto_2

    #@70
    :cond_8
    move v3, v4

    #@71
    .line 400
    goto :goto_2
.end method

.method public getDayOfMonth()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    #@2
    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 212
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 213
    const/high16 v0, -0x80000000

    #@8
    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    #@a
    .line 215
    :cond_0
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    #@c
    return v0
.end method

.method public getDaylightSaving()I
    .locals 1

    #@0
    .prologue
    .line 499
    iget v0, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    #@2
    return v0
.end method

.method public getEra()Lsun/util/calendar/Era;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    #@2
    return-object v0
.end method

.method public getHours()I
    .locals 1

    #@0
    .prologue
    .line 219
    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    #@2
    return v0
.end method

.method public getMillis()I
    .locals 1

    #@0
    .prologue
    .line 279
    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    #@2
    return v0
.end method

.method public getMinutes()I
    .locals 1

    #@0
    .prologue
    .line 239
    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    #@2
    return v0
.end method

.method public getMonth()I
    .locals 1

    #@0
    .prologue
    .line 166
    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    #@2
    return v0
.end method

.method public getSeconds()I
    .locals 1

    #@0
    .prologue
    .line 259
    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    #@2
    return v0
.end method

.method public getTimeOfDay()J
    .locals 4

    #@0
    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    .line 299
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 300
    iput-wide v2, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    #@a
    return-wide v2

    #@b
    .line 302
    :cond_0
    iget-wide v0, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    #@d
    return-wide v0
.end method

.method public getYear()I
    .locals 1

    #@0
    .prologue
    .line 123
    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    #@2
    return v0
.end method

.method public getZone()Ljava/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    #@2
    return-object v0
.end method

.method public getZoneOffset()I
    .locals 1

    #@0
    .prologue
    .line 491
    iget v0, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x3c

    #@2
    .line 414
    iget v6, p0, Lsun/util/calendar/CalendarDate;->year:I

    #@4
    int-to-long v6, v6

    #@5
    const-wide/16 v8, 0x7b2

    #@7
    sub-long/2addr v6, v8

    #@8
    const-wide/16 v8, 0xc

    #@a
    mul-long/2addr v6, v8

    #@b
    iget v8, p0, Lsun/util/calendar/CalendarDate;->month:I

    #@d
    add-int/lit8 v8, v8, -0x1

    #@f
    int-to-long v8, v8

    #@10
    add-long/2addr v6, v8

    #@11
    const-wide/16 v8, 0x1e

    #@13
    mul-long/2addr v6, v8

    #@14
    iget v8, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    #@16
    int-to-long v8, v8

    #@17
    add-long/2addr v6, v8

    #@18
    const-wide/16 v8, 0x18

    #@1a
    mul-long v2, v6, v8

    #@1c
    .line 415
    .local v2, "hash":J
    iget v6, p0, Lsun/util/calendar/CalendarDate;->hours:I

    #@1e
    int-to-long v6, v6

    #@1f
    add-long/2addr v6, v2

    #@20
    mul-long/2addr v6, v10

    #@21
    iget v8, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    #@23
    int-to-long v8, v8

    #@24
    add-long/2addr v6, v8

    #@25
    mul-long/2addr v6, v10

    #@26
    iget v8, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    #@28
    int-to-long v8, v8

    #@29
    add-long/2addr v6, v8

    #@2a
    const-wide/16 v8, 0x3e8

    #@2c
    mul-long/2addr v6, v8

    #@2d
    iget v8, p0, Lsun/util/calendar/CalendarDate;->millis:I

    #@2f
    int-to-long v8, v8

    #@30
    add-long v2, v6, v8

    #@32
    .line 416
    iget v6, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    #@34
    int-to-long v6, v6

    #@35
    sub-long/2addr v2, v6

    #@36
    .line 417
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_1

    #@3c
    const/4 v4, 0x1

    #@3d
    .line 418
    .local v4, "normalized":I
    :goto_0
    const/4 v1, 0x0

    #@3e
    .line 419
    .local v1, "era":I
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    #@41
    move-result-object v0

    #@42
    .line 420
    .local v0, "e":Lsun/util/calendar/Era;
    if-eqz v0, :cond_0

    #@44
    .line 421
    invoke-virtual {v0}, Lsun/util/calendar/Era;->hashCode()I

    #@47
    move-result v1

    #@48
    .line 423
    :cond_0
    iget-object v6, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    #@4a
    if-eqz v6, :cond_2

    #@4c
    iget-object v6, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    #@4e
    invoke-virtual {v6}, Ljava/util/TimeZone;->hashCode()I

    #@51
    move-result v5

    #@52
    .line 424
    .local v5, "zone":I
    :goto_1
    long-to-int v6, v2

    #@53
    const/16 v7, 0x20

    #@55
    shr-long v8, v2, v7

    #@57
    long-to-int v7, v8

    #@58
    mul-int/2addr v6, v7

    #@59
    xor-int/2addr v6, v1

    #@5a
    xor-int/2addr v6, v4

    #@5b
    xor-int/2addr v6, v5

    #@5c
    return v6

    #@5d
    .line 417
    .end local v0    # "e":Lsun/util/calendar/Era;
    .end local v1    # "era":I
    .end local v4    # "normalized":I
    .end local v5    # "zone":I
    :cond_1
    const/4 v4, 0x0

    #@5e
    .restart local v4    # "normalized":I
    goto :goto_0

    #@5f
    .line 423
    .restart local v0    # "e":Lsun/util/calendar/Era;
    .restart local v1    # "era":I
    :cond_2
    const/4 v5, 0x0

    #@60
    goto :goto_1
.end method

.method public isDaylightTime()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 353
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 354
    return v0

    #@8
    .line 356
    :cond_0
    iget v1, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    #@a
    if-eqz v1, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    :cond_1
    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    #@0
    .prologue
    .line 158
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->leapYear:Z

    #@2
    return v0
.end method

.method public isNormalized()Z
    .locals 1

    #@0
    .prologue
    .line 340
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@2
    return v0
.end method

.method public isSameDate(Lsun/util/calendar/CalendarDate;)Z
    .locals 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 378
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    #@8
    move-result v2

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 379
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    #@12
    move-result v2

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 380
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@18
    move-result v1

    #@19
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@1c
    move-result v2

    #@1d
    if-ne v1, v2, :cond_0

    #@1f
    .line 381
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    #@26
    move-result-object v2

    #@27
    if-ne v1, v2, :cond_0

    #@29
    const/4 v0, 0x1

    #@2a
    .line 378
    :cond_0
    return v0
.end method

.method public isStandardTime()Z
    .locals 1

    #@0
    .prologue
    .line 345
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->forceStandardTime:Z

    #@2
    return v0
.end method

.method public setDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    #@3
    .line 307
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    #@6
    .line 308
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@9
    .line 309
    return-object p0
.end method

.method public setDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "date"    # I

    #@0
    .prologue
    .line 190
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 191
    iput p1, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    #@6
    .line 192
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@9
    .line 194
    :cond_0
    return-object p0
.end method

.method protected setDayOfWeek(I)V
    .locals 0
    .param p1, "dayOfWeek"    # I

    #@0
    .prologue
    .line 483
    iput p1, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    #@2
    .line 482
    return-void
.end method

.method protected setDaylightSaving(I)V
    .locals 0
    .param p1, "daylightSaving"    # I

    #@0
    .prologue
    .line 503
    iput p1, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    #@2
    .line 502
    return-void
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "era"    # Lsun/util/calendar/Era;

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 115
    return-object p0

    #@5
    .line 117
    :cond_0
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    #@7
    .line 118
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@a
    .line 119
    return-object p0
.end method

.method public setHours(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "hours"    # I

    #@0
    .prologue
    .line 223
    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 224
    iput p1, p0, Lsun/util/calendar/CalendarDate;->hours:I

    #@6
    .line 225
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@9
    .line 227
    :cond_0
    return-object p0
.end method

.method setLeapYear(Z)V
    .locals 0
    .param p1, "leapYear"    # Z

    #@0
    .prologue
    .line 162
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->leapYear:Z

    #@2
    .line 161
    return-void
.end method

.method protected setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 360
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->locale:Ljava/util/Locale;

    #@2
    .line 359
    return-void
.end method

.method public setMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # I

    #@0
    .prologue
    .line 283
    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 284
    iput p1, p0, Lsun/util/calendar/CalendarDate;->millis:I

    #@6
    .line 285
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@9
    .line 287
    :cond_0
    return-object p0
.end method

.method public setMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "minutes"    # I

    #@0
    .prologue
    .line 243
    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 244
    iput p1, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    #@6
    .line 245
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@9
    .line 247
    :cond_0
    return-object p0
.end method

.method public setMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "month"    # I

    #@0
    .prologue
    .line 170
    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 171
    iput p1, p0, Lsun/util/calendar/CalendarDate;->month:I

    #@6
    .line 172
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@9
    .line 174
    :cond_0
    return-object p0
.end method

.method protected setNormalized(Z)V
    .locals 0
    .param p1, "normalized"    # Z

    #@0
    .prologue
    .line 487
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@2
    .line 486
    return-void
.end method

.method public setSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "seconds"    # I

    #@0
    .prologue
    .line 263
    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 264
    iput p1, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    #@6
    .line 265
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@9
    .line 267
    :cond_0
    return-object p0
.end method

.method public setStandardTime(Z)V
    .locals 0
    .param p1, "standardTime"    # Z

    #@0
    .prologue
    .line 349
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->forceStandardTime:Z

    #@2
    .line 348
    return-void
.end method

.method public setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "millis"    # I

    #@0
    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    #@3
    .line 321
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    #@6
    .line 322
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    #@9
    .line 323
    invoke-virtual {p0, p4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    #@c
    .line 324
    return-object p0
.end method

.method protected setTimeOfDay(J)V
    .locals 1
    .param p1, "fraction"    # J

    #@0
    .prologue
    .line 336
    iput-wide p1, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    #@2
    .line 335
    return-void
.end method

.method public setYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "year"    # I

    #@0
    .prologue
    .line 127
    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 128
    iput p1, p0, Lsun/util/calendar/CalendarDate;->year:I

    #@6
    .line 129
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    #@9
    .line 131
    :cond_0
    return-object p0
.end method

.method public setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "zoneinfo"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 368
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    #@2
    .line 369
    return-object p0
.end method

.method protected setZoneOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 495
    iput p1, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    #@2
    .line 494
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x3a

    #@2
    const/16 v6, 0x2d

    #@4
    const/4 v5, 0x2

    #@5
    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 453
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Lsun/util/calendar/CalendarDate;->year:I

    #@c
    const/4 v4, 0x4

    #@d
    invoke-static {v1, v3, v4}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 454
    iget v3, p0, Lsun/util/calendar/CalendarDate;->month:I

    #@16
    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 455
    iget v3, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    #@1f
    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const/16 v4, 0x54

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 456
    iget v3, p0, Lsun/util/calendar/CalendarDate;->hours:I

    #@2a
    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 457
    iget v3, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    #@33
    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 458
    iget v3, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    #@3c
    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    const/16 v4, 0x2e

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    .line 459
    iget v3, p0, Lsun/util/calendar/CalendarDate;->millis:I

    #@47
    const/4 v4, 0x3

    #@48
    invoke-static {v1, v3, v4}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@4b
    .line 460
    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    #@4d
    if-nez v3, :cond_0

    #@4f
    .line 461
    const/16 v3, 0x5a

    #@51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    .line 479
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    return-object v3

    #@59
    .line 462
    :cond_0
    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    #@5b
    const/high16 v4, -0x80000000

    #@5d
    if-eq v3, v4, :cond_2

    #@5f
    .line 465
    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    #@61
    if-lez v3, :cond_1

    #@63
    .line 466
    iget v0, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    #@65
    .line 467
    .local v0, "offset":I
    const/16 v2, 0x2b

    #@67
    .line 472
    .local v2, "sign":C
    :goto_1
    const v3, 0xea60

    #@6a
    div-int/2addr v0, v3

    #@6b
    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6e
    .line 474
    div-int/lit8 v3, v0, 0x3c

    #@70
    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@73
    .line 475
    rem-int/lit8 v3, v0, 0x3c

    #@75
    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@78
    goto :goto_0

    #@79
    .line 469
    .end local v0    # "offset":I
    .end local v2    # "sign":C
    :cond_1
    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    #@7b
    neg-int v0, v3

    #@7c
    .line 470
    .restart local v0    # "offset":I
    const/16 v2, 0x2d

    #@7e
    .restart local v2    # "sign":C
    goto :goto_1

    #@7f
    .line 477
    .end local v0    # "offset":I
    .end local v2    # "sign":C
    :cond_2
    const-string/jumbo v3, " local time"

    #@82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    goto :goto_0
.end method

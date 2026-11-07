.class public abstract Lsun/util/calendar/CalendarDate;
.super Ljava/lang/Object;
.source "CalendarDate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist FIELD_UNDEFINED:I = -0x80000000

.field public static final blacklist TIME_UNDEFINED:J = -0x8000000000000000L


# instance fields
.field private blacklist dayOfMonth:I

.field private blacklist dayOfWeek:I

.field private blacklist daylightSaving:I

.field private blacklist era:Lsun/util/calendar/Era;

.field private blacklist forceStandardTime:Z

.field private blacklist fraction:J

.field private blacklist hours:I

.field private blacklist leapYear:Z

.field private blacklist locale:Ljava/util/Locale;

.field private blacklist millis:I

.field private blacklist minutes:I

.field private blacklist month:I

.field private blacklist normalized:Z

.field private blacklist seconds:I

.field private blacklist year:I

.field private blacklist zoneOffset:I

.field private blacklist zoneinfo:Ljava/util/TimeZone;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 90
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/util/calendar/CalendarDate;-><init>(Ljava/util/TimeZone;)V

    .line 91
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    .line 94
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    .line 95
    return-void
.end method


# virtual methods
.method public blacklist addDate(III)Lsun/util/calendar/CalendarDate;
    .registers 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 313
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 314
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->addMonth(I)Lsun/util/calendar/CalendarDate;

    .line 315
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->addDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 316
    return-object p0
.end method

.method public blacklist addDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "n"    # I

    .line 198
    if-eqz p1, :cond_a

    .line 199
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 202
    :cond_a
    return-object p0
.end method

.method public blacklist addHours(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "n"    # I

    .line 231
    if-eqz p1, :cond_a

    .line 232
    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 235
    :cond_a
    return-object p0
.end method

.method public blacklist addMillis(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "n"    # I

    .line 291
    if-eqz p1, :cond_a

    .line 292
    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 295
    :cond_a
    return-object p0
.end method

.method public blacklist addMinutes(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "n"    # I

    .line 251
    if-eqz p1, :cond_a

    .line 252
    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 255
    :cond_a
    return-object p0
.end method

.method public blacklist addMonth(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "n"    # I

    .line 178
    if-eqz p1, :cond_a

    .line 179
    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 182
    :cond_a
    return-object p0
.end method

.method public blacklist addSeconds(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "n"    # I

    .line 271
    if-eqz p1, :cond_a

    .line 272
    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 275
    :cond_a
    return-object p0
.end method

.method public blacklist addTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .registers 5
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "millis"    # I

    .line 328
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    .line 329
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->addMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 330
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->addSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 331
    invoke-virtual {p0, p4}, Lsun/util/calendar/CalendarDate;->addMillis(I)Lsun/util/calendar/CalendarDate;

    .line 332
    return-object p0
.end method

.method public blacklist addYear(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "n"    # I

    .line 135
    if-eqz p1, :cond_a

    .line 136
    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 139
    :cond_a
    return-object p0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 435
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 436
    :catch_5
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 385
    instance-of v0, p1, Lsun/util/calendar/CalendarDate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 386
    return v1

    .line 388
    :cond_6
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/CalendarDate;

    .line 389
    .local v0, "that":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v2

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v3

    if-eq v2, v3, :cond_14

    .line 390
    return v1

    .line 392
    :cond_14
    iget-object v2, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    move v2, v3

    goto :goto_1c

    :cond_1b
    move v2, v1

    .line 393
    .local v2, "hasZone":Z
    :goto_1c
    iget-object v4, v0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    if-eqz v4, :cond_22

    move v4, v3

    goto :goto_23

    :cond_22
    move v4, v1

    .line 394
    .local v4, "thatHasZone":Z
    :goto_23
    if-eq v2, v4, :cond_26

    .line 395
    return v1

    .line 397
    :cond_26
    if-eqz v2, :cond_33

    iget-object v5, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    iget-object v6, v0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 398
    return v1

    .line 400
    :cond_33
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v5

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v6

    if-ne v5, v6, :cond_6e

    iget v5, p0, Lsun/util/calendar/CalendarDate;->year:I

    iget v6, v0, Lsun/util/calendar/CalendarDate;->year:I

    if-ne v5, v6, :cond_6e

    iget v5, p0, Lsun/util/calendar/CalendarDate;->month:I

    iget v6, v0, Lsun/util/calendar/CalendarDate;->month:I

    if-ne v5, v6, :cond_6e

    iget v5, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    iget v6, v0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    if-ne v5, v6, :cond_6e

    iget v5, p0, Lsun/util/calendar/CalendarDate;->hours:I

    iget v6, v0, Lsun/util/calendar/CalendarDate;->hours:I

    if-ne v5, v6, :cond_6e

    iget v5, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    iget v6, v0, Lsun/util/calendar/CalendarDate;->minutes:I

    if-ne v5, v6, :cond_6e

    iget v5, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    iget v6, v0, Lsun/util/calendar/CalendarDate;->seconds:I

    if-ne v5, v6, :cond_6e

    iget v5, p0, Lsun/util/calendar/CalendarDate;->millis:I

    iget v6, v0, Lsun/util/calendar/CalendarDate;->millis:I

    if-ne v5, v6, :cond_6e

    iget v5, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    iget v6, v0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    if-ne v5, v6, :cond_6e

    move v1, v3

    :cond_6e
    return v1
.end method

.method public greylist getDayOfMonth()I
    .registers 2

    .line 186
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    return v0
.end method

.method public blacklist getDayOfWeek()I
    .registers 2

    .line 212
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_a

    .line 213
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    .line 215
    :cond_a
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    return v0
.end method

.method public blacklist getDaylightSaving()I
    .registers 2

    .line 499
    iget v0, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    return v0
.end method

.method public blacklist getEra()Lsun/util/calendar/Era;
    .registers 2

    .line 98
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    return-object v0
.end method

.method public blacklist getHours()I
    .registers 2

    .line 219
    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    return v0
.end method

.method public blacklist getMillis()I
    .registers 2

    .line 279
    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    return v0
.end method

.method public blacklist getMinutes()I
    .registers 2

    .line 239
    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    return v0
.end method

.method public greylist getMonth()I
    .registers 2

    .line 166
    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    return v0
.end method

.method public blacklist getSeconds()I
    .registers 2

    .line 259
    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    return v0
.end method

.method public greylist-max-r getTimeOfDay()J
    .registers 3

    .line 299
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_b

    .line 300
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    return-wide v0

    .line 302
    :cond_b
    iget-wide v0, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    return-wide v0
.end method

.method public greylist getYear()I
    .registers 2

    .line 123
    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    return v0
.end method

.method public blacklist getZone()Ljava/util/TimeZone;
    .registers 2

    .line 364
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    return-object v0
.end method

.method public blacklist getZoneOffset()I
    .registers 2

    .line 491
    iget v0, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 414
    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0x7b2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Lsun/util/calendar/CalendarDate;->month:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    mul-long/2addr v0, v2

    iget v2, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    .line 415
    .local v0, "hash":J
    iget v2, p0, Lsun/util/calendar/CalendarDate;->hours:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    iget v6, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget v4, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget v4, p0, Lsun/util/calendar/CalendarDate;->millis:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 416
    .end local v0    # "hash":J
    .local v2, "hash":J
    iget v0, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 417
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    .line 418
    .local v0, "normalized":I
    const/4 v1, 0x0

    .line 419
    .local v1, "era":I
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v4

    .line 420
    .local v4, "e":Lsun/util/calendar/Era;
    if-eqz v4, :cond_43

    .line 421
    invoke-virtual {v4}, Lsun/util/calendar/Era;->hashCode()I

    move-result v1

    .line 423
    :cond_43
    iget-object v5, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    if-eqz v5, :cond_4e

    iget-object v5, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_4f

    :cond_4e
    const/4 v5, 0x0

    .line 424
    .local v5, "zone":I
    :goto_4f
    long-to-int v6, v2

    const/16 v7, 0x20

    shr-long v7, v2, v7

    long-to-int v7, v7

    mul-int/2addr v6, v7

    xor-int/2addr v6, v1

    xor-int/2addr v6, v0

    xor-int/2addr v6, v5

    return v6
.end method

.method public blacklist isDaylightTime()Z
    .registers 3

    .line 353
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 354
    return v1

    .line 356
    :cond_8
    iget v0, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public blacklist isLeapYear()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->leapYear:Z

    return v0
.end method

.method public blacklist isNormalized()Z
    .registers 2

    .line 340
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    return v0
.end method

.method public blacklist isSameDate(Lsun/util/calendar/CalendarDate;)Z
    .registers 4
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 378
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    move-result v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 379
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 380
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 381
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 378
    :goto_2b
    return v0
.end method

.method public blacklist isStandardTime()Z
    .registers 2

    .line 345
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->forceStandardTime:Z

    return v0
.end method

.method public greylist-max-r setDate(III)Lsun/util/calendar/CalendarDate;
    .registers 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 306
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 307
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 308
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 309
    return-object p0
.end method

.method public greylist-max-r setDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "date"    # I

    .line 190
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    if-eq v0, p1, :cond_9

    .line 191
    iput p1, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 194
    :cond_9
    return-object p0
.end method

.method protected blacklist setDayOfWeek(I)V
    .registers 2
    .param p1, "dayOfWeek"    # I

    .line 483
    iput p1, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    .line 484
    return-void
.end method

.method protected blacklist setDaylightSaving(I)V
    .registers 2
    .param p1, "daylightSaving"    # I

    .line 503
    iput p1, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    .line 504
    return-void
.end method

.method public blacklist setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "era"    # Lsun/util/calendar/Era;

    .line 114
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    if-ne v0, p1, :cond_5

    .line 115
    return-object p0

    .line 117
    :cond_5
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 119
    return-object p0
.end method

.method public greylist-max-r setHours(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "hours"    # I

    .line 223
    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    if-eq v0, p1, :cond_9

    .line 224
    iput p1, p0, Lsun/util/calendar/CalendarDate;->hours:I

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 227
    :cond_9
    return-object p0
.end method

.method blacklist setLeapYear(Z)V
    .registers 2
    .param p1, "leapYear"    # Z

    .line 162
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->leapYear:Z

    .line 163
    return-void
.end method

.method protected blacklist setLocale(Ljava/util/Locale;)V
    .registers 2
    .param p1, "loc"    # Ljava/util/Locale;

    .line 360
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->locale:Ljava/util/Locale;

    .line 361
    return-void
.end method

.method public greylist-max-r setMillis(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "millis"    # I

    .line 283
    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    if-eq v0, p1, :cond_9

    .line 284
    iput p1, p0, Lsun/util/calendar/CalendarDate;->millis:I

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 287
    :cond_9
    return-object p0
.end method

.method public greylist-max-r setMinutes(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "minutes"    # I

    .line 243
    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    if-eq v0, p1, :cond_9

    .line 244
    iput p1, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 247
    :cond_9
    return-object p0
.end method

.method public blacklist setMonth(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "month"    # I

    .line 170
    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    if-eq v0, p1, :cond_9

    .line 171
    iput p1, p0, Lsun/util/calendar/CalendarDate;->month:I

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 174
    :cond_9
    return-object p0
.end method

.method protected blacklist setNormalized(Z)V
    .registers 2
    .param p1, "normalized"    # Z

    .line 487
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 488
    return-void
.end method

.method public greylist-max-r setSeconds(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "seconds"    # I

    .line 263
    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    if-eq v0, p1, :cond_9

    .line 264
    iput p1, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 267
    :cond_9
    return-object p0
.end method

.method public blacklist setStandardTime(Z)V
    .registers 2
    .param p1, "standardTime"    # Z

    .line 349
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->forceStandardTime:Z

    .line 350
    return-void
.end method

.method public blacklist setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .registers 5
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "millis"    # I

    .line 320
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 321
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 322
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 323
    invoke-virtual {p0, p4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    .line 324
    return-object p0
.end method

.method protected blacklist setTimeOfDay(J)V
    .registers 3
    .param p1, "fraction"    # J

    .line 336
    iput-wide p1, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    .line 337
    return-void
.end method

.method public blacklist setYear(I)Lsun/util/calendar/CalendarDate;
    .registers 3
    .param p1, "year"    # I

    .line 127
    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    if-eq v0, p1, :cond_9

    .line 128
    iput p1, p0, Lsun/util/calendar/CalendarDate;->year:I

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 131
    :cond_9
    return-object p0
.end method

.method public blacklist setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "zoneinfo"    # Ljava/util/TimeZone;

    .line 368
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    .line 369
    return-object p0
.end method

.method protected blacklist setZoneOffset(I)V
    .registers 2
    .param p1, "offset"    # I

    .line 495
    iput p1, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    .line 496
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lsun/util/calendar/CalendarDate;->year:I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    iget v1, p0, Lsun/util/calendar/CalendarDate;->month:I

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    iget v1, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    iget v1, p0, Lsun/util/calendar/CalendarDate;->hours:I

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    iget v1, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    iget v1, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    iget v1, p0, Lsun/util/calendar/CalendarDate;->millis:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 460
    iget v1, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    if-nez v1, :cond_55

    .line 461
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_80

    .line 462
    :cond_55
    iget v1, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_7b

    .line 465
    iget v1, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    if-lez v1, :cond_64

    .line 466
    iget v1, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    .line 467
    .local v1, "offset":I
    const/16 v2, 0x2b

    .local v2, "sign":C
    goto :goto_69

    .line 469
    .end local v1    # "offset":I
    .end local v2    # "sign":C
    :cond_64
    iget v1, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    neg-int v1, v1

    .line 470
    .restart local v1    # "offset":I
    const/16 v2, 0x2d

    .line 472
    .restart local v2    # "sign":C
    :goto_69
    const v4, 0xea60

    div-int/2addr v1, v4

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    div-int/lit8 v4, v1, 0x3c

    invoke-static {v0, v4, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 475
    rem-int/lit8 v4, v1, 0x3c

    invoke-static {v0, v4, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 476
    .end local v1    # "offset":I
    .end local v2    # "sign":C
    goto :goto_80

    .line 477
    :cond_7b
    const-string v1, " local time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :goto_80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

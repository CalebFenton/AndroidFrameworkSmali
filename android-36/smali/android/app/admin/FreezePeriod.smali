.class public Landroid/app/admin/FreezePeriod;
.super Ljava/lang/Object;
.source "FreezePeriod.java"


# static fields
.field static final greylist-max-o DAYS_IN_YEAR:I = 0x16d

.field private static final blacklist SENTINEL_YEAR:I = 0x7d1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FreezePeriod"


# instance fields
.field private final greylist-max-o mEnd:Ljava/time/MonthDay;

.field private final greylist-max-o mEndDay:I

.field private final greylist-max-o mStart:Ljava/time/MonthDay;

.field private final greylist-max-o mStartDay:I


# direct methods
.method private constructor greylist-max-o <init>(II)V
    .registers 4
    .param p1, "startDay"    # I
    .param p2, "endDay"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 87
    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearToMonthDay(I)Ljava/time/MonthDay;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    .line 88
    iput p2, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    .line 89
    invoke-static {p2}, Landroid/app/admin/FreezePeriod;->dayOfYearToMonthDay(I)Ljava/time/MonthDay;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    .line 90
    return-void
.end method

.method public constructor whitelist <init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V
    .registers 5
    .param p1, "start"    # Ljava/time/MonthDay;
    .param p2, "end"    # Ljava/time/MonthDay;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    .line 63
    iget-object v0, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    iput v0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 64
    iput-object p2, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    .line 65
    iget-object v0, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    invoke-virtual {v0, v1}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    iput v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    .line 66
    return-void
.end method

.method static greylist-max-o canonicalizePeriods(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;"
        }
    .end annotation

    .line 221
    .local p0, "intervals":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    const/16 v0, 0x16d

    new-array v1, v0, [Z

    .line 223
    .local v1, "taken":[Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    .line 224
    .local v3, "interval":Landroid/app/admin/FreezePeriod;
    iget v5, v3, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .local v5, "i":I
    :goto_17
    invoke-virtual {v3}, Landroid/app/admin/FreezePeriod;->getEffectiveEndDay()I

    move-result v6

    if-gt v5, v6, :cond_25

    .line 225
    add-int/lit8 v6, v5, -0x1

    rem-int/2addr v6, v0

    aput-boolean v4, v1, v6

    .line 224
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 227
    .end local v3    # "interval":Landroid/app/admin/FreezePeriod;
    .end local v5    # "i":I
    :cond_25
    goto :goto_8

    .line 229
    :cond_26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    const/4 v3, 0x0

    .line 231
    .local v3, "i":I
    :goto_2c
    if-ge v3, v0, :cond_49

    .line 232
    aget-boolean v5, v1, v3

    if-nez v5, :cond_35

    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 234
    goto :goto_2c

    .line 236
    :cond_35
    add-int/lit8 v5, v3, 0x1

    .line 237
    .local v5, "intervalStart":I
    :goto_37
    if-ge v3, v0, :cond_40

    aget-boolean v6, v1, v3

    if-eqz v6, :cond_40

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 238
    :cond_40
    new-instance v6, Landroid/app/admin/FreezePeriod;

    invoke-direct {v6, v5, v3}, Landroid/app/admin/FreezePeriod;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v5    # "intervalStart":I
    goto :goto_2c

    .line 242
    :cond_49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .line 243
    .local v5, "lastIndex":I
    if-lez v5, :cond_80

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/FreezePeriod;

    iget v6, v6, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-ne v6, v0, :cond_80

    .line 244
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/FreezePeriod;

    iget v6, v6, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-ne v6, v4, :cond_80

    .line 245
    new-instance v4, Landroid/app/admin/FreezePeriod;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/FreezePeriod;

    iget v6, v6, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 246
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/FreezePeriod;

    iget v7, v7, Landroid/app/admin/FreezePeriod;->mEndDay:I

    invoke-direct {v4, v6, v7}, Landroid/app/admin/FreezePeriod;-><init>(II)V

    .line 247
    .local v4, "wrappedInterval":Landroid/app/admin/FreezePeriod;
    invoke-interface {v2, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 250
    .end local v4    # "wrappedInterval":Landroid/app/admin/FreezePeriod;
    :cond_80
    return-object v2
.end method

.method private static greylist-max-o dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I
    .registers 2
    .param p0, "date"    # Ljava/time/LocalDate;

    .line 194
    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method private static greylist-max-o dayOfYearToMonthDay(I)Ljava/time/MonthDay;
    .registers 4
    .param p0, "dayOfYear"    # I

    .line 185
    const/16 v0, 0x7d1

    invoke-static {v0, p0}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    .line 186
    .local v0, "date":Ljava/time/LocalDate;
    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I
    .registers 5
    .param p0, "first"    # Ljava/time/LocalDate;
    .param p1, "second"    # Ljava/time/LocalDate;

    .line 203
    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v0

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 204
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x16d

    add-int/2addr v0, v1

    .line 203
    return v0
.end method

.method static greylist-max-o validateAgainstPreviousFreezePeriod(Ljava/util/List;Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .registers 16
    .param p1, "prevPeriodStart"    # Ljava/time/LocalDate;
    .param p2, "prevPeriodEnd"    # Ljava/time/LocalDate;
    .param p3, "now"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ")V"
        }
    .end annotation

    .line 304
    .local p0, "periods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_15c

    if-eqz p1, :cond_15c

    if-nez p2, :cond_c

    goto/16 :goto_15c

    .line 307
    :cond_c
    invoke-virtual {p1, p3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    const-string v1, ","

    if-nez v0, :cond_1a

    invoke-virtual {p2, p3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 308
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous period ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is after current date "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FreezePeriod"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_44
    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->canonicalizePeriods(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 317
    .local v0, "allPeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    .line 318
    .local v2, "curOrNextFreezePeriod":Landroid/app/admin/FreezePeriod;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/FreezePeriod;

    .line 319
    .local v4, "interval":Landroid/app/admin/FreezePeriod;
    invoke-virtual {v4, p3}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v5

    if-nez v5, :cond_6f

    iget v5, v4, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 320
    invoke-static {p3}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v6

    if-le v5, v6, :cond_6e

    goto :goto_6f

    .line 324
    .end local v4    # "interval":Landroid/app/admin/FreezePeriod;
    :cond_6e
    goto :goto_53

    .line 321
    .restart local v4    # "interval":Landroid/app/admin/FreezePeriod;
    :cond_6f
    :goto_6f
    move-object v2, v4

    .line 322
    nop

    .line 325
    .end local v4    # "interval":Landroid/app/admin/FreezePeriod;
    :cond_71
    nop

    .line 326
    invoke-virtual {v2, p3}, Landroid/app/admin/FreezePeriod;->toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object v3

    .line 327
    .local v3, "curOrNextFreezeDates":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/LocalDate;Ljava/time/LocalDate;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {p3, v4}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 328
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/time/LocalDate;

    invoke-direct {v4, p3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    .line 330
    :cond_8a
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/time/LocalDate;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v4

    if-nez v4, :cond_135

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prev: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; cur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "periodsDescription":Ljava/lang/String;
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/time/LocalDate;

    invoke-static {v4, p2}, Landroid/app/admin/FreezePeriod;->distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    .line 339
    .local v4, "separation":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    const-string v7, ", "

    if-lez v6, :cond_103

    .line 341
    const-wide/16 v8, 0x3c

    cmp-long v6, v4, v8

    if-ltz v6, :cond_e3

    goto :goto_114

    .line 342
    :cond_e3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Previous freeze period too close to new period: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->combinedPeriodTooClose(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object v6

    throw v6

    .line 347
    :cond_103
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/time/LocalDate;

    invoke-static {v6, p1}, Landroid/app/admin/FreezePeriod;->distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 349
    .local v8, "length":J
    const-wide/16 v10, 0x5a

    cmp-long v6, v8, v10

    if-gtz v6, :cond_115

    .line 354
    .end local v8    # "length":J
    :goto_114
    return-void

    .line 350
    .restart local v8    # "length":J
    :cond_115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Combined freeze period exceeds maximum days: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->combinedPeriodTooLong(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object v6

    throw v6

    .line 331
    .end local v1    # "periodsDescription":Ljava/lang/String;
    .end local v4    # "separation":J
    .end local v8    # "length":J
    :cond_135
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current freeze dates inverted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    .end local v0    # "allPeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    .end local v2    # "curOrNextFreezePeriod":Landroid/app/admin/FreezePeriod;
    .end local v3    # "curOrNextFreezeDates":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/LocalDate;Ljava/time/LocalDate;>;"
    :cond_15c
    :goto_15c
    return-void
.end method

.method static greylist-max-o validatePeriods(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p0, "periods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->canonicalizePeriods(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 264
    .local v0, "allPeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_be

    .line 267
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_bd

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    .line 269
    .local v2, "current":Landroid/app/admin/FreezePeriod;
    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getLength()I

    move-result v3

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_91

    .line 273
    if-lez v1, :cond_2e

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    goto :goto_3a

    .line 274
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    :goto_3a
    nop

    .line 275
    .local v3, "previous":Landroid/app/admin/FreezePeriod;
    if-eq v3, v2, :cond_8d

    .line 277
    if-nez v1, :cond_4f

    invoke-virtual {v3}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 279
    iget v4, v2, Landroid/app/admin/FreezePeriod;->mStartDay:I

    iget v5, v3, Landroid/app/admin/FreezePeriod;->mEndDay:I

    rsub-int v5, v5, 0x16d

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .local v4, "separation":I
    goto :goto_56

    .line 284
    .end local v4    # "separation":I
    :cond_4f
    iget v4, v2, Landroid/app/admin/FreezePeriod;->mStartDay:I

    iget v5, v3, Landroid/app/admin/FreezePeriod;->mEndDay:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 286
    .restart local v4    # "separation":I
    :goto_56
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_5b

    goto :goto_8d

    .line 287
    :cond_5b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freeze periods "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " are too close together: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " days apart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->freezePeriodTooClose(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object v5

    throw v5

    .line 267
    .end local v2    # "current":Landroid/app/admin/FreezePeriod;
    .end local v3    # "previous":Landroid/app/admin/FreezePeriod;
    .end local v4    # "separation":I
    :cond_8d
    :goto_8d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    .line 270
    .restart local v2    # "current":Landroid/app/admin/FreezePeriod;
    :cond_91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Freeze period "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 271
    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " days"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {v3}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->freezePeriodTooLong(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object v3

    throw v3

    .line 293
    .end local v1    # "i":I
    .end local v2    # "current":Landroid/app/admin/FreezePeriod;
    :cond_bd
    return-void

    .line 265
    :cond_be
    invoke-static {}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->duplicateOrOverlapPeriods()Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method greylist-max-o after(Ljava/time/LocalDate;)Z
    .registers 4
    .param p1, "localDate"    # Ljava/time/LocalDate;

    .line 129
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v1

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o contains(Ljava/time/LocalDate;)Z
    .registers 6
    .param p1, "localDate"    # Ljava/time/LocalDate;

    .line 116
    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v0

    .line 117
    .local v0, "daysOfYear":I
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 119
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-gt v1, v0, :cond_15

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-gt v0, v1, :cond_15

    move v2, v3

    :cond_15
    return v2

    .line 123
    :cond_16
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-le v1, v0, :cond_1e

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-gt v0, v1, :cond_1f

    :cond_1e
    move v2, v3

    :cond_1f
    return v2
.end method

.method greylist-max-o getEffectiveEndDay()I
    .registers 2

    .line 107
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v0

    if-nez v0, :cond_9

    .line 108
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    return v0

    .line 110
    :cond_9
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    add-int/lit16 v0, v0, 0x16d

    return v0
.end method

.method public whitelist getEnd()Ljava/time/MonthDay;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    return-object v0
.end method

.method greylist-max-o getLength()I
    .registers 3

    .line 94
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->getEffectiveEndDay()I

    move-result v0

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getStart()Ljava/time/MonthDay;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    return-object v0
.end method

.method greylist-max-o isWrapped()Z
    .registers 3

    .line 99
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist-max-o toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;
    .registers 8
    .param p1, "now"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v0

    .line 144
    .local v0, "nowDays":I
    invoke-virtual {p0, p1}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 146
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-gt v1, v0, :cond_14

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "startYearAdjustment":I
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v2

    .local v2, "endYearAdjustment":I
    goto :goto_23

    .line 153
    .end local v1    # "startYearAdjustment":I
    .end local v2    # "endYearAdjustment":I
    :cond_14
    const/4 v1, -0x1

    .line 154
    .restart local v1    # "startYearAdjustment":I
    const/4 v2, 0x0

    .restart local v2    # "endYearAdjustment":I
    goto :goto_23

    .line 158
    .end local v1    # "startYearAdjustment":I
    .end local v2    # "endYearAdjustment":I
    :cond_17
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-le v1, v0, :cond_21

    .line 161
    const/4 v1, 0x0

    .line 162
    .restart local v1    # "startYearAdjustment":I
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v2

    .restart local v2    # "endYearAdjustment":I
    goto :goto_23

    .line 165
    .end local v1    # "startYearAdjustment":I
    .end local v2    # "endYearAdjustment":I
    :cond_21
    const/4 v1, 0x1

    .line 166
    .restart local v1    # "startYearAdjustment":I
    const/4 v2, 0x1

    .line 169
    .restart local v2    # "endYearAdjustment":I
    :goto_23
    iget v3, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    const/16 v4, 0x7d1

    invoke-static {v4, v3}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v3

    .line 170
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v5

    add-int/2addr v5, v1

    .line 169
    invoke-virtual {v3, v5}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v3

    .line 171
    .local v3, "startDate":Ljava/time/LocalDate;
    iget v5, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    invoke-static {v4, v5}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v4

    .line 172
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v5

    add-int/2addr v5, v2

    .line 171
    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v4

    .line 173
    .local v4, "endDate":Ljava/time/LocalDate;
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 178
    const-string v0, "MMM dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 179
    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    const/16 v3, 0x7d1

    invoke-static {v3, v2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    .line 180
    invoke-static {v3, v2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    return-object v1
.end method

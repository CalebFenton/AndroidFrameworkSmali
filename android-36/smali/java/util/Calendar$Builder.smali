.class public Ljava/util/Calendar$Builder;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final greylist-max-o NFIELDS:I = 0x12

.field private static final greylist-max-o WEEK_YEAR:I = 0x11


# instance fields
.field private greylist-max-o fields:[I

.field private greylist-max-o firstDayOfWeek:I

.field private greylist-max-o instant:J

.field private greylist-max-o lenient:Z

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o maxFieldIndex:I

.field private greylist-max-o minimalDaysInFirstWeek:I

.field private greylist-max-o nextStamp:I

.field private greylist-max-o type:Ljava/lang/String;

.field private greylist-max-o zone:Ljava/util/TimeZone;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar$Builder;->lenient:Z

    .line 1099
    return-void
.end method

.method private greylist-max-o allocateFields()V
    .registers 2

    .line 1558
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-nez v0, :cond_10

    .line 1559
    const/16 v0, 0x24

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    .line 1560
    const/4 v0, 0x2

    iput v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    .line 1561
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    .line 1563
    :cond_10
    return-void
.end method

.method private greylist-max-o internalSet(II)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 1566
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    iget v1, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    aput v1, v0, p1

    .line 1567
    iget v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    if-ltz v0, :cond_1f

    .line 1570
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    add-int/lit8 v1, p1, 0x12

    aput p2, v0, v1

    .line 1571
    iget v0, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    if-le p1, v0, :cond_1e

    const/16 v0, 0x11

    if-ge p1, v0, :cond_1e

    .line 1572
    iput p1, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    .line 1574
    :cond_1e
    return-void

    .line 1568
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stamp counter overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isInstantSet()Z
    .registers 3

    .line 1577
    iget v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private greylist-max-o isSet(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 1581
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v0, v0, p1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private greylist-max-o isValidWeekParameter(I)Z
    .registers 3
    .param p1, "value"    # I

    .line 1585
    if-lez p1, :cond_7

    const/4 v0, 0x7

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method public whitelist test-api build()Ljava/util/Calendar;
    .registers 8

    .line 1471
    iget-object v0, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    if-nez v0, :cond_a

    .line 1472
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    .line 1474
    :cond_a
    iget-object v0, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    if-nez v0, :cond_16

    .line 1475
    iget-object v0, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->-$$Nest$smdefaultTimeZone(Ljava/util/Locale;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    .line 1477
    :cond_16
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 1478
    iget-object v0, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    .line 1480
    :cond_24
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    const-string v1, "gregory"

    if-nez v0, :cond_2c

    .line 1491
    iput-object v1, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    .line 1494
    :cond_2c
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_138

    :cond_37
    goto :goto_4a

    :sswitch_38
    const-string v1, "iso8601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v4

    goto :goto_4b

    :sswitch_42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v3

    goto :goto_4b

    :goto_4a
    const/4 v0, -0x1

    :goto_4b
    packed-switch v0, :pswitch_data_142

    .line 1514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown calendar type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1497
    :pswitch_69
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    iget-object v2, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V

    .line 1499
    .local v0, "gcal":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v5, -0x8000000000000000L

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 1501
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar$Builder;->setWeekDefinition(II)Ljava/util/Calendar$Builder;

    .line 1502
    goto :goto_8b

    .line 1495
    .end local v0    # "gcal":Ljava/util/GregorianCalendar;
    :pswitch_82
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    iget-object v2, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V

    .line 1514
    :goto_8b
    nop

    .line 1516
    .local v0, "cal":Ljava/util/Calendar;
    iget-boolean v1, p0, Ljava/util/Calendar$Builder;->lenient:Z

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 1517
    iget v1, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    if-eqz v1, :cond_9f

    .line 1518
    iget v1, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1519
    iget v1, p0, Ljava/util/Calendar$Builder;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 1521
    :cond_9f
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1522
    iget-wide v1, p0, Ljava/util/Calendar$Builder;->instant:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1523
    invoke-virtual {v0}, Ljava/util/Calendar;->complete()V

    .line 1524
    return-object v0

    .line 1527
    :cond_ae
    iget-object v1, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-eqz v1, :cond_136

    .line 1528
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v1, v2, v1

    iget-object v2, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v2, v2, v4

    if-le v1, v2, :cond_c5

    move v3, v4

    .line 1530
    .local v3, "weekDate":Z
    :cond_c5
    if-eqz v3, :cond_e9

    invoke-virtual {v0}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v1

    if-eqz v1, :cond_ce

    goto :goto_e9

    .line 1531
    :cond_ce
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "week date is unsupported by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1536
    :cond_e9
    :goto_e9
    const/4 v1, 0x2

    .local v1, "stamp":I
    :goto_ea
    iget v2, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    if-ge v1, v2, :cond_109

    .line 1537
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_ef
    iget v5, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    if-gt v2, v5, :cond_106

    .line 1538
    iget-object v5, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v5, v5, v2

    if-ne v5, v1, :cond_103

    .line 1539
    iget-object v5, p0, Ljava/util/Calendar$Builder;->fields:[I

    add-int/lit8 v6, v2, 0x12

    aget v5, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1540
    goto :goto_106

    .line 1537
    :cond_103
    add-int/lit8 v2, v2, 0x1

    goto :goto_ef

    .line 1536
    .end local v2    # "index":I
    :cond_106
    :goto_106
    add-int/lit8 v1, v1, 0x1

    goto :goto_ea

    .line 1545
    .end local v1    # "stamp":I
    :cond_109
    if-eqz v3, :cond_133

    .line 1546
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_118

    iget-object v1, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v2, 0x15

    aget v4, v1, v2

    .line 1547
    .local v4, "weekOfYear":I
    :cond_118
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 1548
    iget-object v1, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    goto :goto_12a

    :cond_126
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .line 1549
    .local v1, "dayOfWeek":I
    :goto_12a
    iget-object v2, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v5, 0x23

    aget v2, v2, v5

    invoke-virtual {v0, v2, v4, v1}, Ljava/util/Calendar;->setWeekDate(III)V

    .line 1551
    .end local v1    # "dayOfWeek":I
    .end local v4    # "weekOfYear":I
    :cond_133
    invoke-virtual {v0}, Ljava/util/Calendar;->complete()V

    .line 1554
    .end local v3    # "weekDate":Z
    :cond_136
    return-object v0

    nop

    :sswitch_data_138
    .sparse-switch
        0x10ea1509 -> :sswitch_42
        0x7ce21384 -> :sswitch_38
    .end sparse-switch

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_82
        :pswitch_69
    .end packed-switch
.end method

.method public whitelist test-api set(II)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 1161
    if-ltz p1, :cond_1b

    const/16 v0, 0x11

    if-ge p1, v0, :cond_1b

    .line 1164
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1167
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    .line 1168
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1169
    return-object p0

    .line 1165
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "instant has been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "field is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setCalendarType(Ljava/lang/String;)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 1357
    const-string v0, "gregorian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1358
    const-string p1, "gregory"

    .line 1360
    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getAvailableCalendarTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1361
    const-string v0, "iso8601"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_36

    .line 1362
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown calendar type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_36
    :goto_36
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    if-nez v0, :cond_3d

    .line 1365
    iput-object p1, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    goto :goto_45

    .line 1367
    :cond_3d
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1371
    :goto_45
    return-object p0

    .line 1368
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calendar type override"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setDate(III)Ljava/util/Calendar$Builder;
    .registers 10
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 1236
    const/4 v2, 0x2

    const/4 v4, 0x5

    const/4 v0, 0x1

    move v1, p1

    move v3, p2

    move v5, p3

    .end local p1    # "year":I
    .end local p2    # "month":I
    .end local p3    # "dayOfMonth":I
    .local v1, "year":I
    .local v3, "month":I
    .local v5, "dayOfMonth":I
    filled-new-array/range {v0 .. v5}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar$Builder;->setFields([I)Ljava/util/Calendar$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs whitelist test-api setFields([I)Ljava/util/Calendar$Builder;
    .registers 7
    .param p1, "fieldValuePairs"    # [I

    .line 1198
    array-length v0, p1

    .line 1199
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_44

    .line 1202
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1205
    iget v1, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    if-ltz v1, :cond_34

    .line 1208
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    .line 1209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_33

    .line 1210
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget v1, p1, v1

    .line 1212
    .local v1, "field":I
    if-ltz v1, :cond_2b

    const/16 v3, 0x11

    if-ge v1, v3, :cond_2b

    .line 1215
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1216
    .end local v1    # "field":I
    move v1, v3

    goto :goto_16

    .line 1213
    .end local v3    # "i":I
    .restart local v1    # "field":I
    .restart local v2    # "i":I
    :cond_2b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "field is invalid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1217
    .end local v1    # "field":I
    .end local v2    # "i":I
    :cond_33
    return-object p0

    .line 1206
    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "stamp counter overflow"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1203
    :cond_3c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "instant has been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1200
    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public whitelist test-api setInstant(J)Ljava/util/Calendar$Builder;
    .registers 4
    .param p1, "instant"    # J

    .line 1115
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-nez v0, :cond_a

    .line 1118
    iput-wide p1, p0, Ljava/util/Calendar$Builder;->instant:J

    .line 1119
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    .line 1120
    return-object p0

    .line 1116
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setInstant(Ljava/util/Date;)Ljava/util/Calendar$Builder;
    .registers 4
    .param p1, "instant"    # Ljava/util/Date;

    .line 1139
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setLenient(Z)Ljava/util/Calendar$Builder;
    .registers 2
    .param p1, "lenient"    # Z

    .line 1333
    iput-boolean p1, p0, Ljava/util/Calendar$Builder;->lenient:Z

    .line 1334
    return-object p0
.end method

.method public whitelist test-api setLocale(Ljava/util/Locale;)Ljava/util/Calendar$Builder;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1395
    if-eqz p1, :cond_5

    .line 1398
    iput-object p1, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    .line 1399
    return-object p0

    .line 1396
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setTimeOfDay(III)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .line 1253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/util/Calendar$Builder;->setTimeOfDay(IIII)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setTimeOfDay(IIII)Ljava/util/Calendar$Builder;
    .registers 13
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "millis"    # I

    .line 1274
    const/16 v4, 0xd

    const/16 v6, 0xe

    const/16 v0, 0xb

    const/16 v2, 0xc

    move v1, p1

    move v3, p2

    move v5, p3

    move v7, p4

    .end local p1    # "hourOfDay":I
    .end local p2    # "minute":I
    .end local p3    # "second":I
    .end local p4    # "millis":I
    .local v1, "hourOfDay":I
    .local v3, "minute":I
    .local v5, "second":I
    .local v7, "millis":I
    filled-new-array/range {v0 .. v7}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar$Builder;->setFields([I)Ljava/util/Calendar$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api setTimeZone(Ljava/util/TimeZone;)Ljava/util/Calendar$Builder;
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 1315
    if-eqz p1, :cond_5

    .line 1318
    iput-object p1, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    .line 1319
    return-object p0

    .line 1316
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setWeekDate(III)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    .line 1295
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    .line 1296
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1297
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1298
    const/4 v0, 0x7

    invoke-direct {p0, v0, p3}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1299
    return-object p0
.end method

.method public whitelist test-api setWeekDefinition(II)Ljava/util/Calendar$Builder;
    .registers 4
    .param p1, "firstDayOfWeek"    # I
    .param p2, "minimalDaysInFirstWeek"    # I

    .line 1421
    invoke-direct {p0, p1}, Ljava/util/Calendar$Builder;->isValidWeekParameter(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1422
    invoke-direct {p0, p2}, Ljava/util/Calendar$Builder;->isValidWeekParameter(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1425
    iput p1, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    .line 1426
    iput p2, p0, Ljava/util/Calendar$Builder;->minimalDaysInFirstWeek:I

    .line 1427
    return-object p0

    .line 1423
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

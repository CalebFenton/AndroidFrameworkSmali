.class public final Landroid/text/format/DateUtilsBridge;
.super Ljava/lang/Object;
.source "DateUtilsBridge.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;
    .registers 5
    .param p0, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p1, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p2, "timeInMillis"    # J

    .line 68
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 69
    .local v0, "calendar":Landroid/icu/util/Calendar;
    invoke-virtual {v0, p2, p3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 70
    return-object v0
.end method

.method public static blacklist dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .registers 4
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    .line 159
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method private static blacklist fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .registers 4
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    .line 183
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private static blacklist fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .registers 5
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .registers 5
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_24

    .line 178
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_24

    .line 179
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v2, v1, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    nop

    .line 177
    :goto_25
    return v0
.end method

.method public static blacklist icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;
    .registers 2
    .param p0, "tz"    # Ljava/util/TimeZone;

    .line 58
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 59
    .local v0, "icuTimeZone":Landroid/icu/util/TimeZone;
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    .line 60
    return-object v0
.end method

.method public static blacklist isDisplayMidnightUsingSkeleton(Landroid/icu/util/Calendar;)Z
    .registers 2
    .param p0, "c"    # Landroid/icu/util/Calendar;

    .line 169
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static blacklist isThisYear(Landroid/icu/util/Calendar;)Z
    .registers 5
    .param p0, "c"    # Landroid/icu/util/Calendar;

    .line 191
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 192
    .local v0, "now":Landroid/icu/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 193
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method private static blacklist onTheHour(Landroid/icu/util/Calendar;)Z
    .registers 2
    .param p0, "c"    # Landroid/icu/util/Calendar;

    .line 173
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static blacklist toSkeleton(Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .registers 3
    .param p0, "calendar"    # Landroid/icu/util/Calendar;
    .param p1, "flags"    # I

    .line 74
    invoke-static {p0, p0, p1}, Landroid/text/format/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .registers 8
    .param p0, "startCalendar"    # Landroid/icu/util/Calendar;
    .param p1, "endCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "flags"    # I

    .line 78
    const/high16 v0, 0x80000

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 79
    const v0, 0x1c000

    or-int/2addr p2, v0

    .line 82
    :cond_9
    const-string v0, "MMMM"

    .line 83
    .local v0, "monthPart":Ljava/lang/String;
    const/high16 v1, 0x20000

    and-int/2addr v1, p2

    if-eqz v1, :cond_13

    .line 84
    const-string v0, "M"

    goto :goto_1a

    .line 85
    :cond_13
    const/high16 v1, 0x10000

    and-int/2addr v1, p2

    if-eqz v1, :cond_1a

    .line 86
    const-string v0, "MMM"

    .line 89
    :cond_1a
    :goto_1a
    const-string v1, "EEEE"

    .line 90
    .local v1, "weekPart":Ljava/lang/String;
    const v2, 0x8000

    and-int/2addr v2, p2

    if-eqz v2, :cond_24

    .line 91
    const-string v1, "EEE"

    .line 94
    :cond_24
    const-string v2, "j"

    .line 95
    .local v2, "timePart":Ljava/lang/String;
    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_2d

    .line 96
    const-string v2, "H"

    goto :goto_33

    .line 97
    :cond_2d
    and-int/lit8 v3, p2, 0x40

    if-eqz v3, :cond_33

    .line 98
    const-string v2, "h"

    .line 104
    :cond_33
    :goto_33
    and-int/lit16 v3, p2, 0x4000

    const-string v4, "m"

    if-eqz v3, :cond_5c

    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_3e

    goto :goto_5c

    .line 109
    :cond_3e
    invoke-static {p0}, Landroid/text/format/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-static {p1}, Landroid/text/format/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 110
    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6d

    .line 105
    :cond_5c
    :goto_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    :cond_6d
    :goto_6d
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 115
    or-int/lit8 p2, p2, 0x10

    .line 118
    :cond_75
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_83

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_83

    .line 119
    and-int/lit8 p2, p2, -0x3

    .line 120
    and-int/lit8 p2, p2, -0x2

    .line 123
    :cond_83
    and-int/lit8 v3, p2, 0x13

    if-nez v3, :cond_89

    .line 124
    or-int/lit8 p2, p2, 0x10

    .line 128
    :cond_89
    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_a5

    .line 129
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_92

    goto :goto_a5

    .line 131
    :cond_92
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_97

    goto :goto_a5

    .line 134
    :cond_97
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-static {p0}, Landroid/text/format/DateUtilsBridge;->isThisYear(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 135
    :cond_a3
    or-int/lit8 p2, p2, 0x4

    .line 139
    :cond_a5
    :goto_a5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v3, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v4, p2, 0x30

    if-eqz v4, :cond_c4

    .line 141
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_b8

    .line 142
    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_b8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    and-int/lit8 v4, p2, 0x20

    if-nez v4, :cond_c4

    .line 146
    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_c4
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_cb

    .line 150
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_cb
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_d2

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_d2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.class public final Llibcore/icu/DateUtilsBridge;
.super Ljava/lang/Object;
.source "DateUtilsBridge.java"


# static fields
.field public static final FORMAT_12HOUR:I = 0x40

.field public static final FORMAT_24HOUR:I = 0x80

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;
    .locals 2
    .param p0, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p1, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p2, "timeInMillis"    # J

    #@0
    .prologue
    .line 61
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@5
    .line 62
    .local v0, "calendar":Landroid/icu/util/Calendar;
    invoke-virtual {v0, p2, p3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@8
    .line 63
    return-object v0
.end method

.method public static dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .locals 2
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/16 v1, 0x14

    #@2
    .line 151
    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@9
    move-result v1

    #@a
    sub-int/2addr v0, v1

    #@b
    return v0
.end method

.method private static fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 2
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 165
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@8
    move-result v1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private static fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 3
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 169
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@4
    move-result v1

    #@5
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@8
    move-result v2

    #@9
    if-ne v1, v2, :cond_0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private static fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 5
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v4, 0x5

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v0, 0x1

    #@3
    .line 159
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@6
    move-result v1

    #@7
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@a
    move-result v2

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 160
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@10
    move-result v1

    #@11
    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@14
    move-result v2

    #@15
    if-eq v1, v2, :cond_1

    #@17
    .line 159
    :cond_0
    :goto_0
    return v0

    #@18
    .line 161
    :cond_1
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@1f
    move-result v2

    #@20
    if-ne v1, v2, :cond_0

    #@22
    const/4 v0, 0x0

    #@23
    goto :goto_0
.end method

.method public static icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;
    .locals 2
    .param p0, "tz"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 54
    new-instance v0, Landroid/icu/impl/JavaTimeZone;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/icu/impl/JavaTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    #@6
    .line 55
    .local v0, "javaTimeZone":Landroid/icu/impl/JavaTimeZone;
    invoke-virtual {v0}, Landroid/icu/impl/JavaTimeZone;->freeze()Landroid/icu/util/TimeZone;

    #@9
    .line 56
    return-object v0
.end method

.method private static isThisYear(Landroid/icu/util/Calendar;)Z
    .locals 4
    .param p0, "c"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 173
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/icu/util/Calendar;

    #@7
    .line 174
    .local v0, "now":Landroid/icu/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a
    move-result-wide v2

    #@b
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@e
    .line 175
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@11
    move-result v2

    #@12
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@15
    move-result v3

    #@16
    if-ne v2, v3, :cond_0

    #@18
    :goto_0
    return v1

    #@19
    :cond_0
    const/4 v1, 0x0

    #@1a
    goto :goto_0
.end method

.method private static onTheHour(Landroid/icu/util/Calendar;)Z
    .locals 2
    .param p0, "c"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 155
    const/16 v1, 0xc

    #@3
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/16 v1, 0xd

    #@b
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public static toSkeleton(Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Landroid/icu/util/Calendar;
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 67
    invoke-static {p0, p0, p1}, Llibcore/icu/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .locals 6
    .param p0, "startCalendar"    # Landroid/icu/util/Calendar;
    .param p1, "endCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 71
    const/high16 v5, 0x80000

    #@3
    and-int/2addr v5, p2

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 72
    const v5, 0x1c000

    #@9
    or-int/2addr p2, v5

    #@a
    .line 75
    :cond_0
    const-string/jumbo v1, "MMMM"

    #@d
    .line 76
    .local v1, "monthPart":Ljava/lang/String;
    const/high16 v5, 0x20000

    #@f
    and-int/2addr v5, p2

    #@10
    if-eqz v5, :cond_e

    #@12
    .line 77
    const-string/jumbo v1, "M"

    #@15
    .line 82
    :cond_1
    :goto_0
    const-string/jumbo v3, "EEEE"

    #@18
    .line 83
    .local v3, "weekPart":Ljava/lang/String;
    const v5, 0x8000

    #@1b
    and-int/2addr v5, p2

    #@1c
    if-eqz v5, :cond_2

    #@1e
    .line 84
    const-string/jumbo v3, "EEE"

    #@21
    .line 87
    :cond_2
    const-string/jumbo v2, "j"

    #@24
    .line 88
    .local v2, "timePart":Ljava/lang/String;
    and-int/lit16 v5, p2, 0x80

    #@26
    if-eqz v5, :cond_f

    #@28
    .line 89
    const-string/jumbo v2, "H"

    #@2b
    .line 97
    :cond_3
    :goto_1
    and-int/lit16 v5, p2, 0x4000

    #@2d
    if-eqz v5, :cond_4

    #@2f
    and-int/lit16 v5, p2, 0x80

    #@31
    if-eqz v5, :cond_10

    #@33
    .line 98
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, "m"

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 107
    :cond_5
    :goto_2
    invoke-static {p0, p1}, Llibcore/icu/DateUtilsBridge;->fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_6

    #@4d
    .line 108
    or-int/lit8 p2, p2, 0x10

    #@4f
    .line 111
    :cond_6
    invoke-static {p0, p1}, Llibcore/icu/DateUtilsBridge;->fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_7

    #@55
    and-int/lit8 v4, p2, 0x20

    #@57
    if-eqz v4, :cond_7

    #@59
    .line 112
    and-int/lit8 p2, p2, -0x3

    #@5b
    .line 113
    and-int/lit8 p2, p2, -0x2

    #@5d
    .line 116
    :cond_7
    and-int/lit8 v4, p2, 0x13

    #@5f
    if-nez v4, :cond_8

    #@61
    .line 117
    or-int/lit8 p2, p2, 0x10

    #@63
    .line 121
    :cond_8
    and-int/lit8 v4, p2, 0x10

    #@65
    if-eqz v4, :cond_9

    #@67
    .line 122
    and-int/lit8 v4, p2, 0x4

    #@69
    if-eqz v4, :cond_12

    #@6b
    .line 131
    :cond_9
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    .line 132
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v4, p2, 0x30

    #@72
    if-eqz v4, :cond_b

    #@74
    .line 133
    and-int/lit8 v4, p2, 0x4

    #@76
    if-eqz v4, :cond_a

    #@78
    .line 134
    const-string/jumbo v4, "y"

    #@7b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    .line 136
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 137
    and-int/lit8 v4, p2, 0x20

    #@83
    if-nez v4, :cond_b

    #@85
    .line 138
    const-string/jumbo v4, "d"

    #@88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 141
    :cond_b
    and-int/lit8 v4, p2, 0x2

    #@8d
    if-eqz v4, :cond_c

    #@8f
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 144
    :cond_c
    and-int/lit8 v4, p2, 0x1

    #@94
    if-eqz v4, :cond_d

    #@96
    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    .line 147
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    return-object v4

    #@9e
    .line 78
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "timePart":Ljava/lang/String;
    .end local v3    # "weekPart":Ljava/lang/String;
    :cond_e
    const/high16 v5, 0x10000

    #@a0
    and-int/2addr v5, p2

    #@a1
    if-eqz v5, :cond_1

    #@a3
    .line 79
    const-string/jumbo v1, "MMM"

    #@a6
    goto/16 :goto_0

    #@a8
    .line 90
    .restart local v2    # "timePart":Ljava/lang/String;
    .restart local v3    # "weekPart":Ljava/lang/String;
    :cond_f
    and-int/lit8 v5, p2, 0x40

    #@aa
    if-eqz v5, :cond_3

    #@ac
    .line 91
    const-string/jumbo v2, "h"

    #@af
    goto/16 :goto_1

    #@b1
    .line 102
    :cond_10
    invoke-static {p0}, Llibcore/icu/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    #@b4
    move-result v5

    #@b5
    if-eqz v5, :cond_11

    #@b7
    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    #@ba
    move-result v4

    #@bb
    :cond_11
    if-nez v4, :cond_5

    #@bd
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    const-string/jumbo v5, "m"

    #@c9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v4

    #@cd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v2

    #@d1
    goto/16 :goto_2

    #@d3
    .line 124
    :cond_12
    and-int/lit8 v4, p2, 0x8

    #@d5
    if-nez v4, :cond_9

    #@d7
    .line 126
    invoke-static {p0, p1}, Llibcore/icu/DateUtilsBridge;->fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    #@da
    move-result v4

    #@db
    if-eqz v4, :cond_13

    #@dd
    invoke-static {p0}, Llibcore/icu/DateUtilsBridge;->isThisYear(Landroid/icu/util/Calendar;)Z

    #@e0
    move-result v4

    #@e1
    if-nez v4, :cond_9

    #@e3
    .line 127
    :cond_13
    or-int/lit8 p2, p2, 0x4

    #@e5
    goto :goto_3
.end method

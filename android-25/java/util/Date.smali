.class public Ljava/util/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static defaultCenturyStart:I = 0x0

.field private static final gcal:Lsun/util/calendar/BaseCalendar;

.field private static jcal:Lsun/util/calendar/BaseCalendar; = null

.field private static final serialVersionUID:J = 0x686a81014b597419L

.field private static final ttb:[I

.field private static final wtb:[Ljava/lang/String;


# instance fields
.field private transient cdate:Lsun/util/calendar/BaseCalendar$Date;

.field private transient fastTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 133
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    #@5
    move-result-object v0

    #@6
    .line 132
    sput-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    #@8
    .line 635
    new-array v0, v3, [Ljava/lang/String;

    #@a
    .line 636
    const-string/jumbo v1, "am"

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "pm"

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    .line 637
    const-string/jumbo v1, "monday"

    #@19
    const/4 v2, 0x2

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "tuesday"

    #@1f
    const/4 v2, 0x3

    #@20
    aput-object v1, v0, v2

    #@22
    const-string/jumbo v1, "wednesday"

    #@25
    const/4 v2, 0x4

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "thursday"

    #@2b
    const/4 v2, 0x5

    #@2c
    aput-object v1, v0, v2

    #@2e
    const-string/jumbo v1, "friday"

    #@31
    const/4 v2, 0x6

    #@32
    aput-object v1, v0, v2

    #@34
    .line 638
    const-string/jumbo v1, "saturday"

    #@37
    const/4 v2, 0x7

    #@38
    aput-object v1, v0, v2

    #@3a
    const-string/jumbo v1, "sunday"

    #@3d
    const/16 v2, 0x8

    #@3f
    aput-object v1, v0, v2

    #@41
    .line 639
    const-string/jumbo v1, "january"

    #@44
    const/16 v2, 0x9

    #@46
    aput-object v1, v0, v2

    #@48
    const-string/jumbo v1, "february"

    #@4b
    const/16 v2, 0xa

    #@4d
    aput-object v1, v0, v2

    #@4f
    const-string/jumbo v1, "march"

    #@52
    const/16 v2, 0xb

    #@54
    aput-object v1, v0, v2

    #@56
    const-string/jumbo v1, "april"

    #@59
    const/16 v2, 0xc

    #@5b
    aput-object v1, v0, v2

    #@5d
    const-string/jumbo v1, "may"

    #@60
    const/16 v2, 0xd

    #@62
    aput-object v1, v0, v2

    #@64
    const-string/jumbo v1, "june"

    #@67
    const/16 v2, 0xe

    #@69
    aput-object v1, v0, v2

    #@6b
    .line 640
    const-string/jumbo v1, "july"

    #@6e
    const/16 v2, 0xf

    #@70
    aput-object v1, v0, v2

    #@72
    const-string/jumbo v1, "august"

    #@75
    const/16 v2, 0x10

    #@77
    aput-object v1, v0, v2

    #@79
    const-string/jumbo v1, "september"

    #@7c
    const/16 v2, 0x11

    #@7e
    aput-object v1, v0, v2

    #@80
    const-string/jumbo v1, "october"

    #@83
    const/16 v2, 0x12

    #@85
    aput-object v1, v0, v2

    #@87
    const-string/jumbo v1, "november"

    #@8a
    const/16 v2, 0x13

    #@8c
    aput-object v1, v0, v2

    #@8e
    const-string/jumbo v1, "december"

    #@91
    const/16 v2, 0x14

    #@93
    aput-object v1, v0, v2

    #@95
    .line 641
    const-string/jumbo v1, "gmt"

    #@98
    const/16 v2, 0x15

    #@9a
    aput-object v1, v0, v2

    #@9c
    const-string/jumbo v1, "ut"

    #@9f
    const/16 v2, 0x16

    #@a1
    aput-object v1, v0, v2

    #@a3
    const-string/jumbo v1, "utc"

    #@a6
    const/16 v2, 0x17

    #@a8
    aput-object v1, v0, v2

    #@aa
    const-string/jumbo v1, "est"

    #@ad
    const/16 v2, 0x18

    #@af
    aput-object v1, v0, v2

    #@b1
    const-string/jumbo v1, "edt"

    #@b4
    const/16 v2, 0x19

    #@b6
    aput-object v1, v0, v2

    #@b8
    const-string/jumbo v1, "cst"

    #@bb
    const/16 v2, 0x1a

    #@bd
    aput-object v1, v0, v2

    #@bf
    const-string/jumbo v1, "cdt"

    #@c2
    const/16 v2, 0x1b

    #@c4
    aput-object v1, v0, v2

    #@c6
    .line 642
    const-string/jumbo v1, "mst"

    #@c9
    const/16 v2, 0x1c

    #@cb
    aput-object v1, v0, v2

    #@cd
    const-string/jumbo v1, "mdt"

    #@d0
    const/16 v2, 0x1d

    #@d2
    aput-object v1, v0, v2

    #@d4
    const-string/jumbo v1, "pst"

    #@d7
    const/16 v2, 0x1e

    #@d9
    aput-object v1, v0, v2

    #@db
    const-string/jumbo v1, "pdt"

    #@de
    const/16 v2, 0x1f

    #@e0
    aput-object v1, v0, v2

    #@e2
    .line 635
    sput-object v0, Ljava/util/Date;->wtb:[Ljava/lang/String;

    #@e4
    .line 644
    new-array v0, v3, [I

    #@e6
    fill-array-data v0, :array_0

    #@e9
    sput-object v0, Ljava/util/Date;->ttb:[I

    #@eb
    .line 129
    return-void

    #@ec
    .line 644
    :array_0
    .array-data 4
        0xe
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x2710
        0x2710
        0x2710
        0x283c
        0x2800
        0x2878
        0x283c
        0x28b4
        0x2878
        0x28f0
        0x28b4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@7
    .line 162
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v5, v4

    #@6
    move v6, v4

    #@7
    .line 195
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    #@a
    .line 194
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hrs"    # I
    .param p5, "min"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 218
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    #@a
    .line 217
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hrs"    # I
    .param p5, "min"    # I
    .param p6, "sec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v3, 0xc

    #@3
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 242
    add-int/lit16 v1, p1, 0x76c

    #@8
    .line 244
    .local v1, "y":I
    if-lt p2, v3, :cond_1

    #@a
    .line 245
    div-int/lit8 v2, p2, 0xc

    #@c
    add-int/2addr v1, v2

    #@d
    .line 246
    rem-int/lit8 p2, p2, 0xc

    #@f
    .line 251
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    #@12
    move-result-object v0

    #@13
    .line 252
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    #@1d
    iput-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1f
    .line 253
    iget-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@21
    add-int/lit8 v3, p2, 0x1

    #@23
    invoke-virtual {v2, v1, v3, p3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p4, p5, p6, v4}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    #@2a
    .line 254
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    #@2d
    .line 255
    const/4 v2, 0x0

    #@2e
    iput-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@30
    .line 241
    return-void

    #@31
    .line 247
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_1
    if-gez p2, :cond_0

    #@33
    .line 248
    invoke-static {p2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    #@36
    move-result v2

    #@37
    add-int/2addr v1, v2

    #@38
    .line 249
    invoke-static {p2, v3}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    #@3b
    move-result p2

    #@3c
    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "date"    # J

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 176
    iput-wide p1, p0, Ljava/util/Date;->fastTime:J

    #@5
    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@7
    .line 271
    return-void
.end method

.method public static UTC(IIIIII)J
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "hrs"    # I
    .param p4, "min"    # I
    .param p5, "sec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/16 v6, 0xc

    #@3
    .line 317
    add-int/lit16 v4, p0, 0x76c

    #@5
    .line 319
    .local v4, "y":I
    if-lt p1, v6, :cond_1

    #@7
    .line 320
    div-int/lit8 v5, p1, 0xc

    #@9
    add-int/2addr v4, v5

    #@a
    .line 321
    rem-int/lit8 p1, p1, 0xc

    #@c
    .line 326
    :cond_0
    :goto_0
    add-int/lit8 v2, p1, 0x1

    #@e
    .line 327
    .local v2, "m":I
    invoke-static {v4}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    #@11
    move-result-object v0

    #@12
    .line 328
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    const/4 v5, 0x0

    #@13
    invoke-virtual {v0, v5}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    #@19
    .line 329
    .local v3, "udate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v3, v4, v2, p2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5, p3, p4, p5, v7}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    #@20
    .line 333
    new-instance v1, Ljava/util/Date;

    #@22
    const-wide/16 v6, 0x0

    #@24
    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@27
    .line 334
    .local v1, "d":Ljava/util/Date;
    invoke-direct {v1, v3}, Ljava/util/Date;->normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;

    #@2a
    .line 335
    iget-wide v6, v1, Ljava/util/Date;->fastTime:J

    #@2c
    return-wide v6

    #@2d
    .line 322
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v1    # "d":Ljava/util/Date;
    .end local v2    # "m":I
    .end local v3    # "udate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_1
    if-gez p1, :cond_0

    #@2f
    .line 323
    invoke-static {p1, v6}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    #@32
    move-result v5

    #@33
    add-int/2addr v4, v5

    #@34
    .line 324
    invoke-static {p1, v6}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    #@37
    move-result p1

    #@38
    goto :goto_0
.end method

.method private static final convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1074
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v0

    #@5
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    #@8
    move-result v0

    #@9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    .line 1075
    const/4 v0, 0x1

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const/4 v1, 0x2

    #@16
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 1076
    return-object p0
.end method

.method private final getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;
    .locals 4

    #@0
    .prologue
    .line 1196
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1197
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    #@6
    invoke-static {v2, v3}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    #@9
    move-result-object v0

    #@a
    .line 1198
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    #@c
    .line 1199
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@f
    move-result-object v1

    #@10
    .line 1198
    invoke-virtual {v0, v2, v3, v1}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    #@16
    iput-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@18
    .line 1201
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_0
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1a
    return-object v1
.end method

.method private static final getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;
    .locals 1
    .param p0, "year"    # I

    #@0
    .prologue
    .line 1289
    const/16 v0, 0x62e

    #@2
    if-lt p0, v0, :cond_0

    #@4
    .line 1290
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    #@6
    return-object v0

    #@7
    .line 1292
    :cond_0
    invoke-static {}, Ljava/util/Date;->getJulianCalendar()Lsun/util/calendar/BaseCalendar;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private static final getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;
    .locals 4
    .param p0, "utc"    # J

    #@0
    .prologue
    .line 1299
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 1301
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    #@d
    move-result v0

    #@e
    int-to-long v0, v0

    #@f
    .line 1300
    const-wide v2, -0xb1d069b5400L

    #@14
    sub-long v0, v2, v0

    #@16
    cmp-long v0, p0, v0

    #@18
    if-ltz v0, :cond_1

    #@1a
    .line 1302
    :cond_0
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    #@1c
    return-object v0

    #@1d
    .line 1304
    :cond_1
    invoke-static {}, Ljava/util/Date;->getJulianCalendar()Lsun/util/calendar/BaseCalendar;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method private static final getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;
    .locals 1
    .param p0, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;

    #@0
    .prologue
    .line 1308
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1309
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    #@6
    return-object v0

    #@7
    .line 1311
    :cond_0
    invoke-virtual {p0}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1312
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    #@f
    return-object v0

    #@10
    .line 1314
    :cond_1
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    #@12
    return-object v0
.end method

.method private static final declared-synchronized getJulianCalendar()Lsun/util/calendar/BaseCalendar;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljava/util/Date;

    #@2
    monitor-enter v1

    #@3
    .line 1318
    :try_start_0
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1319
    const-string/jumbo v0, "julian"

    #@a
    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lsun/util/calendar/BaseCalendar;

    #@10
    sput-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    #@12
    .line 1321
    :cond_0
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method static final getMillisOf(Ljava/util/Date;)J
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 974
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@6
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 975
    :cond_0
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    #@e
    return-wide v2

    #@f
    .line 977
    :cond_1
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@11
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    #@17
    .line 978
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-object v1, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    #@19
    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@1c
    move-result-wide v2

    #@1d
    return-wide v2
.end method

.method private final getTimeImpl()J
    .locals 2

    #@0
    .prologue
    .line 905
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@6
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 908
    :cond_0
    :goto_0
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    #@e
    return-wide v0

    #@f
    .line 906
    :cond_1
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    #@12
    goto :goto_0
.end method

.method private final normalize()Lsun/util/calendar/BaseCalendar$Date;
    .locals 6

    #@0
    .prologue
    .line 1205
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 1206
    iget-wide v4, p0, Ljava/util/Date;->fastTime:J

    #@6
    invoke-static {v4, v5}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    #@9
    move-result-object v0

    #@a
    .line 1207
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v4, p0, Ljava/util/Date;->fastTime:J

    #@c
    .line 1208
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@f
    move-result-object v3

    #@10
    .line 1207
    invoke-virtual {v0, v4, v5, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    #@16
    iput-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@18
    .line 1209
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1a
    return-object v3

    #@1b
    .line 1214
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_0
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1d
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_1

    #@23
    .line 1215
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@25
    invoke-direct {p0, v3}, Ljava/util/Date;->normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;

    #@28
    move-result-object v3

    #@29
    iput-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2b
    .line 1220
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@2e
    move-result-object v2

    #@2f
    .line 1221
    .local v2, "tz":Ljava/util/TimeZone;
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@31
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    #@34
    move-result-object v3

    #@35
    if-eq v2, v3, :cond_2

    #@37
    .line 1222
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@39
    invoke-virtual {v3, v2}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@3c
    .line 1223
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@3e
    invoke-static {v3}, Ljava/util/Date;->getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;

    #@41
    move-result-object v1

    #@42
    .line 1224
    .local v1, "cal":Lsun/util/calendar/CalendarSystem;
    iget-wide v4, p0, Ljava/util/Date;->fastTime:J

    #@44
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@46
    invoke-virtual {v1, v4, v5, v3}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@49
    .line 1226
    .end local v1    # "cal":Lsun/util/calendar/CalendarSystem;
    :cond_2
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@4b
    return-object v3
.end method

.method private final normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;
    .locals 14
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;

    #@0
    .prologue
    .line 1231
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@3
    move-result v1

    #@4
    .line 1232
    .local v1, "y":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@7
    move-result v8

    #@8
    .line 1233
    .local v8, "m":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@b
    move-result v3

    #@c
    .line 1234
    .local v3, "d":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    #@f
    move-result v4

    #@10
    .line 1235
    .local v4, "hh":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    #@13
    move-result v5

    #@14
    .line 1236
    .local v5, "mm":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    #@17
    move-result v6

    #@18
    .line 1237
    .local v6, "ss":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMillis()I

    #@1b
    move-result v9

    #@1c
    .line 1238
    .local v9, "ms":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    #@1f
    move-result-object v11

    #@20
    .line 1248
    .local v11, "tz":Ljava/util/TimeZone;
    const/16 v2, 0x62e

    #@22
    if-eq v1, v2, :cond_0

    #@24
    const v2, 0x10b07600

    #@27
    if-le v1, v2, :cond_2

    #@29
    .line 1249
    :cond_0
    if-nez v11, :cond_1

    #@2b
    .line 1250
    const-string/jumbo v2, "GMT"

    #@2e
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@31
    move-result-object v11

    #@32
    .line 1252
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    #@34
    invoke-direct {v0, v11}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    #@37
    .line 1253
    .local v0, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    #@3a
    .line 1254
    const/16 v2, 0xe

    #@3c
    invoke-virtual {v0, v2, v9}, Ljava/util/GregorianCalendar;->set(II)V

    #@3f
    .line 1255
    add-int/lit8 v2, v8, -0x1

    #@41
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    #@44
    .line 1256
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@47
    move-result-wide v12

    #@48
    iput-wide v12, p0, Ljava/util/Date;->fastTime:J

    #@4a
    .line 1257
    iget-wide v12, p0, Ljava/util/Date;->fastTime:J

    #@4c
    invoke-static {v12, v13}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    #@4f
    move-result-object v7

    #@50
    .line 1258
    .local v7, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v12, p0, Ljava/util/Date;->fastTime:J

    #@52
    invoke-virtual {v7, v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@55
    move-result-object p1

    #@56
    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    #@58
    .line 1259
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    return-object p1

    #@59
    .line 1248
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    .end local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_2
    const v2, -0x10b07600

    #@5c
    if-lt v1, v2, :cond_0

    #@5e
    .line 1262
    invoke-static {v1}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    #@61
    move-result-object v7

    #@62
    .line 1263
    .restart local v7    # "cal":Lsun/util/calendar/BaseCalendar;
    invoke-static {p1}, Ljava/util/Date;->getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;

    #@65
    move-result-object v2

    #@66
    if-eq v7, v2, :cond_3

    #@68
    .line 1264
    invoke-virtual {v7, v11}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@6b
    move-result-object p1

    #@6c
    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    #@6e
    .line 1265
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {p1, v1, v8, v3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2, v4, v5, v6, v9}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    #@75
    .line 1268
    :cond_3
    invoke-virtual {v7, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@78
    move-result-wide v12

    #@79
    iput-wide v12, p0, Ljava/util/Date;->fastTime:J

    #@7b
    .line 1272
    iget-wide v12, p0, Ljava/util/Date;->fastTime:J

    #@7d
    invoke-static {v12, v13}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    #@80
    move-result-object v10

    #@81
    .line 1273
    .local v10, "ncal":Lsun/util/calendar/BaseCalendar;
    if-eq v10, v7, :cond_4

    #@83
    .line 1274
    invoke-virtual {v10, v11}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@86
    move-result-object p1

    #@87
    .end local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    #@89
    .line 1275
    .restart local p1    # "date":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {p1, v1, v8, v3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v2, v4, v5, v6, v9}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    #@90
    .line 1276
    invoke-virtual {v10, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@93
    move-result-wide v12

    #@94
    iput-wide v12, p0, Ljava/util/Date;->fastTime:J

    #@96
    .line 1278
    :cond_4
    return-object p1
.end method

.method public static parse(Ljava/lang/String;)J
    .locals 31
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 453
    const/high16 v30, -0x80000000

    #@2
    .line 454
    .local v30, "year":I
    const/16 v23, -0x1

    #@4
    .line 455
    .local v23, "mon":I
    const/16 v19, -0x1

    #@6
    .line 456
    .local v19, "mday":I
    const/4 v14, -0x1

    #@7
    .line 457
    .local v14, "hour":I
    const/16 v21, -0x1

    #@9
    .line 458
    .local v21, "min":I
    const/16 v26, -0x1

    #@b
    .line 459
    .local v26, "sec":I
    const/16 v20, -0x1

    #@d
    .line 460
    .local v20, "millis":I
    const/4 v11, -0x1

    #@e
    .line 461
    .local v11, "c":I
    const/4 v15, 0x0

    #@f
    .line 462
    .local v15, "i":I
    const/16 v24, -0x1

    #@11
    .line 463
    .local v24, "n":I
    const/16 v29, -0x1

    #@13
    .line 464
    .local v29, "wst":I
    const/16 v27, -0x1

    #@15
    .line 465
    .local v27, "tzoffset":I
    const/16 v25, 0x0

    #@17
    .line 468
    .local v25, "prevc":I
    if-nez p0, :cond_1

    #@19
    .line 633
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1b
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1e
    throw v4

    #@1f
    .line 470
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@22
    move-result v18

    #@23
    .line 471
    .local v18, "limit":I
    :cond_2
    :goto_0
    move/from16 v0, v18

    #@25
    if-ge v15, v0, :cond_23

    #@27
    .line 472
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v11

    #@2d
    .line 473
    add-int/lit8 v15, v15, 0x1

    #@2f
    .line 474
    const/16 v4, 0x20

    #@31
    if-le v11, v4, :cond_2

    #@33
    const/16 v4, 0x2c

    #@35
    if-eq v11, v4, :cond_2

    #@37
    .line 476
    const/16 v4, 0x28

    #@39
    if-ne v11, v4, :cond_5

    #@3b
    .line 477
    const/4 v13, 0x1

    #@3c
    .line 478
    .local v13, "depth":I
    :cond_3
    :goto_1
    move/from16 v0, v18

    #@3e
    if-ge v15, v0, :cond_2

    #@40
    .line 479
    move-object/from16 v0, p0

    #@42
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v11

    #@46
    .line 480
    add-int/lit8 v15, v15, 0x1

    #@48
    .line 481
    const/16 v4, 0x28

    #@4a
    if-ne v11, v4, :cond_4

    #@4c
    add-int/lit8 v13, v13, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 482
    :cond_4
    const/16 v4, 0x29

    #@51
    if-ne v11, v4, :cond_3

    #@53
    .line 483
    add-int/lit8 v13, v13, -0x1

    #@55
    if-gtz v13, :cond_3

    #@57
    goto :goto_0

    #@58
    .line 488
    .end local v13    # "depth":I
    :cond_5
    const/16 v4, 0x30

    #@5a
    if-gt v4, v11, :cond_18

    #@5c
    const/16 v4, 0x39

    #@5e
    if-gt v11, v4, :cond_18

    #@60
    .line 489
    add-int/lit8 v24, v11, -0x30

    #@62
    .line 490
    :goto_2
    move/from16 v0, v18

    #@64
    if-ge v15, v0, :cond_6

    #@66
    move-object/from16 v0, p0

    #@68
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@6b
    move-result v11

    #@6c
    const/16 v4, 0x30

    #@6e
    if-gt v4, v11, :cond_6

    #@70
    const/16 v4, 0x39

    #@72
    if-gt v11, v4, :cond_6

    #@74
    .line 491
    mul-int/lit8 v4, v24, 0xa

    #@76
    add-int/lit8 v5, v11, -0x30

    #@78
    add-int v24, v4, v5

    #@7a
    .line 492
    add-int/lit8 v15, v15, 0x1

    #@7c
    goto :goto_2

    #@7d
    .line 494
    :cond_6
    const/16 v4, 0x2b

    #@7f
    move/from16 v0, v25

    #@81
    if-eq v0, v4, :cond_7

    #@83
    const/16 v4, 0x2d

    #@85
    move/from16 v0, v25

    #@87
    if-ne v0, v4, :cond_c

    #@89
    const/high16 v4, -0x80000000

    #@8b
    move/from16 v0, v30

    #@8d
    if-eq v0, v4, :cond_c

    #@8f
    .line 495
    :cond_7
    if-eqz v27, :cond_8

    #@91
    const/4 v4, -0x1

    #@92
    move/from16 v0, v27

    #@94
    if-ne v0, v4, :cond_0

    #@96
    .line 499
    :cond_8
    const/16 v4, 0x18

    #@98
    move/from16 v0, v24

    #@9a
    if-ge v0, v4, :cond_b

    #@9c
    .line 500
    mul-int/lit8 v24, v24, 0x3c

    #@9e
    .line 505
    const/16 v22, 0x0

    #@a0
    .line 506
    .local v22, "minutesPart":I
    move/from16 v0, v18

    #@a2
    if-ge v15, v0, :cond_9

    #@a4
    move-object/from16 v0, p0

    #@a6
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@a9
    move-result v4

    #@aa
    const/16 v5, 0x3a

    #@ac
    if-ne v4, v5, :cond_9

    #@ae
    .line 507
    add-int/lit8 v15, v15, 0x1

    #@b0
    .line 508
    :goto_3
    move/from16 v0, v18

    #@b2
    if-ge v15, v0, :cond_9

    #@b4
    move-object/from16 v0, p0

    #@b6
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@b9
    move-result v11

    #@ba
    const/16 v4, 0x30

    #@bc
    if-gt v4, v11, :cond_9

    #@be
    const/16 v4, 0x39

    #@c0
    if-gt v11, v4, :cond_9

    #@c2
    .line 509
    mul-int/lit8 v4, v22, 0xa

    #@c4
    add-int/lit8 v5, v11, -0x30

    #@c6
    add-int v22, v4, v5

    #@c8
    .line 510
    add-int/lit8 v15, v15, 0x1

    #@ca
    goto :goto_3

    #@cb
    .line 514
    :cond_9
    add-int v24, v24, v22

    #@cd
    .line 519
    .end local v22    # "minutesPart":I
    :goto_4
    const/16 v4, 0x2b

    #@cf
    move/from16 v0, v25

    #@d1
    if-ne v0, v4, :cond_a

    #@d3
    .line 520
    move/from16 v0, v24

    #@d5
    neg-int v0, v0

    #@d6
    move/from16 v24, v0

    #@d8
    .line 522
    :cond_a
    move/from16 v27, v24

    #@da
    .line 558
    :goto_5
    const/16 v25, 0x0

    #@dc
    goto/16 :goto_0

    #@de
    .line 516
    :cond_b
    rem-int/lit8 v4, v24, 0x64

    #@e0
    div-int/lit8 v5, v24, 0x64

    #@e2
    mul-int/lit8 v5, v5, 0x3c

    #@e4
    add-int v24, v4, v5

    #@e6
    goto :goto_4

    #@e7
    .line 523
    :cond_c
    const/16 v4, 0x46

    #@e9
    move/from16 v0, v24

    #@eb
    if-lt v0, v4, :cond_f

    #@ed
    .line 524
    const/high16 v4, -0x80000000

    #@ef
    move/from16 v0, v30

    #@f1
    if-ne v0, v4, :cond_0

    #@f3
    .line 526
    const/16 v4, 0x20

    #@f5
    if-le v11, v4, :cond_d

    #@f7
    const/16 v4, 0x2c

    #@f9
    if-ne v11, v4, :cond_e

    #@fb
    .line 528
    :cond_d
    :goto_6
    move/from16 v30, v24

    #@fd
    goto :goto_5

    #@fe
    .line 526
    :cond_e
    const/16 v4, 0x2f

    #@100
    if-eq v11, v4, :cond_d

    #@102
    move/from16 v0, v18

    #@104
    if-lt v15, v0, :cond_0

    #@106
    goto :goto_6

    #@107
    .line 531
    :cond_f
    const/16 v4, 0x3a

    #@109
    if-ne v11, v4, :cond_11

    #@10b
    .line 532
    if-gez v14, :cond_10

    #@10d
    .line 533
    move/from16 v0, v24

    #@10f
    int-to-byte v14, v0

    #@110
    goto :goto_5

    #@111
    .line 534
    :cond_10
    if-gez v21, :cond_0

    #@113
    .line 535
    move/from16 v0, v24

    #@115
    int-to-byte v0, v0

    #@116
    move/from16 v21, v0

    #@118
    goto :goto_5

    #@119
    .line 538
    :cond_11
    const/16 v4, 0x2f

    #@11b
    if-ne v11, v4, :cond_13

    #@11d
    .line 539
    if-gez v23, :cond_12

    #@11f
    .line 540
    add-int/lit8 v4, v24, -0x1

    #@121
    int-to-byte v0, v4

    #@122
    move/from16 v23, v0

    #@124
    goto :goto_5

    #@125
    .line 541
    :cond_12
    if-gez v19, :cond_0

    #@127
    .line 542
    move/from16 v0, v24

    #@129
    int-to-byte v0, v0

    #@12a
    move/from16 v19, v0

    #@12c
    goto :goto_5

    #@12d
    .line 545
    :cond_13
    move/from16 v0, v18

    #@12f
    if-ge v15, v0, :cond_14

    #@131
    const/16 v4, 0x2c

    #@133
    if-eq v11, v4, :cond_14

    #@135
    const/16 v4, 0x20

    #@137
    if-le v11, v4, :cond_14

    #@139
    const/16 v4, 0x2d

    #@13b
    if-ne v11, v4, :cond_0

    #@13d
    .line 547
    :cond_14
    if-ltz v14, :cond_15

    #@13f
    if-gez v21, :cond_15

    #@141
    .line 548
    move/from16 v0, v24

    #@143
    int-to-byte v0, v0

    #@144
    move/from16 v21, v0

    #@146
    goto :goto_5

    #@147
    .line 549
    :cond_15
    if-ltz v21, :cond_16

    #@149
    if-gez v26, :cond_16

    #@14b
    .line 550
    move/from16 v0, v24

    #@14d
    int-to-byte v0, v0

    #@14e
    move/from16 v26, v0

    #@150
    goto :goto_5

    #@151
    .line 551
    :cond_16
    if-gez v19, :cond_17

    #@153
    .line 552
    move/from16 v0, v24

    #@155
    int-to-byte v0, v0

    #@156
    move/from16 v19, v0

    #@158
    goto :goto_5

    #@159
    .line 554
    :cond_17
    const/high16 v4, -0x80000000

    #@15b
    move/from16 v0, v30

    #@15d
    if-ne v0, v4, :cond_0

    #@15f
    if-ltz v23, :cond_0

    #@161
    if-ltz v19, :cond_0

    #@163
    .line 555
    move/from16 v30, v24

    #@165
    goto/16 :goto_5

    #@167
    .line 559
    :cond_18
    const/16 v4, 0x2f

    #@169
    if-eq v11, v4, :cond_19

    #@16b
    const/16 v4, 0x3a

    #@16d
    if-ne v11, v4, :cond_1a

    #@16f
    .line 560
    :cond_19
    move/from16 v25, v11

    #@171
    goto/16 :goto_0

    #@173
    .line 559
    :cond_1a
    const/16 v4, 0x2b

    #@175
    if-eq v11, v4, :cond_19

    #@177
    const/16 v4, 0x2d

    #@179
    if-eq v11, v4, :cond_19

    #@17b
    .line 562
    add-int/lit8 v8, v15, -0x1

    #@17d
    .line 563
    .local v8, "st":I
    :goto_7
    move/from16 v0, v18

    #@17f
    if-ge v15, v0, :cond_1c

    #@181
    .line 564
    move-object/from16 v0, p0

    #@183
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@186
    move-result v11

    #@187
    .line 565
    const/16 v4, 0x41

    #@189
    if-gt v4, v11, :cond_1b

    #@18b
    const/16 v4, 0x5a

    #@18d
    if-le v11, v4, :cond_1f

    #@18f
    :cond_1b
    const/16 v4, 0x61

    #@191
    if-gt v4, v11, :cond_1c

    #@193
    const/16 v4, 0x7a

    #@195
    if-le v11, v4, :cond_1f

    #@197
    .line 569
    :cond_1c
    add-int/lit8 v4, v8, 0x1

    #@199
    if-le v15, v4, :cond_0

    #@19b
    .line 572
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    #@19d
    array-length v0, v4

    #@19e
    move/from16 v16, v0

    #@1a0
    .local v16, "k":I
    :cond_1d
    add-int/lit8 v16, v16, -0x1

    #@1a2
    if-ltz v16, :cond_1e

    #@1a4
    .line 573
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    #@1a6
    aget-object v4, v4, v16

    #@1a8
    sub-int v9, v15, v8

    #@1aa
    const/4 v5, 0x1

    #@1ab
    const/4 v6, 0x0

    #@1ac
    move-object/from16 v7, p0

    #@1ae
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@1b1
    move-result v4

    #@1b2
    if-eqz v4, :cond_1d

    #@1b4
    .line 574
    sget-object v4, Ljava/util/Date;->ttb:[I

    #@1b6
    aget v10, v4, v16

    #@1b8
    .line 575
    .local v10, "action":I
    if-eqz v10, :cond_1e

    #@1ba
    .line 576
    const/4 v4, 0x1

    #@1bb
    if-ne v10, v4, :cond_20

    #@1bd
    .line 577
    const/16 v4, 0xc

    #@1bf
    if-gt v14, v4, :cond_0

    #@1c1
    const/4 v4, 0x1

    #@1c2
    if-lt v14, v4, :cond_0

    #@1c4
    .line 579
    const/16 v4, 0xc

    #@1c6
    if-ge v14, v4, :cond_1e

    #@1c8
    .line 580
    add-int/lit8 v14, v14, 0xc

    #@1ca
    .line 597
    .end local v10    # "action":I
    :cond_1e
    :goto_8
    if-ltz v16, :cond_0

    #@1cc
    .line 599
    const/16 v25, 0x0

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 567
    .end local v16    # "k":I
    :cond_1f
    add-int/lit8 v15, v15, 0x1

    #@1d2
    goto :goto_7

    #@1d3
    .line 581
    .restart local v10    # "action":I
    .restart local v16    # "k":I
    :cond_20
    const/16 v4, 0xe

    #@1d5
    if-ne v10, v4, :cond_21

    #@1d7
    .line 582
    const/16 v4, 0xc

    #@1d9
    if-gt v14, v4, :cond_0

    #@1db
    const/4 v4, 0x1

    #@1dc
    if-lt v14, v4, :cond_0

    #@1de
    .line 584
    const/16 v4, 0xc

    #@1e0
    if-ne v14, v4, :cond_1e

    #@1e2
    .line 585
    const/4 v14, 0x0

    #@1e3
    goto :goto_8

    #@1e4
    .line 586
    :cond_21
    const/16 v4, 0xd

    #@1e6
    if-gt v10, v4, :cond_22

    #@1e8
    .line 587
    if-gez v23, :cond_0

    #@1ea
    .line 588
    add-int/lit8 v4, v10, -0x2

    #@1ec
    int-to-byte v0, v4

    #@1ed
    move/from16 v23, v0

    #@1ef
    goto :goto_8

    #@1f0
    .line 592
    :cond_22
    add-int/lit16 v0, v10, -0x2710

    #@1f2
    move/from16 v27, v0

    #@1f4
    goto :goto_8

    #@1f5
    .line 602
    .end local v8    # "st":I
    .end local v10    # "action":I
    .end local v16    # "k":I
    :cond_23
    const/high16 v4, -0x80000000

    #@1f7
    move/from16 v0, v30

    #@1f9
    if-eq v0, v4, :cond_0

    #@1fb
    if-ltz v23, :cond_0

    #@1fd
    if-ltz v19, :cond_0

    #@1ff
    .line 605
    const/16 v4, 0x64

    #@201
    move/from16 v0, v30

    #@203
    if-ge v0, v4, :cond_25

    #@205
    .line 606
    const-class v5, Ljava/util/Date;

    #@207
    monitor-enter v5

    #@208
    .line 607
    :try_start_0
    sget v4, Ljava/util/Date;->defaultCenturyStart:I

    #@20a
    if-nez v4, :cond_24

    #@20c
    .line 608
    sget-object v4, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    #@20e
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar;->getCalendarDate()Lsun/util/calendar/CalendarDate;

    #@211
    move-result-object v4

    #@212
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@215
    move-result v4

    #@216
    add-int/lit8 v4, v4, -0x50

    #@218
    sput v4, Ljava/util/Date;->defaultCenturyStart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21a
    :cond_24
    monitor-exit v5

    #@21b
    .line 611
    sget v4, Ljava/util/Date;->defaultCenturyStart:I

    #@21d
    div-int/lit8 v4, v4, 0x64

    #@21f
    mul-int/lit8 v4, v4, 0x64

    #@221
    add-int v30, v30, v4

    #@223
    .line 612
    sget v4, Ljava/util/Date;->defaultCenturyStart:I

    #@225
    move/from16 v0, v30

    #@227
    if-ge v0, v4, :cond_25

    #@229
    add-int/lit8 v30, v30, 0x64

    #@22b
    .line 614
    :cond_25
    if-gez v26, :cond_26

    #@22d
    .line 615
    const/16 v26, 0x0

    #@22f
    .line 616
    :cond_26
    if-gez v21, :cond_27

    #@231
    .line 617
    const/16 v21, 0x0

    #@233
    .line 618
    :cond_27
    if-gez v14, :cond_28

    #@235
    .line 619
    const/4 v14, 0x0

    #@236
    .line 620
    :cond_28
    invoke-static/range {v30 .. v30}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    #@239
    move-result-object v12

    #@23a
    .line 621
    .local v12, "cal":Lsun/util/calendar/BaseCalendar;
    const/4 v4, -0x1

    #@23b
    move/from16 v0, v27

    #@23d
    if-ne v0, v4, :cond_29

    #@23f
    .line 622
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@242
    move-result-object v4

    #@243
    invoke-virtual {v12, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@246
    move-result-object v17

    #@247
    check-cast v17, Lsun/util/calendar/BaseCalendar$Date;

    #@249
    .line 623
    .local v17, "ldate":Lsun/util/calendar/BaseCalendar$Date;
    add-int/lit8 v4, v23, 0x1

    #@24b
    move-object/from16 v0, v17

    #@24d
    move/from16 v1, v30

    #@24f
    move/from16 v2, v19

    #@251
    invoke-virtual {v0, v1, v4, v2}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    #@254
    .line 624
    const/4 v4, 0x0

    #@255
    move-object/from16 v0, v17

    #@257
    move/from16 v1, v21

    #@259
    move/from16 v2, v26

    #@25b
    invoke-virtual {v0, v14, v1, v2, v4}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    #@25e
    .line 625
    move-object/from16 v0, v17

    #@260
    invoke-virtual {v12, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@263
    move-result-wide v4

    #@264
    return-wide v4

    #@265
    .line 606
    .end local v12    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v17    # "ldate":Lsun/util/calendar/BaseCalendar$Date;
    :catchall_0
    move-exception v4

    #@266
    monitor-exit v5

    #@267
    throw v4

    #@268
    .line 627
    .restart local v12    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_29
    const/4 v4, 0x0

    #@269
    invoke-virtual {v12, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@26c
    move-result-object v28

    #@26d
    check-cast v28, Lsun/util/calendar/BaseCalendar$Date;

    #@26f
    .line 628
    .local v28, "udate":Lsun/util/calendar/BaseCalendar$Date;
    add-int/lit8 v4, v23, 0x1

    #@271
    move-object/from16 v0, v28

    #@273
    move/from16 v1, v30

    #@275
    move/from16 v2, v19

    #@277
    invoke-virtual {v0, v1, v4, v2}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    #@27a
    .line 629
    const/4 v4, 0x0

    #@27b
    move-object/from16 v0, v28

    #@27d
    move/from16 v1, v21

    #@27f
    move/from16 v2, v26

    #@281
    invoke-virtual {v0, v14, v1, v2, v4}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    #@284
    .line 630
    move-object/from16 v0, v28

    #@286
    invoke-virtual {v12, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@289
    move-result-wide v4

    #@28a
    const v6, 0xea60

    #@28d
    mul-int v6, v6, v27

    #@28f
    int-to-long v6, v6

    #@290
    add-long/2addr v4, v6

    #@291
    return-wide v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1343
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Ljava/util/Date;->fastTime:J

    #@6
    .line 1341
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1334
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    #@7
    .line 1332
    return-void
.end method


# virtual methods
.method public after(Ljava/util/Date;)Z
    .locals 4
    .param p1, "when"    # Ljava/util/Date;

    #@0
    .prologue
    .line 947
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    #@7
    move-result-wide v2

    #@8
    cmp-long v0, v0, v2

    #@a
    if-lez v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public before(Ljava/util/Date;)Z
    .locals 4
    .param p1, "when"    # Ljava/util/Date;

    #@0
    .prologue
    .line 933
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    #@7
    move-result-wide v2

    #@8
    cmp-long v0, v0, v2

    #@a
    if-gez v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 279
    const/4 v1, 0x0

    #@1
    .line 281
    .local v1, "d":Ljava/util/Date;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    move-object v0, v3

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    move-object v1, v0

    #@9
    .line 282
    .local v1, "d":Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 283
    iget-object v3, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@f
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    #@15
    iput-object v3, v1, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 286
    .end local v1    # "d":Ljava/util/Date;
    :cond_0
    :goto_0
    return-object v1

    #@18
    .line 285
    :catch_0
    move-exception v2

    #@19
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherDate"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 992
    check-cast p1, Ljava/util/Date;

    #@2
    .end local p1    # "anotherDate":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/util/Date;)I
    .locals 5
    .param p1, "anotherDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 993
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    #@3
    move-result-wide v2

    #@4
    .line 994
    .local v2, "thisTime":J
    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    #@7
    move-result-wide v0

    #@8
    .line 995
    .local v0, "anotherTime":J
    cmp-long v4, v2, v0

    #@a
    if-gez v4, :cond_0

    #@c
    const/4 v4, -0x1

    #@d
    :goto_0
    return v4

    #@e
    :cond_0
    cmp-long v4, v2, v0

    #@10
    if-nez v4, :cond_1

    #@12
    const/4 v4, 0x0

    #@13
    goto :goto_0

    #@14
    :cond_1
    const/4 v4, 0x1

    #@15
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 966
    instance-of v1, p1, Ljava/util/Date;

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@8
    move-result-wide v2

    #@9
    check-cast p1, Ljava/util/Date;

    #@b
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@e
    move-result-wide v4

    #@f
    cmp-long v1, v2, v4

    #@11
    if-nez v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    return v0
.end method

.method public getDate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 752
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getDay()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 791
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    return v0
.end method

.method public getHours()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 808
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getMinutes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 840
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getMonth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 703
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    return v0
.end method

.method public getSeconds()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 873
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 901
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getTimezoneOffset()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1185
    iget-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1186
    new-instance v0, Ljava/util/GregorianCalendar;

    #@6
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    #@8
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@b
    .line 1187
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v2, 0xf

    #@d
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    #@10
    move-result v2

    #@11
    const/16 v3, 0x10

    #@13
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    #@16
    move-result v3

    #@17
    add-int v1, v2, v3

    #@19
    .line 1192
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    .local v1, "zoneOffset":I
    :goto_0
    neg-int v2, v1

    #@1a
    const v3, 0xea60

    #@1d
    div-int/2addr v2, v3

    #@1e
    return v2

    #@1f
    .line 1189
    .end local v1    # "zoneOffset":I
    :cond_0
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    #@22
    .line 1190
    iget-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@24
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getZoneOffset()I

    #@27
    move-result v1

    #@28
    .restart local v1    # "zoneOffset":I
    goto :goto_0
.end method

.method public getYear()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 667
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    #@7
    move-result v0

    #@8
    add-int/lit16 v0, v0, -0x76c

    #@a
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 1009
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    .line 1010
    .local v0, "ht":J
    long-to-int v2, v0

    #@5
    const/16 v3, 0x20

    #@7
    shr-long v4, v0, v3

    #@9
    long-to-int v3, v4

    #@a
    xor-int/2addr v2, v3

    #@b
    return v2
.end method

.method public setDate(I)V
    .locals 1
    .param p1, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 772
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@7
    .line 771
    return-void
.end method

.method public setHours(I)V
    .locals 1
    .param p1, "hours"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 825
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setHours(I)Lsun/util/calendar/CalendarDate;

    #@7
    .line 824
    return-void
.end method

.method public setMinutes(I)V
    .locals 1
    .param p1, "minutes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 857
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    #@7
    .line 856
    return-void
.end method

.method public setMonth(I)V
    .locals 3
    .param p1, "month"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v2, 0xc

    #@2
    .line 722
    const/4 v1, 0x0

    #@3
    .line 723
    .local v1, "y":I
    if-lt p1, v2, :cond_2

    #@5
    .line 724
    div-int/lit8 v1, p1, 0xc

    #@7
    .line 725
    rem-int/lit8 p1, p1, 0xc

    #@9
    .line 730
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    #@c
    move-result-object v0

    #@d
    .line 731
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    if-eqz v1, :cond_1

    #@f
    .line 732
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@12
    move-result v2

    #@13
    add-int/2addr v2, v1

    #@14
    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    #@17
    .line 734
    :cond_1
    add-int/lit8 v2, p1, 0x1

    #@19
    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    #@1c
    .line 721
    return-void

    #@1d
    .line 726
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_2
    if-gez p1, :cond_0

    #@1f
    .line 727
    invoke-static {p1, v2}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    #@22
    move-result v1

    #@23
    .line 728
    invoke-static {p1, v2}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    #@26
    move-result p1

    #@27
    goto :goto_0
.end method

.method public setSeconds(I)V
    .locals 1
    .param p1, "seconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 890
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    #@7
    .line 889
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 918
    iput-wide p1, p0, Ljava/util/Date;->fastTime:J

    #@2
    .line 919
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@5
    .line 917
    return-void
.end method

.method public setYear(I)V
    .locals 2
    .param p1, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 687
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    #@3
    move-result-object v0

    #@4
    add-int/lit16 v1, p1, 0x76c

    #@6
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    #@9
    .line 686
    return-void
.end method

.method public toGMTString()Ljava/lang/String;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x3a

    #@2
    const/4 v9, 0x2

    #@3
    const/16 v8, 0x20

    #@5
    .line 1135
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@8
    move-result-wide v4

    #@9
    .line 1136
    .local v4, "t":J
    invoke-static {v4, v5}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    #@c
    move-result-object v0

    #@d
    .line 1138
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@10
    move-result-wide v6

    #@11
    const/4 v3, 0x0

    #@12
    check-cast v3, Ljava/util/TimeZone;

    #@14
    invoke-virtual {v0, v6, v7, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    #@1a
    .line 1139
    .local v1, "date":Lsun/util/calendar/BaseCalendar$Date;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1f
    .line 1140
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@22
    move-result v3

    #@23
    const/4 v6, 0x1

    #@24
    invoke-static {v2, v3, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 1141
    sget-object v3, Ljava/util/Date;->wtb:[Ljava/lang/String;

    #@2d
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@30
    move-result v6

    #@31
    add-int/lit8 v6, v6, -0x1

    #@33
    add-int/lit8 v6, v6, 0x2

    #@35
    add-int/lit8 v6, v6, 0x7

    #@37
    aget-object v3, v3, v6

    #@39
    invoke-static {v2, v3}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 1142
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    #@43
    move-result v3

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b
    .line 1143
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    #@4e
    move-result v3

    #@4f
    invoke-static {v2, v3, v9}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 1144
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    #@59
    move-result v3

    #@5a
    invoke-static {v2, v3, v9}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@61
    .line 1145
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    #@64
    move-result v3

    #@65
    invoke-static {v2, v3, v9}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@68
    .line 1146
    const-string/jumbo v3, " GMT"

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    .line 1147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    return-object v3
.end method

.method public toLocaleString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1097
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    .line 1098
    .local v0, "formatter":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x3a

    #@2
    const/4 v6, 0x2

    #@3
    const/16 v7, 0x20

    #@5
    .line 1045
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    #@8
    move-result-object v0

    #@9
    .line 1046
    .local v0, "date":Lsun/util/calendar/BaseCalendar$Date;
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    const/16 v4, 0x1c

    #@d
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    .line 1047
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    #@13
    move-result v1

    #@14
    .line 1048
    .local v1, "index":I
    const/4 v4, 0x1

    #@15
    if-ne v1, v4, :cond_0

    #@17
    .line 1049
    const/16 v1, 0x8

    #@19
    .line 1051
    :cond_0
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    #@1b
    aget-object v4, v4, v1

    #@1d
    invoke-static {v2, v4}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 1052
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    #@26
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@29
    move-result v5

    #@2a
    add-int/lit8 v5, v5, -0x1

    #@2c
    add-int/lit8 v5, v5, 0x2

    #@2e
    add-int/lit8 v5, v5, 0x7

    #@30
    aget-object v4, v4, v5

    #@32
    invoke-static {v2, v4}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 1053
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@3c
    move-result v4

    #@3d
    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    .line 1055
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    #@47
    move-result v4

    #@48
    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    .line 1056
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    #@52
    move-result v4

    #@53
    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    .line 1057
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    #@5d
    move-result v4

    #@5e
    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    .line 1058
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    #@68
    move-result-object v3

    #@69
    .line 1059
    .local v3, "zi":Ljava/util/TimeZone;
    if-eqz v3, :cond_1

    #@6b
    .line 1060
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isDaylightTime()Z

    #@6e
    move-result v4

    #@6f
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@71
    const/4 v6, 0x0

    #@72
    invoke-virtual {v3, v4, v6, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 1064
    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    #@80
    move-result v5

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    .line 1065
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    return-object v4

    #@89
    .line 1062
    :cond_1
    const-string/jumbo v4, "GMT"

    #@8c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    goto :goto_0
.end method

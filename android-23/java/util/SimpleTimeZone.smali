.class public Ljava/util/SimpleTimeZone;
.super Ljava/util/TimeZone;
.source "SimpleTimeZone.java"


# static fields
.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x598a29f2ea10a5aL


# instance fields
.field private dstSavings:I

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private rawOffset:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startYear:I

.field private useDaylight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 830
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@4
    .line 831
    new-instance v1, Ljava/io/ObjectStreamField;

    #@6
    const-string/jumbo v2, "dstSavings"

    #@9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@b
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 832
    new-instance v1, Ljava/io/ObjectStreamField;

    #@13
    const-string/jumbo v2, "endDay"

    #@16
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@18
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 833
    new-instance v1, Ljava/io/ObjectStreamField;

    #@20
    const-string/jumbo v2, "endDayOfWeek"

    #@23
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@25
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@28
    const/4 v2, 0x2

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 834
    new-instance v1, Ljava/io/ObjectStreamField;

    #@2d
    const-string/jumbo v2, "endMode"

    #@30
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@32
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@35
    const/4 v2, 0x3

    #@36
    aput-object v1, v0, v2

    #@38
    .line 835
    new-instance v1, Ljava/io/ObjectStreamField;

    #@3a
    const-string/jumbo v2, "endMonth"

    #@3d
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@42
    const/4 v2, 0x4

    #@43
    aput-object v1, v0, v2

    #@45
    .line 836
    new-instance v1, Ljava/io/ObjectStreamField;

    #@47
    const-string/jumbo v2, "endTime"

    #@4a
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@4c
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@4f
    const/4 v2, 0x5

    #@50
    aput-object v1, v0, v2

    #@52
    .line 837
    new-instance v1, Ljava/io/ObjectStreamField;

    #@54
    const-string/jumbo v2, "monthLength"

    #@57
    const-class v3, [B

    #@59
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@5c
    const/4 v2, 0x6

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 838
    new-instance v1, Ljava/io/ObjectStreamField;

    #@61
    const-string/jumbo v2, "rawOffset"

    #@64
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@66
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@69
    const/4 v2, 0x7

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 839
    new-instance v1, Ljava/io/ObjectStreamField;

    #@6e
    const-string/jumbo v2, "serialVersionOnStream"

    #@71
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@73
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@76
    const/16 v2, 0x8

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 840
    new-instance v1, Ljava/io/ObjectStreamField;

    #@7c
    const-string/jumbo v2, "startDay"

    #@7f
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@81
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@84
    const/16 v2, 0x9

    #@86
    aput-object v1, v0, v2

    #@88
    .line 841
    new-instance v1, Ljava/io/ObjectStreamField;

    #@8a
    const-string/jumbo v2, "startDayOfWeek"

    #@8d
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@8f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@92
    const/16 v2, 0xa

    #@94
    aput-object v1, v0, v2

    #@96
    .line 842
    new-instance v1, Ljava/io/ObjectStreamField;

    #@98
    const-string/jumbo v2, "startMode"

    #@9b
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@9d
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@a0
    const/16 v2, 0xb

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 843
    new-instance v1, Ljava/io/ObjectStreamField;

    #@a6
    const-string/jumbo v2, "startMonth"

    #@a9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@ab
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ae
    const/16 v2, 0xc

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 844
    new-instance v1, Ljava/io/ObjectStreamField;

    #@b4
    const-string/jumbo v2, "startTime"

    #@b7
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@b9
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@bc
    const/16 v2, 0xd

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 845
    new-instance v1, Ljava/io/ObjectStreamField;

    #@c2
    const-string/jumbo v2, "startYear"

    #@c5
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@c7
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ca
    const/16 v2, 0xe

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 846
    new-instance v1, Ljava/io/ObjectStreamField;

    #@d0
    const-string/jumbo v2, "useDaylight"

    #@d3
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@d5
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d8
    const/16 v2, 0xf

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 830
    sput-object v0, Ljava/util/SimpleTimeZone;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@de
    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    #@3
    .line 75
    const v0, 0x36ee80

    #@6
    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@8
    .line 90
    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    #@b
    .line 91
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@d
    .line 89
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 12
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I

    #@0
    .prologue
    .line 167
    const v11, 0x36ee80

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move-object v2, p2

    #@6
    move v3, p3

    #@7
    move/from16 v4, p4

    #@9
    move/from16 v5, p5

    #@b
    move/from16 v6, p6

    #@d
    move/from16 v7, p7

    #@f
    move/from16 v8, p8

    #@11
    move/from16 v9, p9

    #@13
    move/from16 v10, p10

    #@15
    .line 166
    invoke-direct/range {v0 .. v11}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    #@18
    .line 165
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I
    .param p11, "daylightSavings"    # I

    #@0
    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@3
    .line 216
    if-gtz p11, :cond_0

    #@5
    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Invalid daylightSavings: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 219
    :cond_0
    iput p11, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@21
    .line 221
    iput p3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@23
    .line 222
    iput p4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@25
    .line 223
    iput p5, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@27
    .line 224
    iput p6, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@29
    .line 225
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    #@2c
    .line 226
    iput p7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@2e
    .line 227
    iput p8, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@30
    .line 228
    iput p9, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@32
    .line 229
    iput p10, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@34
    .line 230
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    #@37
    .line 214
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 13
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "startTimeMode"    # I
    .param p8, "endMonth"    # I
    .param p9, "endDay"    # I
    .param p10, "endDayOfWeek"    # I
    .param p11, "endTime"    # I
    .param p12, "endTimeMode"    # I
    .param p13, "daylightSavings"    # I

    #@0
    .prologue
    move-object v1, p0

    #@1
    move v2, p1

    #@2
    move-object v3, p2

    #@3
    move/from16 v4, p3

    #@5
    move/from16 v5, p4

    #@7
    move/from16 v6, p5

    #@9
    move/from16 v7, p6

    #@b
    move/from16 v8, p8

    #@d
    move/from16 v9, p9

    #@f
    move/from16 v10, p10

    #@11
    move/from16 v11, p11

    #@13
    move/from16 v12, p13

    #@15
    .line 284
    invoke-direct/range {v1 .. v12}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    #@18
    .line 286
    move/from16 v0, p7

    #@1a
    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@1c
    .line 287
    move/from16 v0, p12

    #@1e
    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@20
    .line 282
    return-void
.end method

.method private checkDay(II)V
    .locals 3
    .param p1, "month"    # I
    .param p2, "day"    # I

    #@0
    .prologue
    .line 568
    if-lez p2, :cond_0

    #@2
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    #@4
    aget-byte v0, v0, p1

    #@6
    if-le p2, v0, :cond_1

    #@8
    .line 569
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Invalid day of month: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 567
    :cond_1
    return-void
.end method

.method private checkRange(III)V
    .locals 3
    .param p1, "month"    # I
    .param p2, "dayOfWeek"    # I
    .param p3, "time"    # I

    #@0
    .prologue
    .line 556
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0xb

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid month: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 559
    :cond_1
    const/4 v0, 0x1

    #@21
    if-lt p2, v0, :cond_2

    #@23
    const/4 v0, 0x7

    #@24
    if-le p2, v0, :cond_3

    #@26
    .line 560
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Invalid day of week: "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 562
    :cond_3
    if-ltz p3, :cond_4

    #@42
    const v0, 0x5265c00

    #@45
    if-lt p3, v0, :cond_5

    #@47
    .line 563
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@49
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "Invalid time: "

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0

    #@61
    .line 555
    :cond_5
    return-void
.end method

.method private isLeapYear(I)Z
    .locals 3
    .param p1, "year"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 531
    const/16 v2, 0x62e

    #@4
    if-le p1, v2, :cond_2

    #@6
    .line 532
    rem-int/lit8 v2, p1, 0x4

    #@8
    if-nez v2, :cond_1

    #@a
    rem-int/lit8 v2, p1, 0x64

    #@c
    if-nez v2, :cond_0

    #@e
    rem-int/lit16 v2, p1, 0x190

    #@10
    if-nez v2, :cond_1

    #@12
    :cond_0
    :goto_0
    return v0

    #@13
    :cond_1
    move v0, v1

    #@14
    goto :goto_0

    #@15
    .line 534
    :cond_2
    rem-int/lit8 v2, p1, 0x4

    #@17
    if-nez v2, :cond_3

    #@19
    :goto_1
    return v0

    #@1a
    :cond_3
    move v0, v1

    #@1b
    goto :goto_1
.end method

.method private mod7(I)I
    .locals 1
    .param p1, "num1"    # I

    #@0
    .prologue
    .line 538
    rem-int/lit8 v0, p1, 0x7

    #@2
    .line 539
    .local v0, "rem":I
    if-gez p1, :cond_0

    #@4
    if-gez v0, :cond_0

    #@6
    add-int/lit8 v0, v0, 0x7

    #@8
    .end local v0    # "rem":I
    :cond_0
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 900
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@6
    move-result-object v0

    #@7
    .line 901
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v3, "rawOffset"

    #@a
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@d
    move-result v3

    #@e
    iput v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@10
    .line 902
    const-string/jumbo v3, "useDaylight"

    #@13
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@16
    move-result v3

    #@17
    iput-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@19
    .line 903
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 904
    const-string/jumbo v3, "endMonth"

    #@20
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@23
    move-result v3

    #@24
    iput v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@26
    .line 905
    const-string/jumbo v3, "endTime"

    #@29
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@2c
    move-result v3

    #@2d
    iput v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@2f
    .line 906
    const-string/jumbo v3, "startMonth"

    #@32
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@35
    move-result v3

    #@36
    iput v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@38
    .line 907
    const-string/jumbo v3, "startTime"

    #@3b
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@3e
    move-result v3

    #@3f
    iput v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@41
    .line 908
    const-string/jumbo v3, "startYear"

    #@44
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@47
    move-result v3

    #@48
    iput v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@4a
    .line 910
    :cond_0
    const-string/jumbo v3, "serialVersionOnStream"

    #@4d
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@50
    move-result v3

    #@51
    if-nez v3, :cond_2

    #@53
    .line 911
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@55
    if-eqz v3, :cond_1

    #@57
    .line 912
    iput v6, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@59
    iput v6, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@5b
    .line 913
    const-string/jumbo v3, "endDay"

    #@5e
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@61
    move-result v3

    #@62
    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@64
    .line 914
    const-string/jumbo v3, "endDayOfWeek"

    #@67
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@6a
    move-result v3

    #@6b
    add-int/lit8 v3, v3, -0x1

    #@6d
    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@6f
    .line 915
    const-string/jumbo v3, "startDay"

    #@72
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@75
    move-result v3

    #@76
    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@78
    .line 916
    const-string/jumbo v3, "startDayOfWeek"

    #@7b
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@7e
    move-result v3

    #@7f
    add-int/lit8 v3, v3, -0x1

    #@81
    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@83
    .line 899
    :cond_1
    :goto_0
    return-void

    #@84
    .line 919
    :cond_2
    const-string/jumbo v3, "dstSavings"

    #@87
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@8a
    move-result v3

    #@8b
    iput v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@8d
    .line 920
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@8f
    if-eqz v3, :cond_1

    #@91
    .line 921
    const-string/jumbo v3, "endMode"

    #@94
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@97
    move-result v3

    #@98
    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@9a
    .line 922
    const-string/jumbo v3, "startMode"

    #@9d
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@a0
    move-result v3

    #@a1
    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@a3
    .line 923
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@a6
    move-result v1

    #@a7
    .line 924
    .local v1, "length":I
    new-array v2, v1, [B

    #@a9
    .line 925
    .local v2, "values":[B
    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    #@ac
    .line 926
    const/4 v3, 0x4

    #@ad
    if-lt v1, v3, :cond_1

    #@af
    .line 927
    aget-byte v3, v2, v4

    #@b1
    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@b3
    .line 928
    aget-byte v3, v2, v5

    #@b5
    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@b7
    .line 929
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@b9
    if-eq v3, v5, :cond_3

    #@bb
    .line 930
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@bd
    add-int/lit8 v3, v3, -0x1

    #@bf
    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@c1
    .line 932
    :cond_3
    aget-byte v3, v2, v6

    #@c3
    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@c5
    .line 933
    const/4 v3, 0x3

    #@c6
    aget-byte v3, v2, v3

    #@c8
    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@ca
    .line 934
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@cc
    if-eq v3, v5, :cond_1

    #@ce
    .line 935
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@d0
    add-int/lit8 v3, v3, -0x1

    #@d2
    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@d4
    goto :goto_0
.end method

.method private setEndMode()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 574
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@5
    if-nez v2, :cond_3

    #@7
    .line 575
    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@9
    .line 587
    :goto_0
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@b
    if-eqz v2, :cond_0

    #@d
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@f
    if-eqz v2, :cond_0

    #@11
    move v0, v1

    #@12
    :cond_0
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@14
    .line 588
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 589
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@1a
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@1c
    if-ne v0, v1, :cond_6

    #@1e
    move v0, v1

    #@1f
    .line 590
    :goto_1
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@21
    .line 589
    invoke-direct {p0, v2, v0, v3}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    #@24
    .line 591
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@26
    if-eq v0, v4, :cond_7

    #@28
    .line 592
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@2a
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@2c
    invoke-direct {p0, v0, v2}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    #@2f
    .line 599
    :cond_1
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@31
    if-eq v0, v1, :cond_2

    #@33
    .line 600
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@35
    add-int/lit8 v0, v0, -0x1

    #@37
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@39
    .line 573
    :cond_2
    return-void

    #@3a
    .line 576
    :cond_3
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@3c
    if-gez v2, :cond_5

    #@3e
    .line 577
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@40
    neg-int v2, v2

    #@41
    iput v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@43
    .line 578
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@45
    if-gez v2, :cond_4

    #@47
    .line 579
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@49
    neg-int v2, v2

    #@4a
    iput v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@4c
    .line 580
    const/4 v2, 0x4

    #@4d
    iput v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@4f
    goto :goto_0

    #@50
    .line 582
    :cond_4
    const/4 v2, 0x3

    #@51
    iput v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@53
    goto :goto_0

    #@54
    .line 585
    :cond_5
    iput v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@56
    goto :goto_0

    #@57
    .line 589
    :cond_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@59
    goto :goto_1

    #@5a
    .line 594
    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@5c
    const/4 v2, -0x5

    #@5d
    if-lt v0, v2, :cond_8

    #@5f
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@61
    const/4 v2, 0x5

    #@62
    if-le v0, v2, :cond_1

    #@64
    .line 595
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@66
    new-instance v1, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v2, "Day of week in month: "

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v0
.end method

.method private setStartMode()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 683
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@5
    if-nez v2, :cond_3

    #@7
    .line 684
    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@9
    .line 696
    :goto_0
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@b
    if-eqz v2, :cond_0

    #@d
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@f
    if-eqz v2, :cond_0

    #@11
    move v0, v1

    #@12
    :cond_0
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@14
    .line 697
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 698
    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@1a
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@1c
    if-ne v0, v1, :cond_6

    #@1e
    move v0, v1

    #@1f
    .line 699
    :goto_1
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@21
    .line 698
    invoke-direct {p0, v2, v0, v3}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    #@24
    .line 700
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@26
    if-eq v0, v4, :cond_7

    #@28
    .line 701
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@2a
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@2c
    invoke-direct {p0, v0, v2}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    #@2f
    .line 708
    :cond_1
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@31
    if-eq v0, v1, :cond_2

    #@33
    .line 709
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@35
    add-int/lit8 v0, v0, -0x1

    #@37
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@39
    .line 682
    :cond_2
    return-void

    #@3a
    .line 685
    :cond_3
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@3c
    if-gez v2, :cond_5

    #@3e
    .line 686
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@40
    neg-int v2, v2

    #@41
    iput v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@43
    .line 687
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@45
    if-gez v2, :cond_4

    #@47
    .line 688
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@49
    neg-int v2, v2

    #@4a
    iput v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@4c
    .line 689
    const/4 v2, 0x4

    #@4d
    iput v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@4f
    goto :goto_0

    #@50
    .line 691
    :cond_4
    const/4 v2, 0x3

    #@51
    iput v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@53
    goto :goto_0

    #@54
    .line 694
    :cond_5
    iput v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@56
    goto :goto_0

    #@57
    .line 698
    :cond_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@59
    goto :goto_1

    #@5a
    .line 703
    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@5c
    const/4 v2, -0x5

    #@5d
    if-lt v0, v2, :cond_8

    #@5f
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@61
    const/4 v2, 0x5

    #@62
    if-le v0, v2, :cond_1

    #@64
    .line 704
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@66
    new-instance v1, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v2, "Day of week in month: "

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 13
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x5

    #@1
    const/4 v12, 0x4

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v11, 0x1

    #@4
    const/4 v10, 0x2

    #@5
    .line 850
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@7
    .local v2, "sEndDay":I
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@9
    add-int/lit8 v3, v7, 0x1

    #@b
    .local v3, "sEndDayOfWeek":I
    iget v4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@d
    .local v4, "sStartDay":I
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@f
    add-int/lit8 v5, v7, 0x1

    #@11
    .line 851
    .local v5, "sStartDayOfWeek":I
    iget-boolean v7, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@13
    if-eqz v7, :cond_2

    #@15
    .line 852
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@17
    if-ne v7, v10, :cond_0

    #@19
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@1b
    if-eq v7, v10, :cond_2

    #@1d
    .line 853
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    #@1f
    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    #@22
    .line 854
    .local v0, "cal":Ljava/util/Calendar;
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@24
    if-eq v7, v10, :cond_1

    #@26
    .line 855
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@28
    invoke-virtual {v0, v10, v7}, Ljava/util/Calendar;->set(II)V

    #@2b
    .line 856
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@2d
    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    #@30
    .line 857
    const/16 v7, 0x8

    #@32
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    #@35
    move-result v2

    #@36
    .line 858
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@38
    if-ne v7, v11, :cond_1

    #@3a
    .line 859
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@3d
    move-result v3

    #@3e
    .line 862
    :cond_1
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@40
    if-eq v7, v10, :cond_2

    #@42
    .line 863
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@44
    invoke-virtual {v0, v10, v7}, Ljava/util/Calendar;->set(II)V

    #@47
    .line 864
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@49
    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    #@4c
    .line 865
    const/16 v7, 0x8

    #@4e
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    #@51
    move-result v4

    #@52
    .line 866
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@54
    if-ne v7, v11, :cond_2

    #@56
    .line 867
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@59
    move-result v5

    #@5a
    .line 871
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@5d
    move-result-object v1

    #@5e
    .line 872
    .local v1, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v7, "dstSavings"

    #@61
    iget v9, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@63
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@66
    .line 873
    const-string/jumbo v7, "endDay"

    #@69
    invoke-virtual {v1, v7, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@6c
    .line 874
    const-string/jumbo v7, "endDayOfWeek"

    #@6f
    invoke-virtual {v1, v7, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@72
    .line 875
    const-string/jumbo v7, "endMode"

    #@75
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@77
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@7a
    .line 876
    const-string/jumbo v7, "endMonth"

    #@7d
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@7f
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@82
    .line 877
    const-string/jumbo v7, "endTime"

    #@85
    iget v9, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@87
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@8a
    .line 878
    const-string/jumbo v7, "monthLength"

    #@8d
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    #@8f
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@92
    .line 879
    const-string/jumbo v7, "rawOffset"

    #@95
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@97
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@9a
    .line 880
    const-string/jumbo v7, "serialVersionOnStream"

    #@9d
    invoke-virtual {v1, v7, v11}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@a0
    .line 881
    const-string/jumbo v7, "startDay"

    #@a3
    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@a6
    .line 882
    const-string/jumbo v7, "startDayOfWeek"

    #@a9
    invoke-virtual {v1, v7, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@ac
    .line 883
    const-string/jumbo v7, "startMode"

    #@af
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@b1
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@b4
    .line 884
    const-string/jumbo v7, "startMonth"

    #@b7
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@b9
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@bc
    .line 885
    const-string/jumbo v7, "startTime"

    #@bf
    iget v9, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@c1
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@c4
    .line 886
    const-string/jumbo v7, "startYear"

    #@c7
    iget v9, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@c9
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@cc
    .line 887
    const-string/jumbo v7, "useDaylight"

    #@cf
    iget-boolean v9, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@d1
    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@d4
    .line 888
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@d7
    .line 889
    invoke-virtual {p1, v12}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@da
    .line 890
    new-array v6, v12, [B

    #@dc
    .line 891
    .local v6, "values":[B
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@de
    int-to-byte v7, v7

    #@df
    aput-byte v7, v6, v8

    #@e1
    .line 892
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@e3
    if-ne v7, v11, :cond_3

    #@e5
    move v7, v8

    #@e6
    :goto_0
    int-to-byte v7, v7

    #@e7
    aput-byte v7, v6, v11

    #@e9
    .line 893
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@eb
    int-to-byte v7, v7

    #@ec
    aput-byte v7, v6, v10

    #@ee
    .line 894
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@f0
    if-ne v7, v11, :cond_4

    #@f2
    :goto_1
    int-to-byte v7, v8

    #@f3
    const/4 v8, 0x3

    #@f4
    aput-byte v7, v6, v8

    #@f6
    .line 895
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->write([B)V

    #@f9
    .line 849
    return-void

    #@fa
    .line 892
    :cond_3
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@fc
    add-int/lit8 v7, v7, 0x1

    #@fe
    goto :goto_0

    #@ff
    .line 894
    :cond_4
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@101
    add-int/lit8 v8, v7, 0x1

    #@103
    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 299
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/SimpleTimeZone;

    #@6
    .line 300
    .local v0, "zone":Ljava/util/SimpleTimeZone;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 316
    instance-of v3, p1, Ljava/util/SimpleTimeZone;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 317
    return v2

    #@7
    :cond_0
    move-object v0, p1

    #@8
    .line 319
    check-cast v0, Ljava/util/SimpleTimeZone;

    #@a
    .line 320
    .local v0, "tz":Ljava/util/SimpleTimeZone;
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_4

    #@18
    .line 321
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@1a
    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@1c
    if-ne v3, v4, :cond_4

    #@1e
    .line 322
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@20
    iget-boolean v4, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@22
    if-ne v3, v4, :cond_4

    #@24
    .line 323
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@26
    if-eqz v3, :cond_1

    #@28
    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@2a
    iget v4, v0, Ljava/util/SimpleTimeZone;->startYear:I

    #@2c
    if-ne v3, v4, :cond_3

    #@2e
    .line 324
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@30
    iget v4, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@32
    if-ne v3, v4, :cond_3

    #@34
    .line 325
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@36
    iget v4, v0, Ljava/util/SimpleTimeZone;->startDay:I

    #@38
    if-ne v3, v4, :cond_3

    #@3a
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@3c
    iget v4, v0, Ljava/util/SimpleTimeZone;->startMode:I

    #@3e
    if-ne v3, v4, :cond_3

    #@40
    .line 326
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@42
    iget v4, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@44
    if-ne v3, v4, :cond_3

    #@46
    .line 327
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@48
    iget v4, v0, Ljava/util/SimpleTimeZone;->startTime:I

    #@4a
    if-ne v3, v4, :cond_3

    #@4c
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@4e
    iget v4, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@50
    if-ne v3, v4, :cond_3

    #@52
    .line 328
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@54
    iget v4, v0, Ljava/util/SimpleTimeZone;->endDay:I

    #@56
    if-ne v3, v4, :cond_3

    #@58
    .line 329
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@5a
    iget v4, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@5c
    if-ne v3, v4, :cond_3

    #@5e
    .line 330
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@60
    iget v4, v0, Ljava/util/SimpleTimeZone;->endTime:I

    #@62
    if-ne v3, v4, :cond_3

    #@64
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@66
    iget v4, v0, Ljava/util/SimpleTimeZone;->endMode:I

    #@68
    if-ne v3, v4, :cond_3

    #@6a
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@6c
    iget v4, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@6e
    if-ne v3, v4, :cond_2

    #@70
    .line 320
    :cond_1
    :goto_0
    return v1

    #@71
    :cond_2
    move v1, v2

    #@72
    .line 330
    goto :goto_0

    #@73
    :cond_3
    move v1, v2

    #@74
    .line 323
    goto :goto_0

    #@75
    :cond_4
    move v1, v2

    #@76
    .line 320
    goto :goto_0
.end method

.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 335
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 336
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 338
    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@8
    return v0
.end method

.method public getOffset(IIIIII)I
    .locals 12
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "time"    # I

    #@0
    .prologue
    .line 343
    if-eqz p1, :cond_0

    #@2
    const/4 v9, 0x1

    #@3
    if-eq p1, v9, :cond_0

    #@5
    .line 344
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v10, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v11, "Invalid era: "

    #@f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v10

    #@13
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v10

    #@17
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v10

    #@1b
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v9

    #@1f
    .line 346
    :cond_0
    move/from16 v0, p5

    #@21
    move/from16 v1, p6

    #@23
    invoke-direct {p0, p3, v0, v1}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    #@26
    .line 347
    const/4 v9, 0x1

    #@27
    if-ne p3, v9, :cond_1

    #@29
    const/16 v9, 0x1d

    #@2b
    move/from16 v0, p4

    #@2d
    if-eq v0, v9, :cond_3

    #@2f
    .line 348
    :cond_1
    move/from16 v0, p4

    #@31
    invoke-direct {p0, p3, v0}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    #@34
    .line 351
    :goto_0
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    #@37
    move-result v9

    #@38
    if-eqz v9, :cond_2

    #@3a
    const/4 v9, 0x1

    #@3b
    if-eq p1, v9, :cond_4

    #@3d
    .line 352
    :cond_2
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@3f
    return v9

    #@40
    .line 347
    :cond_3
    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    #@43
    move-result v9

    #@44
    if-eqz v9, :cond_1

    #@46
    goto :goto_0

    #@47
    .line 351
    :cond_4
    iget v9, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@49
    if-lt p2, v9, :cond_2

    #@4b
    .line 354
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@4d
    iget v10, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@4f
    if-ge v9, v10, :cond_5

    #@51
    .line 355
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@53
    if-le p3, v9, :cond_7

    #@55
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@57
    if-ge p3, v9, :cond_7

    #@59
    .line 356
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@5b
    return v9

    #@5c
    .line 359
    :cond_5
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@5e
    if-lt p3, v9, :cond_6

    #@60
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@62
    if-le p3, v9, :cond_7

    #@64
    .line 360
    :cond_6
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@66
    return v9

    #@67
    .line 364
    :cond_7
    const/4 v6, 0x0

    #@68
    .local v6, "ruleDay":I
    sub-int v9, p5, p4

    #@6a
    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    #@6d
    move-result v4

    #@6e
    .line 365
    .local v4, "firstDayOfMonth":I
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@70
    if-ne p3, v9, :cond_c

    #@72
    .line 366
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@74
    packed-switch v9, :pswitch_data_0

    #@77
    .line 401
    :cond_8
    :goto_1
    move/from16 v0, p4

    #@79
    if-gt v6, v0, :cond_9

    #@7b
    move/from16 v0, p4

    #@7d
    if-ne v6, v0, :cond_c

    #@7f
    iget v9, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@81
    move/from16 v0, p6

    #@83
    if-ge v0, v9, :cond_c

    #@85
    .line 402
    :cond_9
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@87
    return v9

    #@88
    .line 368
    :pswitch_0
    iget v6, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@8a
    goto :goto_1

    #@8b
    .line 371
    :pswitch_1
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@8d
    if-ltz v9, :cond_a

    #@8f
    .line 372
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@91
    sub-int/2addr v9, v4

    #@92
    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    #@95
    move-result v9

    #@96
    add-int/lit8 v9, v9, 0x1

    #@98
    .line 373
    iget v10, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@9a
    add-int/lit8 v10, v10, -0x1

    #@9c
    mul-int/lit8 v10, v10, 0x7

    #@9e
    .line 372
    add-int v6, v9, v10

    #@a0
    goto :goto_1

    #@a1
    .line 375
    :cond_a
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    #@a3
    iget v10, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@a5
    aget-byte v3, v9, v10

    #@a7
    .line 376
    .local v3, "daysInMonth":I
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@a9
    const/4 v10, 0x1

    #@aa
    if-ne v9, v10, :cond_b

    #@ac
    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    #@af
    move-result v9

    #@b0
    if-eqz v9, :cond_b

    #@b2
    .line 378
    add-int/lit8 v3, v3, 0x1

    #@b4
    .line 380
    :cond_b
    add-int/lit8 v9, v3, 0x1

    #@b6
    .line 382
    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@b8
    .line 383
    add-int v11, v4, v3

    #@ba
    .line 382
    sub-int/2addr v10, v11

    #@bb
    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    #@be
    move-result v10

    #@bf
    .line 380
    add-int/2addr v9, v10

    #@c0
    .line 384
    iget v10, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@c2
    mul-int/lit8 v10, v10, 0x7

    #@c4
    .line 380
    add-int v6, v9, v10

    #@c6
    goto :goto_1

    #@c7
    .line 388
    .end local v3    # "daysInMonth":I
    :pswitch_2
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@c9
    .line 389
    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@cb
    .line 390
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@cd
    add-int/2addr v11, v4

    #@ce
    add-int/lit8 v11, v11, -0x1

    #@d0
    .line 389
    sub-int/2addr v10, v11

    #@d1
    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    #@d4
    move-result v10

    #@d5
    .line 388
    add-int v6, v9, v10

    #@d7
    .line 391
    goto :goto_1

    #@d8
    .line 393
    :pswitch_3
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@da
    .line 394
    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@dc
    .line 395
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@de
    add-int/2addr v11, v4

    #@df
    add-int/lit8 v11, v11, -0x1

    #@e1
    .line 394
    sub-int/2addr v10, v11

    #@e2
    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    #@e5
    move-result v10

    #@e6
    .line 393
    add-int v6, v9, v10

    #@e8
    .line 396
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@ea
    if-eq v6, v9, :cond_8

    #@ec
    .line 397
    add-int/lit8 v6, v6, -0x7

    #@ee
    goto :goto_1

    #@ef
    .line 406
    :cond_c
    iget v9, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@f1
    iget v10, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@f3
    sub-int v8, v9, v10

    #@f5
    .line 407
    .local v8, "ruleTime":I
    add-int/lit8 v9, p3, 0x1

    #@f7
    rem-int/lit8 v5, v9, 0xc

    #@f9
    .line 408
    .local v5, "nextMonth":I
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@fb
    if-eq p3, v9, :cond_d

    #@fd
    if-gez v8, :cond_15

    #@ff
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@101
    if-ne v5, v9, :cond_15

    #@103
    .line 409
    :cond_d
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@105
    packed-switch v9, :pswitch_data_1

    #@108
    .line 444
    :cond_e
    :goto_2
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@10a
    .line 445
    .local v7, "ruleMonth":I
    if-gez v8, :cond_10

    #@10c
    .line 446
    const v9, 0x5265c00

    #@10f
    div-int v9, v8, v9

    #@111
    rsub-int/lit8 v2, v9, 0x1

    #@113
    .line 447
    .local v2, "changeDays":I
    const v9, 0x5265c00

    #@116
    rem-int v9, v8, v9

    #@118
    const v10, 0x5265c00

    #@11b
    add-int v8, v9, v10

    #@11d
    .line 448
    sub-int/2addr v6, v2

    #@11e
    .line 449
    if-gtz v6, :cond_10

    #@120
    .line 450
    add-int/lit8 v7, v7, -0x1

    #@122
    if-gez v7, :cond_f

    #@124
    .line 451
    const/16 v7, 0xb

    #@126
    .line 453
    :cond_f
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    #@128
    aget-byte v9, v9, v7

    #@12a
    add-int/2addr v6, v9

    #@12b
    .line 454
    const/4 v9, 0x1

    #@12c
    if-ne v7, v9, :cond_10

    #@12e
    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    #@131
    move-result v9

    #@132
    if-eqz v9, :cond_10

    #@134
    .line 455
    add-int/lit8 v6, v6, 0x1

    #@136
    .line 460
    .end local v2    # "changeDays":I
    :cond_10
    if-ne p3, v7, :cond_14

    #@138
    .line 461
    move/from16 v0, p4

    #@13a
    if-lt v6, v0, :cond_11

    #@13c
    move/from16 v0, p4

    #@13e
    if-ne v6, v0, :cond_15

    #@140
    move/from16 v0, p6

    #@142
    if-lt v0, v8, :cond_15

    #@144
    .line 462
    :cond_11
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@146
    return v9

    #@147
    .line 411
    .end local v7    # "ruleMonth":I
    :pswitch_4
    iget v6, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@149
    goto :goto_2

    #@14a
    .line 414
    :pswitch_5
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@14c
    if-ltz v9, :cond_12

    #@14e
    .line 415
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@150
    sub-int/2addr v9, v4

    #@151
    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    #@154
    move-result v9

    #@155
    add-int/lit8 v9, v9, 0x1

    #@157
    .line 416
    iget v10, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@159
    add-int/lit8 v10, v10, -0x1

    #@15b
    mul-int/lit8 v10, v10, 0x7

    #@15d
    .line 415
    add-int v6, v9, v10

    #@15f
    goto :goto_2

    #@160
    .line 418
    :cond_12
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    #@162
    iget v10, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@164
    aget-byte v3, v9, v10

    #@166
    .line 419
    .restart local v3    # "daysInMonth":I
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@168
    const/4 v10, 0x1

    #@169
    if-ne v9, v10, :cond_13

    #@16b
    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    #@16e
    move-result v9

    #@16f
    if-eqz v9, :cond_13

    #@171
    .line 420
    add-int/lit8 v3, v3, 0x1

    #@173
    .line 422
    :cond_13
    add-int/lit8 v9, v3, 0x1

    #@175
    .line 424
    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@177
    .line 425
    add-int v11, v4, v3

    #@179
    .line 424
    sub-int/2addr v10, v11

    #@17a
    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    #@17d
    move-result v10

    #@17e
    .line 422
    add-int/2addr v9, v10

    #@17f
    .line 425
    iget v10, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@181
    mul-int/lit8 v10, v10, 0x7

    #@183
    .line 422
    add-int v6, v9, v10

    #@185
    goto :goto_2

    #@186
    .line 430
    .end local v3    # "daysInMonth":I
    :pswitch_6
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@188
    .line 432
    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@18a
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@18c
    add-int/2addr v11, v4

    #@18d
    add-int/lit8 v11, v11, -0x1

    #@18f
    sub-int/2addr v10, v11

    #@190
    .line 431
    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    #@193
    move-result v10

    #@194
    .line 430
    add-int v6, v9, v10

    #@196
    .line 433
    goto/16 :goto_2

    #@198
    .line 435
    :pswitch_7
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@19a
    .line 437
    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@19c
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@19e
    add-int/2addr v11, v4

    #@19f
    add-int/lit8 v11, v11, -0x1

    #@1a1
    sub-int/2addr v10, v11

    #@1a2
    .line 436
    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    #@1a5
    move-result v10

    #@1a6
    .line 435
    add-int v6, v9, v10

    #@1a8
    .line 438
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@1aa
    if-eq v6, v9, :cond_e

    #@1ac
    .line 439
    add-int/lit8 v6, v6, -0x7

    #@1ae
    goto/16 :goto_2

    #@1b0
    .line 464
    .restart local v7    # "ruleMonth":I
    :cond_14
    if-eq v5, v7, :cond_15

    #@1b2
    .line 465
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@1b4
    return v9

    #@1b5
    .line 468
    .end local v7    # "ruleMonth":I
    :cond_15
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@1b7
    iget v10, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@1b9
    add-int/2addr v9, v10

    #@1ba
    return v9

    #@1bb
    .line 366
    nop

    #@1bc
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@1c8
    .line 409
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getOffset(J)I
    .locals 9
    .param p1, "time"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 474
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 475
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@9
    return v0

    #@a
    .line 477
    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@c
    int-to-long v2, v0

    #@d
    add-long/2addr v2, p1

    #@e
    const/4 v0, 0x0

    #@f
    invoke-static {v2, v3, v0}, Ljava/util/Grego;->timeToFields(J[I)[I

    #@12
    move-result-object v7

    #@13
    .line 478
    .local v7, "fields":[I
    const/4 v0, 0x0

    #@14
    aget v2, v7, v0

    #@16
    aget v3, v7, v1

    #@18
    const/4 v0, 0x2

    #@19
    aget v4, v7, v0

    #@1b
    .line 479
    const/4 v0, 0x3

    #@1c
    aget v5, v7, v0

    #@1e
    const/4 v0, 0x5

    #@1f
    aget v6, v7, v0

    #@21
    move-object v0, p0

    #@22
    .line 478
    invoke-virtual/range {v0 .. v6}, Ljava/util/SimpleTimeZone;->getOffset(IIIIII)I

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public getRawOffset()I
    .locals 1

    #@0
    .prologue
    .line 484
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@2
    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 507
    instance-of v3, p1, Ljava/util/SimpleTimeZone;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 508
    return v2

    #@7
    :cond_0
    move-object v0, p1

    #@8
    .line 510
    check-cast v0, Ljava/util/SimpleTimeZone;

    #@a
    .line 511
    .local v0, "tz":Ljava/util/SimpleTimeZone;
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@c
    iget-boolean v4, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@e
    if-eq v3, v4, :cond_1

    #@10
    .line 512
    return v2

    #@11
    .line 514
    :cond_1
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@13
    if-nez v3, :cond_3

    #@15
    .line 515
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@17
    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@19
    if-ne v3, v4, :cond_2

    #@1b
    :goto_0
    return v1

    #@1c
    :cond_2
    move v1, v2

    #@1d
    goto :goto_0

    #@1e
    .line 517
    :cond_3
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@20
    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@22
    if-ne v3, v4, :cond_5

    #@24
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@26
    iget v4, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@28
    if-ne v3, v4, :cond_5

    #@2a
    .line 518
    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@2c
    iget v4, v0, Ljava/util/SimpleTimeZone;->startYear:I

    #@2e
    if-ne v3, v4, :cond_5

    #@30
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@32
    iget v4, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@34
    if-ne v3, v4, :cond_5

    #@36
    .line 519
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@38
    iget v4, v0, Ljava/util/SimpleTimeZone;->startDay:I

    #@3a
    if-ne v3, v4, :cond_5

    #@3c
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@3e
    iget v4, v0, Ljava/util/SimpleTimeZone;->startMode:I

    #@40
    if-ne v3, v4, :cond_5

    #@42
    .line 520
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@44
    iget v4, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@46
    if-ne v3, v4, :cond_5

    #@48
    .line 521
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@4a
    iget v4, v0, Ljava/util/SimpleTimeZone;->startTime:I

    #@4c
    if-ne v3, v4, :cond_5

    #@4e
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@50
    iget v4, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@52
    if-ne v3, v4, :cond_5

    #@54
    .line 522
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@56
    iget v4, v0, Ljava/util/SimpleTimeZone;->endDay:I

    #@58
    if-ne v3, v4, :cond_5

    #@5a
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@5c
    iget v4, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@5e
    if-ne v3, v4, :cond_5

    #@60
    .line 523
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@62
    iget v4, v0, Ljava/util/SimpleTimeZone;->endTime:I

    #@64
    if-ne v3, v4, :cond_5

    #@66
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@68
    iget v4, v0, Ljava/util/SimpleTimeZone;->endMode:I

    #@6a
    if-ne v3, v4, :cond_4

    #@6c
    .line 517
    :goto_1
    return v1

    #@6d
    :cond_4
    move v1, v2

    #@6e
    .line 523
    goto :goto_1

    #@6f
    :cond_5
    move v1, v2

    #@70
    .line 517
    goto :goto_1
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 496
    :try_start_0
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@8
    move-result v1

    #@9
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@b
    add-int v0, v1, v2

    #@d
    .line 497
    .local v0, "hashCode":I
    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 498
    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@13
    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@15
    add-int/2addr v1, v2

    #@16
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@18
    add-int/2addr v1, v2

    #@19
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@1b
    add-int/2addr v1, v2

    #@1c
    .line 499
    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@1e
    .line 498
    add-int/2addr v1, v2

    #@1f
    .line 499
    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@21
    .line 498
    add-int/2addr v1, v2

    #@22
    .line 499
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@24
    .line 498
    add-int/2addr v1, v2

    #@25
    .line 499
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@27
    .line 498
    add-int/2addr v1, v2

    #@28
    .line 499
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@2a
    .line 498
    add-int/2addr v1, v2

    #@2b
    .line 500
    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@2d
    .line 498
    add-int/2addr v1, v2

    #@2e
    .line 500
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@30
    .line 498
    add-int/2addr v1, v2

    #@31
    .line 500
    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 498
    add-int/2addr v1, v2

    #@34
    add-int/2addr v0, v1

    #@35
    :cond_0
    monitor-exit p0

    #@36
    .line 502
    return v0

    #@37
    .end local v0    # "hashCode":I
    :catchall_0
    move-exception v1

    #@38
    monitor-exit p0

    #@39
    throw v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 4
    .param p1, "time"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 527
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@a
    move-result-wide v2

    #@b
    invoke-virtual {p0, v2, v3}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getRawOffset()I

    #@12
    move-result v2

    #@13
    if-eq v1, v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    return v0
.end method

.method public setDSTSavings(I)V
    .locals 3
    .param p1, "milliseconds"    # I

    #@0
    .prologue
    .line 549
    if-gtz p1, :cond_0

    #@2
    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "milliseconds <= 0: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 552
    :cond_0
    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@1e
    .line 548
    return-void
.end method

.method public setEndRule(III)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "time"    # I

    #@0
    .prologue
    .line 617
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@2
    .line 618
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@4
    .line 619
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@7
    .line 620
    iput p3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@9
    .line 621
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    #@c
    .line 616
    return-void
.end method

.method public setEndRule(IIII)V
    .locals 0
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I

    #@0
    .prologue
    .line 640
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@2
    .line 641
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@4
    .line 642
    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@6
    .line 643
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@8
    .line 644
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    #@b
    .line 639
    return-void
.end method

.method public setEndRule(IIIIZ)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "after"    # Z

    #@0
    .prologue
    .line 664
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@2
    .line 665
    if-eqz p5, :cond_0

    #@4
    .end local p2    # "day":I
    :goto_0
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@6
    .line 666
    neg-int v0, p3

    #@7
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@9
    .line 667
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@b
    .line 668
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    #@e
    .line 663
    return-void

    #@f
    .line 665
    .restart local p2    # "day":I
    :cond_0
    neg-int p2, p2

    #@10
    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 679
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@2
    .line 678
    return-void
.end method

.method public setStartRule(III)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "time"    # I

    #@0
    .prologue
    .line 726
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@2
    .line 727
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@4
    .line 728
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@7
    .line 729
    iput p3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@9
    .line 730
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    #@c
    .line 725
    return-void
.end method

.method public setStartRule(IIII)V
    .locals 0
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I

    #@0
    .prologue
    .line 749
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@2
    .line 750
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@4
    .line 751
    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@6
    .line 752
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@8
    .line 753
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    #@b
    .line 748
    return-void
.end method

.method public setStartRule(IIIIZ)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "after"    # Z

    #@0
    .prologue
    .line 773
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@2
    .line 774
    if-eqz p5, :cond_0

    #@4
    .end local p2    # "day":I
    :goto_0
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@6
    .line 775
    neg-int v0, p3

    #@7
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@9
    .line 776
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@b
    .line 777
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    #@e
    .line 772
    return-void

    #@f
    .line 774
    .restart local p2    # "day":I
    :cond_0
    neg-int p2, p2

    #@10
    goto :goto_0
.end method

.method public setStartYear(I)V
    .locals 1
    .param p1, "year"    # I

    #@0
    .prologue
    .line 788
    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@2
    .line 789
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@5
    .line 787
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    .line 800
    const-string/jumbo v2, "[id="

    #@16
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 801
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 802
    const-string/jumbo v2, ",offset="

    #@25
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 803
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@2b
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 804
    const-string/jumbo v2, ",dstSavings="

    #@32
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 805
    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@38
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 806
    const-string/jumbo v2, ",useDaylight="

    #@3f
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 807
    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@45
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 808
    const-string/jumbo v2, ",startYear="

    #@4c
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 809
    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@52
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 810
    const-string/jumbo v2, ",startMode="

    #@59
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 811
    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@5f
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 812
    const-string/jumbo v2, ",startMonth="

    #@66
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    .line 813
    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@6c
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 814
    const-string/jumbo v2, ",startDay="

    #@73
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    .line 815
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@79
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    .line 816
    const-string/jumbo v2, ",startDayOfWeek="

    #@80
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    .line 817
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@86
    if-eqz v0, :cond_1

    #@88
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@8a
    if-eq v0, v3, :cond_1

    #@8c
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@8e
    add-int/lit8 v0, v0, 0x1

    #@90
    .line 799
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    .line 818
    const-string/jumbo v2, ",startTime="

    #@97
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 818
    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@9d
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    .line 818
    const-string/jumbo v2, ",endMode="

    #@a4
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    .line 819
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@aa
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    .line 819
    const-string/jumbo v2, ",endMonth="

    #@b1
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    .line 819
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@b7
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    .line 819
    const-string/jumbo v2, ",endDay="

    #@be
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    .line 819
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@c4
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    .line 820
    const-string/jumbo v2, ",endDayOfWeek="

    #@cb
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    .line 821
    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@d1
    if-eqz v2, :cond_0

    #@d3
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@d5
    if-eq v2, v3, :cond_0

    #@d7
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@d9
    add-int/lit8 v1, v1, 0x1

    #@db
    .line 799
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    .line 822
    const-string/jumbo v1, ",endTime="

    #@e2
    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v0

    #@e6
    .line 822
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@e8
    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v0

    #@ec
    .line 822
    const-string/jumbo v1, "]"

    #@ef
    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v0

    #@f3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v0

    #@f7
    return-object v0

    #@f8
    :cond_1
    move v0, v1

    #@f9
    .line 818
    goto :goto_0
.end method

.method public useDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 827
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@2
    return v0
.end method

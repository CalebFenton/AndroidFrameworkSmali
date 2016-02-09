.class public Landroid/icu/impl/JavaTimeZone;
.super Landroid/icu/util/TimeZone;
.source "JavaTimeZone.java"


# static fields
.field private static final AVAILABLESET:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mObservesDaylightTime:Ljava/lang/reflect/Method; = null

.field private static final serialVersionUID:J = 0x60d4e0281a0a2e14L


# instance fields
.field private volatile transient isFrozen:Z

.field private transient javacal:Ljava/util/Calendar;

.field private javatz:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    .line 39
    new-instance v4, Ljava/util/TreeSet;

    #@2
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    #@5
    sput-object v4, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    #@7
    .line 40
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 41
    .local v0, "availableIds":[Ljava/lang/String;
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_0
    array-length v4, v0

    #@d
    if-ge v3, v4, :cond_0

    #@f
    .line 42
    sget-object v4, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    #@11
    aget-object v5, v0, v3

    #@13
    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@16
    .line 41
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 46
    :cond_0
    :try_start_0
    const-class v5, Ljava/util/TimeZone;

    #@1b
    const-string/jumbo v6, "observesDaylightTime"

    #@1e
    const/4 v4, 0x0

    #@1f
    nop

    #@20
    nop

    #@21
    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@24
    move-result-object v4

    #@25
    sput-object v4, Landroid/icu/impl/JavaTimeZone;->mObservesDaylightTime:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@27
    .line 28
    :goto_1
    return-void

    #@28
    .line 47
    :catch_0
    move-exception v1

    #@29
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    #@2a
    .line 49
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    #@2b
    .local v2, "e":Ljava/lang/SecurityException;
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 58
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/JavaTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    #@8
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 2
    .param p1, "jtz"    # Ljava/util/TimeZone;
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Landroid/icu/util/TimeZone;-><init>()V

    #@3
    .line 238
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    #@6
    .line 68
    if-nez p2, :cond_0

    #@8
    .line 69
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@b
    move-result-object p2

    #@c
    .line 71
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@e
    .line 72
    invoke-virtual {p0, p2}, Landroid/icu/impl/JavaTimeZone;->setID(Ljava/lang/String;)V

    #@11
    .line 73
    new-instance v0, Ljava/util/GregorianCalendar;

    #@13
    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@15
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    #@18
    iput-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@1a
    .line 67
    return-void
.end method

.method public static createTimeZone(Ljava/lang/String;)Landroid/icu/impl/JavaTimeZone;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 83
    const/4 v2, 0x0

    #@2
    .line 85
    .local v2, "jtz":Ljava/util/TimeZone;
    sget-object v3, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    #@4
    invoke-virtual {v3, p0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 86
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@d
    move-result-object v2

    #@e
    .line 89
    .end local v2    # "jtz":Ljava/util/TimeZone;
    :cond_0
    if-nez v2, :cond_1

    #@10
    .line 91
    const/4 v3, 0x1

    #@11
    new-array v1, v3, [Z

    #@13
    .line 92
    .local v1, "isSystemID":[Z
    invoke-static {p0, v1}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 93
    .local v0, "canonicalID":Ljava/lang/String;
    const/4 v3, 0x0

    #@18
    aget-boolean v3, v1, v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    sget-object v3, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    #@1e
    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 94
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@27
    move-result-object v2

    #@28
    .line 98
    .end local v0    # "canonicalID":Ljava/lang/String;
    .end local v1    # "isSystemID":[Z
    :cond_1
    if-nez v2, :cond_2

    #@2a
    .line 99
    return-object v4

    #@2b
    .line 102
    :cond_2
    new-instance v3, Landroid/icu/impl/JavaTimeZone;

    #@2d
    invoke-direct {v3, v2, p0}, Landroid/icu/impl/JavaTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    #@30
    return-object v3
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
    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 234
    new-instance v0, Ljava/util/GregorianCalendar;

    #@5
    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@7
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    #@a
    iput-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@c
    .line 232
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 220
    return-object p0

    #@7
    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 2

    #@0
    .prologue
    .line 259
    invoke-super {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/impl/JavaTimeZone;

    #@6
    .line 260
    .local v0, "tz":Landroid/icu/impl/JavaTimeZone;
    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@8
    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/util/TimeZone;

    #@e
    iput-object v1, v0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@10
    .line 261
    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@12
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/util/GregorianCalendar;

    #@18
    iput-object v1, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@1a
    .line 262
    const/4 v1, 0x0

    #@1b
    iput-boolean v1, v0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    #@1d
    .line 263
    return-object v0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 251
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    #@3
    .line 252
    return-object p0
.end method

.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOffset(IIIIII)I
    .locals 7
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

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
    move v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getOffset(JZ[I)V
    .locals 23
    .param p1, "date"    # J
    .param p3, "local"    # Z
    .param p4, "offsets"    # [I

    #@0
    .prologue
    .line 116
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@4
    move-object/from16 v19, v0

    #@6
    monitor-enter v19

    #@7
    .line 117
    if-eqz p3, :cond_4

    #@9
    .line 118
    const/4 v2, 0x6

    #@a
    :try_start_0
    new-array v12, v2, [I

    #@c
    .line 119
    .local v12, "fields":[I
    move-wide/from16 v0, p1

    #@e
    invoke-static {v0, v1, v12}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@11
    .line 121
    const/4 v2, 0x5

    #@12
    aget v18, v12, v2

    #@14
    .line 122
    .local v18, "tmp":I
    move/from16 v0, v18

    #@16
    rem-int/lit16 v14, v0, 0x3e8

    #@18
    .line 123
    .local v14, "mil":I
    move/from16 v0, v18

    #@1a
    div-int/lit16 v0, v0, 0x3e8

    #@1c
    move/from16 v18, v0

    #@1e
    .line 124
    rem-int/lit8 v8, v18, 0x3c

    #@20
    .line 125
    .local v8, "sec":I
    div-int/lit8 v18, v18, 0x3c

    #@22
    .line 126
    rem-int/lit8 v7, v18, 0x3c

    #@24
    .line 127
    .local v7, "min":I
    div-int/lit8 v6, v18, 0x3c

    #@26
    .line 128
    .local v6, "hour":I
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@2a
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    #@2d
    .line 129
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@31
    const/4 v3, 0x0

    #@32
    aget v3, v12, v3

    #@34
    const/4 v4, 0x1

    #@35
    aget v4, v12, v4

    #@37
    const/4 v5, 0x2

    #@38
    aget v5, v12, v5

    #@3a
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    #@3d
    .line 130
    move-object/from16 v0, p0

    #@3f
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@41
    const/16 v3, 0xe

    #@43
    invoke-virtual {v2, v3, v14}, Ljava/util/Calendar;->set(II)V

    #@46
    .line 133
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@4a
    const/4 v3, 0x6

    #@4b
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    #@4e
    move-result v11

    #@4f
    .line 134
    .local v11, "doy1":I
    move-object/from16 v0, p0

    #@51
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@53
    const/16 v3, 0xb

    #@55
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    #@58
    move-result v13

    #@59
    .line 135
    .local v13, "hour1":I
    move-object/from16 v0, p0

    #@5b
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@5d
    const/16 v3, 0xc

    #@5f
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    #@62
    move-result v16

    #@63
    .line 136
    .local v16, "min1":I
    move-object/from16 v0, p0

    #@65
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@67
    const/16 v3, 0xd

    #@69
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    #@6c
    move-result v17

    #@6d
    .line 137
    .local v17, "sec1":I
    move-object/from16 v0, p0

    #@6f
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@71
    const/16 v3, 0xe

    #@73
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    #@76
    move-result v15

    #@77
    .line 139
    .local v15, "mil1":I
    const/4 v2, 0x4

    #@78
    aget v2, v12, v2

    #@7a
    if-ne v2, v11, :cond_0

    #@7c
    if-eq v6, v13, :cond_2

    #@7e
    .line 143
    :cond_0
    :goto_0
    const/4 v2, 0x4

    #@7f
    aget v2, v12, v2

    #@81
    sub-int v2, v11, v2

    #@83
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@86
    move-result v2

    #@87
    const/4 v3, 0x1

    #@88
    if-le v2, v3, :cond_3

    #@8a
    const/4 v9, 0x1

    #@8b
    .line 144
    .local v9, "dayDelta":I
    :goto_1
    mul-int/lit8 v2, v9, 0x18

    #@8d
    add-int/2addr v2, v13

    #@8e
    sub-int/2addr v2, v6

    #@8f
    mul-int/lit8 v2, v2, 0x3c

    #@91
    add-int v2, v2, v16

    #@93
    sub-int/2addr v2, v7

    #@94
    mul-int/lit8 v2, v2, 0x3c

    #@96
    add-int v2, v2, v17

    #@98
    sub-int/2addr v2, v8

    #@99
    mul-int/lit16 v2, v2, 0x3e8

    #@9b
    add-int/2addr v2, v15

    #@9c
    sub-int v10, v2, v14

    #@9e
    .line 147
    .local v10, "delta":I
    move-object/from16 v0, p0

    #@a0
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@a2
    move-object/from16 v0, p0

    #@a4
    iget-object v3, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@a6
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    #@a9
    move-result-wide v4

    #@aa
    int-to-long v0, v10

    #@ab
    move-wide/from16 v20, v0

    #@ad
    sub-long v4, v4, v20

    #@af
    const-wide/16 v20, 0x1

    #@b1
    sub-long v4, v4, v20

    #@b3
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@b6
    .line 152
    .end local v6    # "hour":I
    .end local v7    # "min":I
    .end local v8    # "sec":I
    .end local v9    # "dayDelta":I
    .end local v10    # "delta":I
    .end local v11    # "doy1":I
    .end local v12    # "fields":[I
    .end local v13    # "hour1":I
    .end local v14    # "mil":I
    .end local v15    # "mil1":I
    .end local v16    # "min1":I
    .end local v17    # "sec1":I
    .end local v18    # "tmp":I
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    #@b8
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@ba
    const/16 v3, 0xf

    #@bc
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    #@bf
    move-result v2

    #@c0
    const/4 v3, 0x0

    #@c1
    aput v2, p4, v3

    #@c3
    .line 153
    move-object/from16 v0, p0

    #@c5
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@c7
    const/16 v3, 0x10

    #@c9
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    #@cc
    move-result v2

    #@cd
    const/4 v3, 0x1

    #@ce
    aput v2, p4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d0
    monitor-exit v19

    #@d1
    .line 115
    return-void

    #@d2
    .line 139
    .restart local v6    # "hour":I
    .restart local v7    # "min":I
    .restart local v8    # "sec":I
    .restart local v11    # "doy1":I
    .restart local v12    # "fields":[I
    .restart local v13    # "hour1":I
    .restart local v14    # "mil":I
    .restart local v15    # "mil1":I
    .restart local v16    # "min1":I
    .restart local v17    # "sec1":I
    .restart local v18    # "tmp":I
    :cond_2
    move/from16 v0, v16

    #@d4
    if-ne v7, v0, :cond_0

    #@d6
    move/from16 v0, v17

    #@d8
    if-ne v8, v0, :cond_0

    #@da
    if-eq v14, v15, :cond_1

    #@dc
    goto :goto_0

    #@dd
    .line 143
    :cond_3
    const/4 v2, 0x4

    #@de
    :try_start_1
    aget v2, v12, v2

    #@e0
    sub-int v9, v11, v2

    #@e2
    .restart local v9    # "dayDelta":I
    goto :goto_1

    #@e3
    .line 150
    .end local v6    # "hour":I
    .end local v7    # "min":I
    .end local v8    # "sec":I
    .end local v9    # "dayDelta":I
    .end local v11    # "doy1":I
    .end local v12    # "fields":[I
    .end local v13    # "hour1":I
    .end local v14    # "mil":I
    .end local v15    # "mil1":I
    .end local v16    # "min1":I
    .end local v17    # "sec1":I
    .end local v18    # "tmp":I
    :cond_4
    move-object/from16 v0, p0

    #@e5
    iget-object v2, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    #@e7
    move-wide/from16 v0, p1

    #@e9
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ec
    goto :goto_2

    #@ed
    .line 116
    :catchall_0
    move-exception v2

    #@ee
    monitor-exit v19

    #@ef
    throw v2
.end method

.method public getRawOffset()I
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 229
    invoke-super {p0}, Landroid/icu/util/TimeZone;->hashCode()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@6
    invoke-virtual {v1}, Ljava/util/TimeZone;->hashCode()I

    #@9
    move-result v1

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 244
    iget-boolean v0, p0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    #@2
    return v0
.end method

.method public observesDaylightTime()Z
    .locals 6

    #@0
    .prologue
    .line 192
    sget-object v3, Landroid/icu/impl/JavaTimeZone;->mObservesDaylightTime:Ljava/lang/reflect/Method;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 195
    :try_start_0
    sget-object v4, Landroid/icu/impl/JavaTimeZone;->mObservesDaylightTime:Ljava/lang/reflect/Method;

    #@6
    iget-object v5, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@8
    const/4 v3, 0x0

    #@9
    check-cast v3, [Ljava/lang/Object;

    #@b
    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Ljava/lang/Boolean;

    #@11
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    #@14
    move-result v3

    #@15
    return v3

    #@16
    .line 196
    :catch_0
    move-exception v0

    #@17
    .line 201
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/icu/util/TimeZone;->observesDaylightTime()Z

    #@1a
    move-result v3

    #@1b
    return v3

    #@1c
    .line 197
    :catch_1
    move-exception v1

    #@1d
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@1e
    .line 198
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    #@1f
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 2
    .param p1, "offsetMillis"    # I

    #@0
    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify a frozen JavaTimeZone instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 178
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/TimeZone;->setRawOffset(I)V

    #@14
    .line 174
    return-void
.end method

.method public unwrap()Ljava/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@2
    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    #@2
    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

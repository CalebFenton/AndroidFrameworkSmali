.class public Landroid/icu/impl/JavaTimeZone;
.super Landroid/icu/util/TimeZone;
.source "JavaTimeZone.java"


# static fields
.field private static final blacklist AVAILABLESET:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mObservesDaylightTime:Ljava/lang/reflect/Method; = null

.field private static final whitelist serialVersionUID:J = 0x60d4e0281a0a2e14L


# instance fields
.field private volatile transient blacklist isFrozen:Z

.field private transient blacklist javacal:Ljava/util/Calendar;

.field private blacklist javatz:Ljava/util/TimeZone;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 43
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    .line 44
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "availableIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 46
    sget-object v2, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 50
    .end local v1    # "i":I
    :cond_19
    :try_start_19
    const-class v1, Ljava/util/TimeZone;

    const-string v2, "observesDaylightTime"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/JavaTimeZone;->mObservesDaylightTime:Ljava/lang/reflect/Method;
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_27} :catch_2a
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_27} :catch_28

    goto :goto_2b

    .line 53
    :catch_28
    move-exception v1

    goto :goto_2c

    .line 51
    :catch_2a
    move-exception v1

    .line 55
    :goto_2b
    nop

    .line 56
    .end local v0    # "availableIds":[Ljava/lang/String;
    :goto_2c
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 62
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/JavaTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .registers 5
    .param p1, "jtz"    # Ljava/util/TimeZone;
    .param p2, "id"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Landroid/icu/util/TimeZone;-><init>()V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    .line 72
    if-nez p2, :cond_c

    .line 73
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    .line 75
    :cond_c
    iput-object p1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    .line 76
    invoke-virtual {p0, p2}, Landroid/icu/impl/JavaTimeZone;->setID(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    .line 78
    return-void
.end method

.method public static blacklist createTimeZone(Ljava/lang/String;)Landroid/icu/impl/JavaTimeZone;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "jtz":Ljava/util/TimeZone;
    sget-object v1, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 90
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 93
    :cond_d
    if-nez v0, :cond_27

    .line 95
    const/4 v1, 0x1

    new-array v1, v1, [Z

    .line 96
    .local v1, "isSystemID":[Z
    invoke-static {p0, v1}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "canonicalID":Ljava/lang/String;
    const/4 v3, 0x0

    aget-boolean v3, v1, v3

    if-eqz v3, :cond_27

    sget-object v3, Landroid/icu/impl/JavaTimeZone;->AVAILABLESET:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 98
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 102
    .end local v1    # "isSystemID":[Z
    .end local v2    # "canonicalID":Ljava/lang/String;
    :cond_27
    if-nez v0, :cond_2b

    .line 103
    const/4 v1, 0x0

    return-object v1

    .line 106
    :cond_2b
    new-instance v1, Landroid/icu/impl/JavaTimeZone;

    invoke-direct {v1, v0, p0}, Landroid/icu/impl/JavaTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    return-object v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 249
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    .line 250
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 233
    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    return-object p0

    .line 236
    :cond_7
    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/util/TimeZone;
    .registers 4

    .line 277
    invoke-super {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/JavaTimeZone;

    .line 278
    .local v0, "tz":Landroid/icu/impl/JavaTimeZone;
    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, v0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    .line 279
    new-instance v1, Ljava/util/GregorianCalendar;

    iget-object v2, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, v0, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    .line 281
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api freeze()Landroid/icu/util/TimeZone;
    .registers 2

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    .line 269
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDSTSavings()I
    .registers 2

    .line 221
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getOffset(IIIIII)I
    .registers 14
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    .line 114
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "era":I
    .end local p2    # "year":I
    .end local p3    # "month":I
    .end local p4    # "day":I
    .end local p5    # "dayOfWeek":I
    .end local p6    # "milliseconds":I
    .local v1, "era":I
    .local v2, "year":I
    .local v3, "month":I
    .local v4, "day":I
    .local v5, "dayOfWeek":I
    .local v6, "milliseconds":I
    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result p1

    return p1
.end method

.method public whitelist test-api getOffset(JZ[I)V
    .registers 29
    .param p1, "date"    # J
    .param p3, "local"    # Z
    .param p4, "offsets"    # [I

    .line 122
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v4, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    monitor-enter v4

    .line 123
    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz p3, :cond_af

    .line 124
    const/4 v6, 0x6

    :try_start_c
    new-array v7, v6, [I

    .line 125
    .local v7, "fields":[I
    invoke-static {v2, v3, v7}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    .line 127
    const/4 v8, 0x5

    aget v8, v7, v8

    .line 128
    .local v8, "tmp":I
    rem-int/lit16 v9, v8, 0x3e8

    .line 129
    .local v9, "mil":I
    div-int/lit16 v10, v8, 0x3e8

    .line 130
    .end local v8    # "tmp":I
    .local v10, "tmp":I
    rem-int/lit8 v8, v10, 0x3c

    move/from16 v17, v8

    .line 131
    .local v17, "sec":I
    div-int/lit8 v8, v10, 0x3c

    .line 132
    .end local v10    # "tmp":I
    .restart local v8    # "tmp":I
    rem-int/lit8 v16, v8, 0x3c

    .line 133
    .local v16, "min":I
    div-int/lit8 v15, v8, 0x3c

    .line 134
    .local v15, "hour":I
    iget-object v10, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->clear()V

    .line 135
    iget-object v11, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    aget v12, v7, v0

    aget v13, v7, v5

    const/4 v10, 0x2

    aget v14, v7, v10

    invoke-virtual/range {v11 .. v17}, Ljava/util/Calendar;->set(IIIIII)V

    move/from16 v11, v16

    move/from16 v10, v17

    .line 136
    .end local v16    # "min":I
    .end local v17    # "sec":I
    .local v10, "sec":I
    .local v11, "min":I
    iget-object v12, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v13, 0xe

    invoke-virtual {v12, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 139
    iget-object v12, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v12, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 140
    .local v6, "doy1":I
    iget-object v12, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v14, 0xb

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 141
    .local v12, "hour1":I
    iget-object v14, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    move/from16 v16, v0

    const/16 v0, 0xc

    invoke-virtual {v14, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 142
    .local v0, "min1":I
    iget-object v14, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 143
    .local v5, "sec1":I
    iget-object v14, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v14, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 145
    .local v13, "mil1":I
    const/16 v18, 0x4

    aget v14, v7, v18

    if-ne v14, v6, :cond_72

    if-ne v15, v12, :cond_72

    if-ne v11, v0, :cond_72

    if-ne v10, v5, :cond_72

    if-eq v9, v13, :cond_ae

    .line 149
    :cond_72
    aget v14, v7, v18

    sub-int v14, v6, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move/from16 v19, v0

    const/4 v0, 0x1

    .end local v0    # "min1":I
    .local v19, "min1":I
    if-le v14, v0, :cond_81

    const/4 v0, 0x1

    goto :goto_85

    :cond_81
    aget v0, v7, v18

    sub-int v0, v6, v0

    .line 150
    .local v0, "dayDelta":I
    :goto_85
    mul-int/lit8 v14, v0, 0x18

    add-int/2addr v14, v12

    sub-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x3c

    add-int v14, v14, v19

    sub-int/2addr v14, v11

    mul-int/lit8 v14, v14, 0x3c

    add-int/2addr v14, v5

    sub-int/2addr v14, v10

    mul-int/lit16 v14, v14, 0x3e8

    add-int/2addr v14, v13

    sub-int/2addr v14, v9

    .line 153
    .local v14, "delta":I
    move/from16 v18, v0

    .end local v0    # "dayDelta":I
    .local v18, "dayDelta":I
    iget-object v0, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    move/from16 v20, v5

    .end local v5    # "sec1":I
    .local v20, "sec1":I
    iget-object v5, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    move/from16 v23, v6

    .end local v6    # "doy1":I
    .local v23, "doy1":I
    int-to-long v5, v14

    sub-long v21, v21, v5

    const-wide/16 v5, 0x1

    sub-long v5, v21, v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 155
    .end local v7    # "fields":[I
    .end local v8    # "tmp":I
    .end local v9    # "mil":I
    .end local v10    # "sec":I
    .end local v11    # "min":I
    .end local v12    # "hour1":I
    .end local v13    # "mil1":I
    .end local v14    # "delta":I
    .end local v15    # "hour":I
    .end local v18    # "dayDelta":I
    .end local v19    # "min1":I
    .end local v20    # "sec1":I
    .end local v23    # "doy1":I
    :cond_ae
    goto :goto_b6

    .line 156
    :cond_af
    move/from16 v16, v0

    iget-object v0, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    :goto_b6
    iget-object v0, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    aput v0, p4, v16

    .line 159
    iget-object v0, v1, Landroid/icu/impl/JavaTimeZone;->javacal:Ljava/util/Calendar;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v17, 0x1

    aput v0, p4, v17

    .line 160
    monitor-exit v4

    .line 161
    return-void

    .line 160
    :catchall_ce
    move-exception v0

    monitor-exit v4
    :try_end_d0
    .catchall {:try_start_c .. :try_end_d0} :catchall_ce

    throw v0
.end method

.method public whitelist test-api getRawOffset()I
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 244
    invoke-super {p0}, Landroid/icu/util/TimeZone;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api inDaylightTime(Ljava/util/Date;)Z
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 176
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 260
    iget-boolean v0, p0, Landroid/icu/impl/JavaTimeZone;->isFrozen:Z

    return v0
.end method

.method public whitelist test-api observesDaylightTime()Z
    .registers 5

    .line 203
    sget-object v0, Landroid/icu/impl/JavaTimeZone;->mObservesDaylightTime:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    .line 207
    :try_start_4
    sget-object v0, Landroid/icu/impl/JavaTimeZone;->mObservesDaylightTime:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_16} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_16} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_16} :catch_17

    return v0

    .line 210
    :catch_17
    move-exception v0

    goto :goto_1d

    .line 209
    :catch_19
    move-exception v0

    goto :goto_1c

    .line 208
    :catch_1b
    move-exception v0

    .line 211
    :goto_1c
    nop

    .line 213
    :cond_1d
    :goto_1d
    invoke-super {p0}, Landroid/icu/util/TimeZone;->observesDaylightTime()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setRawOffset(I)V
    .registers 4
    .param p1, "offsetMillis"    # I

    .line 184
    invoke-virtual {p0}, Landroid/icu/impl/JavaTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 187
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 188
    return-void

    .line 185
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen JavaTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unwrap()Ljava/util/TimeZone;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    return-object v0
.end method

.method public whitelist test-api useDaylightTime()Z
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/icu/impl/JavaTimeZone;->javatz:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method

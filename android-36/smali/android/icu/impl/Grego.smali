.class public Landroid/icu/impl/Grego;
.super Ljava/lang/Object;
.source "Grego.java"


# static fields
.field private static final blacklist DAYS_BEFORE:[I

.field private static final blacklist JULIAN_1970_CE:I = 0x253d8c

.field private static final blacklist JULIAN_1_CE:I = 0x1a4452

.field public static final blacklist MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final blacklist MILLIS_PER_DAY:I = 0x5265c00

.field public static final blacklist MILLIS_PER_HOUR:I = 0x36ee80

.field public static final blacklist MILLIS_PER_MINUTE:I = 0xea60

.field public static final blacklist MILLIS_PER_SECOND:I = 0x3e8

.field public static final blacklist MIN_MILLIS:J = -0x28ec76c40e65000L

.field private static final blacklist MONTH_LENGTH:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    const/16 v0, 0x18

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Landroid/icu/impl/Grego;->MONTH_LENGTH:[I

    .line 55
    new-array v0, v0, [I

    fill-array-data v0, :array_46

    sput-object v0, Landroid/icu/impl/Grego;->DAYS_BEFORE:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_46
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dayOfWeek(J)I
    .registers 7
    .param p0, "day"    # J

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 113
    .local v0, "remainder":[J
    const-wide/16 v1, 0x5

    add-long/2addr v1, p0

    const-wide/16 v3, 0x7

    invoke-static {v1, v2, v3, v4, v0}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    .line 114
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    long-to-int v1, v1

    .line 115
    .local v1, "dayOfWeek":I
    if-nez v1, :cond_13

    const/4 v2, 0x7

    goto :goto_14

    :cond_13
    move v2, v1

    .line 116
    .end local v1    # "dayOfWeek":I
    .local v2, "dayOfWeek":I
    :goto_14
    return v2
.end method

.method public static blacklist dayToFields(J[I)[I
    .registers 29
    .param p0, "day"    # J
    .param p2, "fields"    # [I

    .line 120
    move-object/from16 v0, p2

    const/4 v1, 0x5

    if-eqz v0, :cond_8

    array-length v2, v0

    if-ge v2, v1, :cond_a

    .line 121
    :cond_8
    new-array v0, v1, [I

    .line 124
    .end local p2    # "fields":[I
    .local v0, "fields":[I
    :cond_a
    const-wide/32 v1, 0xaf93a

    add-long v1, p0, v1

    .line 126
    .end local p0    # "day":J
    .local v1, "day":J
    const/4 v3, 0x1

    new-array v4, v3, [J

    .line 127
    .local v4, "rem":[J
    const-wide/32 v5, 0x23ab1

    invoke-static {v1, v2, v5, v6, v4}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v5

    .line 128
    .local v5, "n400":J
    const/4 v7, 0x0

    aget-wide v8, v4, v7

    const-wide/32 v10, 0x8eac

    invoke-static {v8, v9, v10, v11, v4}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v8

    .line 129
    .local v8, "n100":J
    aget-wide v10, v4, v7

    const-wide/16 v12, 0x5b5

    invoke-static {v10, v11, v12, v13, v4}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v10

    .line 130
    .local v10, "n4":J
    aget-wide v12, v4, v7

    const-wide/16 v14, 0x16d

    invoke-static {v12, v13, v14, v15, v4}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v12

    .line 132
    .local v12, "n1":J
    const-wide/16 v14, 0x190

    mul-long/2addr v14, v5

    const-wide/16 v16, 0x64

    mul-long v16, v16, v8

    add-long v14, v14, v16

    const-wide/16 v16, 0x4

    mul-long v18, v10, v16

    add-long v14, v14, v18

    add-long/2addr v14, v12

    long-to-int v14, v14

    .line 133
    .local v14, "year":I
    move/from16 p0, v7

    move-wide/from16 p1, v8

    .end local v8    # "n100":J
    .local p1, "n100":J
    aget-wide v7, v4, p0

    long-to-int v7, v7

    .line 134
    .local v7, "dayOfYear":I
    cmp-long v8, p1, v16

    if-eqz v8, :cond_57

    cmp-long v8, v12, v16

    if-nez v8, :cond_54

    goto :goto_57

    .line 138
    :cond_54
    add-int/lit8 v14, v14, 0x1

    goto :goto_59

    .line 135
    :cond_57
    :goto_57
    const/16 v7, 0x16d

    .line 141
    :goto_59
    invoke-static {v14}, Landroid/icu/impl/Grego;->isLeapYear(I)Z

    move-result v8

    .line 142
    .local v8, "isLeap":Z
    const/4 v9, 0x0

    .line 143
    .local v9, "correction":I
    if-eqz v8, :cond_63

    const/16 v15, 0x3c

    goto :goto_65

    :cond_63
    const/16 v15, 0x3b

    .line 144
    .local v15, "march1":I
    :goto_65
    const/16 v16, 0x2

    if-lt v7, v15, :cond_72

    .line 145
    if-eqz v8, :cond_6e

    move/from16 v17, v3

    goto :goto_70

    :cond_6e
    move/from16 v17, v16

    :goto_70
    move/from16 v9, v17

    .line 147
    :cond_72
    add-int v17, v7, v9

    mul-int/lit8 v17, v17, 0xc

    move/from16 v18, v3

    add-int/lit8 v3, v17, 0x6

    div-int/lit16 v3, v3, 0x16f

    .line 148
    .local v3, "month":I
    sget-object v17, Landroid/icu/impl/Grego;->DAYS_BEFORE:[I

    if-eqz v8, :cond_83

    add-int/lit8 v19, v3, 0xc

    goto :goto_85

    :cond_83
    move/from16 v19, v3

    :goto_85
    aget v17, v17, v19

    sub-int v17, v7, v17

    add-int/lit8 v17, v17, 0x1

    .line 149
    .local v17, "dayOfMonth":I
    const-wide/16 v19, 0x2

    add-long v19, v1, v19

    const-wide/16 v21, 0x7

    move-object/from16 v23, v0

    move-wide/from16 v24, v1

    .end local v0    # "fields":[I
    .end local v1    # "day":J
    .local v23, "fields":[I
    .local v24, "day":J
    rem-long v0, v19, v21

    long-to-int v0, v0

    .line 150
    .local v0, "dayOfWeek":I
    move/from16 v1, v18

    if-ge v0, v1, :cond_9e

    .line 151
    add-int/lit8 v0, v0, 0x7

    .line 153
    :cond_9e
    add-int/2addr v7, v1

    .line 155
    aput v14, v23, p0

    .line 156
    aput v3, v23, v1

    .line 157
    aput v17, v23, v16

    .line 158
    const/4 v1, 0x3

    aput v0, v23, v1

    .line 159
    const/4 v1, 0x4

    aput v7, v23, v1

    .line 161
    return-object v23
.end method

.method public static blacklist fieldsToDay(III)J
    .registers 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dom"    # I

    .line 98
    add-int/lit8 v0, p0, -0x1

    .line 99
    .local v0, "y":I
    mul-int/lit16 v1, v0, 0x16d

    int-to-long v1, v1

    int-to-long v3, v0

    .line 100
    const-wide/16 v5, 0x4

    invoke-static {v3, v4, v5, v6}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/32 v3, 0x1a444f

    add-long/2addr v1, v3

    int-to-long v3, v0

    .line 101
    const-wide/16 v5, 0x190

    invoke-static {v3, v4, v5, v6}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    const-wide/16 v5, 0x64

    invoke-static {v3, v4, v5, v6}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    sget-object v3, Landroid/icu/impl/Grego;->DAYS_BEFORE:[I

    .line 102
    invoke-static {p0}, Landroid/icu/impl/Grego;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/16 v4, 0xc

    goto :goto_30

    :cond_2f
    const/4 v4, 0x0

    :goto_30
    add-int/2addr v4, p1

    aget v3, v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, p2

    add-long/2addr v1, v3

    .line 103
    .local v1, "julian":J
    const-wide/32 v3, 0x253d8c

    sub-long v3, v1, v3

    return-wide v3
.end method

.method public static blacklist floorDivide(JJ)J
    .registers 8
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .line 188
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    .line 189
    div-long v0, p0, p2

    goto :goto_10

    .line 190
    :cond_9
    const-wide/16 v0, 0x1

    add-long v2, p0, v0

    div-long/2addr v2, p2

    sub-long v0, v2, v0

    .line 188
    :goto_10
    return-wide v0
.end method

.method private static blacklist floorDivide(JJ[J)J
    .registers 11
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J
    .param p4, "remainder"    # [J

    .line 194
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    .line 195
    rem-long v2, p0, p2

    aput-wide v2, p4, v1

    .line 196
    div-long v0, p0, p2

    return-wide v0

    .line 198
    :cond_e
    const-wide/16 v2, 0x1

    add-long v4, p0, v2

    div-long/2addr v4, p2

    sub-long/2addr v4, v2

    .line 199
    .local v4, "quotient":J
    mul-long v2, v4, p2

    sub-long v2, p0, v2

    aput-wide v2, p4, v1

    .line 200
    return-wide v4
.end method

.method public static blacklist getDayOfWeekInMonth(III)I
    .registers 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 208
    add-int/lit8 v0, p2, 0x6

    div-int/lit8 v0, v0, 0x7

    .line 209
    .local v0, "weekInMonth":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 210
    add-int/lit8 v1, p2, 0x7

    invoke-static {p0, p1}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v2

    if-le v1, v2, :cond_15

    .line 211
    const/4 v0, -0x1

    goto :goto_15

    .line 213
    :cond_11
    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    .line 214
    const/4 v0, -0x1

    .line 216
    :cond_15
    :goto_15
    return v0
.end method

.method public static final blacklist isLeapYear(I)Z
    .registers 2
    .param p0, "year"    # I

    .line 66
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static final blacklist monthLength(II)I
    .registers 4
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 76
    sget-object v0, Landroid/icu/impl/Grego;->MONTH_LENGTH:[I

    invoke-static {p0}, Landroid/icu/impl/Grego;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public static final blacklist previousMonthLength(II)I
    .registers 3
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 86
    if-lez p1, :cond_9

    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v0

    goto :goto_b

    :cond_9
    const/16 v0, 0x1f

    :goto_b
    return v0
.end method

.method public static blacklist timeToFields(J[I)[I
    .registers 8
    .param p0, "time"    # J
    .param p2, "fields"    # [I

    .line 175
    const/4 v0, 0x6

    if-eqz p2, :cond_6

    array-length v1, p2

    if-ge v1, v0, :cond_8

    .line 176
    :cond_6
    new-array p2, v0, [I

    .line 178
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 179
    .local v0, "remainder":[J
    const-wide/32 v1, 0x5265c00

    invoke-static {p0, p1, v1, v2, v0}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v1

    .line 180
    .local v1, "day":J
    invoke-static {v1, v2, p2}, Landroid/icu/impl/Grego;->dayToFields(J[I)[I

    .line 181
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    long-to-int v3, v3

    const/4 v4, 0x5

    aput v3, p2, v4

    .line 182
    return-object p2
.end method

.method public static blacklist timeToString(J)Ljava/lang/String;
    .registers 16
    .param p0, "time"    # J

    .line 226
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v1

    .line 227
    .local v1, "fields":[I
    const/4 v2, 0x5

    aget v2, v1, v2

    .line 228
    .local v2, "millis":I
    const v3, 0x36ee80

    div-int v4, v2, v3

    .line 229
    .local v4, "hour":I
    rem-int/2addr v2, v3

    .line 230
    const v3, 0xea60

    div-int v5, v2, v3

    .line 231
    .local v5, "min":I
    rem-int/2addr v2, v3

    .line 232
    div-int/lit16 v3, v2, 0x3e8

    .line 233
    .local v3, "sec":I
    rem-int/lit16 v2, v2, 0x3e8

    .line 235
    move-object v6, v0

    check-cast v6, Ljava/util/Locale;

    const/4 v6, 0x0

    aget v6, v1, v6

    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v6, 0x1

    aget v8, v1, v6

    add-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v6, 0x2

    aget v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v7 .. v13}, [Ljava/lang/Object;

    move-result-object v6

    .line 235
    const-string v7, "%04d-%02d-%02dT%02d:%02d:%02d.%03dZ"

    invoke-static {v0, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

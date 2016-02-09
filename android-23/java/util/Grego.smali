.class Ljava/util/Grego;
.super Ljava/lang/Object;
.source "Grego.java"


# static fields
.field private static final DAYS_BEFORE:[I

.field private static final JULIAN_1970_CE:I = 0x253d8c

.field private static final JULIAN_1_CE:I = 0x1a4452

.field public static final MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final MILLIS_PER_DAY:I = 0x5265c00

.field public static final MILLIS_PER_HOUR:I = 0x36ee80

.field public static final MILLIS_PER_MINUTE:I = 0xea60

.field public static final MILLIS_PER_SECOND:I = 0x3e8

.field public static final MIN_MILLIS:J = -0x28ec76c40e65000L

.field private static final MONTH_LENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x18

    #@2
    .line 46
    new-array v0, v1, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Ljava/util/Grego;->MONTH_LENGTH:[I

    #@9
    .line 51
    new-array v0, v1, [I

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Ljava/util/Grego;->DAYS_BEFORE:[I

    #@10
    .line 29
    return-void

    #@11
    .line 46
    nop

    #@12
    :array_0
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

    #@46
    .line 51
    :array_1
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

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dayOfWeek(J)I
    .locals 8
    .param p0, "day"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 108
    const/4 v2, 0x1

    #@2
    new-array v1, v2, [J

    #@4
    .line 109
    .local v1, "remainder":[J
    const-wide/16 v2, 0x5

    #@6
    add-long/2addr v2, p0

    #@7
    const-wide/16 v4, 0x7

    #@9
    invoke-static {v2, v3, v4, v5, v1}, Ljava/util/Grego;->floorDivide(JJ[J)J

    #@c
    .line 110
    aget-wide v2, v1, v6

    #@e
    long-to-int v0, v2

    #@f
    .line 111
    .local v0, "dayOfWeek":I
    if-nez v0, :cond_0

    #@11
    const/4 v0, 0x7

    #@12
    .line 112
    :cond_0
    return v0
.end method

.method public static dayToFields(J[I)[I
    .locals 26
    .param p0, "day"    # J
    .param p2, "fields"    # [I

    #@0
    .prologue
    .line 116
    if-eqz p2, :cond_0

    #@2
    move-object/from16 v0, p2

    #@4
    array-length v0, v0

    #@5
    move/from16 v21, v0

    #@7
    const/16 v22, 0x5

    #@9
    move/from16 v0, v21

    #@b
    move/from16 v1, v22

    #@d
    if-ge v0, v1, :cond_1

    #@f
    .line 117
    :cond_0
    const/16 v21, 0x5

    #@11
    move/from16 v0, v21

    #@13
    new-array v0, v0, [I

    #@15
    move-object/from16 p2, v0

    #@17
    .line 120
    :cond_1
    const-wide/32 v22, 0xaf93a

    #@1a
    add-long p0, p0, v22

    #@1c
    .line 122
    const/16 v21, 0x1

    #@1e
    move/from16 v0, v21

    #@20
    new-array v11, v0, [J

    #@22
    .line 123
    .local v11, "rem":[J
    const-wide/32 v22, 0x23ab1

    #@25
    move-wide/from16 v0, p0

    #@27
    move-wide/from16 v2, v22

    #@29
    invoke-static {v0, v1, v2, v3, v11}, Ljava/util/Grego;->floorDivide(JJ[J)J

    #@2c
    move-result-wide v18

    #@2d
    .line 124
    .local v18, "n400":J
    const/16 v21, 0x0

    #@2f
    aget-wide v22, v11, v21

    #@31
    const-wide/32 v24, 0x8eac

    #@34
    move-wide/from16 v0, v22

    #@36
    move-wide/from16 v2, v24

    #@38
    invoke-static {v0, v1, v2, v3, v11}, Ljava/util/Grego;->floorDivide(JJ[J)J

    #@3b
    move-result-wide v14

    #@3c
    .line 125
    .local v14, "n100":J
    const/16 v21, 0x0

    #@3e
    aget-wide v22, v11, v21

    #@40
    const-wide/16 v24, 0x5b5

    #@42
    move-wide/from16 v0, v22

    #@44
    move-wide/from16 v2, v24

    #@46
    invoke-static {v0, v1, v2, v3, v11}, Ljava/util/Grego;->floorDivide(JJ[J)J

    #@49
    move-result-wide v16

    #@4a
    .line 126
    .local v16, "n4":J
    const/16 v21, 0x0

    #@4c
    aget-wide v22, v11, v21

    #@4e
    const-wide/16 v24, 0x16d

    #@50
    move-wide/from16 v0, v22

    #@52
    move-wide/from16 v2, v24

    #@54
    invoke-static {v0, v1, v2, v3, v11}, Ljava/util/Grego;->floorDivide(JJ[J)J

    #@57
    move-result-wide v12

    #@58
    .line 128
    .local v12, "n1":J
    const-wide/16 v22, 0x190

    #@5a
    mul-long v22, v22, v18

    #@5c
    const-wide/16 v24, 0x64

    #@5e
    mul-long v24, v24, v14

    #@60
    add-long v22, v22, v24

    #@62
    const-wide/16 v24, 0x4

    #@64
    mul-long v24, v24, v16

    #@66
    add-long v22, v22, v24

    #@68
    add-long v22, v22, v12

    #@6a
    move-wide/from16 v0, v22

    #@6c
    long-to-int v0, v0

    #@6d
    move/from16 v20, v0

    #@6f
    .line 129
    .local v20, "year":I
    const/16 v21, 0x0

    #@71
    aget-wide v22, v11, v21

    #@73
    move-wide/from16 v0, v22

    #@75
    long-to-int v7, v0

    #@76
    .line 130
    .local v7, "dayOfYear":I
    const-wide/16 v22, 0x4

    #@78
    cmp-long v21, v14, v22

    #@7a
    if-eqz v21, :cond_2

    #@7c
    const-wide/16 v22, 0x4

    #@7e
    cmp-long v21, v12, v22

    #@80
    if-nez v21, :cond_5

    #@82
    .line 131
    :cond_2
    const/16 v7, 0x16d

    #@84
    .line 137
    :goto_0
    invoke-static/range {v20 .. v20}, Ljava/util/Grego;->isLeapYear(I)Z

    #@87
    move-result v8

    #@88
    .line 138
    .local v8, "isLeap":Z
    const/4 v4, 0x0

    #@89
    .line 139
    .local v4, "correction":I
    if-eqz v8, :cond_6

    #@8b
    const/16 v9, 0x3c

    #@8d
    .line 140
    .local v9, "march1":I
    :goto_1
    if-lt v7, v9, :cond_3

    #@8f
    .line 141
    if-eqz v8, :cond_7

    #@91
    const/4 v4, 0x1

    #@92
    .line 143
    :cond_3
    :goto_2
    add-int v21, v7, v4

    #@94
    mul-int/lit8 v21, v21, 0xc

    #@96
    add-int/lit8 v21, v21, 0x6

    #@98
    move/from16 v0, v21

    #@9a
    div-int/lit16 v10, v0, 0x16f

    #@9c
    .line 144
    .local v10, "month":I
    sget-object v22, Ljava/util/Grego;->DAYS_BEFORE:[I

    #@9e
    if-eqz v8, :cond_8

    #@a0
    add-int/lit8 v21, v10, 0xc

    #@a2
    :goto_3
    aget v21, v22, v21

    #@a4
    sub-int v21, v7, v21

    #@a6
    add-int/lit8 v5, v21, 0x1

    #@a8
    .line 145
    .local v5, "dayOfMonth":I
    const-wide/16 v22, 0x2

    #@aa
    add-long v22, v22, p0

    #@ac
    const-wide/16 v24, 0x7

    #@ae
    rem-long v22, v22, v24

    #@b0
    move-wide/from16 v0, v22

    #@b2
    long-to-int v6, v0

    #@b3
    .line 146
    .local v6, "dayOfWeek":I
    const/16 v21, 0x1

    #@b5
    move/from16 v0, v21

    #@b7
    if-ge v6, v0, :cond_4

    #@b9
    .line 147
    add-int/lit8 v6, v6, 0x7

    #@bb
    .line 149
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@bd
    .line 151
    const/16 v21, 0x0

    #@bf
    aput v20, p2, v21

    #@c1
    .line 152
    const/16 v21, 0x1

    #@c3
    aput v10, p2, v21

    #@c5
    .line 153
    const/16 v21, 0x2

    #@c7
    aput v5, p2, v21

    #@c9
    .line 154
    const/16 v21, 0x3

    #@cb
    aput v6, p2, v21

    #@cd
    .line 155
    const/16 v21, 0x4

    #@cf
    aput v7, p2, v21

    #@d1
    .line 157
    return-object p2

    #@d2
    .line 134
    .end local v4    # "correction":I
    .end local v5    # "dayOfMonth":I
    .end local v6    # "dayOfWeek":I
    .end local v8    # "isLeap":Z
    .end local v9    # "march1":I
    .end local v10    # "month":I
    :cond_5
    add-int/lit8 v20, v20, 0x1

    #@d4
    goto :goto_0

    #@d5
    .line 139
    .restart local v4    # "correction":I
    .restart local v8    # "isLeap":Z
    :cond_6
    const/16 v9, 0x3b

    #@d7
    .restart local v9    # "march1":I
    goto :goto_1

    #@d8
    .line 141
    :cond_7
    const/4 v4, 0x2

    #@d9
    goto :goto_2

    #@da
    .restart local v10    # "month":I
    :cond_8
    move/from16 v21, v10

    #@dc
    .line 144
    goto :goto_3
.end method

.method public static fieldsToDay(III)J
    .locals 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dom"    # I

    #@0
    .prologue
    .line 94
    add-int/lit8 v2, p0, -0x1

    #@2
    .line 96
    .local v2, "y":I
    mul-int/lit16 v3, v2, 0x16d

    #@4
    int-to-long v4, v3

    #@5
    int-to-long v6, v2

    #@6
    const-wide/16 v8, 0x4

    #@8
    invoke-static {v6, v7, v8, v9}, Ljava/util/Grego;->floorDivide(JJ)J

    #@b
    move-result-wide v6

    #@c
    add-long/2addr v4, v6

    #@d
    const-wide/32 v6, 0x1a444f

    #@10
    add-long/2addr v4, v6

    #@11
    .line 97
    int-to-long v6, v2

    #@12
    const-wide/16 v8, 0x190

    #@14
    invoke-static {v6, v7, v8, v9}, Ljava/util/Grego;->floorDivide(JJ)J

    #@17
    move-result-wide v6

    #@18
    .line 96
    add-long/2addr v4, v6

    #@19
    .line 97
    int-to-long v6, v2

    #@1a
    const-wide/16 v8, 0x64

    #@1c
    invoke-static {v6, v7, v8, v9}, Ljava/util/Grego;->floorDivide(JJ)J

    #@1f
    move-result-wide v6

    #@20
    .line 96
    sub-long/2addr v4, v6

    #@21
    .line 97
    const-wide/16 v6, 0x2

    #@23
    .line 96
    add-long/2addr v4, v6

    #@24
    .line 98
    sget-object v6, Ljava/util/Grego;->DAYS_BEFORE:[I

    #@26
    invoke-static {p0}, Ljava/util/Grego;->isLeapYear(I)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    const/16 v3, 0xc

    #@2e
    :goto_0
    add-int/2addr v3, p1

    #@2f
    aget v3, v6, v3

    #@31
    int-to-long v6, v3

    #@32
    .line 96
    add-long/2addr v4, v6

    #@33
    .line 98
    int-to-long v6, p2

    #@34
    .line 96
    add-long v0, v4, v6

    #@36
    .line 99
    .local v0, "julian":J
    const-wide/32 v4, 0x253d8c

    #@39
    sub-long v4, v0, v4

    #@3b
    return-wide v4

    #@3c
    .line 98
    .end local v0    # "julian":J
    :cond_0
    const/4 v3, 0x0

    #@3d
    goto :goto_0
.end method

.method public static floorDivide(JJ)J
    .locals 4
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x1

    #@2
    .line 184
    const-wide/16 v0, 0x0

    #@4
    cmp-long v0, p0, v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 185
    div-long v0, p0, p2

    #@a
    .line 184
    :goto_0
    return-wide v0

    #@b
    .line 186
    :cond_0
    add-long v0, p0, v2

    #@d
    div-long/2addr v0, p2

    #@e
    sub-long/2addr v0, v2

    #@f
    goto :goto_0
.end method

.method private static floorDivide(JJ[J)J
    .locals 8
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J
    .param p4, "remainder"    # [J

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 190
    const-wide/16 v2, 0x0

    #@5
    cmp-long v2, p0, v2

    #@7
    if-ltz v2, :cond_0

    #@9
    .line 191
    rem-long v2, p0, p2

    #@b
    aput-wide v2, p4, v4

    #@d
    .line 192
    div-long v2, p0, p2

    #@f
    return-wide v2

    #@10
    .line 194
    :cond_0
    add-long v2, p0, v6

    #@12
    div-long/2addr v2, p2

    #@13
    sub-long v0, v2, v6

    #@15
    .line 195
    .local v0, "quotient":J
    mul-long v2, v0, p2

    #@17
    sub-long v2, p0, v2

    #@19
    aput-wide v2, p4, v4

    #@1b
    .line 196
    return-wide v0
.end method

.method public static getDayOfWeekInMonth(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    #@0
    .prologue
    .line 204
    add-int/lit8 v1, p2, 0x6

    #@2
    div-int/lit8 v0, v1, 0x7

    #@4
    .line 205
    .local v0, "weekInMonth":I
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_1

    #@7
    .line 206
    add-int/lit8 v1, p2, 0x7

    #@9
    invoke-static {p0, p1}, Ljava/util/Grego;->monthLength(II)I

    #@c
    move-result v2

    #@d
    if-le v1, v2, :cond_0

    #@f
    .line 207
    const/4 v0, -0x1

    #@10
    .line 212
    :cond_0
    :goto_0
    return v0

    #@11
    .line 209
    :cond_1
    const/4 v1, 0x5

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 210
    const/4 v0, -0x1

    #@15
    goto :goto_0
.end method

.method public static final isLeapYear(I)Z
    .locals 3
    .param p0, "year"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 62
    and-int/lit8 v2, p0, 0x3

    #@4
    if-nez v2, :cond_1

    #@6
    rem-int/lit8 v2, p0, 0x64

    #@8
    if-nez v2, :cond_0

    #@a
    rem-int/lit16 v2, p0, 0x190

    #@c
    if-nez v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public static final monthLength(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    #@0
    .prologue
    .line 72
    sget-object v1, Ljava/util/Grego;->MONTH_LENGTH:[I

    #@2
    invoke-static {p0}, Ljava/util/Grego;->isLeapYear(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/16 v0, 0xc

    #@a
    :goto_0
    add-int/2addr v0, p1

    #@b
    aget v0, v1, v0

    #@d
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public static final previousMonthLength(II)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I

    #@0
    .prologue
    .line 82
    if-lez p1, :cond_0

    #@2
    add-int/lit8 v0, p1, -0x1

    #@4
    invoke-static {p0, v0}, Ljava/util/Grego;->monthLength(II)I

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/16 v0, 0x1f

    #@b
    goto :goto_0
.end method

.method public static timeToFields(J[I)[I
    .locals 6
    .param p0, "time"    # J
    .param p2, "fields"    # [I

    #@0
    .prologue
    const/4 v4, 0x6

    #@1
    .line 171
    if-eqz p2, :cond_0

    #@3
    array-length v3, p2

    #@4
    if-ge v3, v4, :cond_1

    #@6
    .line 172
    :cond_0
    new-array p2, v4, [I

    #@8
    .line 174
    :cond_1
    const/4 v3, 0x1

    #@9
    new-array v2, v3, [J

    #@b
    .line 175
    .local v2, "remainder":[J
    const-wide/32 v4, 0x5265c00

    #@e
    invoke-static {p0, p1, v4, v5, v2}, Ljava/util/Grego;->floorDivide(JJ[J)J

    #@11
    move-result-wide v0

    #@12
    .line 176
    .local v0, "day":J
    invoke-static {v0, v1, p2}, Ljava/util/Grego;->dayToFields(J[I)[I

    #@15
    .line 177
    const/4 v3, 0x0

    #@16
    aget-wide v4, v2, v3

    #@18
    long-to-int v3, v4

    #@19
    const/4 v4, 0x5

    #@1a
    aput v3, p2, v4

    #@1c
    .line 178
    return-object p2
.end method

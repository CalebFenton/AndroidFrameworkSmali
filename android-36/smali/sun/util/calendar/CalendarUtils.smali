.class public Lsun/util/calendar/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist amod(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 144
    invoke-static {p0, p1}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result v0

    .line 145
    .local v0, "z":I
    if-nez v0, :cond_8

    move v1, p1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    return v1
.end method

.method public static final blacklist amod(JJ)J
    .registers 8
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 149
    invoke-static {p0, p1, p2, p3}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v0

    .line 150
    .local v0, "z":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    move-wide v2, p2

    goto :goto_d

    :cond_c
    move-wide v2, v0

    :goto_d
    return-wide v2
.end method

.method public static final greylist-max-r floorDivide(II)I
    .registers 3
    .param p0, "n"    # I
    .param p1, "d"    # I

    .line 85
    if-ltz p0, :cond_5

    .line 86
    div-int v0, p0, p1

    goto :goto_a

    :cond_5
    add-int/lit8 v0, p0, 0x1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 85
    :goto_a
    return v0
.end method

.method public static final blacklist floorDivide(II[I)I
    .registers 6
    .param p0, "n"    # I
    .param p1, "d"    # I
    .param p2, "r"    # [I

    .line 103
    const/4 v0, 0x0

    if-ltz p0, :cond_a

    .line 104
    rem-int v1, p0, p1

    aput v1, p2, v0

    .line 105
    div-int v0, p0, p1

    return v0

    .line 107
    :cond_a
    add-int/lit8 v1, p0, 0x1

    div-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 108
    .local v1, "q":I
    mul-int v2, v1, p1

    sub-int v2, p0, v2

    aput v2, p2, v0

    .line 109
    return v1
.end method

.method public static final blacklist floorDivide(JI[I)I
    .registers 12
    .param p0, "n"    # J
    .param p2, "d"    # I
    .param p3, "r"    # [I

    .line 126
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_12

    .line 127
    int-to-long v2, p2

    rem-long v2, p0, v2

    long-to-int v0, v2

    aput v0, p3, v1

    .line 128
    int-to-long v0, p2

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0

    .line 130
    :cond_12
    const-wide/16 v2, 0x1

    add-long v4, p0, v2

    int-to-long v6, p2

    div-long/2addr v4, v6

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .line 131
    .local v0, "q":I
    mul-int v2, v0, p2

    int-to-long v2, v2

    sub-long v2, p0, v2

    long-to-int v2, v2

    aput v2, p3, v1

    .line 132
    return v0
.end method

.method public static final greylist-max-r floorDivide(JJ)J
    .registers 8
    .param p0, "n"    # J
    .param p2, "d"    # J

    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    .line 72
    div-long v0, p0, p2

    goto :goto_10

    :cond_9
    const-wide/16 v0, 0x1

    add-long v2, p0, v0

    div-long/2addr v2, p2

    sub-long v0, v2, v0

    .line 71
    :goto_10
    return-wide v0
.end method

.method public static final blacklist isGregorianLeapYear(I)Z
    .registers 2
    .param p0, "gregorianYear"    # I

    .line 43
    rem-int/lit8 v0, p0, 0x4

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

.method public static final blacklist isJulianLeapYear(I)Z
    .registers 2
    .param p0, "normalizedJulianYear"    # I

    .line 58
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final greylist-max-r mod(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 140
    invoke-static {p0, p1}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    return v0
.end method

.method public static final greylist-max-r mod(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 136
    invoke-static {p0, p1, p2, p3}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static final blacklist sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .registers 9
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "value"    # I
    .param p2, "width"    # I

    .line 176
    int-to-long v0, p1

    .line 177
    .local v0, "d":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 178
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 179
    neg-long v0, v0

    .line 180
    add-int/lit8 p2, p2, -0x1

    .line 182
    :cond_f
    const/16 v2, 0xa

    .line 183
    .local v2, "n":I
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_12
    if-ge v3, p2, :cond_19

    .line 184
    mul-int/lit8 v2, v2, 0xa

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 186
    .end local v3    # "i":I
    :cond_19
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_1a
    if-ge v3, p2, :cond_2b

    int-to-long v4, v2

    cmp-long v4, v0, v4

    if-gez v4, :cond_2b

    .line 187
    const/16 v4, 0x30

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    div-int/lit8 v2, v2, 0xa

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 190
    .end local v3    # "i":I
    :cond_2b
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 191
    return-object p0
.end method

.method public static final blacklist sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .registers 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "width"    # I

    .line 157
    int-to-long v0, p1

    .line 158
    .local v0, "d":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 159
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    neg-long v0, v0

    .line 161
    add-int/lit8 p2, p2, -0x1

    .line 163
    :cond_f
    const/16 v2, 0xa

    .line 164
    .local v2, "n":I
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_12
    if-ge v3, p2, :cond_19

    .line 165
    mul-int/lit8 v2, v2, 0xa

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 167
    .end local v3    # "i":I
    :cond_19
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_1a
    if-ge v3, p2, :cond_2b

    int-to-long v4, v2

    cmp-long v4, v0, v4

    if-gez v4, :cond_2b

    .line 168
    const/16 v4, 0x30

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    div-int/lit8 v2, v2, 0xa

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 171
    .end local v3    # "i":I
    :cond_2b
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    return-object p0
.end method

.class public Landroid/icu/util/TimeArrayTimeZoneRule;
.super Landroid/icu/util/TimeZoneRule;
.source "TimeArrayTimeZoneRule.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0xf80c4d5c99c274dL


# instance fields
.field private final greylist-max-o startTimes:[J

.field private final greylist-max-o timeType:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;II[JI)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawOffset"    # I
    .param p3, "dstSavings"    # I
    .param p4, "startTimes"    # [J
    .param p5, "timeType"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 45
    if-eqz p4, :cond_18

    array-length v0, p4

    if-eqz v0, :cond_18

    .line 48
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    .line 49
    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 51
    iput p5, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    .line 52
    return-void

    .line 46
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No start times are specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getUTC(JII)J
    .registers 7
    .param p1, "time"    # J
    .param p3, "raw"    # I
    .param p4, "dst"    # I

    .line 150
    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 151
    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 153
    :cond_7
    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    if-nez v0, :cond_d

    .line 154
    int-to-long v0, p4

    sub-long/2addr p1, v0

    .line 156
    :cond_d
    return-wide p1
.end method


# virtual methods
.method public greylist-max-o getFinalStart(II)Ljava/util/Date;
    .registers 6
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    .line 88
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    invoke-direct {p0, v1, v2, p1, p2}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public greylist-max-o getFirstStart(II)Ljava/util/Date;
    .registers 6
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    .line 80
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-direct {p0, v1, v2, p1, p2}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public greylist-max-o getNextStart(JIIZ)Ljava/util/Date;
    .registers 10
    .param p1, "base"    # J
    .param p3, "prevOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    .line 96
    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 97
    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_1d

    .line 98
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v1, v1, v0

    invoke-direct {p0, v1, v2, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    .line 99
    .local v1, "time":J
    cmp-long v3, v1, p1

    if-ltz v3, :cond_1d

    if-nez p5, :cond_1a

    cmp-long v3, v1, p1

    if-nez v3, :cond_1a

    .line 100
    goto :goto_1d

    .line 97
    .end local v1    # "time":J
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 103
    :cond_1d
    :goto_1d
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_26

    .line 104
    const/4 v1, 0x0

    return-object v1

    .line 106
    :cond_26
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    add-int/lit8 v3, v0, 0x1

    aget-wide v2, v2, v3

    invoke-direct {p0, v2, v3, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public greylist-max-o getPreviousStart(JIIZ)Ljava/util/Date;
    .registers 10
    .param p1, "base"    # J
    .param p3, "prevOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    .line 114
    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 115
    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_23

    .line 116
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v1, v1, v0

    invoke-direct {p0, v1, v2, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v1

    .line 117
    .local v1, "time":J
    cmp-long v3, v1, p1

    if-ltz v3, :cond_1d

    if-eqz p5, :cond_1a

    cmp-long v3, v1, p1

    if-nez v3, :cond_1a

    goto :goto_1d

    .line 115
    .end local v1    # "time":J
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 118
    .restart local v1    # "time":J
    :cond_1d
    :goto_1d
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v3

    .line 121
    .end local v1    # "time":J
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getStartTimes()[J
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public greylist-max-o getTimeType()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    return v0
.end method

.method public greylist-max-o isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .registers 5
    .param p1, "other"    # Landroid/icu/util/TimeZoneRule;

    .line 129
    instance-of v0, p1, Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 130
    return v1

    .line 132
    :cond_6
    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    move-object v2, p1

    check-cast v2, Landroid/icu/util/TimeArrayTimeZoneRule;

    iget v2, v2, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    move-object v2, p1

    check-cast v2, Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object v2, v2, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    .line 133
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 134
    invoke-super {p0, p1}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v0

    return v0

    .line 136
    :cond_21
    return v1
.end method

.method public greylist-max-o isTransitionRule()Z
    .registers 2

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ", timeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ", startTimes=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v2, v2

    if-ge v1, v2, :cond_36

    .line 172
    if-eqz v1, :cond_28

    .line 173
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_28
    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 177
    .end local v1    # "i":I
    :cond_36
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

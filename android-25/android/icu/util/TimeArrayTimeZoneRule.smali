.class public Landroid/icu/util/TimeArrayTimeZoneRule;
.super Landroid/icu/util/TimeZoneRule;
.source "TimeArrayTimeZoneRule.java"


# static fields
.field private static final serialVersionUID:J = -0xf80c4d5c99c274dL


# instance fields
.field private final startTimes:[J

.field private final timeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[JI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawOffset"    # I
    .param p3, "dstSavings"    # I
    .param p4, "startTimes"    # [J
    .param p5, "timeType"    # I

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@3
    .line 43
    if-eqz p4, :cond_0

    #@5
    array-length v0, p4

    #@6
    if-nez v0, :cond_1

    #@8
    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "No start times are specified."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 46
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [J

    #@17
    iput-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@19
    .line 47
    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@1b
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    #@1e
    .line 49
    iput p5, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    #@20
    .line 41
    return-void
.end method

.method private getUTC(JII)J
    .locals 3
    .param p1, "time"    # J
    .param p3, "raw"    # I
    .param p4, "dst"    # I

    #@0
    .prologue
    .line 142
    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 143
    int-to-long v0, p3

    #@6
    sub-long/2addr p1, v0

    #@7
    .line 145
    :cond_0
    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    #@9
    if-nez v0, :cond_1

    #@b
    .line 146
    int-to-long v0, p4

    #@c
    sub-long/2addr p1, v0

    #@d
    .line 148
    :cond_1
    return-wide p1
.end method


# virtual methods
.method public getFinalStart(II)Ljava/util/Date;
    .locals 4
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    #@0
    .prologue
    .line 84
    new-instance v0, Ljava/util/Date;

    #@2
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@4
    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@6
    array-length v2, v2

    #@7
    add-int/lit8 v2, v2, -0x1

    #@9
    aget-wide v2, v1, v2

    #@b
    invoke-direct {p0, v2, v3, p1, p2}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    #@e
    move-result-wide v2

    #@f
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@12
    return-object v0
.end method

.method public getFirstStart(II)Ljava/util/Date;
    .locals 4
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/util/Date;

    #@2
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@4
    const/4 v2, 0x0

    #@5
    aget-wide v2, v1, v2

    #@7
    invoke-direct {p0, v2, v3, p1, p2}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    #@a
    move-result-wide v2

    #@b
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@e
    return-object v0
.end method

.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 7
    .param p1, "base"    # J
    .param p3, "prevOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    #@0
    .prologue
    .line 91
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@2
    array-length v1, v1

    #@3
    add-int/lit8 v0, v1, -0x1

    #@5
    .line 92
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@7
    .line 93
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@9
    aget-wide v4, v1, v0

    #@b
    invoke-direct {p0, v4, v5, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    #@e
    move-result-wide v2

    #@f
    .line 94
    .local v2, "time":J
    cmp-long v1, v2, p1

    #@11
    if-ltz v1, :cond_0

    #@13
    if-nez p5, :cond_1

    #@15
    cmp-long v1, v2, p1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 98
    .end local v2    # "time":J
    :cond_0
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@1b
    array-length v1, v1

    #@1c
    add-int/lit8 v1, v1, -0x1

    #@1e
    if-ne v0, v1, :cond_2

    #@20
    .line 99
    const/4 v1, 0x0

    #@21
    return-object v1

    #@22
    .line 92
    .restart local v2    # "time":J
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@24
    goto :goto_0

    #@25
    .line 101
    .end local v2    # "time":J
    :cond_2
    new-instance v1, Ljava/util/Date;

    #@27
    iget-object v4, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@29
    add-int/lit8 v5, v0, 0x1

    #@2b
    aget-wide v4, v4, v5

    #@2d
    invoke-direct {p0, v4, v5, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    #@30
    move-result-wide v4

    #@31
    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@34
    return-object v1
.end method

.method public getPreviousStart(JIIZ)Ljava/util/Date;
    .locals 7
    .param p1, "base"    # J
    .param p3, "prevOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    #@0
    .prologue
    .line 108
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@2
    array-length v1, v1

    #@3
    add-int/lit8 v0, v1, -0x1

    #@5
    .line 109
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@7
    .line 110
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@9
    aget-wide v4, v1, v0

    #@b
    invoke-direct {p0, v4, v5, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    #@e
    move-result-wide v2

    #@f
    .line 111
    .local v2, "time":J
    cmp-long v1, v2, p1

    #@11
    if-ltz v1, :cond_0

    #@13
    if-eqz p5, :cond_1

    #@15
    cmp-long v1, v2, p1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 112
    :cond_0
    new-instance v1, Ljava/util/Date;

    #@1b
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1e
    return-object v1

    #@1f
    .line 109
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 115
    .end local v2    # "time":J
    :cond_2
    const/4 v1, 0x0

    #@23
    return-object v1
.end method

.method public getStartTimes()[J
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [J

    #@8
    return-object v0
.end method

.method public getTimeType()I
    .locals 1

    #@0
    .prologue
    .line 70
    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    #@2
    return v0
.end method

.method public isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .locals 3
    .param p1, "other"    # Landroid/icu/util/TimeZoneRule;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 122
    instance-of v0, p1, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 123
    return v2

    #@6
    .line 125
    :cond_0
    iget v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    #@8
    move-object v0, p1

    #@9
    nop

    #@a
    nop

    #@b
    iget v0, v0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    #@d
    if-ne v1, v0, :cond_1

    #@f
    .line 126
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@11
    move-object v0, p1

    #@12
    nop

    #@13
    nop

    #@14
    iget-object v0, v0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@16
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([J[J)Z

    #@19
    move-result v0

    #@1a
    .line 125
    if-eqz v0, :cond_1

    #@1c
    .line 127
    invoke-super {p0, p1}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    #@1f
    move-result v0

    #@20
    return v0

    #@21
    .line 129
    :cond_1
    return v2
.end method

.method public isTransitionRule()Z
    .locals 1

    #@0
    .prologue
    .line 137
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 158
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 159
    const-string/jumbo v2, ", timeType="

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 160
    iget v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    .line 161
    const-string/jumbo v2, ", startTimes=["

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 162
    const/4 v1, 0x0

    #@1e
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@20
    array-length v2, v2

    #@21
    if-ge v1, v2, :cond_1

    #@23
    .line 163
    if-eqz v1, :cond_0

    #@25
    .line 164
    const-string/jumbo v2, ", "

    #@28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 166
    :cond_0
    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    #@2d
    aget-wide v2, v2, v1

    #@2f
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 162
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 168
    :cond_1
    const-string/jumbo v2, "]"

    #@3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    return-object v2
.end method

.class public Landroid/icu/util/AnnualTimeZoneRule;
.super Landroid/icu/util/TimeZoneRule;
.source "AnnualTimeZoneRule.java"


# static fields
.field public static final greylist-max-o MAX_YEAR:I = 0x7fffffff

.field private static final whitelist serialVersionUID:J = -0x7b1af05f36c7b6e0L


# instance fields
.field private final greylist-max-o dateTimeRule:Landroid/icu/util/DateTimeRule;

.field private final greylist-max-o endYear:I

.field private final greylist-max-o startYear:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawOffset"    # I
    .param p3, "dstSavings"    # I
    .param p4, "dateTimeRule"    # Landroid/icu/util/DateTimeRule;
    .param p5, "startYear"    # I
    .param p6, "endYear"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 54
    iput-object p4, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    .line 55
    iput p5, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    .line 56
    iput p6, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    .line 57
    return-void
.end method


# virtual methods
.method public greylist-max-o getEndYear()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    return v0
.end method

.method public greylist-max-o getFinalStart(II)Ljava/util/Date;
    .registers 5
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    .line 170
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_9
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFirstStart(II)Ljava/util/Date;
    .registers 4
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    .line 162
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getNextStart(JIIZ)Ljava/util/Date;
    .registers 11
    .param p1, "base"    # J
    .param p3, "prevRawOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    .line 181
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    .line 182
    .local v0, "fields":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 183
    .local v1, "year":I
    iget v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    if-ge v1, v2, :cond_11

    .line 184
    invoke-virtual {p0, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 186
    :cond_11
    invoke-virtual {p0, v1, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v2

    .line 187
    .local v2, "d":Ljava/util/Date;
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-ltz v3, :cond_29

    if-nez p5, :cond_2f

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2f

    .line 188
    :cond_29
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v2

    .line 190
    :cond_2f
    return-object v2
.end method

.method public greylist-max-o getPreviousStart(JIIZ)Ljava/util/Date;
    .registers 11
    .param p1, "base"    # J
    .param p3, "prevRawOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    .line 198
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    .line 199
    .local v0, "fields":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 200
    .local v1, "year":I
    iget v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    if-le v1, v2, :cond_11

    .line 201
    invoke-virtual {p0, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getFinalStart(II)Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 203
    :cond_11
    invoke-virtual {p0, v1, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v2

    .line 204
    .local v2, "d":Ljava/util/Date;
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gtz v3, :cond_29

    if-nez p5, :cond_2f

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2f

    .line 205
    :cond_29
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v2

    .line 207
    :cond_2f
    return-object v2
.end method

.method public greylist-max-o getRule()Landroid/icu/util/DateTimeRule;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    return-object v0
.end method

.method public greylist-max-o getStartInYear(III)Ljava/util/Date;
    .registers 13
    .param p1, "year"    # I
    .param p2, "prevRawOffset"    # I
    .param p3, "prevDSTSavings"    # I

    .line 102
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    if-lt p1, v0, :cond_c5

    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    if-le p1, v0, :cond_a

    goto/16 :goto_c5

    .line 107
    :cond_a
    iget-object v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v0

    .line 109
    .local v0, "type":I
    if-nez v0, :cond_24

    .line 110
    iget-object v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v1}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v1

    iget-object v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v1

    .local v1, "ruleDay":J
    goto/16 :goto_9e

    .line 112
    .end local v1    # "ruleDay":J
    :cond_24
    const/4 v1, 0x1

    .line 113
    .local v1, "after":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5d

    .line 114
    iget-object v3, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v3

    .line 115
    .local v3, "weeks":I
    if-lez v3, :cond_41

    .line 116
    iget-object v4, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v4}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v4

    invoke-static {p1, v4, v2}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v4

    .line 117
    .local v4, "ruleDay":J
    add-int/lit8 v2, v3, -0x1

    mul-int/lit8 v2, v2, 0x7

    int-to-long v6, v2

    add-long/2addr v4, v6

    goto :goto_5c

    .line 119
    .end local v4    # "ruleDay":J
    :cond_41
    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v2

    iget-object v4, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    .line 121
    invoke-virtual {v4}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v4

    invoke-static {p1, v4}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v4

    .line 120
    invoke-static {p1, v2, v4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v4

    .line 122
    .restart local v4    # "ruleDay":J
    add-int/lit8 v2, v3, 0x1

    mul-int/lit8 v2, v2, 0x7

    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 124
    .end local v3    # "weeks":I
    :goto_5c
    goto :goto_80

    .line 125
    .end local v4    # "ruleDay":J
    :cond_5d
    iget-object v3, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v3

    .line 126
    .local v3, "month":I
    iget-object v4, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v4}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v4

    .line 127
    .local v4, "dom":I
    const/4 v5, 0x3

    if-ne v0, v5, :cond_7b

    .line 128
    const/4 v1, 0x0

    .line 130
    if-ne v3, v2, :cond_7b

    const/16 v2, 0x1d

    if-ne v4, v2, :cond_7b

    invoke-static {p1}, Landroid/icu/impl/Grego;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 131
    add-int/lit8 v4, v4, -0x1

    .line 134
    :cond_7b
    invoke-static {p1, v3, v4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v5

    move-wide v4, v5

    .line 137
    .end local v3    # "month":I
    .local v4, "ruleDay":J
    :goto_80
    invoke-static {v4, v5}, Landroid/icu/impl/Grego;->dayOfWeek(J)I

    move-result v2

    .line 138
    .local v2, "dow":I
    iget-object v3, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v3

    sub-int/2addr v3, v2

    .line 139
    .local v3, "delta":I
    if-eqz v1, :cond_94

    .line 140
    if-gez v3, :cond_92

    add-int/lit8 v6, v3, 0x7

    goto :goto_93

    :cond_92
    move v6, v3

    .end local v3    # "delta":I
    .local v6, "delta":I
    :goto_93
    goto :goto_9a

    .line 142
    .end local v6    # "delta":I
    .restart local v3    # "delta":I
    :cond_94
    if-lez v3, :cond_99

    add-int/lit8 v6, v3, -0x7

    goto :goto_9a

    :cond_99
    move v6, v3

    .line 144
    .end local v3    # "delta":I
    .restart local v6    # "delta":I
    :goto_9a
    int-to-long v7, v6

    add-long v3, v4, v7

    move-wide v1, v3

    .line 147
    .end local v2    # "dow":I
    .end local v4    # "ruleDay":J
    .end local v6    # "delta":I
    .local v1, "ruleDay":J
    :goto_9e
    const-wide/32 v3, 0x5265c00

    mul-long/2addr v3, v1

    iget-object v5, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v5}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 148
    .local v3, "ruleTime":J
    iget-object v5, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v5}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b5

    .line 149
    int-to-long v5, p2

    sub-long/2addr v3, v5

    .line 151
    :cond_b5
    iget-object v5, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v5}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v5

    if-nez v5, :cond_bf

    .line 152
    int-to-long v5, p3

    sub-long/2addr v3, v5

    .line 154
    :cond_bf
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v5

    .line 103
    .end local v0    # "type":I
    .end local v1    # "ruleDay":J
    .end local v3    # "ruleTime":J
    :cond_c5
    :goto_c5
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getStartYear()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    return v0
.end method

.method public greylist-max-o isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .registers 6
    .param p1, "other"    # Landroid/icu/util/TimeZoneRule;

    .line 215
    instance-of v0, p1, Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 216
    return v1

    .line 218
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/util/AnnualTimeZoneRule;

    .line 219
    .local v0, "otherRule":Landroid/icu/util/AnnualTimeZoneRule;
    iget v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    iget v3, v0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    if-ne v2, v3, :cond_24

    iget v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    iget v3, v0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    iget-object v3, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 222
    invoke-super {p0, p1}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v1

    return v1

    .line 224
    :cond_24
    return v1
.end method

.method public greylist-max-o isTransitionRule()Z
    .registers 2

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rule={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", startYear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ", endYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_54

    .line 249
    const-string v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 251
    :cond_54
    iget v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    :goto_59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

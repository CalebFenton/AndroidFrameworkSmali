.class public Landroid/icu/util/AnnualTimeZoneRule;
.super Landroid/icu/util/TimeZoneRule;
.source "AnnualTimeZoneRule.java"


# static fields
.field public static final MAX_YEAR:I = 0x7fffffff

.field private static final serialVersionUID:J = -0x7b1af05f36c7b6e0L


# instance fields
.field private final dateTimeRule:Landroid/icu/util/DateTimeRule;

.field private final endYear:I

.field private final startYear:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawOffset"    # I
    .param p3, "dstSavings"    # I
    .param p4, "dateTimeRule"    # Landroid/icu/util/DateTimeRule;
    .param p5, "startYear"    # I
    .param p6, "endYear"    # I

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@6
    .line 54
    iput-object p4, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@8
    .line 55
    iput p5, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    #@a
    .line 56
    if-le p6, v0, :cond_0

    #@c
    move p6, v0

    #@d
    .end local p6    # "endYear":I
    :cond_0
    iput p6, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    #@f
    .line 52
    return-void
.end method


# virtual methods
.method public getEndYear()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    #@2
    return v0
.end method

.method public getFinalStart(II)Ljava/util/Date;
    .locals 2
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    #@0
    .prologue
    .line 178
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    #@2
    const v1, 0x7fffffff

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 179
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 181
    :cond_0
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    #@b
    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getFirstStart(II)Ljava/util/Date;
    .locals 1
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    #@0
    .prologue
    .line 170
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    #@2
    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 7
    .param p1, "base"    # J
    .param p3, "prevRawOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 189
    invoke-static {p1, p2, v3}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@4
    move-result-object v1

    #@5
    .line 190
    .local v1, "fields":[I
    const/4 v3, 0x0

    #@6
    aget v2, v1, v3

    #@8
    .line 191
    .local v2, "year":I
    iget v3, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    #@a
    if-ge v2, v3, :cond_0

    #@c
    .line 192
    invoke-virtual {p0, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 194
    :cond_0
    invoke-virtual {p0, v2, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    #@14
    move-result-object v0

    #@15
    .line 195
    .local v0, "d":Ljava/util/Date;
    if-eqz v0, :cond_2

    #@17
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@1a
    move-result-wide v4

    #@1b
    cmp-long v3, v4, p1

    #@1d
    if-ltz v3, :cond_1

    #@1f
    if-nez p5, :cond_2

    #@21
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@24
    move-result-wide v4

    #@25
    cmp-long v3, v4, p1

    #@27
    if-nez v3, :cond_2

    #@29
    .line 196
    :cond_1
    add-int/lit8 v3, v2, 0x1

    #@2b
    invoke-virtual {p0, v3, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    #@2e
    move-result-object v0

    #@2f
    .line 198
    :cond_2
    return-object v0
.end method

.method public getPreviousStart(JIIZ)Ljava/util/Date;
    .locals 7
    .param p1, "base"    # J
    .param p3, "prevRawOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 206
    invoke-static {p1, p2, v3}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@4
    move-result-object v1

    #@5
    .line 207
    .local v1, "fields":[I
    const/4 v3, 0x0

    #@6
    aget v2, v1, v3

    #@8
    .line 208
    .local v2, "year":I
    iget v3, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    #@a
    if-le v2, v3, :cond_0

    #@c
    .line 209
    invoke-virtual {p0, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getFinalStart(II)Ljava/util/Date;

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 211
    :cond_0
    invoke-virtual {p0, v2, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    #@14
    move-result-object v0

    #@15
    .line 212
    .local v0, "d":Ljava/util/Date;
    if-eqz v0, :cond_2

    #@17
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@1a
    move-result-wide v4

    #@1b
    cmp-long v3, v4, p1

    #@1d
    if-gtz v3, :cond_1

    #@1f
    if-nez p5, :cond_2

    #@21
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@24
    move-result-wide v4

    #@25
    cmp-long v3, v4, p1

    #@27
    if-nez v3, :cond_2

    #@29
    .line 213
    :cond_1
    add-int/lit8 v3, v2, -0x1

    #@2b
    invoke-virtual {p0, v3, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    #@2e
    move-result-object v0

    #@2f
    .line 215
    :cond_2
    return-object v0
.end method

.method public getRule()Landroid/icu/util/DateTimeRule;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@2
    return-object v0
.end method

.method public getStartInYear(III)Ljava/util/Date;
    .locals 18
    .param p1, "year"    # I
    .param p2, "prevRawOffset"    # I
    .param p3, "prevDSTSavings"    # I

    #@0
    .prologue
    .line 110
    move-object/from16 v0, p0

    #@2
    iget v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    #@4
    move/from16 v0, p1

    #@6
    if-lt v0, v13, :cond_0

    #@8
    move-object/from16 v0, p0

    #@a
    iget v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    #@c
    move/from16 v0, p1

    #@e
    if-le v0, v13, :cond_1

    #@10
    .line 111
    :cond_0
    const/4 v13, 0x0

    #@11
    return-object v13

    #@12
    .line 115
    :cond_1
    move-object/from16 v0, p0

    #@14
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@16
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    #@19
    move-result v7

    #@1a
    .line 117
    .local v7, "type":I
    if-nez v7, :cond_4

    #@1c
    .line 118
    move-object/from16 v0, p0

    #@1e
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@20
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@23
    move-result v13

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v14, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@28
    invoke-virtual {v14}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    #@2b
    move-result v14

    #@2c
    move/from16 v0, p1

    #@2e
    invoke-static {v0, v13, v14}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@31
    move-result-wide v8

    #@32
    .line 155
    .local v8, "ruleDay":J
    :goto_0
    const-wide/32 v14, 0x5265c00

    #@35
    mul-long/2addr v14, v8

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@3a
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    #@3d
    move-result v13

    #@3e
    int-to-long v0, v13

    #@3f
    move-wide/from16 v16, v0

    #@41
    add-long v10, v14, v16

    #@43
    .line 156
    .local v10, "ruleTime":J
    move-object/from16 v0, p0

    #@45
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@47
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    #@4a
    move-result v13

    #@4b
    const/4 v14, 0x2

    #@4c
    if-eq v13, v14, :cond_2

    #@4e
    .line 157
    move/from16 v0, p2

    #@50
    int-to-long v14, v0

    #@51
    sub-long/2addr v10, v14

    #@52
    .line 159
    :cond_2
    move-object/from16 v0, p0

    #@54
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@56
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    #@59
    move-result v13

    #@5a
    if-nez v13, :cond_3

    #@5c
    .line 160
    move/from16 v0, p3

    #@5e
    int-to-long v14, v0

    #@5f
    sub-long/2addr v10, v14

    #@60
    .line 162
    :cond_3
    new-instance v13, Ljava/util/Date;

    #@62
    invoke-direct {v13, v10, v11}, Ljava/util/Date;-><init>(J)V

    #@65
    return-object v13

    #@66
    .line 120
    .end local v8    # "ruleDay":J
    .end local v10    # "ruleTime":J
    :cond_4
    const/4 v2, 0x1

    #@67
    .line 121
    .local v2, "after":Z
    const/4 v13, 0x1

    #@68
    if-ne v7, v13, :cond_7

    #@6a
    .line 122
    move-object/from16 v0, p0

    #@6c
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@6e
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    #@71
    move-result v12

    #@72
    .line 123
    .local v12, "weeks":I
    if-lez v12, :cond_6

    #@74
    .line 124
    move-object/from16 v0, p0

    #@76
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@78
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@7b
    move-result v13

    #@7c
    const/4 v14, 0x1

    #@7d
    move/from16 v0, p1

    #@7f
    invoke-static {v0, v13, v14}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@82
    move-result-wide v8

    #@83
    .line 125
    .restart local v8    # "ruleDay":J
    add-int/lit8 v13, v12, -0x1

    #@85
    mul-int/lit8 v13, v13, 0x7

    #@87
    int-to-long v14, v13

    #@88
    add-long/2addr v8, v14

    #@89
    .line 145
    .end local v12    # "weeks":I
    :goto_1
    invoke-static {v8, v9}, Landroid/icu/impl/Grego;->dayOfWeek(J)I

    #@8c
    move-result v5

    #@8d
    .line 146
    .local v5, "dow":I
    move-object/from16 v0, p0

    #@8f
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@91
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    #@94
    move-result v13

    #@95
    sub-int v3, v13, v5

    #@97
    .line 147
    .local v3, "delta":I
    if-eqz v2, :cond_a

    #@99
    .line 148
    if-gez v3, :cond_5

    #@9b
    add-int/lit8 v3, v3, 0x7

    #@9d
    .line 152
    :cond_5
    :goto_2
    int-to-long v14, v3

    #@9e
    add-long/2addr v8, v14

    #@9f
    goto :goto_0

    #@a0
    .line 127
    .end local v3    # "delta":I
    .end local v5    # "dow":I
    .end local v8    # "ruleDay":J
    .restart local v12    # "weeks":I
    :cond_6
    const/4 v2, 0x0

    #@a1
    .line 128
    move-object/from16 v0, p0

    #@a3
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@a5
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@a8
    move-result v13

    #@a9
    .line 129
    move-object/from16 v0, p0

    #@ab
    iget-object v14, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@ad
    invoke-virtual {v14}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@b0
    move-result v14

    #@b1
    move/from16 v0, p1

    #@b3
    invoke-static {v0, v14}, Landroid/icu/impl/Grego;->monthLength(II)I

    #@b6
    move-result v14

    #@b7
    .line 128
    move/from16 v0, p1

    #@b9
    invoke-static {v0, v13, v14}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@bc
    move-result-wide v8

    #@bd
    .line 130
    .restart local v8    # "ruleDay":J
    add-int/lit8 v13, v12, 0x1

    #@bf
    mul-int/lit8 v13, v13, 0x7

    #@c1
    int-to-long v14, v13

    #@c2
    add-long/2addr v8, v14

    #@c3
    goto :goto_1

    #@c4
    .line 133
    .end local v8    # "ruleDay":J
    .end local v12    # "weeks":I
    :cond_7
    move-object/from16 v0, p0

    #@c6
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@c8
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@cb
    move-result v6

    #@cc
    .line 134
    .local v6, "month":I
    move-object/from16 v0, p0

    #@ce
    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@d0
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    #@d3
    move-result v4

    #@d4
    .line 135
    .local v4, "dom":I
    const/4 v13, 0x3

    #@d5
    if-ne v7, v13, :cond_8

    #@d7
    .line 136
    const/4 v2, 0x0

    #@d8
    .line 138
    const/4 v13, 0x1

    #@d9
    if-ne v6, v13, :cond_8

    #@db
    const/16 v13, 0x1d

    #@dd
    if-ne v4, v13, :cond_8

    #@df
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Grego;->isLeapYear(I)Z

    #@e2
    move-result v13

    #@e3
    if-eqz v13, :cond_9

    #@e5
    .line 142
    :cond_8
    :goto_3
    move/from16 v0, p1

    #@e7
    invoke-static {v0, v6, v4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@ea
    move-result-wide v8

    #@eb
    .restart local v8    # "ruleDay":J
    goto :goto_1

    #@ec
    .line 139
    .end local v8    # "ruleDay":J
    :cond_9
    add-int/lit8 v4, v4, -0x1

    #@ee
    goto :goto_3

    #@ef
    .line 150
    .end local v4    # "dom":I
    .end local v6    # "month":I
    .restart local v3    # "delta":I
    .restart local v5    # "dow":I
    .restart local v8    # "ruleDay":J
    :cond_a
    if-lez v3, :cond_5

    #@f1
    add-int/lit8 v3, v3, -0x7

    #@f3
    goto :goto_2
.end method

.method public getStartYear()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    #@2
    return v0
.end method

.method public isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .locals 4
    .param p1, "other"    # Landroid/icu/util/TimeZoneRule;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 223
    instance-of v1, p1, Landroid/icu/util/AnnualTimeZoneRule;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 224
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 226
    check-cast v0, Landroid/icu/util/AnnualTimeZoneRule;

    #@9
    .line 227
    .local v0, "otherRule":Landroid/icu/util/AnnualTimeZoneRule;
    iget v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    #@b
    iget v2, v0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    #@d
    if-ne v1, v2, :cond_1

    #@f
    .line 228
    iget v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    #@11
    iget v2, v0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    #@13
    if-ne v1, v2, :cond_1

    #@15
    .line 229
    iget-object v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@17
    iget-object v2, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@19
    invoke-virtual {v1, v2}, Landroid/icu/util/DateTimeRule;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 227
    if-eqz v1, :cond_1

    #@1f
    .line 230
    invoke-super {p0, p1}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .line 232
    :cond_1
    return v3
.end method

.method public isTransitionRule()Z
    .locals 1

    #@0
    .prologue
    .line 241
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 253
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 254
    const-string/jumbo v1, ", rule={"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "}"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 255
    const-string/jumbo v1, ", startYear="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    .line 256
    const-string/jumbo v1, ", endYear="

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 257
    iget v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    #@33
    const v2, 0x7fffffff

    #@36
    if-ne v1, v2, :cond_0

    #@38
    .line 258
    const-string/jumbo v1, "max"

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 262
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    return-object v1

    #@43
    .line 260
    :cond_0
    iget v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    goto :goto_0
.end method

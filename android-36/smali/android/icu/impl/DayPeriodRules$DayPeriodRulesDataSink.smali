.class final Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DayPeriodRulesDataSink"
.end annotation


# instance fields
.field private greylist-max-o cutoffType:Landroid/icu/impl/DayPeriodRules$CutoffType;

.field private greylist-max-o cutoffs:[I

.field private greylist-max-o data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

.field private greylist-max-o period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field private greylist-max-o ruleSetNum:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;)V
    .registers 3
    .param p1, "data"    # Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    .line 83
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 145
    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    .line 84
    iput-object p1, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;Landroid/icu/impl/DayPeriodRules-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;-><init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;)V

    return-void
.end method

.method private greylist-max-o addCutoff(Landroid/icu/impl/DayPeriodRules$CutoffType;Ljava/lang/String;)V
    .registers 8
    .param p1, "type"    # Landroid/icu/impl/DayPeriodRules$CutoffType;
    .param p2, "hourStr"    # Ljava/lang/String;

    .line 154
    if-eqz p1, :cond_14

    .line 155
    invoke-static {p2}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->parseHour(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "hour":I
    iget-object v1, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v4

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 157
    return-void

    .line 154
    .end local v0    # "hour":I
    :cond_14
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v1, "Cutoff type not recognized."

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseHour(Ljava/lang/String;)I
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 193
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 194
    .local v0, "firstColonPos":I
    if-ltz v0, :cond_3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":00"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 198
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "hourStr":Ljava/lang/String;
    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    goto :goto_28

    .line 200
    :cond_20
    new-instance v2, Landroid/icu/util/ICUException;

    const-string v3, "Cutoff time must begin with h: or hh:"

    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_28
    :goto_28
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 206
    .local v2, "hour":I
    if-ltz v2, :cond_33

    const/16 v3, 0x18

    if-gt v2, v3, :cond_33

    .line 210
    return v2

    .line 207
    :cond_33
    new-instance v3, Landroid/icu/util/ICUException;

    const-string v4, "Cutoff hour must be between 0 and 24, inclusive."

    invoke-direct {v3, v4}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    .end local v1    # "hourStr":Ljava/lang/String;
    .end local v2    # "hour":I
    :cond_3b
    new-instance v1, Landroid/icu/util/ICUException;

    const-string v2, "Cutoff time must end in \":00\"."

    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o processRules(Landroid/icu/impl/UResource$Table;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 15
    .param p1, "rules"    # Landroid/icu/impl/UResource$Table;
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;
    .param p3, "value"    # Landroid/icu/impl/UResource$Value;

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1, v0, p2, p3}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 106
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/DayPeriodRules;->-$$Nest$smparseSetNum(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    .line 107
    iget-object v1, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v1, v1, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    iget v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    new-instance v3, Landroid/icu/impl/DayPeriodRules;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/icu/impl/DayPeriodRules;-><init>(Landroid/icu/impl/DayPeriodRules-IA;)V

    aput-object v3, v1, v2

    .line 109
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v1

    .line 110
    .local v1, "ruleSet":Landroid/icu/impl/UResource$Table;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_24
    invoke-interface {v1, v2, p2, p3}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_90

    .line 111
    invoke-static {p2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;->-$$Nest$smfromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 112
    iget-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eqz v3, :cond_88

    .line 114
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v3

    .line 115
    .local v3, "periodDefinition":Landroid/icu/impl/UResource$Table;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3a
    invoke-interface {v3, v5, p2, p3}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 116
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v6

    if-nez v6, :cond_52

    .line 118
    invoke-static {p2}, Landroid/icu/impl/DayPeriodRules$CutoffType;->-$$Nest$smfromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$CutoffType;

    move-result-object v6

    .line 119
    .local v6, "type":Landroid/icu/impl/DayPeriodRules$CutoffType;
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->addCutoff(Landroid/icu/impl/DayPeriodRules$CutoffType;Ljava/lang/String;)V

    .line 120
    .end local v6    # "type":Landroid/icu/impl/DayPeriodRules$CutoffType;
    goto :goto_72

    .line 122
    :cond_52
    invoke-static {p2}, Landroid/icu/impl/DayPeriodRules$CutoffType;->-$$Nest$smfromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$CutoffType;

    move-result-object v6

    iput-object v6, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffType:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 123
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v6

    .line 124
    .local v6, "cutoffArray":Landroid/icu/impl/UResource$Array;
    invoke-interface {v6}, Landroid/icu/impl/UResource$Array;->getSize()I

    move-result v7

    .line 125
    .local v7, "length":I
    const/4 v8, 0x0

    .local v8, "l":I
    :goto_61
    if-ge v8, v7, :cond_72

    .line 126
    invoke-interface {v6, v8, p3}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 127
    iget-object v9, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffType:Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->addCutoff(Landroid/icu/impl/DayPeriodRules$CutoffType;Ljava/lang/String;)V

    .line 125
    add-int/lit8 v8, v8, 0x1

    goto :goto_61

    .line 115
    .end local v6    # "cutoffArray":Landroid/icu/impl/UResource$Array;
    .end local v7    # "length":I
    .end local v8    # "l":I
    :cond_72
    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 131
    .end local v5    # "k":I
    :cond_75
    invoke-direct {p0}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->setDayPeriodForHoursFromCutoffs()V

    .line 132
    const/4 v5, 0x0

    .restart local v5    # "k":I
    :goto_79
    iget-object v6, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    array-length v6, v6

    if-ge v5, v6, :cond_85

    .line 133
    iget-object v6, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aput v4, v6, v5

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    .line 110
    .end local v3    # "periodDefinition":Landroid/icu/impl/UResource$Table;
    .end local v5    # "k":I
    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 112
    :cond_88
    new-instance v3, Landroid/icu/util/ICUException;

    const-string v4, "Unknown day period in data."

    invoke-direct {v3, v4}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    .end local v2    # "j":I
    :cond_90
    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v2, v2, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    iget v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/icu/impl/DayPeriodRules;->-$$Nest$fgetdayPeriodForHour(Landroid/icu/impl/DayPeriodRules;)[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v2

    array-length v3, v2

    :goto_9d
    if-ge v4, v3, :cond_ae

    aget-object v5, v2, v4

    .line 137
    .local v5, "period":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    if-eqz v5, :cond_a6

    .line 136
    .end local v5    # "period":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    add-int/lit8 v4, v4, 0x1

    goto :goto_9d

    .line 138
    .restart local v5    # "period":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    :cond_a6
    new-instance v2, Landroid/icu/util/ICUException;

    const-string v3, "Rules in data don\'t cover all 24 hours (they should)."

    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v1    # "ruleSet":Landroid/icu/impl/UResource$Table;
    .end local v5    # "period":Landroid/icu/impl/DayPeriodRules$DayPeriod;
    :cond_ae
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 142
    .end local v0    # "i":I
    :cond_b2
    return-void
.end method

.method private greylist-max-o setDayPeriodForHoursFromCutoffs()V
    .registers 7

    .line 160
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v0, v0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    iget v1, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    aget-object v0, v0, v1

    .line 161
    .local v0, "rule":Landroid/icu/impl/DayPeriodRules;
    const/4 v1, 0x0

    .local v1, "startHour":I
    :goto_9
    const/16 v2, 0x18

    if-gt v1, v2, :cond_89

    .line 163
    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v2, v2, v1

    sget-object v3, Landroid/icu/impl/DayPeriodRules$CutoffType;->AT:Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v3}, Landroid/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    if-lez v2, :cond_3f

    .line 164
    if-nez v1, :cond_29

    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v3, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v2, v3, :cond_29

    .line 165
    invoke-static {v0, v4}, Landroid/icu/impl/DayPeriodRules;->-$$Nest$fputhasMidnight(Landroid/icu/impl/DayPeriodRules;Z)V

    goto :goto_3f

    .line 166
    :cond_29
    const/16 v2, 0xc

    if-ne v1, v2, :cond_37

    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v3, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v2, v3, :cond_37

    .line 167
    invoke-static {v0, v4}, Landroid/icu/impl/DayPeriodRules;->-$$Nest$fputhasNoon(Landroid/icu/impl/DayPeriodRules;Z)V

    goto :goto_3f

    .line 169
    :cond_37
    new-instance v2, Landroid/icu/util/ICUException;

    const-string v3, "AT cutoff must only be set for 0:00 or 12:00."

    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_3f
    :goto_3f
    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v2, v2, v1

    sget-object v3, Landroid/icu/impl/DayPeriodRules$CutoffType;->FROM:Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v3}, Landroid/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v3

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    if-gtz v2, :cond_5d

    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v2, v2, v1

    sget-object v3, Landroid/icu/impl/DayPeriodRules$CutoffType;->AFTER:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 175
    invoke-virtual {v3}, Landroid/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v3

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    if-lez v2, :cond_7b

    .line 176
    :cond_5d
    add-int/lit8 v2, v1, 0x1

    .line 177
    .local v2, "hour":I
    :goto_5f
    if-eq v2, v1, :cond_81

    .line 182
    const/16 v3, 0x19

    if-ne v2, v3, :cond_66

    const/4 v2, 0x0

    .line 183
    :cond_66
    iget-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v3, v3, v2

    sget-object v5, Landroid/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v5}, Landroid/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v5

    shl-int v5, v4, v5

    and-int/2addr v3, v5

    if-lez v3, :cond_7e

    .line 184
    iget-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/DayPeriodRules;->-$$Nest$madd(Landroid/icu/impl/DayPeriodRules;IILandroid/icu/impl/DayPeriodRules$DayPeriod;)V

    .line 185
    nop

    .line 161
    .end local v2    # "hour":I
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 176
    .restart local v2    # "hour":I
    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 179
    :cond_81
    new-instance v3, Landroid/icu/util/ICUException;

    const-string v4, "FROM/AFTER cutoffs must have a matching BEFORE cutoff."

    invoke-direct {v3, v4}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    .end local v1    # "startHour":I
    .end local v2    # "hour":I
    :cond_89
    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 12
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 89
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 90
    .local v0, "dayPeriodData":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 91
    const-string v2, "locales"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 92
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    .line 93
    .local v2, "locales":Landroid/icu/impl/UResource$Table;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_18
    invoke-interface {v2, v3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 94
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/impl/DayPeriodRules;->-$$Nest$smparseSetNum(Ljava/lang/String;)I

    move-result v4

    .line 95
    .local v4, "setNum":I
    iget-object v5, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v5, v5, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->localesToRuleSetNumMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v4    # "setNum":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .end local v2    # "locales":Landroid/icu/impl/UResource$Table;
    .end local v3    # "j":I
    :cond_38
    goto :goto_49

    .line 97
    :cond_39
    const-string v2, "rules"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 98
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    .line 99
    .local v2, "rules":Landroid/icu/impl/UResource$Table;
    invoke-direct {p0, v2, p1, p2}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->processRules(Landroid/icu/impl/UResource$Table;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_4a

    .line 97
    .end local v2    # "rules":Landroid/icu/impl/UResource$Table;
    :cond_49
    :goto_49
    nop

    .line 90
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 102
    .end local v1    # "i":I
    :cond_4d
    return-void
.end method

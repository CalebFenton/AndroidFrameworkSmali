.class Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/BasicPeriodBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Settings"
.end annotation


# instance fields
.field allowMillis:Z

.field allowZero:Z

.field inUse:Z

.field maxLimit:I

.field maxUnit:Landroid/icu/impl/duration/TimeUnit;

.field minLimit:I

.field minUnit:Landroid/icu/impl/duration/TimeUnit;

.field final synthetic this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

.field uset:S

.field weeksAloneOnly:Z


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)V
    .locals 2
    .param p1, "this$0"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 35
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 37
    const/16 v0, 0xff

    #@8
    iput-short v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    #@a
    .line 38
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    #@c
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    #@e
    .line 39
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    #@10
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    #@12
    .line 42
    iput-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    #@14
    .line 44
    iput-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    #@16
    .line 35
    return-void
.end method


# virtual methods
.method public copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2

    #@0
    .prologue
    .line 180
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@2
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)V

    #@7
    .line 181
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    #@9
    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    #@b
    .line 182
    iget-short v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    #@d
    iput-short v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    #@f
    .line 183
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    #@11
    iput-object v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    #@13
    .line 184
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    #@15
    iput-object v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    #@17
    .line 185
    iget v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    #@19
    iput v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    #@1b
    .line 186
    iget v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    #@1d
    iput v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    #@1f
    .line 187
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    #@21
    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    #@23
    .line 188
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    #@25
    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    #@27
    .line 189
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    #@29
    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    #@2b
    .line 190
    return-object v0
.end method

.method createLimited(JZ)Landroid/icu/impl/duration/Period;
    .locals 17
    .param p1, "duration"    # J
    .param p3, "inPast"    # Z

    #@0
    .prologue
    .line 160
    move-object/from16 v0, p0

    #@2
    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    #@4
    if-lez v5, :cond_0

    #@6
    .line 161
    move-object/from16 v0, p0

    #@8
    iget-object v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    #@a
    invoke-static {v5}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    #@d
    move-result-wide v8

    #@e
    .line 162
    .local v8, "maxUnitDuration":J
    const-wide/16 v10, 0x3e8

    #@10
    mul-long v10, v10, p1

    #@12
    move-object/from16 v0, p0

    #@14
    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    #@16
    int-to-long v12, v5

    #@17
    mul-long/2addr v12, v8

    #@18
    cmp-long v5, v10, v12

    #@1a
    if-lez v5, :cond_0

    #@1c
    .line 163
    move-object/from16 v0, p0

    #@1e
    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    #@20
    int-to-float v5, v5

    #@21
    const/high16 v10, 0x447a0000    # 1000.0f

    #@23
    div-float/2addr v5, v10

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    #@28
    invoke-static {v5, v10}, Landroid/icu/impl/duration/Period;->moreThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@2b
    move-result-object v5

    #@2c
    move/from16 v0, p3

    #@2e
    invoke-virtual {v5, v0}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    #@31
    move-result-object v5

    #@32
    return-object v5

    #@33
    .line 167
    .end local v8    # "maxUnitDuration":J
    :cond_0
    move-object/from16 v0, p0

    #@35
    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    #@37
    if-lez v5, :cond_2

    #@39
    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveMinUnit()Landroid/icu/impl/duration/TimeUnit;

    #@3c
    move-result-object v4

    #@3d
    .line 169
    .local v4, "emu":Landroid/icu/impl/duration/TimeUnit;
    invoke-static {v4}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    #@40
    move-result-wide v6

    #@41
    .line 170
    .local v6, "emud":J
    move-object/from16 v0, p0

    #@43
    iget-object v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    #@45
    if-ne v4, v5, :cond_1

    #@47
    move-object/from16 v0, p0

    #@49
    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    #@4b
    int-to-long v2, v5

    #@4c
    .line 172
    .local v2, "eml":J
    :goto_0
    const-wide/16 v10, 0x3e8

    #@4e
    mul-long v10, v10, p1

    #@50
    mul-long v12, v2, v6

    #@52
    cmp-long v5, v10, v12

    #@54
    if-gez v5, :cond_2

    #@56
    .line 173
    long-to-float v5, v2

    #@57
    const/high16 v10, 0x447a0000    # 1000.0f

    #@59
    div-float/2addr v5, v10

    #@5a
    invoke-static {v5, v4}, Landroid/icu/impl/duration/Period;->lessThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@5d
    move-result-object v5

    #@5e
    move/from16 v0, p3

    #@60
    invoke-virtual {v5, v0}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    #@63
    move-result-object v5

    #@64
    return-object v5

    #@65
    .line 171
    .end local v2    # "eml":J
    :cond_1
    const-wide/16 v10, 0x3e8

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    #@6b
    invoke-static {v5}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    #@6e
    move-result-wide v12

    #@6f
    move-object/from16 v0, p0

    #@71
    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    #@73
    int-to-long v14, v5

    #@74
    mul-long/2addr v12, v14

    #@75
    div-long/2addr v12, v6

    #@76
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    #@79
    move-result-wide v2

    #@7a
    .restart local v2    # "eml":J
    goto :goto_0

    #@7b
    .line 176
    .end local v2    # "eml":J
    .end local v4    # "emu":Landroid/icu/impl/duration/TimeUnit;
    .end local v6    # "emud":J
    :cond_2
    const/4 v5, 0x0

    #@7c
    return-object v5
.end method

.method effectiveMinUnit()Landroid/icu/impl/duration/TimeUnit;
    .locals 3

    #@0
    .prologue
    .line 87
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    #@2
    if-nez v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    #@6
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    #@8
    if-eq v1, v2, :cond_1

    #@a
    .line 88
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    #@c
    return-object v1

    #@d
    .line 91
    :cond_1
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@f
    array-length v1, v1

    #@10
    add-int/lit8 v0, v1, -0x1

    #@12
    .local v0, "i":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@14
    if-ltz v0, :cond_3

    #@16
    .line 92
    iget-short v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    #@18
    const/4 v2, 0x1

    #@19
    shl-int/2addr v2, v0

    #@1a
    and-int/2addr v1, v2

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 93
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@1f
    aget-object v1, v1, v0

    #@21
    return-object v1

    #@22
    .line 96
    :cond_3
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    #@24
    return-object v1
.end method

.method effectiveSet()S
    .locals 3

    #@0
    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 81
    iget-short v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    #@6
    return v0

    #@7
    .line 83
    :cond_0
    iget-short v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    #@9
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    #@b
    iget-byte v1, v1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@d
    const/4 v2, 0x1

    #@e
    shl-int v1, v2, v1

    #@10
    not-int v1, v1

    #@11
    and-int/2addr v0, v1

    #@12
    int-to-short v0, v0

    #@13
    return v0
.end method

.method setAllowMilliseconds(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2
    .param p1, "allowMillis"    # Z

    #@0
    .prologue
    .line 138
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 139
    return-object p0

    #@5
    .line 141
    :cond_0
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@c
    move-result-object v0

    #@d
    .line 142
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_0
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    #@f
    .line 143
    return-object v0

    #@10
    .line 141
    .end local v0    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :cond_1
    move-object v0, p0

    #@11
    .restart local v0    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    goto :goto_0
.end method

.method setAllowZero(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 120
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 121
    return-object p0

    #@5
    .line 123
    :cond_0
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@c
    move-result-object v0

    #@d
    .line 124
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_0
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    #@f
    .line 125
    return-object v0

    #@10
    .line 123
    .end local v0    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :cond_1
    move-object v0, p0

    #@11
    .restart local v0    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    goto :goto_0
.end method

.method setInUse()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 1

    #@0
    .prologue
    .line 155
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    #@3
    .line 156
    return-object p0
.end method

.method setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 4
    .param p1, "localeName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 147
    iget-object v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    #@3
    invoke-static {v2}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->-get0(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2, p1}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    #@a
    move-result-object v0

    #@b
    .line 149
    .local v0, "data":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->allowZero()Z

    #@e
    move-result v2

    #@f
    .line 148
    invoke-virtual {p0, v2}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowZero(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@12
    move-result-object v2

    #@13
    .line 150
    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->weeksAloneOnly()Z

    #@16
    move-result v3

    #@17
    .line 148
    invoke-virtual {v2, v3}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setWeeksAloneOnly(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@1a
    move-result-object v2

    #@1b
    .line 151
    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    #@1e
    move-result v3

    #@1f
    if-eq v3, v1, :cond_0

    #@21
    .line 148
    :goto_0
    invoke-virtual {v2, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowMilliseconds(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 151
    :cond_0
    const/4 v1, 0x0

    #@27
    goto :goto_0
.end method

.method setMaxLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 3
    .param p1, "maxLimit"    # F

    #@0
    .prologue
    .line 100
    const/4 v2, 0x0

    #@1
    cmpg-float v2, p1, v2

    #@3
    if-gtz v2, :cond_0

    #@5
    const/4 v1, 0x0

    #@6
    .line 101
    .local v1, "val":I
    :goto_0
    int-to-float v2, v1

    #@7
    cmpl-float v2, p1, v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 102
    return-object p0

    #@c
    .line 100
    .end local v1    # "val":I
    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    #@e
    mul-float/2addr v2, p1

    #@f
    float-to-int v1, v2

    #@10
    .restart local v1    # "val":I
    goto :goto_0

    #@11
    .line 104
    :cond_1
    iget-boolean v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    #@13
    if-eqz v2, :cond_2

    #@15
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@18
    move-result-object v0

    #@19
    .line 105
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_1
    iput v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    #@1b
    .line 106
    return-object v0

    #@1c
    .line 104
    .end local v0    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :cond_2
    move-object v0, p0

    #@1d
    .restart local v0    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    goto :goto_1
.end method

.method setMinLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 3
    .param p1, "minLimit"    # F

    #@0
    .prologue
    .line 110
    const/4 v2, 0x0

    #@1
    cmpg-float v2, p1, v2

    #@3
    if-gtz v2, :cond_0

    #@5
    const/4 v1, 0x0

    #@6
    .line 111
    .local v1, "val":I
    :goto_0
    int-to-float v2, v1

    #@7
    cmpl-float v2, p1, v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 112
    return-object p0

    #@c
    .line 110
    .end local v1    # "val":I
    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    #@e
    mul-float/2addr v2, p1

    #@f
    float-to-int v1, v2

    #@10
    .restart local v1    # "val":I
    goto :goto_0

    #@11
    .line 114
    :cond_1
    iget-boolean v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    #@13
    if-eqz v2, :cond_2

    #@15
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@18
    move-result-object v0

    #@19
    .line 115
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_1
    iput v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    #@1b
    .line 116
    return-object v0

    #@1c
    .line 114
    .end local v0    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :cond_2
    move-object v0, p0

    #@1d
    .restart local v0    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    goto :goto_1
.end method

.method setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 7
    .param p1, "uset"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/16 v5, 0xff

    #@3
    const/4 v4, -0x1

    #@4
    .line 47
    iget-short v3, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    #@6
    if-ne v3, p1, :cond_0

    #@8
    .line 48
    return-object p0

    #@9
    .line 50
    :cond_0
    iget-boolean v3, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    #@b
    if-eqz v3, :cond_1

    #@d
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@10
    move-result-object v2

    #@11
    .line 52
    .local v2, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_0
    int-to-short v3, p1

    #@12
    iput-short v3, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    #@14
    .line 54
    and-int/lit16 v3, p1, 0xff

    #@16
    if-ne v3, v5, :cond_2

    #@18
    .line 55
    iput-short v5, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    #@1a
    .line 56
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    #@1c
    iput-object v3, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    #@1e
    .line 57
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    #@20
    iput-object v3, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    #@22
    .line 76
    :goto_1
    return-object v2

    #@23
    .line 50
    .end local v2    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :cond_1
    move-object v2, p0

    #@24
    .restart local v2    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    goto :goto_0

    #@25
    .line 59
    :cond_2
    const/4 v1, -0x1

    #@26
    .line 60
    .local v1, "lastUnit":I
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_2
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@29
    array-length v3, v3

    #@2a
    if-ge v0, v3, :cond_5

    #@2c
    .line 61
    const/4 v3, 0x1

    #@2d
    shl-int/2addr v3, v0

    #@2e
    and-int/2addr v3, p1

    #@2f
    if-eqz v3, :cond_4

    #@31
    .line 62
    if-ne v1, v4, :cond_3

    #@33
    .line 63
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@35
    aget-object v3, v3, v0

    #@37
    iput-object v3, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    #@39
    .line 65
    :cond_3
    move v1, v0

    #@3a
    .line 60
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_2

    #@3d
    .line 68
    :cond_5
    if-ne v1, v4, :cond_6

    #@3f
    .line 70
    iput-object v6, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    #@41
    iput-object v6, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    #@43
    goto :goto_1

    #@44
    .line 72
    :cond_6
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@46
    aget-object v3, v3, v1

    #@48
    iput-object v3, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    #@4a
    goto :goto_1
.end method

.method setWeeksAloneOnly(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2
    .param p1, "weeksAlone"    # Z

    #@0
    .prologue
    .line 129
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 130
    return-object p0

    #@5
    .line 132
    :cond_0
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@c
    move-result-object v0

    #@d
    .line 133
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_0
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    #@f
    .line 134
    return-object v0

    #@10
    .line 132
    .end local v0    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :cond_1
    move-object v0, p0

    #@11
    .restart local v0    # "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    goto :goto_0
.end method

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
.field blacklist allowMillis:Z

.field blacklist allowZero:Z

.field blacklist inUse:Z

.field blacklist maxLimit:I

.field blacklist maxUnit:Landroid/icu/impl/duration/TimeUnit;

.field blacklist minLimit:I

.field blacklist minUnit:Landroid/icu/impl/duration/TimeUnit;

.field final synthetic blacklist this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

.field blacklist uset:S

.field blacklist weeksAloneOnly:Z


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)V
    .registers 3
    .param p1, "this$0"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0xff

    iput-short v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    .line 41
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    .line 42
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    .line 47
    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    return-void
.end method


# virtual methods
.method public blacklist copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 3

    .line 183
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-direct {v0, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)V

    .line 184
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    .line 185
    iget-short v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    iput-short v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    .line 186
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    iput-object v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    .line 187
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    iput-object v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    .line 188
    iget v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    iput v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    .line 189
    iget v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    iput v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    .line 190
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    .line 191
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    .line 192
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    .line 193
    return-object v0
.end method

.method blacklist createLimited(JZ)Landroid/icu/impl/duration/Period;
    .registers 14
    .param p1, "duration"    # J
    .param p3, "inPast"    # Z

    .line 163
    iget v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    const/high16 v1, 0x447a0000    # 1000.0f

    const-wide/16 v2, 0x3e8

    if-lez v0, :cond_27

    .line 164
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v4

    .line 165
    .local v4, "maxUnitDuration":J
    mul-long v6, p1, v2

    iget v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    int-to-long v8, v0

    mul-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-lez v0, :cond_27

    .line 166
    iget v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {v0, v1}, Landroid/icu/impl/duration/Period;->moreThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0

    .line 170
    .end local v4    # "maxUnitDuration":J
    :cond_27
    iget v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    if-lez v0, :cond_5d

    .line 171
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveMinUnit()Landroid/icu/impl/duration/TimeUnit;

    move-result-object v0

    .line 172
    .local v0, "emu":Landroid/icu/impl/duration/TimeUnit;
    invoke-static {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v4

    .line 173
    .local v4, "emud":J
    iget-object v6, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    if-ne v0, v6, :cond_3b

    iget v6, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    int-to-long v6, v6

    goto :goto_4a

    .line 174
    :cond_3b
    iget-object v6, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {v6}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v6

    iget v8, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    div-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_4a
    nop

    .line 175
    .local v6, "eml":J
    mul-long/2addr v2, p1

    mul-long v8, v6, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_5d

    .line 176
    long-to-float v2, v6

    div-float/2addr v2, v1

    invoke-static {v2, v0}, Landroid/icu/impl/duration/Period;->lessThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v1

    return-object v1

    .line 179
    .end local v0    # "emu":Landroid/icu/impl/duration/TimeUnit;
    .end local v4    # "emud":J
    .end local v6    # "eml":J
    :cond_5d
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist effectiveMinUnit()Landroid/icu/impl/duration/TimeUnit;
    .registers 5

    .line 90
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    if-eq v0, v1, :cond_b

    goto :goto_23

    .line 94
    :cond_b
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :cond_10
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_20

    .line 95
    iget-short v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    shl-int v3, v1, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    .line 96
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v1, v1, v0

    return-object v1

    .line 99
    .end local v0    # "i":I
    :cond_20
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    return-object v0

    .line 91
    :cond_23
    :goto_23
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    return-object v0
.end method

.method blacklist effectiveSet()S
    .registers 4

    .line 83
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-eqz v0, :cond_7

    .line 84
    iget-short v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    return v0

    .line 86
    :cond_7
    iget-short v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v1, v1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    const/4 v2, 0x1

    shl-int v1, v2, v1

    not-int v1, v1

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method blacklist setAllowMilliseconds(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 3
    .param p1, "allowMillis"    # Z

    .line 141
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-ne v0, p1, :cond_5

    .line 142
    return-object p0

    .line 144
    :cond_5
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, p0

    .line 145
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_f
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    .line 146
    return-object v0
.end method

.method blacklist setAllowZero(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 3
    .param p1, "allow"    # Z

    .line 123
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    if-ne v0, p1, :cond_5

    .line 124
    return-object p0

    .line 126
    :cond_5
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, p0

    .line 127
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_f
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    .line 128
    return-object v0
.end method

.method blacklist setInUse()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 2

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    .line 159
    return-object p0
.end method

.method blacklist setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 6
    .param p1, "localeName"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-static {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->-$$Nest$fgetds(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    .line 151
    .local v0, "data":Landroid/icu/impl/duration/impl/PeriodFormatterData;
    nop

    .line 152
    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->allowZero()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowZero(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    .line 153
    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->weeksAloneOnly()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setWeeksAloneOnly(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    .line 154
    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    invoke-virtual {v1, v3}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowMilliseconds(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    .line 151
    return-object v1
.end method

.method blacklist setMaxLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 4
    .param p1, "maxLimit"    # F

    .line 103
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 104
    .local v0, "val":I
    :goto_b
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_11

    .line 105
    return-object p0

    .line 107
    :cond_11
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    move-object v1, p0

    .line 108
    .local v1, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_1b
    iput v0, v1, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    .line 109
    return-object v1
.end method

.method blacklist setMinLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 4
    .param p1, "minLimit"    # F

    .line 113
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 114
    .local v0, "val":I
    :goto_b
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_11

    .line 115
    return-object p0

    .line 117
    :cond_11
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    move-object v1, p0

    .line 118
    .local v1, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_1b
    iput v0, v1, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    .line 119
    return-object v1
.end method

.method blacklist setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 7
    .param p1, "uset"    # I

    .line 50
    iget-short v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    if-ne v0, p1, :cond_5

    .line 51
    return-object p0

    .line 53
    :cond_5
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, p0

    .line 55
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_f
    int-to-short v1, p1

    iput-short v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    .line 57
    and-int/lit16 v1, p1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_23

    .line 58
    iput-short v2, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    .line 59
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    iput-object v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    .line 60
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iput-object v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    goto :goto_4a

    .line 62
    :cond_23
    const/4 v1, -0x1

    .line 63
    .local v1, "lastUnit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v3, v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_3c

    .line 64
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, p1

    if-eqz v3, :cond_39

    .line 65
    if-ne v1, v4, :cond_38

    .line 66
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v3, v3, v2

    iput-object v3, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    .line 68
    :cond_38
    move v1, v2

    .line 63
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 71
    .end local v2    # "i":I
    :cond_3c
    if-ne v1, v4, :cond_44

    .line 73
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    iput-object v2, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    goto :goto_4a

    .line 75
    :cond_44
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v2, v2, v1

    iput-object v2, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    .line 79
    .end local v1    # "lastUnit":I
    :goto_4a
    return-object v0
.end method

.method blacklist setWeeksAloneOnly(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 3
    .param p1, "weeksAlone"    # Z

    .line 132
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    if-ne v0, p1, :cond_5

    .line 133
    return-object p0

    .line 135
    :cond_5
    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, p0

    .line 136
    .local v0, "result":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    :goto_f
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    .line 137
    return-object v0
.end method

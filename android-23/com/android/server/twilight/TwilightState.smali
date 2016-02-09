.class public Lcom/android/server/twilight/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"


# instance fields
.field private final mIsNight:Z

.field private final mTodaySunrise:J

.field private final mTodaySunset:J

.field private final mTomorrowSunrise:J

.field private final mYesterdaySunset:J


# direct methods
.method constructor <init>(ZJJJJ)V
    .locals 0
    .param p1, "isNight"    # Z
    .param p2, "yesterdaySunset"    # J
    .param p4, "todaySunrise"    # J
    .param p6, "todaySunset"    # J
    .param p8, "tomorrowSunrise"    # J

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    #@5
    .line 38
    iput-wide p2, p0, Lcom/android/server/twilight/TwilightState;->mYesterdaySunset:J

    #@7
    .line 39
    iput-wide p4, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunrise:J

    #@9
    .line 40
    iput-wide p6, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunset:J

    #@b
    .line 41
    iput-wide p8, p0, Lcom/android/server/twilight/TwilightState;->mTomorrowSunrise:J

    #@d
    .line 36
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/twilight/TwilightState;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/server/twilight/TwilightState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    if-eqz p1, :cond_0

    #@3
    .line 90
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    #@5
    iget-boolean v2, p1, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 91
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mYesterdaySunset:J

    #@b
    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mYesterdaySunset:J

    #@d
    cmp-long v1, v2, v4

    #@f
    if-nez v1, :cond_0

    #@11
    .line 92
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunrise:J

    #@13
    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mTodaySunrise:J

    #@15
    cmp-long v1, v2, v4

    #@17
    if-nez v1, :cond_0

    #@19
    .line 93
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunset:J

    #@1b
    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mTodaySunset:J

    #@1d
    cmp-long v1, v2, v4

    #@1f
    if-nez v1, :cond_0

    #@21
    .line 94
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mTomorrowSunrise:J

    #@23
    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mTomorrowSunrise:J

    #@25
    cmp-long v1, v2, v4

    #@27
    if-nez v1, :cond_0

    #@29
    const/4 v0, 0x1

    #@2a
    .line 89
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 85
    instance-of v0, p1, Lcom/android/server/twilight/TwilightState;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Lcom/android/server/twilight/TwilightState;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/twilight/TwilightState;->equals(Lcom/android/server/twilight/TwilightState;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getTodaySunrise()J
    .locals 2

    #@0
    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunrise:J

    #@2
    return-wide v0
.end method

.method public getTodaySunset()J
    .locals 2

    #@0
    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunset:J

    #@2
    return-wide v0
.end method

.method public getTomorrowSunrise()J
    .locals 2

    #@0
    .prologue
    .line 80
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mTomorrowSunrise:J

    #@2
    return-wide v0
.end method

.method public getYesterdaySunset()J
    .locals 2

    #@0
    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mYesterdaySunset:J

    #@2
    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isNight()Z
    .locals 1

    #@0
    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 104
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    .line 105
    .local v0, "f":Ljava/text/DateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "{TwilightState: isNight="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 106
    const-string/jumbo v2, ", mYesterdaySunset="

    #@19
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 106
    new-instance v2, Ljava/util/Date;

    #@1f
    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mYesterdaySunset:J

    #@21
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@24
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 107
    const-string/jumbo v2, ", mTodaySunrise="

    #@2f
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 107
    new-instance v2, Ljava/util/Date;

    #@35
    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunrise:J

    #@37
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@3a
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 108
    const-string/jumbo v2, ", mTodaySunset="

    #@45
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 108
    new-instance v2, Ljava/util/Date;

    #@4b
    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunset:J

    #@4d
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@50
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    .line 109
    const-string/jumbo v2, ", mTomorrowSunrise="

    #@5b
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    .line 109
    new-instance v2, Ljava/util/Date;

    #@61
    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mTomorrowSunrise:J

    #@63
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@66
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    .line 110
    const-string/jumbo v2, "}"

    #@71
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    return-object v1
.end method

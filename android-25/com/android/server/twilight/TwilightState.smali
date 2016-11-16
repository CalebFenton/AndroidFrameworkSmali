.class public final Lcom/android/server/twilight/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"


# instance fields
.field private final mSunriseTimeMillis:J

.field private final mSunsetTimeMillis:J


# direct methods
.method constructor <init>(JJ)V
    .locals 1
    .param p1, "sunriseTimeMillis"    # J
    .param p3, "sunsetTimeMillis"    # J

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-wide p1, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    #@5
    .line 36
    iput-wide p3, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    #@7
    .line 34
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
    .line 87
    if-eqz p1, :cond_0

    #@3
    .line 88
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    #@5
    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    #@7
    cmp-long v1, v2, v4

    #@9
    if-nez v1, :cond_0

    #@b
    .line 89
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    #@d
    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    #@f
    cmp-long v1, v2, v4

    #@11
    if-nez v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 87
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 83
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

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    #@2
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    #@5
    move-result v0

    #@6
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    #@8
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method

.method public isNight()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v0

    #@5
    .line 78
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    #@7
    cmp-long v3, v0, v4

    #@9
    if-ltz v3, :cond_0

    #@b
    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    #@d
    cmp-long v3, v0, v4

    #@f
    if-gez v3, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    return v2
.end method

.method public sunrise()Ljava/util/Calendar;
    .locals 4

    #@0
    .prologue
    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 52
    .local v0, "sunrise":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    #@6
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@9
    .line 53
    return-object v0
.end method

.method public sunriseTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    #@2
    return-wide v0
.end method

.method public sunset()Ljava/util/Calendar;
    .locals 4

    #@0
    .prologue
    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 69
    .local v0, "sunset":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    #@6
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@9
    .line 70
    return-object v0
.end method

.method public sunsetTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    #@2
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "TwilightState { sunrise="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 100
    const-string/jumbo v1, "MM-dd HH:mm"

    #@f
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    #@11
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@14
    move-result-object v1

    #@15
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 101
    const-string/jumbo v1, " sunset="

    #@1c
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 101
    const-string/jumbo v1, "MM-dd HH:mm"

    #@23
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    #@25
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@28
    move-result-object v1

    #@29
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 102
    const-string/jumbo v1, " }"

    #@30
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method

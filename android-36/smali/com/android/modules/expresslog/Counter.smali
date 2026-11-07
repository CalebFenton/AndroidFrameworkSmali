.class public final Lcom/android/modules/expresslog/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist logIncrement(Ljava/lang/String;)V
    .registers 3
    .param p0, "metricId"    # Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;J)V

    .line 33
    return-void
.end method

.method public static blacklist logIncrement(Ljava/lang/String;J)V
    .registers 7
    .param p0, "metricId"    # Ljava/lang/String;
    .param p1, "amount"    # J

    .line 50
    nop

    .line 51
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/MetricIds;->getMetricIdHash(Ljava/lang/String;I)J

    move-result-wide v0

    .line 52
    .local v0, "metricIdHash":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    .line 53
    const/16 v2, 0x210

    invoke-static {v2, v0, v1, p1, p2}, Lcom/android/modules/expresslog/StatsExpressLog;->write(IJJ)V

    .line 55
    :cond_11
    return-void
.end method

.method public static blacklist logIncrementWithUid(Ljava/lang/String;I)V
    .registers 4
    .param p0, "metricId"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 41
    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;IJ)V

    .line 42
    return-void
.end method

.method public static blacklist logIncrementWithUid(Ljava/lang/String;IJ)V
    .registers 11
    .param p0, "metricId"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "amount"    # J

    .line 64
    nop

    .line 65
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/MetricIds;->getMetricIdHash(Ljava/lang/String;I)J

    move-result-wide v2

    .line 66
    .local v2, "metricIdHash":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_14

    .line 67
    const/16 v1, 0x284

    move v6, p1

    move-wide v4, p2

    .end local p1    # "uid":I
    .end local p2    # "amount":J
    .local v4, "amount":J
    .local v6, "uid":I
    invoke-static/range {v1 .. v6}, Lcom/android/modules/expresslog/StatsExpressLog;->write(IJJI)V

    goto :goto_16

    .line 66
    .end local v4    # "amount":J
    .end local v6    # "uid":I
    .restart local p1    # "uid":I
    .restart local p2    # "amount":J
    :cond_14
    move v6, p1

    move-wide v4, p2

    .line 70
    .end local p1    # "uid":I
    .end local p2    # "amount":J
    .restart local v4    # "amount":J
    .restart local v6    # "uid":I
    :goto_16
    return-void
.end method

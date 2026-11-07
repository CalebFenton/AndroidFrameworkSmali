.class public final Lcom/android/modules/expresslog/Histogram;
.super Ljava/lang/Object;
.source "Histogram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/modules/expresslog/Histogram$BinOptions;,
        Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;,
        Lcom/android/modules/expresslog/Histogram$UniformOptions;
    }
.end annotation


# instance fields
.field private final blacklist mBinOptions:Lcom/android/modules/expresslog/Histogram$BinOptions;

.field private final blacklist mMetricId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V
    .registers 3
    .param p1, "metricId"    # Ljava/lang/String;
    .param p2, "binOptions"    # Lcom/android/modules/expresslog/Histogram$BinOptions;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/modules/expresslog/Histogram;->mMetricId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/android/modules/expresslog/Histogram;->mBinOptions:Lcom/android/modules/expresslog/Histogram$BinOptions;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist logSample(F)V
    .registers 10
    .param p1, "sample"    # F

    .line 48
    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram;->mMetricId:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/modules/expresslog/MetricIds;->getMetricIdHash(Ljava/lang/String;I)J

    move-result-wide v3

    .line 49
    .local v3, "hash":J
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_1a

    .line 50
    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram;->mBinOptions:Lcom/android/modules/expresslog/Histogram$BinOptions;

    invoke-interface {v0, p1}, Lcom/android/modules/expresslog/Histogram$BinOptions;->getBinForSample(F)I

    move-result v7

    .line 51
    .local v7, "binIndex":I
    const/16 v2, 0x251

    const-wide/16 v5, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/modules/expresslog/StatsExpressLog;->write(IJJI)V

    .line 54
    .end local v7    # "binIndex":I
    :cond_1a
    return-void
.end method

.method public blacklist logSampleWithUid(IF)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "sample"    # F

    .line 63
    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram;->mMetricId:Ljava/lang/String;

    .line 64
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/modules/expresslog/MetricIds;->getMetricIdHash(Ljava/lang/String;I)J

    move-result-wide v3

    .line 65
    .local v3, "hash":J
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_1c

    .line 66
    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram;->mBinOptions:Lcom/android/modules/expresslog/Histogram$BinOptions;

    invoke-interface {v0, p2}, Lcom/android/modules/expresslog/Histogram$BinOptions;->getBinForSample(F)I

    move-result v7

    .line 67
    .local v7, "binIndex":I
    const/16 v2, 0x292

    const-wide/16 v5, 0x1

    move v8, p1

    .end local p1    # "uid":I
    .local v8, "uid":I
    invoke-static/range {v2 .. v8}, Lcom/android/modules/expresslog/StatsExpressLog;->write(IJJII)V

    goto :goto_1d

    .line 65
    .end local v7    # "binIndex":I
    .end local v8    # "uid":I
    .restart local p1    # "uid":I
    :cond_1c
    move v8, p1

    .line 71
    .end local p1    # "uid":I
    .restart local v8    # "uid":I
    :goto_1d
    return-void
.end method

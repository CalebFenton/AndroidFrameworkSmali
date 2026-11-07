.class public Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;
.super Ljava/lang/Object;
.source "RecordHistogram.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist clampToInt(J)I
    .registers 4
    .param p0, "value"    # J

    .line 277
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    const v0, 0x7fffffff

    return v0

    .line 280
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    const/high16 v0, -0x80000000

    return v0

    .line 281
    :cond_15
    long-to-int v0, p0

    return v0
.end method

.method public static blacklist deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "durationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    const-wide/32 v5, 0x2bf20

    const/16 v7, 0x32

    const-wide/16 v3, 0xa

    move-object v0, p0

    move-wide v1, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "durationMs":J
    .local v0, "name":Ljava/lang/String;
    .local v1, "durationMs":J
    invoke-static/range {v0 .. v7}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 187
    return-void
.end method

.method public static blacklist getHistogramSamplesForTesting(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;",
            ">;"
        }
    .end annotation

    .line 326
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->getHistogramSamplesForTesting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getHistogramTotalCountForTesting(Ljava/lang/String;)I
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->getHistogramTotalCountForTesting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist getHistogramValueCountForTesting(Ljava/lang/String;I)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->getHistogramValueCountForTesting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist recordBooleanHistogram(Ljava/lang/String;Z)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # Z

    .line 24
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 25
    return-void
.end method

.method public static blacklist recordCount100000Histogram(Ljava/lang/String;I)V
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .line 82
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const v4, 0x186a0

    const/16 v5, 0x32

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "sample":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "sample":I
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 83
    return-void
.end method

.method public static blacklist recordCount1000Histogram(Ljava/lang/String;I)V
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .line 71
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const/16 v4, 0x3e8

    const/16 v5, 0x32

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "sample":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "sample":I
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 72
    return-void
.end method

.method public static blacklist recordCount100Histogram(Ljava/lang/String;I)V
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .line 60
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const/16 v4, 0x64

    const/16 v5, 0x32

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "sample":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "sample":I
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 61
    return-void
.end method

.method public static blacklist recordCount1MHistogram(Ljava/lang/String;I)V
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .line 49
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const v4, 0xf4240

    const/16 v5, 0x32

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "sample":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "sample":I
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 50
    return-void
.end method

.method public static blacklist recordCustomCountHistogram(Ljava/lang/String;IIII)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "numBuckets"    # I

    .line 98
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "sample":I
    .end local p2    # "min":I
    .end local p3    # "max":I
    .end local p4    # "numBuckets":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "sample":I
    .local v3, "min":I
    .local v4, "max":I
    .local v5, "numBuckets":I
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 99
    return-void
.end method

.method public static blacklist recordCustomTimesHistogram(Ljava/lang/String;JJJI)V
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "durationMs"    # J
    .param p3, "min"    # J
    .param p5, "max"    # J
    .param p7, "numBuckets"    # I

    .line 231
    invoke-static/range {p0 .. p7}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 232
    return-void
.end method

.method private static blacklist recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V
    .registers 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "min"    # J
    .param p5, "max"    # J
    .param p7, "numBuckets"    # I

    .line 286
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    .line 288
    invoke-static {p1, p2}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v2

    invoke-static {p3, p4}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v3

    invoke-static {p5, p6}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v4

    .line 287
    move-object v1, p0

    move v5, p7

    .end local p0    # "name":Ljava/lang/String;
    .end local p7    # "numBuckets":I
    .local v1, "name":Ljava/lang/String;
    .local v5, "numBuckets":I
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 289
    return-void
.end method

.method public static blacklist recordEnumeratedHistogram(Ljava/lang/String;II)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .param p2, "max"    # I

    .line 38
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordExactLinearHistogram(Ljava/lang/String;II)V

    .line 39
    return-void
.end method

.method public static blacklist recordExactLinearHistogram(Ljava/lang/String;II)V
    .registers 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .param p2, "max"    # I

    .line 270
    const/4 v0, 0x1

    .line 272
    .local v0, "min":I
    add-int/lit8 v6, p2, 0x1

    .line 273
    .local v6, "numBuckets":I
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v1

    const/4 v4, 0x1

    move-object v2, p0

    move v3, p1

    move v5, p2

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "sample":I
    .end local p2    # "max":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "sample":I
    .local v5, "max":I
    invoke-interface/range {v1 .. v6}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordLinearHistogram(Ljava/lang/String;IIII)V

    .line 274
    return-void
.end method

.method public static blacklist recordLinearCountHistogram(Ljava/lang/String;IIII)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "numBuckets"    # I

    .line 114
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "sample":I
    .end local p2    # "min":I
    .end local p3    # "max":I
    .end local p4    # "numBuckets":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "sample":I
    .local v3, "min":I
    .local v4, "max":I
    .local v5, "numBuckets":I
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordLinearHistogram(Ljava/lang/String;IIII)V

    .line 115
    return-void
.end method

.method public static blacklist recordLongTimesHistogram(Ljava/lang/String;J)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "durationMs"    # J

    .line 199
    const-wide/32 v5, 0x36ee80

    const/16 v7, 0x32

    const-wide/16 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "durationMs":J
    .local v0, "name":Ljava/lang/String;
    .local v1, "durationMs":J
    invoke-static/range {v0 .. v7}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 200
    return-void
.end method

.method public static blacklist recordLongTimesHistogram100(Ljava/lang/String;J)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "durationMs"    # J

    .line 212
    const-wide/32 v5, 0x36ee80

    const/16 v7, 0x64

    const-wide/16 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "durationMs":J
    .local v0, "name":Ljava/lang/String;
    .local v1, "durationMs":J
    invoke-static/range {v0 .. v7}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 213
    return-void
.end method

.method public static blacklist recordMediumTimesHistogram(Ljava/lang/String;J)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "durationMs"    # J

    .line 164
    const-wide/32 v5, 0x2bf20

    const/16 v7, 0x32

    const-wide/16 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "durationMs":J
    .local v0, "name":Ljava/lang/String;
    .local v1, "durationMs":J
    invoke-static/range {v0 .. v7}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 166
    return-void
.end method

.method public static blacklist recordMemoryKBHistogram(Ljava/lang/String;I)V
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sizeInKB"    # I

    .line 244
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const v4, 0x7a120

    const/16 v5, 0x32

    const/16 v3, 0x3e8

    move-object v1, p0

    move v2, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "sizeInKB":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "sizeInKB":I
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 245
    return-void
.end method

.method public static blacklist recordMemoryMediumMBHistogram(Ljava/lang/String;I)V
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sizeInMB"    # I

    .line 257
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const/16 v4, 0xfa0

    const/16 v5, 0x64

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "sizeInMB":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "sizeInMB":I
    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 258
    return-void
.end method

.method public static blacklist recordPercentageHistogram(Ljava/lang/String;I)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .line 125
    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordExactLinearHistogram(Ljava/lang/String;II)V

    .line 126
    return-void
.end method

.method public static blacklist recordSparseHistogram(Ljava/lang/String;I)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .line 137
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordSparseHistogram(Ljava/lang/String;I)V

    .line 138
    return-void
.end method

.method public static blacklist recordTimesHistogram(Ljava/lang/String;J)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "durationMs"    # J

    .line 150
    const-wide/16 v5, 0x2710

    const/16 v7, 0x32

    const-wide/16 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "durationMs":J
    .local v0, "name":Ljava/lang/String;
    .local v1, "durationMs":J
    invoke-static/range {v0 .. v7}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 152
    return-void
.end method

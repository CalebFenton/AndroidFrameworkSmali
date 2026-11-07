.class Landroid/net/connectivity/org/chromium/base/metrics/NoopUmaRecorder;
.super Ljava/lang/Object;
.source "NoopUmaRecorder.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist getHistogramSamplesForTesting(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
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

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHistogramTotalCountForTesting(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHistogramValueCountForTesting(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist recordBooleanHistogram(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # Z

    .line 15
    return-void
.end method

.method public blacklist recordExponentialHistogram(Ljava/lang/String;IIII)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "numBuckets"    # I

    .line 19
    return-void
.end method

.method public blacklist recordLinearHistogram(Ljava/lang/String;IIII)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "numBuckets"    # I

    .line 22
    return-void
.end method

.method public blacklist recordSparseHistogram(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I

    .line 25
    return-void
.end method

.method public blacklist recordUserAction(Ljava/lang/String;J)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMillis"    # J

    .line 28
    return-void
.end method

.method public blacklist removeUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/String;>;"
    return-void
.end method

.class public interface abstract Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;
.super Ljava/lang/Object;
.source "UmaRecorder.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use HistogramWatcher for histograms or UserActionTester for user actions instead."
.end annotation


# virtual methods
.method public abstract blacklist addUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist getHistogramSamplesForTesting(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract blacklist getHistogramTotalCountForTesting(Ljava/lang/String;)I
.end method

.method public abstract blacklist getHistogramValueCountForTesting(Ljava/lang/String;I)I
.end method

.method public abstract blacklist recordBooleanHistogram(Ljava/lang/String;Z)V
.end method

.method public abstract blacklist recordExponentialHistogram(Ljava/lang/String;IIII)V
.end method

.method public abstract blacklist recordLinearHistogram(Ljava/lang/String;IIII)V
.end method

.method public abstract blacklist recordSparseHistogram(Ljava/lang/String;I)V
.end method

.method public abstract blacklist recordUserAction(Ljava/lang/String;J)V
.end method

.method public abstract blacklist removeUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

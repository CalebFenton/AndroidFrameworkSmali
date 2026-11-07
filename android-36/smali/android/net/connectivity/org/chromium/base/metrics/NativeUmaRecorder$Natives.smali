.class public interface abstract Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;
.super Ljava/lang/Object;
.source "NativeUmaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist addActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract blacklist createHistogramSnapshotForTesting()J
.end method

.method public abstract blacklist destroyHistogramSnapshotForTesting(J)V
.end method

.method public abstract blacklist getHistogramSamplesForTesting(Ljava/lang/String;)[J
.end method

.method public abstract blacklist getHistogramTotalCountForTesting(Ljava/lang/String;J)I
.end method

.method public abstract blacklist getHistogramValueCountForTesting(Ljava/lang/String;IJ)I
.end method

.method public abstract blacklist recordBooleanHistogram(Ljava/lang/String;JZ)J
.end method

.method public abstract blacklist recordExponentialHistogram(Ljava/lang/String;JIIII)J
.end method

.method public abstract blacklist recordLinearHistogram(Ljava/lang/String;JIIII)J
.end method

.method public abstract blacklist recordSparseHistogram(Ljava/lang/String;JI)J
.end method

.method public abstract blacklist recordUserAction(Ljava/lang/String;J)V
.end method

.method public abstract blacklist removeActionCallbackForTesting(J)V
.end method

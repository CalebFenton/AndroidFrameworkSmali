.class final Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;
.super Ljava/lang/Object;
.source "NativeUmaRecorder.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mNativeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUserActionTestingCallbackNativePtrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 26
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->mNativeHints:Ljava/util/Map;

    .line 34
    return-void
.end method

.method private blacklist getNativeHint(Ljava/lang/String;)J
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->mNativeHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 135
    .local v0, "hint":Ljava/lang/Long;
    if-nez v0, :cond_d

    const-wide/16 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_11
    return-wide v1
.end method

.method private blacklist maybeUpdateNativeHint(Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oldHint"    # J
    .param p4, "newHint"    # J

    .line 139
    cmp-long v0, p2, p4

    if-eqz v0, :cond_d

    .line 140
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->mNativeHints:Ljava/util/Map;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_d
    return-void
.end method


# virtual methods
.method public blacklist addUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/String;>;"
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;->addActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)J

    move-result-wide v0

    .line 105
    .local v0, "ptr":J
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->mUserActionTestingCallbackNativePtrs:Ljava/util/Map;

    if-nez v2, :cond_17

    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->mUserActionTestingCallbackNativePtrs:Ljava/util/Map;

    .line 108
    :cond_17
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->mUserActionTestingCallbackNativePtrs:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public blacklist getHistogramSamplesForTesting(Ljava/lang/String;)Ljava/util/List;
    .registers 10
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

    .line 91
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;->getHistogramSamplesForTesting(Ljava/lang/String;)[J

    move-result-object v0

    .line 92
    .local v0, "samplesArray":[J
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v1, "buckets":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_29

    .line 94
    aget-wide v3, v0, v2

    long-to-int v3, v3

    .line 95
    .local v3, "min":I
    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v0, v4

    .line 96
    .local v4, "max":J
    add-int/lit8 v6, v2, 0x2

    aget-wide v6, v0, v6

    long-to-int v6, v6

    .line 97
    .local v6, "count":I
    new-instance v7, Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;-><init>(IJI)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v3    # "min":I
    .end local v4    # "max":J
    .end local v6    # "count":I
    add-int/lit8 v2, v2, 0x3

    goto :goto_f

    .line 99
    .end local v2    # "i":I
    :cond_29
    return-object v1
.end method

.method public blacklist getHistogramTotalCountForTesting(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 86
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;->getHistogramTotalCountForTesting(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public blacklist getHistogramValueCountForTesting(Ljava/lang/String;I)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I

    .line 81
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;->getHistogramValueCountForTesting(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public blacklist recordBooleanHistogram(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # Z

    .line 41
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->getNativeHint(Ljava/lang/String;)J

    move-result-wide v2

    .line 42
    .local v2, "oldHint":J
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    invoke-interface {v0, p1, v2, v3, p2}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;->recordBooleanHistogram(Ljava/lang/String;JZ)J

    move-result-wide v4

    .line 43
    .local v4, "newHint":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->maybeUpdateNativeHint(Ljava/lang/String;JJ)V

    .line 44
    return-void
.end method

.method public blacklist recordExponentialHistogram(Ljava/lang/String;IIII)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "numBuckets"    # I

    .line 49
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->getNativeHint(Ljava/lang/String;)J

    move-result-wide v2

    .line 51
    .local v2, "oldHint":J
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    .line 52
    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "sample":I
    .end local p3    # "min":I
    .end local p4    # "max":I
    .end local p5    # "numBuckets":I
    .local v1, "name":Ljava/lang/String;
    .local v4, "sample":I
    .local v5, "min":I
    .local v6, "max":I
    .local v7, "numBuckets":I
    invoke-interface/range {v0 .. v7}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;->recordExponentialHistogram(Ljava/lang/String;JIIII)J

    move-result-wide p1

    .line 53
    move p3, v4

    move p4, v5

    .end local v4    # "sample":I
    .end local v5    # "min":I
    .local p1, "newHint":J
    .local p3, "sample":I
    .local p4, "min":I
    move-object v0, p0

    move-wide v4, p1

    .end local p1    # "newHint":J
    .local v4, "newHint":J
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->maybeUpdateNativeHint(Ljava/lang/String;JJ)V

    .line 54
    return-void
.end method

.method public blacklist recordLinearHistogram(Ljava/lang/String;IIII)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "numBuckets"    # I

    .line 58
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->getNativeHint(Ljava/lang/String;)J

    move-result-wide v2

    .line 60
    .local v2, "oldHint":J
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    .line 61
    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "sample":I
    .end local p3    # "min":I
    .end local p4    # "max":I
    .end local p5    # "numBuckets":I
    .local v1, "name":Ljava/lang/String;
    .local v4, "sample":I
    .local v5, "min":I
    .local v6, "max":I
    .local v7, "numBuckets":I
    invoke-interface/range {v0 .. v7}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;->recordLinearHistogram(Ljava/lang/String;JIIII)J

    move-result-wide p1

    .line 62
    move p3, v4

    move p4, v5

    .end local v4    # "sample":I
    .end local v5    # "min":I
    .local p1, "newHint":J
    .local p3, "sample":I
    .local p4, "min":I
    move-object v0, p0

    move-wide v4, p1

    .end local p1    # "newHint":J
    .local v4, "newHint":J
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->maybeUpdateNativeHint(Ljava/lang/String;JJ)V

    .line 63
    return-void
.end method

.method public blacklist recordSparseHistogram(Ljava/lang/String;I)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I

    .line 67
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->getNativeHint(Ljava/lang/String;)J

    move-result-wide v2

    .line 68
    .local v2, "oldHint":J
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    invoke-interface {v0, p1, v2, v3, p2}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;->recordSparseHistogram(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 69
    .local v4, "newHint":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->maybeUpdateNativeHint(Ljava/lang/String;JJ)V

    .line 70
    return-void
.end method

.method public blacklist recordUserAction(Ljava/lang/String;J)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMillis"    # J

    .line 75
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 76
    .local v0, "millisSinceEvent":J
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;->recordUserAction(Ljava/lang/String;J)V

    .line 77
    return-void
.end method

.method public blacklist removeUserActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->mUserActionTestingCallbackNativePtrs:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 114
    nop

    .line 117
    return-void

    .line 119
    :cond_6
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder;->mUserActionTestingCallbackNativePtrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 120
    .local v0, "ptr":Ljava/lang/Long;
    if-nez v0, :cond_12

    .line 121
    nop

    .line 124
    return-void

    .line 126
    :cond_12
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;->removeActionCallbackForTesting(J)V

    .line 127
    return-void
.end method

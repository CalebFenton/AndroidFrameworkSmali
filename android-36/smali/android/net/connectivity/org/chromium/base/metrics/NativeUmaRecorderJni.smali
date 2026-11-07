.class public Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;
.super Ljava/lang/Object;
.source "NativeUmaRecorderJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;


# static fields
.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;
    .registers 2

    .line 17
    sget-object v0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 18
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 19
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    return-object v1

    .line 21
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 22
    new-instance v1, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorder$Natives;

    .line 26
    sget-object v0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 27
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 29
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/base/metrics/NativeUmaRecorderJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist addActionCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)J
    .registers 4
    .param p1, "callback"    # Landroid/net/connectivity/org/chromium/base/Callback;

    .line 35
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_addActionCallbackForTesting(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist createHistogramSnapshotForTesting()J
    .registers 3

    .line 41
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_createHistogramSnapshotForTesting()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist destroyHistogramSnapshotForTesting(J)V
    .registers 3
    .param p1, "snapshotPtr"    # J

    .line 46
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_destroyHistogramSnapshotForTesting(J)V

    .line 48
    return-void
.end method

.method public blacklist getHistogramSamplesForTesting(Ljava/lang/String;)[J
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_getHistogramSamplesForTesting(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public blacklist getHistogramTotalCountForTesting(Ljava/lang/String;J)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "snapshotPtr"    # J

    .line 58
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_getHistogramTotalCountForTesting(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public blacklist getHistogramValueCountForTesting(Ljava/lang/String;IJ)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I
    .param p3, "snapshotPtr"    # J

    .line 65
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_getHistogramValueCountForTesting(Ljava/lang/Object;IJ)I

    move-result v0

    return v0
.end method

.method public blacklist recordBooleanHistogram(Ljava/lang/String;JZ)J
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nativeHint"    # J
    .param p4, "sample"    # Z

    .line 73
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_recordBooleanHistogram(Ljava/lang/Object;JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist recordExponentialHistogram(Ljava/lang/String;JIIII)J
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nativeHint"    # J
    .param p4, "sample"    # I
    .param p5, "min"    # I
    .param p6, "max"    # I
    .param p7, "numBuckets"    # I

    .line 81
    invoke-static/range {p1 .. p7}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_recordExponentialHistogram(Ljava/lang/Object;JIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist recordLinearHistogram(Ljava/lang/String;JIIII)J
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nativeHint"    # J
    .param p4, "sample"    # I
    .param p5, "min"    # I
    .param p6, "max"    # I
    .param p7, "numBuckets"    # I

    .line 92
    invoke-static/range {p1 .. p7}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_recordLinearHistogram(Ljava/lang/Object;JIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist recordSparseHistogram(Ljava/lang/String;JI)J
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nativeHint"    # J
    .param p4, "sample"    # I

    .line 103
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_recordSparseHistogram(Ljava/lang/Object;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist recordUserAction(Ljava/lang/String;J)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "millisSinceEvent"    # J

    .line 111
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_recordUserAction(Ljava/lang/Object;J)V

    .line 114
    return-void
.end method

.method public blacklist removeActionCallbackForTesting(J)V
    .registers 3
    .param p1, "callbackId"    # J

    .line 118
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_metrics_NativeUmaRecorder_removeActionCallbackForTesting(J)V

    .line 120
    return-void
.end method

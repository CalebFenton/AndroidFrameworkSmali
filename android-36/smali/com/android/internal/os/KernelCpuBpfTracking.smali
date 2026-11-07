.class public final Lcom/android/internal/os/KernelCpuBpfTracking;
.super Ljava/lang/Object;
.source "KernelCpuBpfTracking.java"


# static fields
.field private static blacklist sFreqs:[J

.field private static blacklist sFreqsClusters:[I

.field private static blacklist sTracking:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    .line 38
    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static blacklist getClusters()I
    .registers 2

    .line 91
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v0

    .line 92
    .local v0, "freqClusters":[I
    array-length v1, v0

    if-lez v1, :cond_f

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static blacklist getFreqs()[J
    .registers 2

    .line 58
    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    if-nez v0, :cond_10

    .line 59
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsInternal()[J

    move-result-object v0

    .line 60
    .local v0, "freqs":[J
    if-nez v0, :cond_e

    .line 61
    const/4 v1, 0x0

    new-array v1, v1, [J

    return-object v1

    .line 63
    :cond_e
    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    .line 65
    .end local v0    # "freqs":[J
    :cond_10
    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    return-object v0
.end method

.method public static blacklist getFreqsClusters()[I
    .registers 2

    .line 76
    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    if-nez v0, :cond_10

    .line 77
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClustersInternal()[I

    move-result-object v0

    .line 78
    .local v0, "freqsClusters":[I
    if-nez v0, :cond_e

    .line 79
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1

    .line 81
    :cond_e
    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    .line 83
    .end local v0    # "freqsClusters":[I
    :cond_10
    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    return-object v0
.end method

.method private static native blacklist getFreqsClustersInternal()[I
.end method

.method static native blacklist getFreqsInternal()[J
.end method

.method public static native blacklist isSupported()Z
.end method

.method public static blacklist startTracking()Z
    .registers 1

    .line 48
    sget-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    if-nez v0, :cond_a

    .line 49
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->startTrackingInternal()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    .line 51
    :cond_a
    sget-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    return v0
.end method

.method private static native blacklist startTrackingInternal()Z
.end method

.class public Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;
.super Ljava/lang/Object;
.source "KernelSingleUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSingleUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist addDeltaForTest(IJJ[[J[J)Z
.end method

.method private static native blacklist addDeltaFromBpf(IJJ[J)Z
.end method


# virtual methods
.method public blacklist addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;J[J)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;
    .param p3, "timestampMs"    # J
    .param p5, "deltaOut"    # [J

    .line 277
    iget-wide v1, p2, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    move v0, p1

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "uid":I
    .end local p3    # "timestampMs":J
    .end local p5    # "deltaOut":[J
    .local v0, "uid":I
    .local v3, "timestampMs":J
    .local v5, "deltaOut":[J
    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDeltaFromBpf(IJJ[J)Z

    move-result p1

    return p1
.end method

.method public blacklist addDeltaForTest(ILcom/android/internal/os/LongArrayMultiStateCounter;J[[J[J)Z
    .registers 14
    .param p1, "uid"    # I
    .param p2, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;
    .param p3, "timestampMs"    # J
    .param p5, "timeInFreqDataNanos"    # [[J
    .param p6, "deltaOut"    # [J

    .line 292
    iget-wide v1, p2, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    move v0, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "uid":I
    .end local p3    # "timestampMs":J
    .end local p5    # "timeInFreqDataNanos":[[J
    .end local p6    # "deltaOut":[J
    .local v0, "uid":I
    .local v3, "timestampMs":J
    .local v5, "timeInFreqDataNanos":[[J
    .local v6, "deltaOut":[J
    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDeltaForTest(IJJ[[J[J)Z

    move-result p1

    return p1
.end method

.method public native blacklist readBpfData(I)[J
.end method

.method public greylist-max-o readData(Ljava/lang/String;)[B
    .registers 3
    .param p1, "procFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    return-object v0
.end method

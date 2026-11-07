.class Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
.super Ljava/lang/Object;
.source "KernelCpuThreadReaderDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReaderDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadKey"
.end annotation


# instance fields
.field private final blacklist mProcessId:I

.field private final blacklist mProcessNameHash:I

.field private final blacklist mThreadId:I

.field private final blacklist mThreadNameHash:I


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "processId"    # I
    .param p2, "threadId"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "threadName"    # Ljava/lang/String;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    .line 284
    iput p2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    .line 286
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    .line 287
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    .line 288
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 297
    instance-of v0, p1, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 298
    return v1

    .line 300
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    .line 301
    .local v0, "other":Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    if-ne v2, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 292
    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

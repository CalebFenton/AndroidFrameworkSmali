.class public Lcom/android/internal/os/KernelCpuThreadReaderDiff;
.super Ljava/lang/Object;
.source "KernelCpuThreadReaderDiff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
    }
.end annotation


# static fields
.field private static final blacklist OTHER_THREADS_ID:I = -0x1

.field private static final blacklist OTHER_THREADS_NAME:Ljava/lang/String; = "__OTHER_THREADS"

.field private static final blacklist TAG:Ljava/lang/String; = "KernelCpuThreadReaderDiff"


# instance fields
.field private blacklist mMinimumTotalCpuUsageMillis:I

.field private blacklist mPreviousCpuUsage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mReader:Lcom/android/internal/os/KernelCpuThreadReader;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KernelCpuThreadReader;I)V
    .registers 4
    .param p1, "reader"    # Lcom/android/internal/os/KernelCpuThreadReader;
    .param p2, "minimumTotalCpuUsageMillis"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelCpuThreadReader;

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    .line 105
    iput p2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    .line 107
    return-void
.end method

.method private static blacklist addToCpuUsage([I[I)V
    .registers 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 256
    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method private blacklist applyThresholding(Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    .registers 8
    .param p1, "processCpuUsage"    # Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "filteredThreadsCpuUsage":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v1, "thresholded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 225
    iget-object v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 227
    .local v3, "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    iget v4, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    iget-object v5, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-static {v5}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->totalCpuUsage([I)I

    move-result v5

    if-le v4, v5, :cond_2e

    .line 228
    if-nez v0, :cond_28

    .line 229
    iget-object v4, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v4, v4

    new-array v0, v4, [I

    .line 231
    :cond_28
    iget-object v4, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-static {v0, v4}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->addToCpuUsage([I[I)V

    .line 232
    goto :goto_31

    .line 234
    :cond_2e
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v3    # "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 236
    .end local v2    # "i":I
    :cond_34
    if-eqz v0, :cond_41

    .line 237
    new-instance v2, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    const/4 v3, -0x1

    const-string v4, "__OTHER_THREADS"

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;-><init>(ILjava/lang/String;[I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_41
    iput-object v1, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 242
    return-void
.end method

.method private static blacklist changeToDiffs(Ljava/util/Map;Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    .registers 9
    .param p1, "processCpuUsage"    # Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ")V"
        }
    .end annotation

    .line 193
    .local p0, "previousCpuUsage":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;[I>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 194
    iget-object v1, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 196
    .local v1, "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    new-instance v2, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    iget v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    iget v4, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    iget-object v5, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v2, "key":Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 203
    .local v3, "previous":[I
    if-nez v3, :cond_2b

    .line 205
    iget-object v4, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v4, v4

    new-array v3, v4, [I

    .line 207
    :cond_2b
    iget-object v4, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    .line 208
    invoke-static {v4, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->cpuTimeDiff([I[I)[I

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    .line 193
    .end local v1    # "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    .end local v2    # "key":Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
    .end local v3    # "previous":[I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "i":I
    :cond_36
    return-void
.end method

.method private static blacklist cpuTimeDiff([I[I)[I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 262
    array-length v0, p0

    new-array v0, v0, [I

    .line 263
    .local v0, "difference":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_11

    .line 264
    aget v2, p0, v1

    aget v3, p1, v1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 266
    .end local v1    # "i":I
    :cond_11
    return-object v0
.end method

.method private static blacklist createCpuUsageMap(Ljava/util/List;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;"
        }
    .end annotation

    .line 165
    .local p0, "processCpuUsages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 166
    .local v0, "cpuUsageMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;[I>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 167
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 168
    .local v2, "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_13
    iget-object v4, v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 169
    iget-object v4, v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 171
    .local v4, "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    new-instance v5, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    iget v6, v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    iget v7, v4, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    iget-object v8, v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .end local v4    # "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 166
    .end local v2    # "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    .end local v3    # "j":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 180
    .end local v1    # "i":I
    :cond_3b
    return-object v0
.end method

.method private static blacklist totalCpuUsage([I)I
    .registers 4
    .param p0, "cpuUsage"    # [I

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_b

    .line 248
    aget v2, p0, v1

    add-int/2addr v0, v2

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 250
    .end local v1    # "i":I
    :cond_b
    return v0
.end method


# virtual methods
.method public blacklist getCpuFrequenciesKhz()[I
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuThreadReader;->getCpuFrequenciesKhz()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProcessCpuUsageDiffed()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;"
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    .line 119
    .local v0, "newCpuUsage":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;[I>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    .line 120
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessCpuUsage()Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    .local v1, "processCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    invoke-static {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->createCpuUsageMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    move-object v0, v2

    .line 123
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_31

    if-nez v2, :cond_15

    .line 124
    nop

    .line 137
    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    .line 124
    const/4 v2, 0x0

    return-object v2

    .line 128
    :cond_15
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    :try_start_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 129
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 130
    .local v3, "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    invoke-static {v4, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->changeToDiffs(Ljava/util/Map;Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V

    .line 131
    invoke-direct {p0, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->applyThresholding(Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_31

    .line 128
    .end local v3    # "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 133
    .end local v2    # "i":I
    :cond_2d
    nop

    .line 137
    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    .line 133
    return-object v1

    .line 137
    .end local v1    # "processCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    :catchall_31
    move-exception v1

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    .line 138
    throw v1
.end method

.method blacklist setMinimumTotalCpuUsageMillis(I)V
    .registers 4
    .param p1, "minimumTotalCpuUsageMillis"    # I

    .line 152
    if-gez p1, :cond_1b

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative minimumTotalCpuUsageMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KernelCpuThreadReaderDiff"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 156
    :cond_1b
    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    .line 157
    return-void
.end method

.class public Lcom/android/internal/os/logging/MetricsLoggerWrapper;
.super Ljava/lang/Object;
.source "MetricsLoggerWrapper.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist logAppOverlayEnter(ILjava/lang/String;ZIZ)V
    .registers 8
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changed"    # Z
    .param p3, "type"    # I
    .param p4, "usingAlertWindow"    # Z

    .line 36
    if-eqz p2, :cond_13

    .line 37
    const/16 v0, 0x7f6

    const/16 v1, 0x3b

    const/4 v2, 0x1

    if-eq p3, v0, :cond_d

    .line 38
    invoke-static {v1, p0, p1, v2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    goto :goto_13

    .line 40
    :cond_d
    if-nez p4, :cond_13

    .line 41
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    .line 45
    :cond_13
    :goto_13
    return-void
.end method

.method public static blacklist logAppOverlayExit(ILjava/lang/String;ZIZ)V
    .registers 8
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changed"    # Z
    .param p3, "type"    # I
    .param p4, "usingAlertWindow"    # Z

    .line 48
    if-eqz p2, :cond_14

    .line 49
    const/16 v0, 0x7f6

    const/4 v1, 0x2

    const/16 v2, 0x3b

    if-eq p3, v0, :cond_e

    .line 50
    const/4 v0, 0x1

    invoke-static {v2, p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    goto :goto_14

    .line 52
    :cond_e
    if-nez p4, :cond_14

    .line 53
    const/4 v0, 0x0

    invoke-static {v2, p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    .line 57
    :cond_14
    :goto_14
    return-void
.end method

.method public static blacklist logPostGcMemorySnapshot()V
    .registers 18

    .line 60
    invoke-static {}, Lcom/android/libcore/readonly/Flags;->nativeMetrics()Z

    move-result v0

    if-nez v0, :cond_7

    .line 61
    return-void

    .line 63
    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 64
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "processName":Ljava/lang/String;
    invoke-static {}, Llibcore/util/NativeAllocationRegistry;->getMetrics()Ljava/util/Collection;

    move-result-object v0

    .line 67
    .local v0, "metrics":Ljava/util/Collection;, "Ljava/util/Collection<Llibcore/util/NativeAllocationRegistry$Metrics;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v15

    .line 69
    .local v15, "nMetrics":I
    new-array v10, v15, [Ljava/lang/String;

    .line 70
    .local v10, "classNames":[Ljava/lang/String;
    new-array v11, v15, [J

    .line 71
    .local v11, "mallocedCount":[J
    new-array v12, v15, [J

    .line 72
    .local v12, "mallocedBytes":[J
    new-array v13, v15, [J

    .line 73
    .local v13, "nonmallocedCount":[J
    new-array v14, v15, [J

    .line 75
    .local v14, "nonmallocedBytes":[J
    const/4 v1, 0x0

    .line 76
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v16, v1

    .end local v1    # "i":I
    .local v16, "i":I
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/util/NativeAllocationRegistry$Metrics;

    .line 77
    .local v1, "m":Llibcore/util/NativeAllocationRegistry$Metrics;
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v16

    .line 78
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedCount()J

    move-result-wide v5

    aput-wide v5, v11, v16

    .line 79
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedBytes()J

    move-result-wide v5

    aput-wide v5, v12, v16

    .line 80
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedCount()J

    move-result-wide v5

    aput-wide v5, v13, v16

    .line 81
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedBytes()J

    move-result-wide v5

    aput-wide v5, v14, v16

    .line 82
    nop

    .end local v1    # "m":Llibcore/util/NativeAllocationRegistry$Metrics;
    add-int/lit8 v16, v16, 0x1

    .line 83
    goto :goto_28

    .line 85
    :cond_56
    invoke-static {}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs()Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v1

    .line 86
    .local v1, "m":Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    invoke-static {}, Lcom/android/internal/os/ProcfsMemoryUtil;->readOomScoreAdjFromProcfs()I

    move-result v5

    .line 87
    .local v5, "oom_score_adj":I
    iget v2, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    iget v6, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v7, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v8, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    iget v9, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    move-object/from16 v17, v0

    .end local v0    # "metrics":Ljava/util/Collection;, "Ljava/util/Collection<Llibcore/util/NativeAllocationRegistry$Metrics;>;"
    .local v17, "metrics":Ljava/util/Collection;, "Ljava/util/Collection<Llibcore/util/NativeAllocationRegistry$Metrics;>;"
    iget v0, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int/2addr v9, v0

    move-object v0, v1

    .end local v1    # "m":Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    .local v0, "m":Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    const/16 v1, 0x39c

    invoke-static/range {v1 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIIIII[Ljava/lang/String;[J[J[J[J)V

    .line 99
    return-void
.end method

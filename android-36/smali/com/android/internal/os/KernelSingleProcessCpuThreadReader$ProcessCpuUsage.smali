.class public Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
.super Ljava/lang/Object;
.source "KernelSingleProcessCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessCpuUsage"
.end annotation


# instance fields
.field public blacklist selectedThreadCpuTimesMillis:[J

.field public blacklist threadCpuTimesMillis:[J


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "cpuFrequencyCount"    # I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    .line 197
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    .line 198
    return-void
.end method

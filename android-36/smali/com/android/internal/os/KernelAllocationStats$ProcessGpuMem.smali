.class public final Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;
.super Ljava/lang/Object;
.source "KernelAllocationStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelAllocationStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessGpuMem"
.end annotation


# instance fields
.field public final blacklist gpuMemoryKb:I

.field public final blacklist pid:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "gpuMemoryKb"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->pid:I

    .line 67
    iput p2, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->gpuMemoryKb:I

    .line 68
    return-void
.end method

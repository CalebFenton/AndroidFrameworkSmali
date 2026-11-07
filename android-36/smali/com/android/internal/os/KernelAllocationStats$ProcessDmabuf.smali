.class public final Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;
.super Ljava/lang/Object;
.source "KernelAllocationStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelAllocationStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDmabuf"
.end annotation


# instance fields
.field public final blacklist oomScore:I

.field public final blacklist processName:Ljava/lang/String;

.field public final blacklist retainedBuffersCount:I

.field public final blacklist retainedSizeKb:I

.field public final blacklist surfaceFlingerCount:I

.field public final blacklist surfaceFlingerSizeKb:I

.field public final blacklist uid:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;IIIII)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "oomScore"    # I
    .param p4, "retainedSizeKb"    # I
    .param p5, "retainedBuffersCount"    # I
    .param p6, "surfaceFlingerSizeKb"    # I
    .param p7, "surfaceFlingerCount"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    .line 44
    iput-object p2, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    .line 46
    iput p4, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    .line 47
    iput p5, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    .line 48
    iput p6, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    .line 49
    iput p7, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    .line 50
    return-void
.end method

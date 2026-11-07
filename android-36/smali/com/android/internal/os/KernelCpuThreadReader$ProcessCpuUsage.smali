.class public Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessCpuUsage"
.end annotation


# instance fields
.field public final blacklist processId:I

.field public final blacklist processName:Ljava/lang/String;

.field public blacklist threadCpuUsages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist uid:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "processId"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p4, "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    .line 543
    iput-object p2, p0, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    .line 544
    iput p3, p0, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    .line 545
    iput-object p4, p0, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 546
    return-void
.end method

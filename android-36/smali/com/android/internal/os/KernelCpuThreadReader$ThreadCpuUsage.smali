.class public Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadCpuUsage"
.end annotation


# instance fields
.field public final blacklist threadId:I

.field public final blacklist threadName:Ljava/lang/String;

.field public blacklist usageTimesMillis:[I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;[I)V
    .registers 4
    .param p1, "threadId"    # I
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "usageTimesMillis"    # [I

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    .line 558
    iput-object p2, p0, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    .line 559
    iput-object p3, p0, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    .line 560
    return-void
.end method

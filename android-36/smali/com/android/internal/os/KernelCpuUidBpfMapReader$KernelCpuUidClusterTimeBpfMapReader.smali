.class public Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidClusterTimeBpfMapReader;
.super Lcom/android/internal/os/KernelCpuUidBpfMapReader;
.source "KernelCpuUidBpfMapReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidBpfMapReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidClusterTimeBpfMapReader"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 208
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final native blacklist getDataDimensions()[J
.end method

.method protected final native blacklist readBpfData()Z
.end method

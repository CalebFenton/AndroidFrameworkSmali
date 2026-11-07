.class public Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidActiveTimeBpfMapReader;
.super Lcom/android/internal/os/KernelCpuUidBpfMapReader;
.source "KernelCpuUidBpfMapReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidBpfMapReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidActiveTimeBpfMapReader"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 199
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final native blacklist getDataDimensions()[J
.end method

.method protected final native blacklist readBpfData()Z
.end method

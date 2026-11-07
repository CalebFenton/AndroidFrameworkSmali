.class public interface abstract Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;
.super Ljava/lang/Object;
.source "KernelSingleProcessCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CpuTimeInStateReader"
.end annotation


# virtual methods
.method public abstract blacklist getAggregatedTaskCpuFreqTimes(I)[Ljava/lang/String;
.end method

.method public abstract blacklist getCpuFrequencyCount()I
.end method

.method public abstract blacklist startAggregatingTaskCpuTimes(II)Z
.end method

.method public abstract blacklist startTrackingProcessCpuTimes(I)Z
.end method

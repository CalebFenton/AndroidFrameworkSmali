.class final Landroid/app/ActivityThread$Profiler;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Profiler"
.end annotation


# instance fields
.field autoStopProfiler:Z

.field handlingProfiling:Z

.field profileFd:Landroid/os/ParcelFileDescriptor;

.field profileFile:Ljava/lang/String;

.field profiling:Z

.field samplingInterval:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setProfiler(Landroid/app/ProfilerInfo;)V
    .locals 3
    .param p1, "profilerInfo"    # Landroid/app/ProfilerInfo;

    #@0
    .prologue
    .line 469
    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@2
    .line 470
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    iget-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 471
    if-eqz v1, :cond_0

    #@8
    .line 473
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 478
    :cond_0
    :goto_0
    return-void

    #@c
    .line 474
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@e
    .line 480
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@10
    if-eqz v2, :cond_2

    #@12
    .line 482
    :try_start_1
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@14
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@17
    .line 487
    :cond_2
    :goto_1
    iget-object v2, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    #@19
    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@1b
    .line 488
    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@1d
    .line 489
    iget v2, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    #@1f
    iput v2, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    #@21
    .line 490
    iget-boolean v2, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    #@23
    iput-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    #@25
    .line 468
    return-void

    #@26
    .line 483
    :catch_1
    move-exception v0

    #@27
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public startProfiling()V
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 493
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 494
    :cond_0
    return-void

    #@b
    .line 497
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@d
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@12
    move-result-object v1

    #@13
    .line 498
    iget v3, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    #@15
    if-eqz v3, :cond_2

    #@17
    :goto_0
    iget v5, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    #@19
    const/high16 v2, 0x800000

    #@1b
    const/4 v3, 0x0

    #@1c
    .line 497
    invoke-static/range {v0 .. v5}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V

    #@1f
    .line 499
    const/4 v0, 0x1

    #@20
    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 492
    :goto_1
    return-void

    #@23
    :cond_2
    move v4, v2

    #@24
    .line 498
    goto :goto_0

    #@25
    .line 500
    :catch_0
    move-exception v6

    #@26
    .line 501
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "ActivityThread"

    #@29
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "Profiling failed on path "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 503
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@44
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    #@47
    .line 504
    const/4 v0, 0x0

    #@48
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@4a
    goto :goto_1

    #@4b
    .line 505
    :catch_1
    move-exception v7

    #@4c
    .line 506
    .local v7, "e2":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    #@4f
    const-string/jumbo v1, "Failure closing profile fd"

    #@52
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    goto :goto_1
.end method

.method public stopProfiling()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 511
    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 512
    const/4 v1, 0x0

    #@6
    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    #@8
    .line 513
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    #@b
    .line 514
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 516
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@11
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 520
    :cond_0
    :goto_0
    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@16
    .line 521
    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@18
    .line 510
    :cond_1
    return-void

    #@19
    .line 517
    :catch_0
    move-exception v0

    #@1a
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

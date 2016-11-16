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
    .line 532
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
    .line 540
    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@2
    .line 541
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    iget-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 542
    if-eqz v1, :cond_0

    #@8
    .line 544
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 549
    :cond_0
    :goto_0
    return-void

    #@c
    .line 545
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@e
    .line 551
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@10
    if-eqz v2, :cond_2

    #@12
    .line 553
    :try_start_1
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@14
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@17
    .line 558
    :cond_2
    :goto_1
    iget-object v2, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    #@19
    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@1b
    .line 559
    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@1d
    .line 560
    iget v2, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    #@1f
    iput v2, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    #@21
    .line 561
    iget-boolean v2, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    #@23
    iput-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    #@25
    .line 539
    return-void

    #@26
    .line 554
    :catch_1
    move-exception v0

    #@27
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public startProfiling()V
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 564
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 565
    :cond_0
    return-void

    #@b
    .line 568
    :cond_1
    :try_start_0
    const-string/jumbo v0, "debug.traceview-buffer-size-mb"

    #@e
    const/16 v1, 0x8

    #@10
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@13
    move-result v6

    #@14
    .line 569
    .local v6, "bufferSize":I
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@16
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@18
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1b
    move-result-object v1

    #@1c
    .line 570
    mul-int/lit16 v2, v6, 0x400

    #@1e
    mul-int/lit16 v2, v2, 0x400

    #@20
    iget v5, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    #@22
    if-eqz v5, :cond_2

    #@24
    :goto_0
    iget v5, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    #@26
    const/4 v3, 0x0

    #@27
    .line 569
    invoke-static/range {v0 .. v5}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V

    #@2a
    .line 571
    const/4 v0, 0x1

    #@2b
    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 563
    .end local v6    # "bufferSize":I
    :goto_1
    return-void

    #@2e
    .restart local v6    # "bufferSize":I
    :cond_2
    move v4, v3

    #@2f
    .line 570
    goto :goto_0

    #@30
    .line 572
    .end local v6    # "bufferSize":I
    :catch_0
    move-exception v7

    #@31
    .line 573
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "ActivityThread"

    #@34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v2, "Profiling failed on path "

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 575
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@4f
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    #@52
    .line 576
    const/4 v0, 0x0

    #@53
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@55
    goto :goto_1

    #@56
    .line 577
    :catch_1
    move-exception v8

    #@57
    .line 578
    .local v8, "e2":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    #@5a
    const-string/jumbo v1, "Failure closing profile fd"

    #@5d
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@60
    goto :goto_1
.end method

.method public stopProfiling()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 583
    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 584
    const/4 v1, 0x0

    #@6
    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    #@8
    .line 585
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    #@b
    .line 586
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 588
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@11
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 592
    :cond_0
    :goto_0
    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@16
    .line 593
    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@18
    .line 582
    :cond_1
    return-void

    #@19
    .line 589
    :catch_0
    move-exception v0

    #@1a
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

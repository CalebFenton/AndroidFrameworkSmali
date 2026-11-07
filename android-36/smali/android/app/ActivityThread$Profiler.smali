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
.field greylist-max-o autoStopProfiler:Z

.field greylist-max-o handlingProfiling:Z

.field blacklist mClockType:I

.field blacklist mProfilerOutputVersion:I

.field greylist-max-o profileFd:Landroid/os/ParcelFileDescriptor;

.field greylist-max-o profileFile:Ljava/lang/String;

.field greylist-max-o profiling:Z

.field greylist-max-o samplingInterval:I

.field greylist-max-o streamingOutput:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o setProfiler(Landroid/app/ProfilerInfo;)V
    .registers 4
    .param p1, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 1030
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1031
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v1, :cond_e

    .line 1032
    if-eqz v0, :cond_d

    .line 1034
    :try_start_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1037
    goto :goto_d

    .line 1035
    :catch_c
    move-exception v1

    .line 1039
    :cond_d
    :goto_d
    return-void

    .line 1041
    :cond_e
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_19

    .line 1043
    :try_start_12
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18

    .line 1046
    goto :goto_19

    .line 1044
    :catch_18
    move-exception v1

    .line 1048
    :cond_19
    :goto_19
    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 1049
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1050
    iget v1, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v1, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 1051
    iget-boolean v1, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 1052
    iget-boolean v1, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 1053
    iget v1, p1, Landroid/app/ProfilerInfo;->clockType:I

    iput v1, p0, Landroid/app/ActivityThread$Profiler;->mClockType:I

    .line 1054
    iget v1, p1, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iput v1, p0, Landroid/app/ActivityThread$Profiler;->mProfilerOutputVersion:I

    .line 1055
    return-void
.end method

.method public greylist-max-o startProfiling()V
    .registers 12

    .line 1057
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_9

    goto :goto_67

    .line 1061
    :cond_9
    :try_start_9
    const-string v0, "debug.traceview-buffer-size-mb"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1062
    .local v0, "bufferSize":I
    const/4 v1, 0x0

    .line 1063
    .local v1, "flags":I
    iget v2, p0, Landroid/app/ActivityThread$Profiler;->mClockType:I

    iget v3, p0, Landroid/app/ActivityThread$Profiler;->mProfilerOutputVersion:I

    invoke-static {v3}, Landroid/app/ProfilerInfo;->getFlagsForOutputVersion(I)I

    move-result v3

    or-int v7, v2, v3

    .line 1064
    .end local v1    # "flags":I
    .local v7, "flags":I
    iget-object v4, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    mul-int/lit16 v1, v0, 0x400

    mul-int/lit16 v6, v1, 0x400

    iget v1, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    move v8, v2

    goto :goto_31

    :cond_2f
    const/4 v1, 0x0

    move v8, v1

    :goto_31
    iget v9, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    iget-boolean v10, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    invoke-static/range {v4 .. v10}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    .line 1067
    iput-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_3a} :catch_3b

    .line 1076
    .end local v0    # "bufferSize":I
    .end local v7    # "flags":I
    goto :goto_66

    .line 1068
    :catch_3b
    move-exception v0

    move-object v1, v0

    .line 1069
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profiling failed on path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityThread"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    :try_start_57
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1072
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5f} :catch_60

    .line 1075
    goto :goto_66

    .line 1073
    :catch_60
    move-exception v0

    .line 1074
    .local v0, "e2":Ljava/io/IOException;
    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    .end local v0    # "e2":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_66
    return-void

    .line 1058
    :cond_67
    :goto_67
    return-void
.end method

.method public greylist-max-o stopProfiling()V
    .registers 2

    .line 1079
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_1a

    .line 1080
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 1081
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1082
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_15

    .line 1084
    :try_start_e
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_14

    .line 1086
    goto :goto_15

    .line 1085
    :catch_14
    move-exception v0

    .line 1088
    :cond_15
    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1089
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 1091
    :cond_1a
    return-void
.end method

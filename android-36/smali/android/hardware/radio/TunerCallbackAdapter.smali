.class final Landroid/hardware/radio/TunerCallbackAdapter;
.super Landroid/hardware/radio/ITunerCallback$Stub;
.source "TunerCallbackAdapter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BroadcastRadio.TunerCallbackAdapter"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/radio/RadioTuner$Callback;

.field blacklist mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field private blacklist mDelayedCompleteCallback:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field blacklist mIsAntennaConnected:Z

.field blacklist mLastCompleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field blacklist mProgramList:Landroid/hardware/radio/ProgramList;


# direct methods
.method public static synthetic blacklist $r8$lambda$1z8SZrGuPUxGVv7_VNEmAPbDr9Y(Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onError$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4JJkgS1W_B7EH0wpfxrrGUuY7FA(Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onTuneFailed$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7a_n6tedil5Bl5LuujmhznY88z8(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$setProgramListObserver$0(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7f9UTGy7bGXdiVewCDDHP0SVZk8(Landroid/hardware/radio/TunerCallbackAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$sendBackgroundScanCompleteLocked$11()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OPO-WBZTX7OwNdxIjoS1deJYsu4(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onBackgroundScanAvailabilityChange$10(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PUJ0Qe-lVz1Ng0ChJ59I9sESsk0(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onTrafficAnnouncement$7(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$T_sIl6RmmOf1QUD78Ukx-DZqHao(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onConfigurationChanged$5(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XMs0-pe67307qCxgprhh1z00EUM(Landroid/hardware/radio/TunerCallbackAdapter;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onParametersUpdated$15(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dmJO-to1kKP7C8Lm6mqLRcl0fi0(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onEmergencyAnnouncement$8(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eHjZO_miEdWM7BJCF0l1isPI9M4(Landroid/hardware/radio/TunerCallbackAdapter;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onConfigFlagUpdated$14(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$enLsEMT_b3QbsRGgOnWl2UBOWjE(Landroid/hardware/radio/TunerCallbackAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onProgramListChanged$12()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tn-Gc6Hared96WGpaTZ8nxmV1Z0(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onProgramListUpdated$13(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uER2XkiEmiQ-35KpNWqF6wG9sDM(Landroid/hardware/radio/TunerCallbackAdapter;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onAntennaState$9(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v0HEq8fnlZwVmBYjDRoA9qx4S5M(Landroid/hardware/radio/TunerCallbackAdapter;ILandroid/hardware/radio/ProgramSelector;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onTuneFailed$3(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vpTCfcW5zZD1jM-AF8-5sx5iUk0(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$setProgramListObserver$1(Landroid/hardware/radio/ProgramList;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$y1ut7YMgV05Qolos8IIFRn41Ng0(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onCurrentProgramInfoChanged$6(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/radio/RadioTuner$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 56
    invoke-direct {p0}, Landroid/hardware/radio/ITunerCallback$Stub;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    .line 57
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioTuner$Callback;

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    .line 58
    if-nez p2, :cond_25

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    goto :goto_27

    .line 61
    :cond_25
    iput-object p2, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    .line 63
    :goto_27
    return-void
.end method

.method private synthetic blacklist lambda$onAntennaState$9(Z)V
    .registers 3
    .param p1, "connected"    # Z

    .line 218
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onAntennaState(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onBackgroundScanAvailabilityChange$10(Z)V
    .registers 3
    .param p1, "isAvailable"    # Z

    .line 223
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigFlagUpdated$14(IZ)V
    .registers 4
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 266
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioTuner$Callback;->onConfigFlagUpdated(IZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigurationChanged$5(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 3
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .line 181
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCurrentProgramInfoChanged$6(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 196
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 198
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v0

    .line 199
    .local v0, "metadata":Landroid/hardware/radio/RadioMetadata;
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v1, v0}, Landroid/hardware/radio/RadioTuner$Callback;->onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V

    .line 200
    :cond_10
    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyAnnouncement$8(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 210
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$2(I)V
    .registers 3
    .param p1, "status"    # I

    .line 143
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onParametersUpdated$15(Ljava/util/Map;)V
    .registers 3
    .param p1, "parameters"    # Ljava/util/Map;

    .line 271
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProgramListChanged$12()V
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramListChanged()V

    return-void
.end method

.method private synthetic blacklist lambda$onProgramListUpdated$13(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 4
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;

    .line 254
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-nez v1, :cond_9

    .line 256
    monitor-exit v0

    return-void

    .line 258
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    .line 259
    .local v1, "programList":Landroid/hardware/radio/ProgramList;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_18

    .line 260
    const-string v0, "Chunk cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {v1, v0}, Landroid/hardware/radio/ProgramList;->apply(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 261
    return-void

    .line 259
    .end local v1    # "programList":Landroid/hardware/radio/ProgramList;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private synthetic blacklist lambda$onTrafficAnnouncement$7(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 205
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onTuneFailed$3(ILandroid/hardware/radio/ProgramSelector;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 148
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioTuner$Callback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTuneFailed$4(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 176
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$sendBackgroundScanCompleteLocked$11()V
    .registers 2

    .line 229
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanComplete()V

    return-void
.end method

.method private synthetic blacklist lambda$setProgramListObserver$0(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .registers 5
    .param p1, "programList"    # Landroid/hardware/radio/ProgramList;
    .param p2, "closeListener"    # Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 92
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eq v1, p1, :cond_9

    .line 94
    monitor-exit v0

    return-void

    .line 96
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    .line 97
    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    .line 98
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 99
    invoke-interface {p2}, Landroid/hardware/radio/ProgramList$OnCloseListener;->onClose()V

    .line 100
    return-void

    .line 98
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private synthetic blacklist lambda$setProgramListObserver$1(Landroid/hardware/radio/ProgramList;)V
    .registers 5
    .param p1, "programList"    # Landroid/hardware/radio/ProgramList;

    .line 102
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eq v1, p1, :cond_9

    .line 104
    monitor-exit v0

    return-void

    .line 106
    :cond_9
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList;->toList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    .line 107
    iget-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    if-eqz v1, :cond_1d

    .line 108
    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Sending delayed onBackgroundScanComplete callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->sendBackgroundScanCompleteLocked()V

    .line 111
    :cond_1d
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private blacklist sendBackgroundScanCompleteLocked()V
    .registers 3

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    .line 229
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method


# virtual methods
.method blacklist clearLastCompleteList()V
    .registers 3

    .line 122
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method blacklist close()V
    .registers 3

    .line 67
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-nez v1, :cond_9

    .line 69
    monitor-exit v0

    return-void

    .line 71
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    .line 72
    .local v1, "programList":Landroid/hardware/radio/ProgramList;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 73
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    .line 74
    return-void

    .line 72
    .end local v1    # "programList":Landroid/hardware/radio/ProgramList;
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method blacklist getCurrentProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 3

    .line 128
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    monitor-exit v0

    return-object v1

    .line 130
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist getLastCompleteList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 118
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist isAntennaConnected()Z
    .registers 3

    .line 135
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    .line 137
    .local v1, "isConnected":Z
    monitor-exit v0

    .line 138
    return v1

    .line 137
    .end local v1    # "isConnected":Z
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist onAntennaState(Z)V
    .registers 4
    .param p1, "connected"    # Z

    .line 215
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iput-boolean p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mIsAntennaConnected:Z

    .line 217
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 218
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void

    .line 217
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist onBackgroundScanAvailabilityChange(Z)V
    .registers 4
    .param p1, "isAvailable"    # Z

    .line 223
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method public blacklist onBackgroundScanComplete()V
    .registers 4

    .line 234
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLastCompleteList:Ljava/util/List;

    if-nez v1, :cond_13

    .line 236
    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Got onBackgroundScanComplete callback, but the program list didn\'t get through yet. Delaying it..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mDelayedCompleteCallback:Z

    .line 239
    monitor-exit v0

    return-void

    .line 241
    :cond_13
    invoke-direct {p0}, Landroid/hardware/radio/TunerCallbackAdapter;->sendBackgroundScanCompleteLocked()V

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist onConfigFlagUpdated(IZ)V
    .registers 5
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 266
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 4
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .line 181
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public blacklist onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 186
    if-nez p1, :cond_a

    .line 187
    const-string v0, "BroadcastRadio.TunerCallbackAdapter"

    const-string v1, "ProgramInfo must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 191
    :cond_a
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_d
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 193
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_1b

    .line 195
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void

    .line 193
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist onEmergencyAnnouncement(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 210
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda15;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public blacklist onError(I)V
    .registers 4
    .param p1, "status"    # I

    .line 143
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public blacklist onParametersUpdated(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda11;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method

.method public blacklist onProgramListChanged()V
    .registers 3

    .line 247
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda13;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    return-void
.end method

.method public blacklist onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 4
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;

    .line 252
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method public blacklist onTrafficAnnouncement(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 205
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda14;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public blacklist onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 148
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;ILandroid/hardware/radio/ProgramSelector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    sparse-switch p1, :sswitch_data_3c

    goto :goto_30

    .line 153
    :sswitch_e
    const/4 v0, 0x2

    .line 154
    .local v0, "errorCode":I
    goto :goto_31

    .line 157
    .end local v0    # "errorCode":I
    :sswitch_10
    const/4 v0, 0x1

    .line 158
    .restart local v0    # "errorCode":I
    goto :goto_31

    .line 168
    .end local v0    # "errorCode":I
    :sswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got an error with no mapping to the legacy API ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), doing a best-effort conversion to ERROR_SCAN_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastRadio.TunerCallbackAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_30
    const/4 v0, 0x3

    .line 176
    .restart local v0    # "errorCode":I
    :goto_31
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void

    :sswitch_data_3c
    .sparse-switch
        -0x80000000 -> :sswitch_12
        -0x26 -> :sswitch_12
        -0x20 -> :sswitch_10
        -0x16 -> :sswitch_12
        -0x13 -> :sswitch_12
        -0x1 -> :sswitch_10
        0x1 -> :sswitch_12
        0x2 -> :sswitch_12
        0x3 -> :sswitch_12
        0x4 -> :sswitch_12
        0x6 -> :sswitch_e
        0x7 -> :sswitch_12
    .end sparse-switch
.end method

.method blacklist setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .registers 6
    .param p1, "programList"    # Landroid/hardware/radio/ProgramList;
    .param p2, "closeListener"    # Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 78
    const-string v0, "CloseListener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_8
    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    .line 82
    .local v1, "prevProgramList":Landroid/hardware/radio/ProgramList;
    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mProgramList:Landroid/hardware/radio/ProgramList;

    .line 83
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_2d

    .line 84
    if-eqz v1, :cond_19

    .line 85
    const-string v0, "BroadcastRadio.TunerCallbackAdapter"

    const-string v2, "Previous program list observer wasn\'t properly closed, closing it..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    .line 88
    :cond_19
    if-nez p1, :cond_1c

    .line 89
    return-void

    .line 91
    :cond_1c
    new-instance v0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    invoke-virtual {p1, v0}, Landroid/hardware/radio/ProgramList;->setOnCloseListener(Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    .line 101
    new-instance v0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;)V

    invoke-virtual {p1, v0}, Landroid/hardware/radio/ProgramList;->addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    .line 113
    return-void

    .line 83
    .end local v1    # "prevProgramList":Landroid/hardware/radio/ProgramList;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.class public abstract Landroid/media/PlayerBase;
.super Ljava/lang/Object;
.source "PlayerBase.java"


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private final mAppOpsLock:Ljava/lang/Object;

.field protected mAttributes:Landroid/media/AudioAttributes;

.field protected mAuxEffectSendLevel:F

.field private mHasAppOpsPlayAudio:Z

.field protected mLeftVolume:F

.field protected mRightVolume:F


# direct methods
.method static synthetic -get0(Landroid/media/PlayerBase;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 6
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 44
    iput v2, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    #@7
    .line 45
    iput v2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    #@9
    .line 46
    const/4 v2, 0x0

    #@a
    iput v2, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    #@c
    .line 51
    const/4 v2, 0x1

    #@d
    iput-boolean v2, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    #@f
    .line 52
    new-instance v2, Ljava/lang/Object;

    #@11
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v2, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    #@16
    .line 60
    if-nez p1, :cond_0

    #@18
    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v3, "Illegal null AudioAttributes"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 63
    :cond_0
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    #@23
    .line 64
    const-string/jumbo v2, "appops"

    #@26
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@29
    move-result-object v0

    #@2a
    .line 65
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@2d
    move-result-object v2

    #@2e
    iput-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@30
    .line 67
    invoke-virtual {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync()V

    #@33
    .line 69
    new-instance v2, Landroid/media/PlayerBase$1;

    #@35
    invoke-direct {v2, p0}, Landroid/media/PlayerBase$1;-><init>(Landroid/media/PlayerBase;)V

    #@38
    iput-object v2, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@3a
    .line 79
    :try_start_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@3c
    .line 80
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    iget-object v4, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@42
    .line 79
    const/16 v5, 0x1c

    #@44
    invoke-interface {v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 59
    :goto_0
    return-void

    #@48
    .line 81
    :catch_0
    move-exception v1

    #@49
    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@4a
    iput-boolean v2, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    #@4c
    goto :goto_0
.end method


# virtual methods
.method baseRelease()V
    .locals 3

    #@0
    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@2
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@4
    invoke-interface {v1, v2}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 134
    :goto_0
    return-void

    #@8
    .line 137
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method baseSetAuxEffectSendLevel(F)I
    .locals 2
    .param p1, "level"    # F

    #@0
    .prologue
    .line 121
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 122
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    #@5
    .line 123
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 124
    const/4 v0, 0x0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 127
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(F)I

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 121
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method baseSetVolume(FF)V
    .locals 2
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    #@0
    .prologue
    .line 110
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 111
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    #@5
    .line 112
    iput p2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    #@7
    .line 113
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    monitor-exit v1

    #@e
    .line 114
    return-void

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/media/PlayerBase;->playerSetVolume(FF)V

    #@13
    .line 109
    return-void

    #@14
    .line 110
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method baseStart()V
    .locals 3

    #@0
    .prologue
    .line 102
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 103
    :try_start_0
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 104
    const/4 v0, 0x0

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {p0, v0, v2}, Landroid/media/PlayerBase;->playerSetVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 101
    return-void

    #@10
    .line 102
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 92
    if-nez p1, :cond_0

    #@2
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioAttributes"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 95
    :cond_0
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOpsLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 96
    :try_start_0
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    #@10
    .line 97
    invoke-virtual {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 91
    return-void

    #@15
    .line 95
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method isRestricted_sync()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 185
    iget-boolean v0, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 186
    return v1

    #@6
    .line 189
    :cond_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    #@8
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    #@b
    move-result v0

    #@c
    and-int/lit8 v0, v0, 0x40

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 190
    return v1

    #@11
    .line 192
    :cond_1
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method abstract playerSetAuxEffectSendLevel(F)I
.end method

.method abstract playerSetVolume(FF)V
.end method

.method updateAppOpsPlayAudio_sync()V
    .locals 10

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 147
    iget-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    #@3
    .line 149
    .local v3, "oldHasAppOpsPlayAudio":Z
    :try_start_0
    iget-object v4, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@5
    .line 150
    iget-object v6, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    #@7
    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getUsage()I

    #@a
    move-result v6

    #@b
    .line 151
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@e
    move-result v7

    #@f
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@12
    move-result-object v8

    #@13
    .line 149
    const/16 v9, 0x1c

    #@15
    invoke-interface {v4, v9, v6, v7, v8}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    #@18
    move-result v2

    #@19
    .line 152
    .local v2, "mode":I
    if-nez v2, :cond_1

    #@1b
    const/4 v4, 0x1

    #@1c
    :goto_0
    iput-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 160
    .end local v2    # "mode":I
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    #@20
    if-eq v3, v4, :cond_0

    #@22
    .line 161
    iget-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 162
    iget v4, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    #@28
    iget v5, p0, Landroid/media/PlayerBase;->mRightVolume:F

    #@2a
    invoke-virtual {p0, v4, v5}, Landroid/media/PlayerBase;->playerSetVolume(FF)V

    #@2d
    .line 163
    iget v4, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    #@2f
    invoke-virtual {p0, v4}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(F)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@32
    .line 146
    :cond_0
    :goto_2
    return-void

    #@33
    .restart local v2    # "mode":I
    :cond_1
    move v4, v5

    #@34
    .line 152
    goto :goto_0

    #@35
    .line 153
    .end local v2    # "mode":I
    :catch_0
    move-exception v0

    #@36
    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v5, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    #@38
    goto :goto_1

    #@39
    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v4, 0x0

    #@3a
    const/4 v5, 0x0

    #@3b
    :try_start_2
    invoke-virtual {p0, v4, v5}, Landroid/media/PlayerBase;->playerSetVolume(FF)V

    #@3e
    .line 166
    const/4 v4, 0x0

    #@3f
    invoke-virtual {p0, v4}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(F)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@42
    goto :goto_2

    #@43
    .line 169
    :catch_1
    move-exception v1

    #@44
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_2
.end method

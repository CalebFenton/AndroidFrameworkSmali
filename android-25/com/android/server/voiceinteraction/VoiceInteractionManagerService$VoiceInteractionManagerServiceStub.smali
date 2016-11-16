.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.super Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceInteractionManagerServiceStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;,
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;
    }
.end annotation


# instance fields
.field private mCurUser:I

.field private final mEnableService:Z

.field mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSafeMode:Z

.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->unloadAllKeyphraseModels()V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@0
    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;-><init>()V

    #@5
    .line 1143
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    #@a
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@c
    .line 185
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@11
    move-result-object v0

    #@12
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->shouldEnableService(Landroid/content/res/Resources;)Z

    #@15
    move-result v0

    #@16
    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    #@18
    .line 184
    return-void
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1123
    new-instance v0, Ljava/lang/SecurityException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Caller does not hold the permission "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1120
    :cond_0
    return-void
.end method

.method private getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 354
    const v1, 0x1040068

    #@3
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 355
    .local v0, "interactorPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    .end local v0    # "interactorPackage":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private shouldEnableService(Landroid/content/res/Resources;)Z
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 348
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 348
    :cond_0
    :goto_0
    return v0

    #@e
    .line 349
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private declared-synchronized unloadAllKeyphraseModels()V
    .locals 8

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 925
    :try_start_0
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@3
    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Ljava/util/TreeSet;

    #@5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "keyphraseId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Ljava/lang/Integer;

    #@15
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v2

    #@19
    .line 926
    .local v2, "keyphraseId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-wide v0

    #@1d
    .line 928
    .local v0, "caller":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@1f
    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    #@21
    invoke-virtual {v5, v2}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->unloadKeyphraseModel(I)I

    #@24
    move-result v4

    #@25
    .line 929
    .local v4, "status":I
    if-eqz v4, :cond_0

    #@27
    .line 930
    const-string/jumbo v5, "VoiceInteractionManagerService"

    #@2a
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v7, "Failed to unload keyphrase "

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    const-string/jumbo v7, ":"

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4c
    .line 933
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .end local v0    # "caller":J
    .end local v2    # "keyphraseId":I
    .end local v3    # "keyphraseId$iterator":Ljava/util/Iterator;
    .end local v4    # "status":I
    :catchall_0
    move-exception v5

    #@51
    monitor-exit p0

    #@52
    throw v5

    #@53
    .line 932
    .restart local v0    # "caller":J
    .restart local v2    # "keyphraseId":I
    .restart local v3    # "keyphraseId$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    #@54
    .line 933
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@57
    .line 932
    throw v5

    #@58
    .line 936
    .end local v0    # "caller":J
    .end local v2    # "keyphraseId":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@5a
    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Ljava/util/TreeSet;

    #@5c
    invoke-virtual {v5}, Ljava/util/TreeSet;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5f
    monitor-exit p0

    #@60
    .line 924
    return-void
.end method


# virtual methods
.method public activeServiceSupportsAssist()Z
    .locals 1

    #@0
    .prologue
    .line 1020
    const-string/jumbo v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 1021
    monitor-enter p0

    #@7
    .line 1022
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@d
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@13
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@15
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v0

    #@19
    :goto_0
    monitor-exit p0

    #@1a
    return v0

    #@1b
    :cond_0
    const/4 v0, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 1021
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public activeServiceSupportsLaunchFromKeyguard()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1028
    const-string/jumbo v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 1029
    monitor-enter p0

    #@7
    .line 1030
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@d
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1031
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@13
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@15
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLaunchFromKeyguard()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v0

    #@19
    :goto_0
    monitor-exit p0

    #@1a
    .line 1030
    return v0

    #@1b
    :cond_0
    const/4 v0, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 1029
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public closeSystemDialogs(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 658
    monitor-enter p0

    #@1
    .line 659
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 660
    const-string/jumbo v2, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v3, "closeSystemDialogs without running voice interaction service"

    #@b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    monitor-exit p0

    #@f
    .line 661
    return-void

    #@10
    .line 663
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@13
    move-result-wide v0

    #@14
    .line 665
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@16
    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->closeSystemDialogsLocked(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .line 667
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1c
    monitor-exit p0

    #@1d
    .line 657
    return-void

    #@1e
    .line 666
    :catchall_0
    move-exception v2

    #@1f
    .line 667
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 666
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@23
    .line 658
    .end local v0    # "caller":J
    :catchall_1
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method public deleteKeyphraseSoundModel(ILjava/lang/String;)I
    .locals 9
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 786
    const-string/jumbo v6, "android.permission.MANAGE_VOICE_KEYPHRASES"

    #@4
    invoke-direct {p0, v6}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@7
    .line 788
    if-nez p2, :cond_0

    #@9
    .line 789
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@b
    .line 790
    const-string/jumbo v6, "Illegal argument(s) in deleteKeyphraseSoundModel"

    #@e
    .line 789
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v5

    #@12
    .line 793
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@15
    move-result v2

    #@16
    .line 794
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@19
    move-result-wide v0

    #@1a
    .line 795
    .local v0, "caller":J
    const/4 v3, 0x0

    #@1b
    .line 797
    .local v3, "deleted":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@1d
    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    #@1f
    invoke-virtual {v6, p1}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->unloadKeyphraseModel(I)I

    #@22
    move-result v4

    #@23
    .line 798
    .local v4, "unloadStatus":I
    if-eqz v4, :cond_1

    #@25
    .line 799
    const-string/jumbo v6, "VoiceInteractionManagerService"

    #@28
    new-instance v7, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v8, "Unable to unload keyphrase sound model:"

    #@30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 801
    :cond_1
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@41
    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    #@43
    invoke-virtual {v6, p1, v2, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@46
    move-result v3

    #@47
    .line 802
    .local v3, "deleted":Z
    if-eqz v3, :cond_4

    #@49
    .line 804
    :goto_0
    if-eqz v3, :cond_3

    #@4b
    .line 805
    monitor-enter p0

    #@4c
    .line 807
    :try_start_1
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@4e
    if-eqz v6, :cond_2

    #@50
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@52
    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@54
    if-eqz v6, :cond_2

    #@56
    .line 808
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@58
    invoke-virtual {v6}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    #@5b
    .line 810
    :cond_2
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@5d
    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Ljava/util/TreeSet;

    #@5f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    monitor-exit p0

    #@67
    .line 813
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6a
    .line 802
    return v5

    #@6b
    :cond_4
    const/high16 v5, -0x80000000

    #@6d
    goto :goto_0

    #@6e
    .line 805
    :catchall_0
    move-exception v5

    #@6f
    monitor-exit p0

    #@70
    throw v5

    #@71
    .line 803
    .end local v4    # "unloadStatus":I
    .local v3, "deleted":Z
    :catchall_1
    move-exception v5

    #@72
    .line 804
    if-eqz v3, :cond_6

    #@74
    .line 805
    monitor-enter p0

    #@75
    .line 807
    :try_start_2
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@77
    if-eqz v6, :cond_5

    #@79
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@7b
    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@7d
    if-eqz v6, :cond_5

    #@7f
    .line 808
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@81
    invoke-virtual {v6}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    #@84
    .line 810
    :cond_5
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@86
    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Ljava/util/TreeSet;

    #@88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v7

    #@8c
    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@8f
    monitor-exit p0

    #@90
    .line 813
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@93
    .line 803
    throw v5

    #@94
    .line 805
    :catchall_2
    move-exception v5

    #@95
    monitor-exit p0

    #@96
    throw v5
.end method

.method public deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    .line 575
    monitor-enter p0

    #@1
    .line 576
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 577
    new-instance v2, Ljava/lang/SecurityException;

    #@7
    .line 578
    const-string/jumbo v3, "deliverNewSession without running voice interaction service"

    #@a
    .line 577
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 575
    :catchall_0
    move-exception v2

    #@f
    monitor-exit p0

    #@10
    throw v2

    #@11
    .line 580
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result-wide v0

    #@15
    .line 582
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@17
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1a
    move-result v2

    #@1b
    .line 584
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 582
    return v2

    #@20
    .line 583
    :catchall_1
    move-exception v2

    #@21
    .line 584
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 583
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v1, "android.permission.DUMP"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v1, "Permission Denial: can\'t dump PowerManager from from pid="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 1104
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1c
    move-result v1

    #@1d
    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 1105
    const-string/jumbo v1, ", uid="

    #@24
    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 1105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v1

    #@2c
    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 1106
    return-void

    #@38
    .line 1108
    :cond_0
    monitor-enter p0

    #@39
    .line 1109
    :try_start_0
    const-string/jumbo v0, "VOICE INTERACTION MANAGER (dumpsys voiceinteraction)"

    #@3c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v1, "  mEnableService: "

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 1111
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@5a
    if-nez v0, :cond_1

    #@5c
    .line 1112
    const-string/jumbo v0, "  (No active implementation)"

    #@5f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    monitor-exit p0

    #@63
    .line 1113
    return-void

    #@64
    .line 1115
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@66
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    monitor-exit p0

    #@6a
    .line 1117
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@6c
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    #@6e
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@71
    .line 1100
    return-void

    #@72
    .line 1108
    :catchall_0
    move-exception v0

    #@73
    monitor-exit p0

    #@74
    throw v0
.end method

.method findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;
    .locals 13
    .param p1, "userHandle"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 421
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@3
    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v8

    #@9
    .line 422
    new-instance v9, Landroid/content/Intent;

    #@b
    const-string/jumbo v10, "android.service.voice.VoiceInteractionService"

    #@e
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@11
    .line 423
    const/high16 v10, 0x100c0000

    #@13
    .line 421
    invoke-virtual {v8, v9, v10, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    .line 426
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1a
    move-result v7

    #@1b
    .line 428
    .local v7, "numAvailable":I
    if-nez v7, :cond_0

    #@1d
    .line 429
    const-string/jumbo v8, "VoiceInteractionManagerService"

    #@20
    new-instance v9, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v10, "no available voice interaction services found for user "

    #@28
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v9

    #@2c
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 430
    return-object v11

    #@38
    .line 434
    :cond_0
    const/4 v4, 0x0

    #@39
    .line 435
    .local v4, "foundInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    const/4 v5, 0x0

    #@3a
    .end local v4    # "foundInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_5

    #@3c
    .line 436
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v8

    #@40
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@42
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@44
    .line 437
    .local v2, "cur":Landroid/content/pm/ServiceInfo;
    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@46
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    #@48
    and-int/lit8 v8, v8, 0x1

    #@4a
    if-eqz v8, :cond_2

    #@4c
    .line 438
    new-instance v1, Landroid/content/ComponentName;

    #@4e
    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@50
    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@52
    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    .line 440
    .local v1, "comp":Landroid/content/ComponentName;
    :try_start_0
    new-instance v6, Landroid/service/voice/VoiceInteractionServiceInfo;

    #@57
    .line 441
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@59
    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@5b
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5e
    move-result-object v8

    #@5f
    .line 440
    invoke-direct {v6, v8, v1, p1}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    #@62
    .line 442
    .local v6, "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    if-nez v8, :cond_4

    #@68
    .line 443
    if-eqz p2, :cond_1

    #@6a
    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@6d
    move-result-object v8

    #@6e
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@70
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v8

    #@74
    if-eqz v8, :cond_2

    #@76
    .line 445
    :cond_1
    if-nez v4, :cond_3

    #@78
    .line 446
    move-object v4, v6

    #@79
    .line 435
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@7b
    goto :goto_0

    #@7c
    .line 448
    .restart local v1    # "comp":Landroid/content/ComponentName;
    .restart local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_3
    const-string/jumbo v8, "VoiceInteractionManagerService"

    #@7f
    new-instance v9, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v10, "More than one voice interaction service, picking first "

    #@87
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v9

    #@8b
    .line 450
    new-instance v10, Landroid/content/ComponentName;

    #@8d
    .line 451
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@90
    move-result-object v11

    #@91
    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@93
    .line 452
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@96
    move-result-object v12

    #@97
    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@99
    .line 450
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9c
    .line 448
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v9

    #@a0
    .line 453
    const-string/jumbo v10, " over "

    #@a3
    .line 448
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v9

    #@a7
    .line 454
    new-instance v10, Landroid/content/ComponentName;

    #@a9
    iget-object v11, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@ab
    iget-object v12, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@ad
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b0
    .line 448
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v9

    #@b4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v9

    #@b8
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@bb
    goto :goto_1

    #@bc
    .line 461
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_0
    move-exception v3

    #@bd
    .line 462
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "VoiceInteractionManagerService"

    #@c0
    new-instance v9, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v10, "Failure looking up interaction service "

    #@c8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v9

    #@cc
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v9

    #@d0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v9

    #@d4
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    goto :goto_1

    #@d8
    .line 458
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_4
    :try_start_1
    const-string/jumbo v8, "VoiceInteractionManagerService"

    #@db
    new-instance v9, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v10, "Bad interaction service "

    #@e3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v9

    #@e7
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v9

    #@eb
    const-string/jumbo v10, ": "

    #@ee
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v9

    #@f2
    .line 459
    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    #@f5
    move-result-object v10

    #@f6
    .line 458
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v9

    #@fa
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v9

    #@fe
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@101
    goto/16 :goto_1

    #@103
    .line 467
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "cur":Landroid/content/pm/ServiceInfo;
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_5
    return-object v4
.end method

.method findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 9
    .param p1, "prefPackage"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 493
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@4
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v4

    #@a
    .line 494
    new-instance v5, Landroid/content/Intent;

    #@c
    const-string/jumbo v6, "android.speech.RecognitionService"

    #@f
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 493
    invoke-virtual {v4, v5, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@15
    move-result-object v0

    #@16
    .line 495
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@19
    move-result v2

    #@1a
    .line 497
    .local v2, "numAvailable":I
    if-nez v2, :cond_0

    #@1c
    .line 498
    const-string/jumbo v4, "VoiceInteractionManagerService"

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "no available voice recognition services found for user "

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 499
    return-object v8

    #@37
    .line 501
    :cond_0
    if-eqz p1, :cond_2

    #@39
    .line 502
    const/4 v1, 0x0

    #@3a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@3c
    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@42
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@44
    .line 504
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@46
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_1

    #@4c
    .line 505
    new-instance v4, Landroid/content/ComponentName;

    #@4e
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@50
    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@52
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    return-object v4

    #@56
    .line 502
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_0

    #@59
    .line 509
    .end local v1    # "i":I
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    const/4 v4, 0x1

    #@5a
    if-le v2, v4, :cond_3

    #@5c
    .line 510
    const-string/jumbo v4, "VoiceInteractionManagerService"

    #@5f
    const-string/jumbo v5, "more than one voice recognition service found, picking first"

    #@62
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 513
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v4

    #@69
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@6b
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6d
    .line 514
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    #@6f
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@71
    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@73
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@76
    return-object v4
.end method

.method public finish(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 674
    monitor-enter p0

    #@1
    .line 675
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 676
    const-string/jumbo v2, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v3, "finish without running voice interaction service"

    #@b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    monitor-exit p0

    #@f
    .line 677
    return-void

    #@10
    .line 679
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@13
    move-result-wide v0

    #@14
    .line 681
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v2, p1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    .line 683
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1d
    monitor-exit p0

    #@1e
    .line 673
    return-void

    #@1f
    .line 682
    :catchall_0
    move-exception v2

    #@20
    .line 683
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 682
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@24
    .line 674
    .end local v0    # "caller":J
    :catchall_1
    move-exception v2

    #@25
    monitor-exit p0

    #@26
    throw v2
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 941
    const-string/jumbo v1, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@4
    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@7
    .line 942
    monitor-enter p0

    #@8
    .line 943
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@e
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit p0

    #@11
    return-object v0

    #@12
    .line 942
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method getCurAssistant(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 541
    const-string/jumbo v2, "assistant"

    #@b
    .line 539
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 542
    .local v0, "curAssistant":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 543
    const/4 v1, 0x0

    #@16
    return-object v1

    #@17
    .line 547
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method getCurInteractor(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 474
    const-string/jumbo v2, "voice_interaction_service"

    #@b
    .line 472
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 475
    .local v0, "curInteractor":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 476
    const/4 v1, 0x0

    #@16
    return-object v1

    #@17
    .line 480
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method getCurRecognizer(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 521
    const-string/jumbo v2, "voice_recognition_service"

    #@b
    .line 519
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 522
    .local v0, "curRecognizer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 523
    const/4 v1, 0x0

    #@16
    return-object v1

    #@17
    .line 527
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public getDisabledShowContext()I
    .locals 5

    #@0
    .prologue
    .line 707
    monitor-enter p0

    #@1
    .line 708
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 709
    const-string/jumbo v3, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v4, "getDisabledShowContext without running voice interaction service"

    #@b
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 710
    const/4 v3, 0x0

    #@f
    monitor-exit p0

    #@10
    return v3

    #@11
    .line 712
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v2

    #@15
    .line 713
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@18
    move-result-wide v0

    #@19
    .line 715
    .local v0, "caller":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1b
    invoke-virtual {v3, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getDisabledShowContextLocked(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    move-result v3

    #@1f
    .line 717
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    monitor-exit p0

    #@23
    .line 715
    return v3

    #@24
    .line 716
    :catchall_0
    move-exception v3

    #@25
    .line 717
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 716
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@29
    .line 707
    .end local v0    # "caller":J
    .end local v2    # "callingUid":I
    :catchall_1
    move-exception v3

    #@2a
    monitor-exit p0

    #@2b
    throw v3
.end method

.method public getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 4
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;

    #@0
    .prologue
    .line 847
    monitor-enter p0

    #@1
    .line 848
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@7
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@9
    if-nez v2, :cond_1

    #@b
    .line 850
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    #@d
    .line 851
    const-string/jumbo v3, "Caller is not the current voice interaction service"

    #@10
    .line 850
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 847
    :catchall_0
    move-exception v2

    #@15
    monitor-exit p0

    #@16
    throw v2

    #@17
    .line 849
    :cond_1
    if-eqz p1, :cond_0

    #@19
    :try_start_1
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v2

    #@1d
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1f
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@21
    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v3

    #@25
    if-ne v2, v3, :cond_0

    #@27
    .line 854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-wide v0

    #@2b
    .line 856
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2d
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    #@2f
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@32
    move-result-object v2

    #@33
    .line 858
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    monitor-exit p0

    #@37
    .line 856
    return-object v2

    #@38
    .line 857
    :catchall_1
    move-exception v2

    #@39
    .line 858
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 857
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 5
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 744
    const-string/jumbo v3, "android.permission.MANAGE_VOICE_KEYPHRASES"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 746
    if-nez p2, :cond_0

    #@8
    .line 747
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v4, "Illegal argument(s) in getKeyphraseSoundModel"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 750
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@14
    move-result v2

    #@15
    .line 751
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@18
    move-result-wide v0

    #@19
    .line 753
    .local v0, "caller":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@1b
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    #@1d
    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v3

    #@21
    .line 755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 753
    return-object v3

    #@25
    .line 754
    :catchall_0
    move-exception v3

    #@26
    .line 755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 754
    throw v3
.end method

.method public getUserDisabledShowContext()I
    .locals 5

    #@0
    .prologue
    .line 724
    monitor-enter p0

    #@1
    .line 725
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 726
    const-string/jumbo v3, "VoiceInteractionManagerService"

    #@8
    .line 727
    const-string/jumbo v4, "getUserDisabledShowContext without running voice interaction service"

    #@b
    .line 726
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 728
    const/4 v3, 0x0

    #@f
    monitor-exit p0

    #@10
    return v3

    #@11
    .line 730
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v2

    #@15
    .line 731
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@18
    move-result-wide v0

    #@19
    .line 733
    .local v0, "caller":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1b
    invoke-virtual {v3, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getUserDisabledShowContextLocked(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    move-result v3

    #@1f
    .line 735
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    monitor-exit p0

    #@23
    .line 733
    return v3

    #@24
    .line 734
    :catchall_0
    move-exception v3

    #@25
    .line 735
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 734
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@29
    .line 724
    .end local v0    # "caller":J
    .end local v2    # "callingUid":I
    :catchall_1
    move-exception v3

    #@2a
    monitor-exit p0

    #@2b
    throw v3
.end method

.method public hideCurrentSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 972
    const-string/jumbo v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 973
    monitor-enter p0

    #@7
    .line 974
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    if-nez v3, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 975
    return-void

    #@d
    .line 977
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@10
    move-result-wide v0

    #@11
    .line 979
    .local v0, "caller":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@13
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@15
    if-eqz v3, :cond_1

    #@17
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@19
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@1b
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 981
    :try_start_3
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@21
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@23
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@25
    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionSession;->closeSystemDialogs()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    .line 987
    :cond_1
    :goto_0
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2b
    monitor-exit p0

    #@2c
    .line 971
    return-void

    #@2d
    .line 982
    :catch_0
    move-exception v2

    #@2e
    .line 983
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v3, "VoiceInteractionManagerService"

    #@31
    const-string/jumbo v4, "Failed to call closeSystemDialogs"

    #@34
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 986
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@39
    .line 987
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 986
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3d
    .line 973
    .end local v0    # "caller":J
    :catchall_1
    move-exception v3

    #@3e
    monitor-exit p0

    #@3f
    throw v3
.end method

.method public hideSessionFromSession(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 607
    monitor-enter p0

    #@1
    .line 608
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 609
    const-string/jumbo v2, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v3, "hideSessionFromSession without running voice interaction service"

    #@b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 610
    const/4 v2, 0x0

    #@f
    monitor-exit p0

    #@10
    return v2

    #@11
    .line 612
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    move-result-wide v0

    #@15
    .line 614
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@17
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->hideSessionLocked()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    move-result v2

    #@1b
    .line 616
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1e
    monitor-exit p0

    #@1f
    .line 614
    return v2

    #@20
    .line 615
    :catchall_0
    move-exception v2

    #@21
    .line 616
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 615
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@25
    .line 607
    .end local v0    # "caller":J
    :catchall_1
    move-exception v2

    #@26
    monitor-exit p0

    #@27
    throw v2
.end method

.method public initForUser(I)V
    .locals 13
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 249
    iget-object v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@3
    iget-object v9, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v9

    #@9
    .line 250
    const-string/jumbo v10, "voice_interaction_service"

    #@c
    .line 248
    invoke-static {v9, v10, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 251
    .local v2, "curInteractorStr":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    #@13
    move-result-object v3

    #@14
    .line 252
    .local v3, "curRecognizer":Landroid/content/ComponentName;
    const/4 v1, 0x0

    #@15
    .line 255
    .local v1, "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-nez v2, :cond_0

    #@17
    if-eqz v3, :cond_0

    #@19
    iget-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    #@1b
    if-eqz v9, :cond_0

    #@1d
    .line 262
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {p0, p1, v9}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    #@24
    move-result-object v1

    #@25
    .line 263
    .local v1, "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-eqz v1, :cond_0

    #@27
    .line 269
    const/4 v3, 0x0

    #@28
    .line 276
    .end local v1    # "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    .end local v3    # "curRecognizer":Landroid/content/ComponentName;
    :cond_0
    iget-object v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2a
    iget-object v9, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@2c
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2f
    move-result-object v9

    #@30
    invoke-direct {p0, v9}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    .line 277
    .local v5, "forceInteractorPackage":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@36
    .line 278
    invoke-virtual {p0, p1, v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    #@39
    move-result-object v1

    #@3a
    .line 279
    .restart local v1    # "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-eqz v1, :cond_1

    #@3c
    .line 281
    const/4 v3, 0x0

    #@3d
    .line 287
    .end local v1    # "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    #@3f
    if-nez v9, :cond_2

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 288
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@46
    move-result v9

    #@47
    if-nez v9, :cond_2

    #@49
    .line 290
    invoke-virtual {p0, v12, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    #@4c
    .line 291
    const-string/jumbo v2, ""

    #@4f
    .line 295
    :cond_2
    if-eqz v3, :cond_6

    #@51
    .line 298
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@54
    move-result-object v7

    #@55
    .line 299
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    #@56
    .line 300
    .local v6, "interactorInfo":Landroid/content/pm/ServiceInfo;
    const/4 v8, 0x0

    #@57
    .line 301
    .local v8, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5a
    move-result v9

    #@5b
    if-nez v9, :cond_5

    #@5d
    .line 302
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@60
    move-result-object v0

    #@61
    .line 304
    :goto_0
    const/4 v9, 0x0

    #@62
    :try_start_0
    invoke-interface {v7, v3, v9, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    #@65
    move-result-object v8

    #@66
    .line 305
    .local v8, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_3

    #@68
    .line 306
    const/4 v9, 0x0

    #@69
    invoke-interface {v7, v0, v9, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    move-result-object v6

    #@6d
    .line 311
    .end local v6    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .end local v8    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_3
    :goto_1
    if-eqz v8, :cond_6

    #@6f
    if-eqz v0, :cond_4

    #@71
    if-eqz v6, :cond_6

    #@73
    .line 313
    :cond_4
    return-void

    #@74
    .line 302
    .restart local v6    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .local v8, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_5
    const/4 v0, 0x0

    #@75
    .local v0, "curInteractor":Landroid/content/ComponentName;
    goto :goto_0

    #@76
    .line 320
    .end local v0    # "curInteractor":Landroid/content/ComponentName;
    .end local v6    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    .end local v8    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_6
    if-nez v1, :cond_7

    #@78
    iget-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    #@7a
    if-eqz v9, :cond_7

    #@7c
    .line 321
    invoke-virtual {p0, p1, v12}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    #@7f
    move-result-object v1

    #@80
    .line 324
    :cond_7
    if-eqz v1, :cond_8

    #@82
    .line 326
    new-instance v9, Landroid/content/ComponentName;

    #@84
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@87
    move-result-object v10

    #@88
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8a
    .line 327
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@8d
    move-result-object v11

    #@8e
    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@90
    .line 326
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@93
    invoke-virtual {p0, v9, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    #@96
    .line 328
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    #@99
    move-result-object v9

    #@9a
    if-eqz v9, :cond_8

    #@9c
    .line 330
    new-instance v9, Landroid/content/ComponentName;

    #@9e
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@a1
    move-result-object v10

    #@a2
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@a4
    .line 331
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    #@a7
    move-result-object v11

    #@a8
    .line 330
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ab
    .line 329
    invoke-virtual {p0, v9, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    #@ae
    .line 332
    return-void

    #@af
    .line 337
    :cond_8
    invoke-virtual {p0, v12, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    #@b2
    move-result-object v3

    #@b3
    .line 338
    .restart local v3    # "curRecognizer":Landroid/content/ComponentName;
    if-eqz v3, :cond_a

    #@b5
    .line 339
    if-nez v1, :cond_9

    #@b7
    .line 340
    invoke-virtual {p0, v12, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    #@ba
    .line 342
    :cond_9
    invoke-virtual {p0, v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    #@bd
    .line 246
    :cond_a
    return-void

    #@be
    .line 308
    .end local v3    # "curRecognizer":Landroid/content/ComponentName;
    .restart local v6    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v4

    #@bf
    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
    .locals 6
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 821
    monitor-enter p0

    #@1
    .line 822
    :try_start_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@7
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@9
    if-nez v4, :cond_1

    #@b
    .line 824
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    #@d
    .line 825
    const-string/jumbo v5, "Caller is not the current voice interaction service"

    #@10
    .line 824
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 821
    :catchall_0
    move-exception v4

    #@15
    monitor-exit p0

    #@16
    throw v4

    #@17
    .line 823
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v4

    #@1b
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1d
    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@1f
    invoke-interface {v5}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result-object v5

    #@23
    if-ne v4, v5, :cond_0

    #@25
    monitor-exit p0

    #@26
    .line 829
    if-nez p3, :cond_2

    #@28
    .line 830
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v5, "Illegal argument(s) in isEnrolledForKeyphrase"

    #@2d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v4

    #@31
    .line 833
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@34
    move-result v2

    #@35
    .line 834
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@38
    move-result-wide v0

    #@39
    .line 837
    .local v0, "caller":J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@3b
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    #@3d
    invoke-virtual {v4, p2, v2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@40
    move-result-object v3

    #@41
    .line 838
    .local v3, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_3

    #@43
    const/4 v4, 0x1

    #@44
    .line 840
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@47
    .line 838
    return v4

    #@48
    :cond_3
    const/4 v4, 0x0

    #@49
    goto :goto_0

    #@4a
    .line 839
    .end local v3    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_1
    move-exception v4

    #@4b
    .line 840
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 839
    throw v4
.end method

.method public isSessionRunning()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1012
    const-string/jumbo v1, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@4
    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@7
    .line 1013
    monitor-enter p0

    #@8
    .line 1014
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@e
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-eqz v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :cond_0
    monitor-exit p0

    #@14
    return v0

    #@15
    .line 1013
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 4

    #@0
    .prologue
    .line 994
    const-string/jumbo v2, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 995
    monitor-enter p0

    #@7
    .line 996
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@9
    if-nez v2, :cond_0

    #@b
    .line 997
    const-string/jumbo v2, "VoiceInteractionManagerService"

    #@e
    const-string/jumbo v3, "launchVoiceAssistFromKeyguard without running voice interactionservice"

    #@11
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    monitor-exit p0

    #@15
    .line 999
    return-void

    #@16
    .line 1001
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@19
    move-result-wide v0

    #@1a
    .line 1003
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1c
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->launchVoiceAssistFromKeyguard()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    .line 1005
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    monitor-exit p0

    #@23
    .line 993
    return-void

    #@24
    .line 1004
    :catchall_0
    move-exception v2

    #@25
    .line 1005
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 1004
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@29
    .line 995
    .end local v0    # "caller":J
    :catchall_1
    move-exception v2

    #@2a
    monitor-exit p0

    #@2b
    throw v2
.end method

.method public onLockscreenShown()V
    .locals 5

    #@0
    .prologue
    .line 1037
    const-string/jumbo v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 1038
    monitor-enter p0

    #@7
    .line 1039
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    if-nez v3, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 1040
    return-void

    #@d
    .line 1042
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@10
    move-result-wide v0

    #@11
    .line 1044
    .local v0, "caller":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@13
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@15
    if-eqz v3, :cond_1

    #@17
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@19
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@1b
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 1046
    :try_start_3
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@21
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@23
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@25
    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionSession;->onLockscreenShown()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    .line 1052
    :cond_1
    :goto_0
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2b
    monitor-exit p0

    #@2c
    .line 1036
    return-void

    #@2d
    .line 1047
    :catch_0
    move-exception v2

    #@2e
    .line 1048
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v3, "VoiceInteractionManagerService"

    #@31
    const-string/jumbo v4, "Failed to call onLockscreenShown"

    #@34
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 1051
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@39
    .line 1052
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1051
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3d
    .line 1038
    .end local v0    # "caller":J
    :catchall_1
    move-exception v3

    #@3e
    monitor-exit p0

    #@3f
    throw v3
.end method

.method public onSessionHidden()V
    .locals 6

    #@0
    .prologue
    .line 1083
    monitor-enter p0

    #@1
    .line 1084
    :try_start_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@3
    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@a
    move-result v3

    #@b
    .line 1085
    .local v3, "size":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@e
    .line 1087
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@10
    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 1089
    .local v2, "listener":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionHidden()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 1085
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1091
    :catch_0
    move-exception v0

    #@21
    .line 1092
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "VoiceInteractionManagerService"

    #@24
    const-string/jumbo v5, "Error delivering voice interaction closed event."

    #@27
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    goto :goto_1

    #@2b
    .line 1083
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    #@2c
    monitor-exit p0

    #@2d
    throw v4

    #@2e
    .line 1095
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@30
    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 1082
    return-void
.end method

.method public onSessionShown()V
    .locals 6

    #@0
    .prologue
    .line 1067
    monitor-enter p0

    #@1
    .line 1068
    :try_start_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@3
    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@a
    move-result v3

    #@b
    .line 1069
    .local v3, "size":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@e
    .line 1071
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@10
    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 1073
    .local v2, "listener":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionShown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 1069
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1074
    :catch_0
    move-exception v0

    #@21
    .line 1075
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "VoiceInteractionManagerService"

    #@24
    const-string/jumbo v5, "Error delivering voice interaction open event."

    #@27
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    goto :goto_1

    #@2b
    .line 1067
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    #@2c
    monitor-exit p0

    #@2d
    throw v4

    #@2e
    .line 1078
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@30
    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 1066
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 236
    :catch_0
    move-exception v0

    #@6
    .line 239
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 240
    const-string/jumbo v1, "VoiceInteractionManagerService"

    #@d
    const-string/jumbo v2, "VoiceInteractionManagerService Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 242
    :cond_0
    throw v0
.end method

.method public registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/app/IVoiceInteractionSessionListener;

    #@0
    .prologue
    .line 1060
    const-string/jumbo v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 1061
    monitor-enter p0

    #@7
    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 1059
    return-void

    #@12
    .line 1061
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method resetCurAssistant(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 552
    const-string/jumbo v1, "assistant"

    #@b
    const/4 v2, 0x0

    #@c
    .line 551
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@f
    .line 550
    return-void
.end method

.method setCurInteractor(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 485
    const-string/jumbo v2, "voice_interaction_service"

    #@b
    .line 486
    if-eqz p1, :cond_0

    #@d
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 484
    :goto_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@14
    .line 483
    return-void

    #@15
    .line 486
    :cond_0
    const-string/jumbo v0, ""

    #@18
    goto :goto_0
.end method

.method setCurRecognizer(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 532
    const-string/jumbo v2, "voice_recognition_service"

    #@b
    .line 533
    if-eqz p1, :cond_0

    #@d
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 531
    :goto_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@14
    .line 530
    return-void

    #@15
    .line 533
    :cond_0
    const-string/jumbo v0, ""

    #@18
    goto :goto_0
.end method

.method public setDisabledShowContext(I)V
    .locals 5
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 690
    monitor-enter p0

    #@1
    .line 691
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 692
    const-string/jumbo v3, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v4, "setDisabledShowContext without running voice interaction service"

    #@b
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    monitor-exit p0

    #@f
    .line 693
    return-void

    #@10
    .line 695
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v2

    #@14
    .line 696
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@17
    move-result-wide v0

    #@18
    .line 698
    .local v0, "caller":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1a
    invoke-virtual {v3, v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setDisabledShowContextLocked(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    .line 700
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@20
    monitor-exit p0

    #@21
    .line 689
    return-void

    #@22
    .line 699
    :catchall_0
    move-exception v3

    #@23
    .line 700
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 699
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@27
    .line 690
    .end local v0    # "caller":J
    .end local v2    # "callingUid":I
    :catchall_1
    move-exception v3

    #@28
    monitor-exit p0

    #@29
    throw v3
.end method

.method public setKeepAwake(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keepAwake"    # Z

    #@0
    .prologue
    .line 642
    monitor-enter p0

    #@1
    .line 643
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 644
    const-string/jumbo v2, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v3, "setKeepAwake without running voice interaction service"

    #@b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    monitor-exit p0

    #@f
    .line 645
    return-void

    #@10
    .line 647
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@13
    move-result-wide v0

    #@14
    .line 649
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@16
    invoke-virtual {v2, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .line 651
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1c
    monitor-exit p0

    #@1d
    .line 641
    return-void

    #@1e
    .line 650
    :catchall_0
    move-exception v2

    #@1f
    .line 651
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 650
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@23
    .line 642
    .end local v0    # "caller":J
    :catchall_1
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method public showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 557
    monitor-enter p0

    #@1
    .line 558
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@7
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@9
    if-nez v2, :cond_1

    #@b
    .line 560
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    #@d
    .line 561
    const-string/jumbo v3, "Caller is not the current voice interaction service"

    #@10
    .line 560
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 557
    :catchall_0
    move-exception v2

    #@15
    monitor-exit p0

    #@16
    throw v2

    #@17
    .line 559
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v2

    #@1b
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1d
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@1f
    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v3

    #@23
    if-ne v2, v3, :cond_0

    #@25
    .line 563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result-wide v0

    #@29
    .line 565
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2b
    const/4 v3, 0x0

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-virtual {v2, p2, p3, v3, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    .line 567
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 556
    return-void

    #@35
    .line 566
    :catchall_1
    move-exception v2

    #@36
    .line 567
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 566
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 950
    const-string/jumbo v2, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 951
    monitor-enter p0

    #@7
    .line 952
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@9
    if-nez v2, :cond_0

    #@b
    .line 953
    const-string/jumbo v2, "VoiceInteractionManagerService"

    #@e
    const-string/jumbo v3, "showSessionForActiveService without running voice interactionservice"

    #@11
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    .line 955
    const/4 v2, 0x0

    #@15
    monitor-exit p0

    #@16
    return v2

    #@17
    .line 957
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    move-result-wide v0

    #@1b
    .line 959
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1d
    .line 960
    or-int/lit8 v3, p2, 0x1

    #@1f
    or-int/lit8 v3, v3, 0x2

    #@21
    .line 959
    invoke-virtual {v2, p1, v3, p3, p4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    move-result v2

    #@25
    .line 965
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@28
    monitor-exit p0

    #@29
    .line 959
    return v2

    #@2a
    .line 964
    :catchall_0
    move-exception v2

    #@2b
    .line 965
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 964
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2f
    .line 951
    .end local v0    # "caller":J
    :catchall_1
    move-exception v2

    #@30
    monitor-exit p0

    #@31
    throw v2
.end method

.method public showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionArgs"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 591
    monitor-enter p0

    #@1
    .line 592
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 593
    const-string/jumbo v2, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v3, "showSessionFromSession without running voice interaction service"

    #@b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 594
    const/4 v2, 0x0

    #@f
    monitor-exit p0

    #@10
    return v2

    #@11
    .line 596
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    move-result-wide v0

    #@15
    .line 598
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x0

    #@19
    invoke-virtual {v2, p2, p3, v3, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 600
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@20
    monitor-exit p0

    #@21
    .line 598
    return v2

    #@22
    .line 599
    :catchall_0
    move-exception v2

    #@23
    .line 600
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 599
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@27
    .line 591
    .end local v0    # "caller":J
    :catchall_1
    move-exception v2

    #@28
    monitor-exit p0

    #@29
    throw v2
.end method

.method startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 192
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v0

    #@9
    .line 194
    .local v0, "caller":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@b
    .line 196
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;

    #@d
    invoke-direct {v3, p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/IBinder;)V

    #@10
    .line 195
    const/16 v4, 0x10

    #@12
    .line 194
    invoke-virtual {v2, p2, v4, v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 189
    return-void

    #@19
    .line 209
    :catchall_0
    move-exception v2

    #@1a
    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 209
    throw v2
.end method

.method public startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 6
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p5, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@0
    .prologue
    .line 868
    monitor-enter p0

    #@1
    .line 869
    :try_start_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@7
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@9
    if-nez v4, :cond_1

    #@b
    .line 871
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    #@d
    .line 872
    const-string/jumbo v5, "Caller is not the current voice interaction service"

    #@10
    .line 871
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 868
    :catchall_0
    move-exception v4

    #@15
    monitor-exit p0

    #@16
    throw v4

    #@17
    .line 870
    :cond_1
    if-eqz p1, :cond_0

    #@19
    :try_start_1
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v4

    #@1d
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1f
    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@21
    invoke-interface {v5}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v5

    #@25
    if-ne v4, v5, :cond_0

    #@27
    .line 875
    if-eqz p4, :cond_2

    #@29
    if-nez p5, :cond_3

    #@2b
    .line 876
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v5, "Illegal argument(s) in startRecognition"

    #@30
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 875
    :cond_3
    if-eqz p3, :cond_2

    #@36
    monitor-exit p0

    #@37
    .line 880
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3a
    move-result v2

    #@3b
    .line 881
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3e
    move-result-wide v0

    #@3f
    .line 884
    .local v0, "caller":J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@41
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    #@43
    invoke-virtual {v4, p2, v2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@46
    move-result-object v3

    #@47
    .line 885
    .local v3, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_4

    #@49
    .line 886
    iget-object v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    #@4b
    if-nez v4, :cond_5

    #@4d
    .line 888
    :cond_4
    const-string/jumbo v4, "VoiceInteractionManagerService"

    #@50
    const-string/jumbo v5, "No matching sound model found in startRecognition"

    #@53
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@56
    .line 889
    const/high16 v4, -0x80000000

    #@58
    .line 900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5b
    .line 889
    return v4

    #@5c
    .line 887
    :cond_5
    :try_start_3
    iget-object v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@5e
    if-eqz v4, :cond_4

    #@60
    .line 893
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@61
    .line 894
    :try_start_4
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@63
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Ljava/util/TreeSet;

    #@65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6c
    :try_start_5
    monitor-exit p0

    #@6d
    .line 896
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@6f
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    #@71
    invoke-virtual {v4, p2, v3, p4, p5}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@74
    move-result v4

    #@75
    .line 900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@78
    .line 896
    return v4

    #@79
    .line 893
    :catchall_1
    move-exception v4

    #@7a
    :try_start_6
    monitor-exit p0

    #@7b
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@7c
    .line 899
    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_2
    move-exception v4

    #@7d
    .line 900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@80
    .line 899
    throw v4
.end method

.method public startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 623
    monitor-enter p0

    #@1
    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 625
    const-string/jumbo v0, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v3, "startVoiceActivity without running voice interaction service"

    #@b
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 626
    const/4 v0, -0x6

    #@f
    monitor-exit p0

    #@10
    return v0

    #@11
    .line 628
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v1

    #@15
    .line 629
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v2

    #@19
    .line 630
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1c
    move-result-wide v6

    #@1d
    .line 632
    .local v6, "caller":J
    :try_start_2
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1f
    move-object v3, p1

    #@20
    move-object v4, p2

    #@21
    move-object v5, p3

    #@22
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startVoiceActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    move-result v0

    #@26
    .line 635
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    monitor-exit p0

    #@2a
    .line 632
    return v0

    #@2b
    .line 634
    :catchall_0
    move-exception v0

    #@2c
    .line 635
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 634
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@30
    .line 623
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    .end local v6    # "caller":J
    :catchall_1
    move-exception v0

    #@31
    monitor-exit p0

    #@32
    throw v0
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "callingActivity"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 215
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 217
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@8
    move-result-wide v0

    #@9
    .line 219
    .local v0, "caller":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@b
    const/4 v3, 0x1

    #@c
    invoke-virtual {v2, p1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 221
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 214
    return-void

    #@13
    .line 220
    :catchall_0
    move-exception v2

    #@14
    .line 221
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 220
    throw v2
.end method

.method public stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 4
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@0
    .prologue
    .line 908
    monitor-enter p0

    #@1
    .line 909
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@7
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@9
    if-nez v2, :cond_1

    #@b
    .line 911
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    #@d
    .line 912
    const-string/jumbo v3, "Caller is not the current voice interaction service"

    #@10
    .line 911
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 908
    :catchall_0
    move-exception v2

    #@15
    monitor-exit p0

    #@16
    throw v2

    #@17
    .line 910
    :cond_1
    if-eqz p1, :cond_0

    #@19
    :try_start_1
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v2

    #@1d
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1f
    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@21
    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    move-result-object v3

    #@25
    if-ne v2, v3, :cond_0

    #@27
    monitor-exit p0

    #@28
    .line 916
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 918
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2e
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    #@30
    invoke-virtual {v2, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@33
    move-result v2

    #@34
    .line 920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 918
    return v2

    #@38
    .line 919
    :catchall_1
    move-exception v2

    #@39
    .line 920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 919
    throw v2
.end method

.method public supportsLocalVoiceInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->supportsLocalVoiceInteraction()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method switchImplementationIfNeeded(Z)V
    .locals 1
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 379
    monitor-enter p0

    #@1
    .line 380
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 378
    return-void

    #@6
    .line 379
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method switchImplementationIfNeededLocked(Z)V
    .locals 9
    .param p1, "force"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 385
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    #@3
    if-nez v0, :cond_3

    #@5
    .line 387
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    #@9
    const-string/jumbo v1, "voice_interaction_service"

    #@c
    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@e
    .line 386
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    .line 388
    .local v6, "curService":Ljava/lang/String;
    const/4 v5, 0x0

    #@13
    .line 389
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    const/4 v8, 0x0

    #@14
    .line 390
    .local v8, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_0

    #@16
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_4

    #@1c
    .line 402
    .end local v5    # "serviceComponent":Landroid/content/ComponentName;
    .end local v8    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    #@1e
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@20
    if-nez v0, :cond_5

    #@22
    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->unloadAllKeyphraseModels()V

    #@25
    .line 405
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 406
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2b
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    #@2e
    .line 408
    :cond_2
    if-eqz v5, :cond_6

    #@30
    if-eqz v8, :cond_6

    #@32
    .line 409
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@34
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@36
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@38
    .line 410
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    #@3b
    move-result-object v2

    #@3c
    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@3e
    move-object v3, p0

    #@3f
    .line 409
    invoke-direct/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;ILandroid/content/ComponentName;)V

    #@42
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@44
    .line 411
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@46
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startLocked()V

    #@49
    .line 384
    .end local v6    # "curService":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    #@4a
    .line 392
    .restart local v5    # "serviceComponent":Landroid/content/ComponentName;
    .restart local v6    # "curService":Ljava/lang/String;
    .restart local v8    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_4
    :try_start_0
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@4d
    move-result-object v5

    #@4e
    .line 393
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@51
    move-result-object v0

    #@52
    .line 394
    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@54
    const/4 v2, 0x0

    #@55
    .line 393
    invoke-interface {v0, v5, v2, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    move-result-object v8

    #@59
    .local v8, "serviceInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_0

    #@5a
    .line 395
    .end local v5    # "serviceComponent":Landroid/content/ComponentName;
    .local v8, "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v7

    #@5b
    .line 396
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "VoiceInteractionManagerService"

    #@5e
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v2, "Bad voice interaction service name "

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@75
    .line 397
    const/4 v5, 0x0

    #@76
    .line 398
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    const/4 v8, 0x0

    #@77
    goto :goto_0

    #@78
    .line 402
    .end local v5    # "serviceComponent":Landroid/content/ComponentName;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@7a
    iget v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    #@7c
    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@7e
    if-ne v0, v1, :cond_1

    #@80
    .line 403
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@82
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    #@84
    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v0

    #@88
    if-eqz v0, :cond_1

    #@8a
    goto :goto_1

    #@8b
    .line 413
    :cond_6
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@8d
    goto :goto_1
.end method

.method public switchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 372
    monitor-enter p0

    #@1
    .line 373
    :try_start_0
    iput p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@3
    .line 374
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 371
    return-void

    #@9
    .line 372
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public systemRunning(Z)V
    .locals 5
    .param p1, "safeMode"    # Z

    #@0
    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    #@2
    .line 361
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@4
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@6
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@8
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@f
    move-result-object v2

    #@10
    .line 362
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@12
    const/4 v4, 0x1

    #@13
    .line 361
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@16
    .line 363
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;

    #@18
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/Handler;)V

    #@1f
    .line 365
    monitor-enter p0

    #@20
    .line 366
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@26
    .line 367
    const/4 v0, 0x0

    #@27
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 358
    return-void

    #@2c
    .line 365
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit p0

    #@2e
    throw v0
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .locals 4
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@0
    .prologue
    .line 761
    const-string/jumbo v2, "android.permission.MANAGE_VOICE_KEYPHRASES"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 762
    if-nez p1, :cond_0

    #@8
    .line 763
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "Model must not be null"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 766
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 768
    .local v0, "caller":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@17
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    #@19
    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 769
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@20
    .line 771
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@22
    if-eqz v2, :cond_1

    #@24
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@26
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 772
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2c
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    .line 775
    const/4 v2, 0x0

    #@31
    .line 780
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 775
    return v2

    #@35
    .line 769
    :catchall_0
    move-exception v2

    #@36
    :try_start_3
    monitor-exit p0

    #@37
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@38
    .line 779
    :catchall_1
    move-exception v2

    #@39
    .line 780
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 779
    throw v2

    #@3d
    .line 777
    :cond_2
    const/high16 v2, -0x80000000

    #@3f
    .line 780
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 777
    return v2
.end method

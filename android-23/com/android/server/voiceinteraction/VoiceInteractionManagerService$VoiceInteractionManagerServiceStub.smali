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
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;,
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;
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
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@0
    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;-><init>()V

    #@5
    .line 962
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    #@a
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@c
    .line 139
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
    .line 138
    return-void
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 940
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
    .line 942
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
    .line 939
    :cond_0
    return-void
.end method

.method private getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 265
    const v1, 0x104004e

    #@3
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 266
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
    .line 259
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 260
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 259
    :cond_0
    :goto_0
    return v0

    #@e
    .line 260
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method


# virtual methods
.method public activeServiceSupportsAssist()Z
    .locals 1

    #@0
    .prologue
    .line 881
    const-string/jumbo v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 882
    monitor-enter p0

    #@7
    .line 883
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
    .line 882
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
    .line 889
    const-string/jumbo v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 890
    monitor-enter p0

    #@7
    .line 891
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
    .line 892
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
    .line 891
    return v0

    #@1b
    :cond_0
    const/4 v0, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 890
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
    .line 544
    monitor-enter p0

    #@1
    .line 545
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 546
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
    .line 547
    return-void

    #@10
    .line 549
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@13
    move-result-wide v0

    #@14
    .line 551
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@16
    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->closeSystemDialogsLocked(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .line 553
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1c
    monitor-exit p0

    #@1d
    .line 543
    return-void

    #@1e
    .line 552
    :catchall_0
    move-exception v2

    #@1f
    .line 553
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 552
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@23
    .line 544
    .end local v0    # "caller":J
    :catchall_1
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method public deleteKeyphraseSoundModel(ILjava/lang/String;)I
    .locals 6
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 672
    const-string/jumbo v4, "android.permission.MANAGE_VOICE_KEYPHRASES"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 674
    if-nez p2, :cond_0

    #@8
    .line 675
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@a
    .line 676
    const-string/jumbo v5, "Illegal argument(s) in deleteKeyphraseSoundModel"

    #@d
    .line 675
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4

    #@11
    .line 679
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@14
    move-result v2

    #@15
    .line 680
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@18
    move-result-wide v0

    #@19
    .line 681
    .local v0, "caller":J
    const/4 v3, 0x0

    #@1a
    .line 683
    .local v3, "deleted":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@1c
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    #@1e
    invoke-virtual {v4, p1, v2, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@21
    move-result v3

    #@22
    .line 684
    .local v3, "deleted":Z
    if-eqz v3, :cond_3

    #@24
    const/4 v4, 0x0

    #@25
    .line 686
    :goto_0
    if-eqz v3, :cond_2

    #@27
    .line 687
    monitor-enter p0

    #@28
    .line 689
    :try_start_1
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2a
    if-eqz v5, :cond_1

    #@2c
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2e
    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@30
    if-eqz v5, :cond_1

    #@32
    .line 690
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@34
    invoke-virtual {v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    :cond_1
    monitor-exit p0

    #@38
    .line 694
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 684
    return v4

    #@3c
    :cond_3
    const/high16 v4, -0x80000000

    #@3e
    goto :goto_0

    #@3f
    .line 687
    :catchall_0
    move-exception v4

    #@40
    monitor-exit p0

    #@41
    throw v4

    #@42
    .line 685
    .local v3, "deleted":Z
    :catchall_1
    move-exception v4

    #@43
    .line 686
    if-eqz v3, :cond_5

    #@45
    .line 687
    monitor-enter p0

    #@46
    .line 689
    :try_start_2
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@48
    if-eqz v5, :cond_4

    #@4a
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@4c
    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@4e
    if-eqz v5, :cond_4

    #@50
    .line 690
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@52
    invoke-virtual {v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@55
    :cond_4
    monitor-exit p0

    #@56
    .line 694
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@59
    .line 685
    throw v4

    #@5a
    .line 687
    :catchall_2
    move-exception v4

    #@5b
    monitor-exit p0

    #@5c
    throw v4
.end method

.method public deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    .line 461
    monitor-enter p0

    #@1
    .line 462
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 463
    new-instance v2, Ljava/lang/SecurityException;

    #@7
    .line 464
    const-string/jumbo v3, "deliverNewSession without running voice interaction service"

    #@a
    .line 463
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 461
    :catchall_0
    move-exception v2

    #@f
    monitor-exit p0

    #@10
    throw v2

    #@11
    .line 466
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result-wide v0

    #@15
    .line 468
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
    .line 470
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 468
    return v2

    #@20
    .line 469
    :catchall_1
    move-exception v2

    #@21
    .line 470
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 469
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
    .line 920
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
    .line 922
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
    .line 923
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1c
    move-result v1

    #@1d
    .line 922
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 924
    const-string/jumbo v1, ", uid="

    #@24
    .line 922
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v1

    #@2c
    .line 922
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
    .line 925
    return-void

    #@38
    .line 927
    :cond_0
    monitor-enter p0

    #@39
    .line 928
    :try_start_0
    const-string/jumbo v0, "VOICE INTERACTION MANAGER (dumpsys voiceinteraction)\n"

    #@3c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 929
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
    .line 930
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@5a
    if-nez v0, :cond_1

    #@5c
    .line 931
    const-string/jumbo v0, "  (No active implementation)"

    #@5f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    monitor-exit p0

    #@63
    .line 932
    return-void

    #@64
    .line 934
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
    .line 936
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@6c
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    #@6e
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@71
    .line 919
    return-void

    #@72
    .line 927
    :catchall_0
    move-exception v0

    #@73
    monitor-exit p0

    #@74
    throw v0
.end method

.method findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;
    .locals 15
    .param p1, "userHandle"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 321
    iget-object v10, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v10, v10, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v10

    #@8
    .line 322
    new-instance v11, Landroid/content/Intent;

    #@a
    const-string/jumbo v12, "android.service.voice.VoiceInteractionService"

    #@d
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    const/4 v12, 0x0

    #@11
    .line 321
    move/from16 v0, p1

    #@13
    invoke-virtual {v10, v11, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@16
    move-result-object v1

    #@17
    .line 323
    .local v1, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1a
    move-result v9

    #@1b
    .line 325
    .local v9, "numAvailable":I
    if-nez v9, :cond_0

    #@1d
    .line 326
    const-string/jumbo v10, "VoiceInteractionManagerService"

    #@20
    new-instance v11, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v12, "no available voice interaction services found for user "

    #@28
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v11

    #@2c
    move/from16 v0, p1

    #@2e
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v11

    #@32
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v11

    #@36
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 327
    const/4 v10, 0x0

    #@3a
    return-object v10

    #@3b
    .line 331
    :cond_0
    const/4 v6, 0x0

    #@3c
    .line 332
    .local v6, "foundInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    const/4 v7, 0x0

    #@3d
    .end local v6    # "foundInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_5

    #@3f
    .line 333
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v10

    #@43
    check-cast v10, Landroid/content/pm/ResolveInfo;

    #@45
    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@47
    .line 334
    .local v3, "cur":Landroid/content/pm/ServiceInfo;
    iget-object v10, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@49
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4b
    and-int/lit8 v10, v10, 0x1

    #@4d
    if-eqz v10, :cond_2

    #@4f
    .line 335
    new-instance v2, Landroid/content/ComponentName;

    #@51
    iget-object v10, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@53
    iget-object v11, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@55
    invoke-direct {v2, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@58
    .line 337
    .local v2, "comp":Landroid/content/ComponentName;
    :try_start_0
    new-instance v8, Landroid/service/voice/VoiceInteractionServiceInfo;

    #@5a
    .line 338
    iget-object v10, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@5c
    iget-object v10, v10, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@5e
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@61
    move-result-object v10

    #@62
    .line 337
    move/from16 v0, p1

    #@64
    invoke-direct {v8, v10, v2, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    #@67
    .line 339
    .local v8, "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    #@6a
    move-result-object v10

    #@6b
    if-nez v10, :cond_4

    #@6d
    .line 340
    if-eqz p2, :cond_1

    #@6f
    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@72
    move-result-object v10

    #@73
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@75
    move-object/from16 v0, p2

    #@77
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v10

    #@7b
    if-eqz v10, :cond_2

    #@7d
    .line 342
    :cond_1
    if-nez v6, :cond_3

    #@7f
    .line 343
    move-object v6, v8

    #@80
    .line 332
    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@82
    goto :goto_0

    #@83
    .line 345
    .restart local v2    # "comp":Landroid/content/ComponentName;
    .restart local v8    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_3
    const-string/jumbo v10, "VoiceInteractionManagerService"

    #@86
    new-instance v11, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v12, "More than one voice interaction service, picking first "

    #@8e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v11

    #@92
    .line 347
    new-instance v12, Landroid/content/ComponentName;

    #@94
    .line 348
    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@97
    move-result-object v13

    #@98
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@9a
    .line 349
    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@9d
    move-result-object v14

    #@9e
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@a0
    .line 347
    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a3
    .line 345
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v11

    #@a7
    .line 350
    const-string/jumbo v12, " over "

    #@aa
    .line 345
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v11

    #@ae
    .line 351
    new-instance v12, Landroid/content/ComponentName;

    #@b0
    iget-object v13, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@b2
    iget-object v14, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@b4
    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b7
    .line 345
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v11

    #@bb
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v11

    #@bf
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@c2
    goto :goto_1

    #@c3
    .line 358
    .end local v8    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_0
    move-exception v4

    #@c4
    .line 359
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "VoiceInteractionManagerService"

    #@c7
    new-instance v11, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v12, "Failure looking up interaction service "

    #@cf
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v11

    #@d3
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v11

    #@d7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v11

    #@db
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@de
    goto :goto_1

    #@df
    .line 355
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_4
    :try_start_1
    const-string/jumbo v10, "VoiceInteractionManagerService"

    #@e2
    new-instance v11, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v12, "Bad interaction service "

    #@ea
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v11

    #@ee
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v11

    #@f2
    const-string/jumbo v12, ": "

    #@f5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v11

    #@f9
    .line 356
    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    #@fc
    move-result-object v12

    #@fd
    .line 355
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v11

    #@101
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v11

    #@105
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@108
    goto/16 :goto_1

    #@10a
    .line 360
    .end local v8    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_1
    move-exception v5

    #@10b
    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@10d
    .line 365
    .end local v2    # "comp":Landroid/content/ComponentName;
    .end local v3    # "cur":Landroid/content/pm/ServiceInfo;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_5
    return-object v6
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
    .line 391
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@4
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v4

    #@a
    .line 392
    new-instance v5, Landroid/content/Intent;

    #@c
    const-string/jumbo v6, "android.speech.RecognitionService"

    #@f
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 391
    invoke-virtual {v4, v5, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@15
    move-result-object v0

    #@16
    .line 393
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@19
    move-result v2

    #@1a
    .line 395
    .local v2, "numAvailable":I
    if-nez v2, :cond_0

    #@1c
    .line 396
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
    .line 397
    return-object v8

    #@37
    .line 399
    :cond_0
    if-eqz p1, :cond_2

    #@39
    .line 400
    const/4 v1, 0x0

    #@3a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@3c
    .line 401
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@42
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@44
    .line 402
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@46
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_1

    #@4c
    .line 403
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
    .line 400
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_0

    #@59
    .line 407
    .end local v1    # "i":I
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    const/4 v4, 0x1

    #@5a
    if-le v2, v4, :cond_3

    #@5c
    .line 408
    const-string/jumbo v4, "VoiceInteractionManagerService"

    #@5f
    const-string/jumbo v5, "more than one voice recognition service found, picking first"

    #@62
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 411
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v4

    #@69
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@6b
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6d
    .line 412
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
    .line 560
    monitor-enter p0

    #@1
    .line 561
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 562
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
    .line 563
    return-void

    #@10
    .line 565
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@13
    move-result-wide v0

    #@14
    .line 567
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@16
    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .line 569
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1c
    monitor-exit p0

    #@1d
    .line 559
    return-void

    #@1e
    .line 568
    :catchall_0
    move-exception v2

    #@1f
    .line 569
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 568
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@23
    .line 560
    .end local v0    # "caller":J
    :catchall_1
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 802
    const-string/jumbo v1, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@4
    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@7
    .line 803
    monitor-enter p0

    #@8
    .line 804
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
    .line 803
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method getCurInteractor(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 372
    const-string/jumbo v2, "voice_interaction_service"

    #@b
    .line 370
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 373
    .local v0, "curInteractor":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 374
    const/4 v1, 0x0

    #@16
    return-object v1

    #@17
    .line 378
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
    .line 418
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 419
    const-string/jumbo v2, "voice_recognition_service"

    #@b
    .line 417
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 420
    .local v0, "curRecognizer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 421
    const/4 v1, 0x0

    #@16
    return-object v1

    #@17
    .line 425
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
    .line 593
    monitor-enter p0

    #@1
    .line 594
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 595
    const-string/jumbo v3, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v4, "getDisabledShowContext without running voice interaction service"

    #@b
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 596
    const/4 v3, 0x0

    #@f
    monitor-exit p0

    #@10
    return v3

    #@11
    .line 598
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v2

    #@15
    .line 599
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@18
    move-result-wide v0

    #@19
    .line 601
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
    .line 603
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    monitor-exit p0

    #@23
    .line 601
    return v3

    #@24
    .line 602
    :catchall_0
    move-exception v3

    #@25
    .line 603
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 602
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@29
    .line 593
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
    .line 728
    monitor-enter p0

    #@1
    .line 729
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
    .line 731
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    #@d
    .line 732
    const-string/jumbo v3, "Caller is not the current voice interaction service"

    #@10
    .line 731
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 728
    :catchall_0
    move-exception v2

    #@15
    monitor-exit p0

    #@16
    throw v2

    #@17
    .line 730
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
    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-wide v0

    #@2b
    .line 737
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2d
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    #@2f
    iget-object v2, v2, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    .line 739
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@34
    monitor-exit p0

    #@35
    .line 737
    return-object v2

    #@36
    .line 738
    :catchall_1
    move-exception v2

    #@37
    .line 739
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 738
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
    .line 630
    const-string/jumbo v3, "android.permission.MANAGE_VOICE_KEYPHRASES"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 632
    if-nez p2, :cond_0

    #@8
    .line 633
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v4, "Illegal argument(s) in getKeyphraseSoundModel"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 636
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@14
    move-result v2

    #@15
    .line 637
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@18
    move-result-wide v0

    #@19
    .line 639
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
    .line 641
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 639
    return-object v3

    #@25
    .line 640
    :catchall_0
    move-exception v3

    #@26
    .line 641
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 640
    throw v3
.end method

.method public getUserDisabledShowContext()I
    .locals 5

    #@0
    .prologue
    .line 610
    monitor-enter p0

    #@1
    .line 611
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 612
    const-string/jumbo v3, "VoiceInteractionManagerService"

    #@8
    .line 613
    const-string/jumbo v4, "getUserDisabledShowContext without running voice interaction service"

    #@b
    .line 612
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 614
    const/4 v3, 0x0

    #@f
    monitor-exit p0

    #@10
    return v3

    #@11
    .line 616
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v2

    #@15
    .line 617
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@18
    move-result-wide v0

    #@19
    .line 619
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
    .line 621
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    monitor-exit p0

    #@23
    .line 619
    return v3

    #@24
    .line 620
    :catchall_0
    move-exception v3

    #@25
    .line 621
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 620
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@29
    .line 610
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
    .line 833
    const-string/jumbo v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 834
    monitor-enter p0

    #@7
    .line 835
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    if-nez v3, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 836
    return-void

    #@d
    .line 838
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@10
    move-result-wide v0

    #@11
    .line 840
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
    .line 842
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
    .line 848
    :cond_1
    :goto_0
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2b
    monitor-exit p0

    #@2c
    .line 832
    return-void

    #@2d
    .line 843
    :catch_0
    move-exception v2

    #@2e
    .line 844
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
    .line 847
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@39
    .line 848
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 847
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3d
    .line 834
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
    .line 493
    monitor-enter p0

    #@1
    .line 494
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 495
    const-string/jumbo v2, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v3, "hideSessionFromSession without running voice interaction service"

    #@b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 496
    const/4 v2, 0x0

    #@f
    monitor-exit p0

    #@10
    return v2

    #@11
    .line 498
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    move-result-wide v0

    #@15
    .line 500
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
    .line 502
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1e
    monitor-exit p0

    #@1f
    .line 500
    return v2

    #@20
    .line 501
    :catchall_0
    move-exception v2

    #@21
    .line 502
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 501
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@25
    .line 493
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
    .line 160
    iget-object v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@3
    iget-object v9, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v9

    #@9
    .line 161
    const-string/jumbo v10, "voice_interaction_service"

    #@c
    .line 159
    invoke-static {v9, v10, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 162
    .local v2, "curInteractorStr":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    #@13
    move-result-object v3

    #@14
    .line 163
    .local v3, "curRecognizer":Landroid/content/ComponentName;
    const/4 v1, 0x0

    #@15
    .line 166
    .local v1, "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-nez v2, :cond_0

    #@17
    if-eqz v3, :cond_0

    #@19
    iget-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    #@1b
    if-eqz v9, :cond_0

    #@1d
    .line 173
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {p0, p1, v9}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    #@24
    move-result-object v1

    #@25
    .line 174
    .local v1, "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-eqz v1, :cond_0

    #@27
    .line 180
    const/4 v3, 0x0

    #@28
    .line 187
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
    .line 188
    .local v5, "forceInteractorPackage":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@36
    .line 189
    invoke-virtual {p0, p1, v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    #@39
    move-result-object v1

    #@3a
    .line 190
    .restart local v1    # "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-eqz v1, :cond_1

    #@3c
    .line 192
    const/4 v3, 0x0

    #@3d
    .line 198
    .end local v1    # "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    #@3f
    if-nez v9, :cond_2

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 199
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@46
    move-result v9

    #@47
    if-nez v9, :cond_2

    #@49
    .line 201
    invoke-virtual {p0, v12, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    #@4c
    .line 202
    const-string/jumbo v2, ""

    #@4f
    .line 206
    :cond_2
    if-eqz v3, :cond_6

    #@51
    .line 209
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@54
    move-result-object v7

    #@55
    .line 210
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    #@56
    .line 211
    .local v6, "interactorInfo":Landroid/content/pm/ServiceInfo;
    const/4 v8, 0x0

    #@57
    .line 212
    .local v8, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5a
    move-result v9

    #@5b
    if-nez v9, :cond_5

    #@5d
    .line 213
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@60
    move-result-object v0

    #@61
    .line 215
    :goto_0
    const/4 v9, 0x0

    #@62
    :try_start_0
    invoke-interface {v7, v3, v9, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    #@65
    move-result-object v8

    #@66
    .line 216
    .local v8, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_3

    #@68
    .line 217
    const/4 v9, 0x0

    #@69
    invoke-interface {v7, v0, v9, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    move-result-object v6

    #@6d
    .line 222
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
    .line 224
    :cond_4
    return-void

    #@74
    .line 213
    .restart local v6    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .local v8, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_5
    const/4 v0, 0x0

    #@75
    .local v0, "curInteractor":Landroid/content/ComponentName;
    goto :goto_0

    #@76
    .line 231
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
    .line 232
    invoke-virtual {p0, p1, v12}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    #@7f
    move-result-object v1

    #@80
    .line 235
    :cond_7
    if-eqz v1, :cond_8

    #@82
    .line 237
    new-instance v9, Landroid/content/ComponentName;

    #@84
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@87
    move-result-object v10

    #@88
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8a
    .line 238
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@8d
    move-result-object v11

    #@8e
    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@90
    .line 237
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@93
    invoke-virtual {p0, v9, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    #@96
    .line 239
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    #@99
    move-result-object v9

    #@9a
    if-eqz v9, :cond_8

    #@9c
    .line 241
    new-instance v9, Landroid/content/ComponentName;

    #@9e
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@a1
    move-result-object v10

    #@a2
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@a4
    .line 242
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    #@a7
    move-result-object v11

    #@a8
    .line 241
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ab
    .line 240
    invoke-virtual {p0, v9, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    #@ae
    .line 243
    return-void

    #@af
    .line 248
    :cond_8
    invoke-virtual {p0, v12, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    #@b2
    move-result-object v3

    #@b3
    .line 249
    .restart local v3    # "curRecognizer":Landroid/content/ComponentName;
    if-eqz v3, :cond_a

    #@b5
    .line 250
    if-nez v1, :cond_9

    #@b7
    .line 251
    invoke-virtual {p0, v12, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    #@ba
    .line 253
    :cond_9
    invoke-virtual {p0, v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    #@bd
    .line 157
    :cond_a
    return-void

    #@be
    .line 219
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
    .line 702
    monitor-enter p0

    #@1
    .line 703
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
    .line 705
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    #@d
    .line 706
    const-string/jumbo v5, "Caller is not the current voice interaction service"

    #@10
    .line 705
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 702
    :catchall_0
    move-exception v4

    #@15
    monitor-exit p0

    #@16
    throw v4

    #@17
    .line 704
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
    .line 710
    if-nez p3, :cond_2

    #@28
    .line 711
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v5, "Illegal argument(s) in isEnrolledForKeyphrase"

    #@2d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v4

    #@31
    .line 714
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@34
    move-result v2

    #@35
    .line 715
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@38
    move-result-wide v0

    #@39
    .line 718
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
    .line 719
    .local v3, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_3

    #@43
    const/4 v4, 0x1

    #@44
    .line 721
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@47
    .line 719
    return v4

    #@48
    :cond_3
    const/4 v4, 0x0

    #@49
    goto :goto_0

    #@4a
    .line 720
    .end local v3    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_1
    move-exception v4

    #@4b
    .line 721
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 720
    throw v4
.end method

.method public isSessionRunning()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 873
    const-string/jumbo v1, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@4
    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@7
    .line 874
    monitor-enter p0

    #@8
    .line 875
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
    .line 874
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
    .line 855
    const-string/jumbo v2, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 856
    monitor-enter p0

    #@7
    .line 857
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@9
    if-nez v2, :cond_0

    #@b
    .line 858
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
    .line 860
    return-void

    #@16
    .line 862
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@19
    move-result-wide v0

    #@1a
    .line 864
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1c
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->launchVoiceAssistFromKeyguard()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    .line 866
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    monitor-exit p0

    #@23
    .line 854
    return-void

    #@24
    .line 865
    :catchall_0
    move-exception v2

    #@25
    .line 866
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 865
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@29
    .line 856
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
    .line 898
    const-string/jumbo v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 899
    monitor-enter p0

    #@7
    .line 900
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    if-nez v3, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 901
    return-void

    #@d
    .line 903
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@10
    move-result-wide v0

    #@11
    .line 905
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
    .line 907
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
    .line 913
    :cond_1
    :goto_0
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2b
    monitor-exit p0

    #@2c
    .line 897
    return-void

    #@2d
    .line 908
    :catch_0
    move-exception v2

    #@2e
    .line 909
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
    .line 912
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@39
    .line 913
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 912
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3d
    .line 899
    .end local v0    # "caller":J
    :catchall_1
    move-exception v3

    #@3e
    monitor-exit p0

    #@3f
    throw v3
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
    .line 146
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 147
    :catch_0
    move-exception v0

    #@6
    .line 150
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 151
    const-string/jumbo v1, "VoiceInteractionManagerService"

    #@d
    const-string/jumbo v2, "VoiceInteractionManagerService Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 153
    :cond_0
    throw v0
.end method

.method resetCurAssistant(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 438
    const-string/jumbo v1, "assistant"

    #@b
    const/4 v2, 0x0

    #@c
    .line 437
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@f
    .line 436
    return-void
.end method

.method setCurInteractor(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 383
    const-string/jumbo v2, "voice_interaction_service"

    #@b
    .line 384
    if-eqz p1, :cond_0

    #@d
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 382
    :goto_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@14
    .line 381
    return-void

    #@15
    .line 384
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
    .line 429
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 430
    const-string/jumbo v2, "voice_recognition_service"

    #@b
    .line 431
    if-eqz p1, :cond_0

    #@d
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 429
    :goto_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@14
    .line 428
    return-void

    #@15
    .line 431
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
    .line 576
    monitor-enter p0

    #@1
    .line 577
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 578
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
    .line 579
    return-void

    #@10
    .line 581
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v2

    #@14
    .line 582
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@17
    move-result-wide v0

    #@18
    .line 584
    .local v0, "caller":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1a
    invoke-virtual {v3, v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setDisabledShowContextLocked(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    .line 586
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@20
    monitor-exit p0

    #@21
    .line 575
    return-void

    #@22
    .line 585
    :catchall_0
    move-exception v3

    #@23
    .line 586
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 585
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@27
    .line 576
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
    .line 528
    monitor-enter p0

    #@1
    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 530
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
    .line 531
    return-void

    #@10
    .line 533
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@13
    move-result-wide v0

    #@14
    .line 535
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@16
    invoke-virtual {v2, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .line 537
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1c
    monitor-exit p0

    #@1d
    .line 527
    return-void

    #@1e
    .line 536
    :catchall_0
    move-exception v2

    #@1f
    .line 537
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 536
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@23
    .line 528
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
    .line 443
    monitor-enter p0

    #@1
    .line 444
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
    .line 446
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    #@d
    .line 447
    const-string/jumbo v3, "Caller is not the current voice interaction service"

    #@10
    .line 446
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 443
    :catchall_0
    move-exception v2

    #@15
    monitor-exit p0

    #@16
    throw v2

    #@17
    .line 445
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
    .line 449
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result-wide v0

    #@29
    .line 451
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
    .line 453
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 442
    return-void

    #@35
    .line 452
    :catchall_1
    move-exception v2

    #@36
    .line 453
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 452
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
    .line 811
    const-string/jumbo v2, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 812
    monitor-enter p0

    #@7
    .line 813
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@9
    if-nez v2, :cond_0

    #@b
    .line 814
    const-string/jumbo v2, "VoiceInteractionManagerService"

    #@e
    const-string/jumbo v3, "showSessionForActiveService without running voice interactionservice"

    #@11
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    .line 816
    const/4 v2, 0x0

    #@15
    monitor-exit p0

    #@16
    return v2

    #@17
    .line 818
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    move-result-wide v0

    #@1b
    .line 820
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1d
    .line 821
    or-int/lit8 v3, p2, 0x1

    #@1f
    or-int/lit8 v3, v3, 0x2

    #@21
    .line 820
    invoke-virtual {v2, p1, v3, p3, p4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    move-result v2

    #@25
    .line 826
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@28
    monitor-exit p0

    #@29
    .line 820
    return v2

    #@2a
    .line 825
    :catchall_0
    move-exception v2

    #@2b
    .line 826
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 825
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2f
    .line 812
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
    .line 477
    monitor-enter p0

    #@1
    .line 478
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 479
    const-string/jumbo v2, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v3, "showSessionFromSession without running voice interaction service"

    #@b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 480
    const/4 v2, 0x0

    #@f
    monitor-exit p0

    #@10
    return v2

    #@11
    .line 482
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    move-result-wide v0

    #@15
    .line 484
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
    .line 486
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@20
    monitor-exit p0

    #@21
    .line 484
    return v2

    #@22
    .line 485
    :catchall_0
    move-exception v2

    #@23
    .line 486
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 485
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@27
    .line 477
    .end local v0    # "caller":J
    :catchall_1
    move-exception v2

    #@28
    monitor-exit p0

    #@29
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
    .line 749
    monitor-enter p0

    #@1
    .line 750
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
    .line 752
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    #@d
    .line 753
    const-string/jumbo v5, "Caller is not the current voice interaction service"

    #@10
    .line 752
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 749
    :catchall_0
    move-exception v4

    #@15
    monitor-exit p0

    #@16
    throw v4

    #@17
    .line 751
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
    .line 756
    if-eqz p4, :cond_2

    #@29
    if-nez p5, :cond_3

    #@2b
    .line 757
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
    .line 756
    :cond_3
    if-eqz p3, :cond_2

    #@36
    monitor-exit p0

    #@37
    .line 761
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3a
    move-result v2

    #@3b
    .line 762
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3e
    move-result-wide v0

    #@3f
    .line 765
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
    .line 766
    .local v3, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_4

    #@49
    .line 767
    iget-object v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    #@4b
    if-nez v4, :cond_5

    #@4d
    .line 769
    :cond_4
    const-string/jumbo v4, "VoiceInteractionManagerService"

    #@50
    const-string/jumbo v5, "No matching sound model found in startRecognition"

    #@53
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@56
    .line 770
    const/high16 v4, -0x80000000

    #@58
    .line 776
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5b
    .line 770
    return v4

    #@5c
    .line 768
    :cond_5
    :try_start_3
    iget-object v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@5e
    if-eqz v4, :cond_4

    #@60
    .line 772
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@62
    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    #@64
    invoke-virtual {v4, p2, v3, p4, p5}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@67
    move-result v4

    #@68
    .line 776
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6b
    .line 772
    return v4

    #@6c
    .line 775
    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_1
    move-exception v4

    #@6d
    .line 776
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@70
    .line 775
    throw v4
.end method

.method public startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 509
    monitor-enter p0

    #@1
    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 511
    const-string/jumbo v0, "VoiceInteractionManagerService"

    #@8
    const-string/jumbo v3, "startVoiceActivity without running voice interaction service"

    #@b
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 512
    const/4 v0, -0x6

    #@f
    monitor-exit p0

    #@10
    return v0

    #@11
    .line 514
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v1

    #@15
    .line 515
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v2

    #@19
    .line 516
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1c
    move-result-wide v6

    #@1d
    .line 518
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
    .line 521
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@29
    monitor-exit p0

    #@2a
    .line 518
    return v0

    #@2b
    .line 520
    :catchall_0
    move-exception v0

    #@2c
    .line 521
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 520
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@30
    .line 509
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

.method public stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 4
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@0
    .prologue
    .line 784
    monitor-enter p0

    #@1
    .line 785
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
    .line 787
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    #@d
    .line 788
    const-string/jumbo v3, "Caller is not the current voice interaction service"

    #@10
    .line 787
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 784
    :catchall_0
    move-exception v2

    #@15
    monitor-exit p0

    #@16
    throw v2

    #@17
    .line 786
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
    .line 792
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 794
    .local v0, "caller":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2e
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    #@30
    invoke-virtual {v2, p2, p3}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@33
    move-result v2

    #@34
    .line 796
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 794
    return v2

    #@38
    .line 795
    :catchall_1
    move-exception v2

    #@39
    .line 796
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 795
    throw v2
.end method

.method switchImplementationIfNeededLocked(Z)V
    .locals 8
    .param p1, "force"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 290
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    #@3
    if-nez v0, :cond_3

    #@5
    .line 292
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    #@9
    const-string/jumbo v1, "voice_interaction_service"

    #@c
    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@e
    .line 291
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    .line 293
    .local v6, "curService":Ljava/lang/String;
    const/4 v5, 0x0

    #@13
    .line 294
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    #@15
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_4

    #@1b
    .line 302
    .end local v5    # "serviceComponent":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    #@1d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@1f
    if-nez v0, :cond_5

    #@21
    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@23
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    #@25
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->stopAllRecognitions()V

    #@28
    .line 305
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 306
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@2e
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    #@31
    .line 308
    :cond_2
    if-eqz v5, :cond_6

    #@33
    .line 309
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@35
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@37
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    #@39
    .line 310
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    #@3c
    move-result-object v2

    #@3d
    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@3f
    move-object v3, p0

    #@40
    .line 309
    invoke-direct/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;ILandroid/content/ComponentName;)V

    #@43
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@45
    .line 311
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@47
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startLocked()V

    #@4a
    .line 289
    .end local v6    # "curService":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    #@4b
    .line 296
    .restart local v5    # "serviceComponent":Landroid/content/ComponentName;
    .restart local v6    # "curService":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    move-result-object v5

    #@4f
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    goto :goto_0

    #@50
    .line 297
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v7

    #@51
    .line 298
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "VoiceInteractionManagerService"

    #@54
    new-instance v1, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v2, "Bad voice interaction service name "

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    .line 299
    const/4 v5, 0x0

    #@6c
    goto :goto_0

    #@6d
    .line 302
    .end local v5    # "serviceComponent":Landroid/content/ComponentName;
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@6f
    iget v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    #@71
    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@73
    if-ne v0, v1, :cond_1

    #@75
    .line 303
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@77
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    #@79
    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_1

    #@7f
    goto :goto_1

    #@80
    .line 313
    :cond_6
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    #@82
    goto :goto_1
.end method

.method public switchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 283
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    iput p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@3
    .line 285
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 282
    return-void

    #@9
    .line 283
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
    .line 270
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    #@2
    .line 272
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
    .line 273
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@12
    const/4 v4, 0x1

    #@13
    .line 272
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@16
    .line 274
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;

    #@18
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/Handler;)V

    #@1f
    .line 276
    monitor-enter p0

    #@20
    .line 277
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    #@26
    .line 278
    const/4 v0, 0x0

    #@27
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 269
    return-void

    #@2c
    .line 276
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
    .line 647
    const-string/jumbo v2, "android.permission.MANAGE_VOICE_KEYPHRASES"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    #@6
    .line 648
    if-nez p1, :cond_0

    #@8
    .line 649
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "Model must not be null"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 652
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v0

    #@15
    .line 654
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
    .line 655
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@20
    .line 657
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
    .line 658
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
    .line 661
    const/4 v2, 0x0

    #@31
    .line 666
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 661
    return v2

    #@35
    .line 655
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
    .line 665
    :catchall_1
    move-exception v2

    #@39
    .line 666
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 665
    throw v2

    #@3d
    .line 663
    :cond_2
    const/high16 v2, -0x80000000

    #@3f
    .line 666
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 663
    return v2
.end method

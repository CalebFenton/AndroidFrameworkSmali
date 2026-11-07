.class public Landroid/service/voice/VoiceInteractionService;
.super Landroid/app/Service;
.source "VoiceInteractionService.java"


# static fields
.field static final blacklist MULTIPLE_ACTIVE_HOTWORD_DETECTORS:J = 0xb847d3fL

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.VoiceInteractionService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.voice_interaction"

.field private static final blacklist SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

.field static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mActiveDetectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/service/voice/HotwordDetector;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field greylist-max-o mInterface:Landroid/service/voice/IVoiceInteractionService;

.field private greylist-max-o mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field greylist-max-o mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private blacklist mTestModuleForAlwaysOnHotwordDetectorEnabled:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$JMYx-6yfhchP63Tz168rKFGpq2Y(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->lambda$new$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P6N6t5pC6a5IBmC3sK_4dtkgwLI(Landroid/service/voice/VoiceInteractionService;Landroid/service/voice/HotwordDetector;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VoiceInteractionService;->onHotwordDetectorDestroyed(Landroid/service/voice/HotwordDetector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YR2k9aseeGgZ6fiR6G00PM050Lo(Landroid/service/voice/VoiceInteractionService;ZLandroid/service/voice/HotwordDetector;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->lambda$safelyShutdownAllHotwordDetectors$4(ZLandroid/service/voice/HotwordDetector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wfImATncamP2VQNcSOIvVvfph5M(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDetectorRemoteException(Landroid/service/voice/VoiceInteractionService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->onDetectorRemoteException(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monHandleVoiceActionCheck(Landroid/service/voice/VoiceInteractionService;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->onHandleVoiceActionCheck(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monShutdownInternal(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSoundModelsChangedInternal(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onSoundModelsChangedInternal()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 84
    const-class v0, Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    .line 135
    nop

    .line 136
    const-string/jumbo v0, "ro.hotword.visual_query_service_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/service/voice/VoiceInteractionService;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    .line 135
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 138
    new-instance v0, Landroid/service/voice/VoiceInteractionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$1;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    .line 206
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionService;->mTestModuleForAlwaysOnHotwordDetectorEnabled:Z

    .line 382
    new-instance v0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private blacklist createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 23
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "supportHotwordDetectionService"    # Z
    .param p4, "options"    # Landroid/os/PersistableBundle;
    .param p5, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p6, "moduleProperties"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .param p7, "executor"    # Ljava/util/concurrent/Executor;
    .param p8, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 715
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_ab

    .line 718
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 719
    const-wide/32 v2, 0xb847d3f

    :try_start_a
    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_17

    .line 721
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors(Z)V

    move/from16 v12, p3

    goto :goto_4c

    .line 723
    :cond_17
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_a0

    if-eqz v2, :cond_4a

    :try_start_23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetector;

    .line 724
    .local v2, "detector":Landroid/service/voice/HotwordDetector;
    invoke-interface {v2}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_46

    move/from16 v12, p3

    if-ne v3, v12, :cond_3e

    .line 729
    :try_start_31
    instance-of v3, v2, Landroid/service/voice/AlwaysOnHotwordDetector;

    if-nez v3, :cond_36

    .line 734
    .end local v2    # "detector":Landroid/service/voice/HotwordDetector;
    goto :goto_1d

    .line 730
    .restart local v2    # "detector":Landroid/service/voice/HotwordDetector;
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "There is already an active AlwaysOnHotwordDetector. It must be destroyed to create a new one."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .end local p1    # "keyphrase":Ljava/lang/String;
    .end local p2    # "locale":Ljava/util/Locale;
    .end local p3    # "supportHotwordDetectionService":Z
    .end local p4    # "options":Landroid/os/PersistableBundle;
    .end local p5    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .end local p7    # "executor":Ljava/util/concurrent/Executor;
    .end local p8    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    throw v0

    .line 726
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .restart local p1    # "keyphrase":Ljava/lang/String;
    .restart local p2    # "locale":Ljava/util/Locale;
    .restart local p3    # "supportHotwordDetectionService":Z
    .restart local p4    # "options":Landroid/os/PersistableBundle;
    .restart local p5    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .restart local p7    # "executor":Ljava/util/concurrent/Executor;
    .restart local p8    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "It disallows to create trusted and non-trusted detectors at the same time."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .end local p1    # "keyphrase":Ljava/lang/String;
    .end local p2    # "locale":Ljava/util/Locale;
    .end local p3    # "supportHotwordDetectionService":Z
    .end local p4    # "options":Landroid/os/PersistableBundle;
    .end local p5    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .end local p7    # "executor":Ljava/util/concurrent/Executor;
    .end local p8    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    throw v0

    .line 757
    .end local v2    # "detector":Landroid/service/voice/HotwordDetector;
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .restart local p1    # "keyphrase":Ljava/lang/String;
    .restart local p2    # "locale":Ljava/util/Locale;
    .restart local p3    # "supportHotwordDetectionService":Z
    .restart local p4    # "options":Landroid/os/PersistableBundle;
    .restart local p5    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .restart local p7    # "executor":Ljava/util/concurrent/Executor;
    .restart local p8    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    :catchall_46
    move-exception v0

    move/from16 v12, p3

    goto :goto_a1

    .line 723
    :cond_4a
    move/from16 v12, p3

    .line 737
    :goto_4c
    new-instance v4, Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v9, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v10, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 739
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 740
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v13

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v4 .. v13}, Landroid/service/voice/AlwaysOnHotwordDetector;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Lcom/android/internal/app/IVoiceInteractionManagerService;IZLjava/lang/String;)V

    .line 741
    .local v4, "dspDetector":Landroid/service/voice/AlwaysOnHotwordDetector;
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_31 .. :try_end_6f} :catchall_a0

    .line 744
    :try_start_6f
    new-instance v0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v4, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    .line 746
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionService;->mTestModuleForAlwaysOnHotwordDetectorEnabled:Z

    if-eqz v0, :cond_81

    .line 747
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->getTestModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7f} :catch_8f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_a0

    move-object v2, v0

    .end local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .local v0, "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    goto :goto_83

    .line 746
    .end local v0    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .restart local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :cond_81
    move-object/from16 v2, p6

    .line 750
    .end local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .local v2, "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :goto_83
    move-object/from16 v3, p4

    move-object/from16 v5, p5

    :try_start_87
    invoke-virtual {v4, v3, v5, v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8d
    .catchall {:try_start_87 .. :try_end_8a} :catchall_a9

    .line 755
    nop

    .line 756
    :try_start_8b
    monitor-exit v1

    return-object v4

    .line 751
    :catch_8d
    move-exception v0

    goto :goto_96

    .end local v2    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .restart local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catch_8f
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object/from16 v2, p6

    .line 752
    .end local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :goto_96
    iget-object v6, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 753
    invoke-virtual {v4}, Landroid/service/voice/AlwaysOnHotwordDetector;->destroy()V

    .line 754
    nop

    .end local v2    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .end local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .end local p1    # "keyphrase":Ljava/lang/String;
    .end local p2    # "locale":Ljava/util/Locale;
    .end local p3    # "supportHotwordDetectionService":Z
    .end local p4    # "options":Landroid/os/PersistableBundle;
    .end local p5    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p7    # "executor":Ljava/util/concurrent/Executor;
    .end local p8    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    throw v0

    .line 757
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "dspDetector":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .restart local p1    # "keyphrase":Ljava/lang/String;
    .restart local p2    # "locale":Ljava/util/Locale;
    .restart local p3    # "supportHotwordDetectionService":Z
    .restart local p4    # "options":Landroid/os/PersistableBundle;
    .restart local p5    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .restart local p7    # "executor":Ljava/util/concurrent/Executor;
    .restart local p8    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    :catchall_a0
    move-exception v0

    :goto_a1
    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object/from16 v2, p6

    .end local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .restart local v2    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :goto_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_8b .. :try_end_a8} :catchall_a9

    throw v0

    :catchall_a9
    move-exception v0

    goto :goto_a7

    .line 716
    .end local v2    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .restart local p6    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :cond_ab
    move-object/from16 v3, p4

    move-object/from16 v5, p5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createHotwordDetectorInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;
    .registers 13
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/service/voice/HotwordDetector$Callback;

    .line 878
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_7a

    .line 881
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    const-wide/32 v2, 0xb847d3f

    :try_start_a
    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_73

    if-nez v0, :cond_19

    .line 884
    const/4 v0, 0x0

    :try_start_11
    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors(Z)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_46

    .line 914
    :catchall_15
    move-exception v0

    move-object v5, p3

    move-object v6, p4

    goto :goto_76

    .line 886
    :cond_19
    :try_start_19
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_73

    if-eqz v2, :cond_46

    :try_start_25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetector;

    .line 887
    .local v2, "detector":Landroid/service/voice/HotwordDetector;
    invoke-interface {v2}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 891
    instance-of v3, v2, Landroid/service/voice/SoftwareHotwordDetector;

    if-nez v3, :cond_36

    .line 896
    .end local v2    # "detector":Landroid/service/voice/HotwordDetector;
    goto :goto_1f

    .line 892
    .restart local v2    # "detector":Landroid/service/voice/HotwordDetector;
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "There is already an active SoftwareHotwordDetector. It must be destroyed to create a new one."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    throw v0

    .line 888
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "It disallows to create trusted and non-trusted detectors at the same time."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    throw v0
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_15

    .line 899
    .end local v2    # "detector":Landroid/service/voice/HotwordDetector;
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    :cond_46
    :goto_46
    :try_start_46
    new-instance v2, Landroid/service/voice/SoftwareHotwordDetector;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 901
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v7
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_73

    const/4 v4, 0x0

    move-object v5, p3

    move-object v6, p4

    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Landroid/service/voice/HotwordDetector$Callback;
    :try_start_51
    invoke-direct/range {v2 .. v7}, Landroid/service/voice/SoftwareHotwordDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/media/AudioFormat;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;Ljava/lang/String;)V

    .line 902
    .local v2, "softwareHotwordDetector":Landroid/service/voice/SoftwareHotwordDetector;
    iget-object p3, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_78

    .line 905
    :try_start_59
    new-instance p3, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v2, p3}, Landroid/service/voice/SoftwareHotwordDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    .line 907
    invoke-virtual {v2, p1, p2}, Landroid/service/voice/SoftwareHotwordDetector;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_64} :catch_67
    .catchall {:try_start_59 .. :try_end_64} :catchall_78

    .line 912
    nop

    .line 913
    :try_start_65
    monitor-exit v1

    return-object v2

    .line 908
    :catch_67
    move-exception v0

    move-object p3, v0

    .line 909
    .local p3, "e":Ljava/lang/Exception;
    iget-object p4, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {p4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 910
    invoke-virtual {v2}, Landroid/service/voice/SoftwareHotwordDetector;->destroy()V

    .line 911
    nop

    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    .end local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    throw p3

    .line 914
    .end local v2    # "softwareHotwordDetector":Landroid/service/voice/SoftwareHotwordDetector;
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .local p3, "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    :catchall_73
    move-exception v0

    move-object v5, p3

    move-object v6, p4

    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    :goto_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_65 .. :try_end_77} :catchall_78

    throw v0

    :catchall_78
    move-exception v0

    goto :goto_76

    .line 879
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    :cond_7a
    move-object v5, p3

    move-object v6, p4

    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v6    # "callback":Landroid/service/voice/HotwordDetector$Callback;
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "Not available until onReady() is called"

    invoke-direct {p3, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private final blacklist getTestModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 4

    .line 1049
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->listModuleProperties()Ljava/util/List;

    move-result-object v0

    .line 1050
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda7;-><init>()V

    .line 1051
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1053
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 1054
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 1055
    .local v0, "moduleProps":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    if-eqz v0, :cond_1f

    .line 1058
    return-object v0

    .line 1056
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fake ST HAL should always be available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist isActiveService(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "cur":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_21

    .line 284
    :cond_15
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 285
    .local v2, "curComp":Landroid/content/ComponentName;
    if-nez v2, :cond_1c

    .line 286
    return v1

    .line 288
    :cond_1c
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 282
    .end local v2    # "curComp":Landroid/content/ComponentName;
    :cond_21
    :goto_21
    return v1
.end method

.method static synthetic blacklist lambda$dump$5(Ljava/io/PrintWriter;Landroid/service/voice/HotwordDetector;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "detector"    # Landroid/service/voice/HotwordDetector;

    .line 1129
    const-string v0, "  Using sandboxed detection service="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    invoke-interface {p1}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1131
    const-string v0, "    "

    invoke-interface {p1, v0, p0}, Landroid/service/voice/HotwordDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1132
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1133
    return-void
.end method

.method static synthetic blacklist lambda$getTestModuleProperties$3(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z
    .registers 3
    .param p0, "prop"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 1052
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "injection"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$new$1()V
    .registers 3

    .line 383
    sget-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "system service binder died shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 386
    return-void
.end method

.method static synthetic blacklist lambda$onDetectorRemoteException$0(ILandroid/os/IBinder;Landroid/service/voice/HotwordDetector;)V
    .registers 5
    .param p0, "detectorType"    # I
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "detector"    # Landroid/service/voice/HotwordDetector;

    .line 217
    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    instance-of v0, p2, Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v0, :cond_14

    .line 219
    move-object v0, p2

    check-cast v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 220
    .local v0, "alwaysOnDetector":Landroid/service/voice/AlwaysOnHotwordDetector;
    invoke-virtual {v0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->isSameToken(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 221
    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->onDetectorRemoteException()V

    goto :goto_28

    .line 223
    .end local v0    # "alwaysOnDetector":Landroid/service/voice/AlwaysOnHotwordDetector;
    :cond_14
    const/4 v0, 0x2

    if-ne p0, v0, :cond_28

    instance-of v0, p2, Landroid/service/voice/SoftwareHotwordDetector;

    if-eqz v0, :cond_28

    .line 225
    move-object v0, p2

    check-cast v0, Landroid/service/voice/SoftwareHotwordDetector;

    .line 226
    .local v0, "softwareDetector":Landroid/service/voice/SoftwareHotwordDetector;
    invoke-virtual {v0, p1}, Landroid/service/voice/SoftwareHotwordDetector;->isSameToken(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 227
    invoke-virtual {v0}, Landroid/service/voice/SoftwareHotwordDetector;->onDetectorRemoteException()V

    goto :goto_29

    .line 223
    .end local v0    # "softwareDetector":Landroid/service/voice/SoftwareHotwordDetector;
    :cond_28
    :goto_28
    nop

    .line 230
    :cond_29
    :goto_29
    return-void
.end method

.method static synthetic blacklist lambda$onSoundModelsChangedInternal$2(Landroid/service/voice/HotwordDetector;)V
    .registers 2
    .param p0, "detector"    # Landroid/service/voice/HotwordDetector;

    .line 410
    instance-of v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v0, :cond_a

    .line 411
    move-object v0, p0

    check-cast v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->onSoundModelsChanged()V

    .line 413
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$safelyShutdownAllHotwordDetectors$4(ZLandroid/service/voice/HotwordDetector;)V
    .registers 6
    .param p1, "shouldShutDownVisualQueryDetector"    # Z
    .param p2, "detector"    # Landroid/service/voice/HotwordDetector;

    .line 1081
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    .line 1082
    invoke-virtual {v0}, Landroid/service/voice/VisualQueryDetector;->getInitializationDelegate()Landroid/service/voice/HotwordDetector;

    move-result-object v0

    if-ne p2, v0, :cond_e

    if-eqz p1, :cond_11

    .line 1084
    :cond_e
    invoke-interface {p2}, Landroid/service/voice/HotwordDetector;->destroy()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1088
    :cond_11
    goto :goto_1a

    .line 1086
    :catch_12
    move-exception v0

    .line 1087
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string v2, "exception destroying HotwordDetector"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1089
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method private blacklist onDetectorRemoteException(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "detectorType"    # I

    .line 213
    sget-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetectorRemoteException for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/service/voice/HotwordDetector;->detectorTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda5;-><init>(ILandroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 231
    return-void
.end method

.method private blacklist onHandleVoiceActionCheck(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 6
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceActionCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 419
    .local p1, "voiceActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_15

    .line 421
    :try_start_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 422
    .local v0, "voiceActionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionService;->onGetSupportedVoiceActions(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 423
    .local v1, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v2}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    .line 425
    .end local v0    # "voiceActionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_15

    .line 424
    :catch_14
    move-exception v0

    .line 427
    :cond_15
    :goto_15
    return-void
.end method

.method private blacklist onHotwordDetectorDestroyed(Landroid/service/voice/HotwordDetector;)V
    .registers 4
    .param p1, "detector"    # Landroid/service/voice/HotwordDetector;

    .line 1094
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_3
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    .line 1096
    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector;->getInitializationDelegate()Landroid/service/voice/HotwordDetector;

    move-result-object v1

    if-ne p1, v1, :cond_12

    .line 1097
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    .line 1099
    :cond_12
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1100
    monitor-exit v0

    .line 1101
    return-void

    .line 1100
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private greylist-max-o onShutdownInternal()V
    .registers 2

    .line 389
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdown()V

    .line 395
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors(Z)V

    .line 396
    return-void
.end method

.method private greylist-max-o onSoundModelsChangedInternal()V
    .registers 3

    .line 407
    monitor-enter p0

    .line 409
    :try_start_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 414
    monitor-exit p0

    .line 415
    return-void

    .line 414
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private blacklist safelyShutdownAllHotwordDetectors(Z)V
    .registers 5
    .param p1, "shouldShutDownVisualQueryDetector"    # Z

    .line 1077
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_3
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v2, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;-><init>(Landroid/service/voice/VoiceInteractionService;Z)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1090
    monitor-exit v0

    .line 1091
    return-void

    .line 1090
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 15
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p5, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .end local p1    # "keyphrase":Ljava/lang/String;
    .end local p2    # "locale":Ljava/util/Locale;
    .end local p3    # "options":Landroid/os/PersistableBundle;
    .end local p4    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p5    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .local v1, "keyphrase":Ljava/lang/String;
    .local v2, "locale":Ljava/util/Locale;
    .local v4, "options":Landroid/os/PersistableBundle;
    .local v5, "sharedMemory":Landroid/os/SharedMemory;
    .local v8, "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 16
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 667
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "keyphrase":Ljava/lang/String;
    .end local p2    # "locale":Ljava/util/Locale;
    .end local p3    # "options":Landroid/os/PersistableBundle;
    .end local p4    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .local v1, "keyphrase":Ljava/lang/String;
    .local v2, "locale":Ljava/util/Locale;
    .local v4, "options":Landroid/os/PersistableBundle;
    .local v5, "sharedMemory":Landroid/os/SharedMemory;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    .local v8, "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 13
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 484
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    .end local p1    # "keyphrase":Ljava/lang/String;
    .end local p2    # "locale":Ljava/util/Locale;
    .end local p3    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .local v1, "keyphrase":Ljava/lang/String;
    .local v2, "locale":Ljava/util/Locale;
    .local v8, "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 14
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 524
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "keyphrase":Ljava/lang/String;
    .end local p2    # "locale":Ljava/util/Locale;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .local v1, "keyphrase":Ljava/lang/String;
    .local v2, "locale":Ljava/util/Locale;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    .local v8, "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist createAlwaysOnHotwordDetectorForTest(Ljava/lang/String;Ljava/util/Locale;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 15
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "moduleProperties"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 549
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .end local p1    # "keyphrase":Ljava/lang/String;
    .end local p2    # "locale":Ljava/util/Locale;
    .end local p3    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .local v1, "keyphrase":Ljava/lang/String;
    .local v2, "locale":Ljava/util/Locale;
    .local v6, "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    .local v8, "callback":Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist createAlwaysOnHotwordDetectorForTest(Ljava/lang/String;Ljava/util/Locale;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 17
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "options"    # Landroid/os/PersistableBundle;
    .param p4, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p5, "moduleProperties"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 693
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object v3

    return-object v3
.end method

.method public final whitelist createHotwordDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;
    .registers 5
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/service/voice/HotwordDetector$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 814
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/service/voice/VoiceInteractionService;->createHotwordDetectorInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createHotwordDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;
    .registers 6
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/service/voice/HotwordDetector$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 868
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionService;->createHotwordDetectorInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createKeyphraseModelManager()Landroid/media/voice/KeyphraseModelManager;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1006
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_13

    .line 1009
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_7
    new-instance v1, Landroid/media/voice/KeyphraseModelManager;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-direct {v1, v2}, Landroid/media/voice/KeyphraseModelManager;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;)V

    monitor-exit v0

    return-object v1

    .line 1011
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 1007
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist createVisualQueryDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;)Landroid/service/voice/VisualQueryDetector;
    .registers 13
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/service/voice/VisualQueryDetector$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 953
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-boolean v0, Landroid/service/voice/VoiceInteractionService;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    if-eqz v0, :cond_8c

    .line 960
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_82

    .line 963
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    :try_start_11
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    if-nez v0, :cond_6f

    .line 969
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_7a

    if-eqz v2, :cond_3b

    :try_start_21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetector;

    .line 970
    .local v2, "detector":Landroid/service/voice/HotwordDetector;
    invoke-interface {v2}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 975
    .end local v2    # "detector":Landroid/service/voice/HotwordDetector;
    goto :goto_1b

    .line 971
    .restart local v2    # "detector":Landroid/service/voice/HotwordDetector;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "It disallows to create trusted and non-trusted detectors at the same time."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    throw v0
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_36

    .line 994
    .end local v2    # "detector":Landroid/service/voice/HotwordDetector;
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    :catchall_36
    move-exception v0

    move-object v6, p0

    move-object v4, p3

    move-object v5, p4

    goto :goto_7e

    .line 977
    :cond_3b
    :try_start_3b
    new-instance v2, Landroid/service/voice/VisualQueryDetector;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 979
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v7
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_7a

    move-object v6, p0

    move-object v4, p3

    move-object v5, p4

    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    :try_start_46
    invoke-direct/range {v2 .. v7}, Landroid/service/voice/VisualQueryDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Landroid/content/Context;Ljava/lang/String;)V

    .line 980
    .local v2, "visualQueryDetector":Landroid/service/voice/VisualQueryDetector;
    nop

    .line 981
    invoke-virtual {v2}, Landroid/service/voice/VisualQueryDetector;->getInitializationDelegate()Landroid/service/voice/HotwordDetector;

    move-result-object p3

    .line 982
    .local p3, "visualQueryDetectorInitializationDelegate":Landroid/service/voice/HotwordDetector;
    iget-object p4, v6, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_80

    .line 985
    :try_start_53
    new-instance p4, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v2, p4}, Landroid/service/voice/VisualQueryDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    .line 986
    invoke-virtual {v2, p1, p2}, Landroid/service/voice/VisualQueryDetector;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5e} :catch_63
    .catchall {:try_start_53 .. :try_end_5e} :catchall_80

    .line 991
    nop

    .line 992
    :try_start_5f
    iput-object v2, v6, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    .line 993
    monitor-exit v1

    return-object v2

    .line 987
    :catch_63
    move-exception v0

    move-object p4, v0

    .line 988
    .local p4, "e":Ljava/lang/Exception;
    iget-object v0, v6, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 989
    invoke-virtual {v2}, Landroid/service/voice/VisualQueryDetector;->destroy()V

    .line 990
    nop

    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    .end local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    throw p4

    .line 965
    .end local v2    # "visualQueryDetector":Landroid/service/voice/VisualQueryDetector;
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .local p3, "executor":Ljava/util/concurrent/Executor;
    .local p4, "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    :cond_6f
    move-object v6, p0

    move-object v4, p3

    move-object v5, p4

    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "There is already an active VisualQueryDetector. It must be destroyed to create a new one."

    invoke-direct {p3, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    .end local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    throw p3

    .line 994
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionService;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    :catchall_7a
    move-exception v0

    move-object v6, p0

    move-object v4, p3

    move-object v5, p4

    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    :goto_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_5f .. :try_end_7f} :catchall_80

    throw v0

    :catchall_80
    move-exception v0

    goto :goto_7e

    .line 961
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    :cond_82
    move-object v4, p3

    move-object v5, p4

    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "Not available until onReady() is called"

    invoke-direct {p3, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 957
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    :cond_8c
    move-object v4, p3

    move-object v5, p4

    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "callback":Landroid/service/voice/VisualQueryDetector$Callback;
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "VisualQueryDetectionService is not enabled on this system. Please set ro.hotword.visual_query_service_enabled to true."

    invoke-direct {p3, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1122
    const-string v0, "VOICE INTERACTION"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1124
    :try_start_8
    const-string v1, "  Sandboxed Detector(s):"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1b

    .line 1126
    const-string v1, "    No detector."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25

    .line 1128
    :cond_1b
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v2, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1135
    :goto_25
    const-string v1, "Available Model Enrollment Applications:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    monitor-exit v0

    .line 1138
    return-void

    .line 1137
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public whitelist getDisabledShowContext()I
    .registers 3

    .line 310
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 311
    :catch_7
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method protected final greylist-max-o getKeyphraseEnrollmentInfo()Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .registers 2

    .line 1020
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    return-object v0
.end method

.method public final greylist isKeyphraseAndLocaleSupportedForHotword(Ljava/lang/String;Ljava/util/Locale;)Z
    .registers 5
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 1070
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1071
    return v1

    .line 1073
    :cond_6
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public final blacklist listModuleProperties()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 436
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 437
    .local v0, "identity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 439
    :try_start_b
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return-object v1

    .line 440
    :catch_12
    move-exception v1

    .line 441
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 358
    const-string v0, "android.service.voice.VoiceInteractionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 359
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 361
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onGetSupportedVoiceActions(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    .local p1, "voiceActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onLaunchVoiceAssistFromKeyguard()V
    .registers 1

    .line 244
    return-void
.end method

.method public whitelist onPrepareToShowSession(Landroid/os/Bundle;I)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I

    .line 259
    return-void
.end method

.method public whitelist onReady()V
    .registers 4

    .line 371
    nop

    .line 372
    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 371
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 373
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :try_start_13
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_20

    .line 378
    goto :goto_29

    .line 376
    :catch_20
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to link to death with system service"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    .line 380
    return-void
.end method

.method public whitelist onShowSessionFailed(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "args"    # Landroid/os/Bundle;

    .line 272
    return-void
.end method

.method public whitelist onShutdown()V
    .registers 1

    .line 404
    return-void
.end method

.method public whitelist setDisabledShowContext(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 300
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 302
    goto :goto_7

    .line 301
    :catch_6
    move-exception v0

    .line 303
    :goto_7
    return-void
.end method

.method public final blacklist setTestModuleForAlwaysOnHotwordDetectorEnabled(Z)V
    .registers 4
    .param p1, "isEnabled"    # Z

    .line 1036
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_3
    iput-boolean p1, p0, Landroid/service/voice/VoiceInteractionService;->mTestModuleForAlwaysOnHotwordDetectorEnabled:Z

    .line 1038
    monitor-exit v0

    .line 1039
    return-void

    .line 1038
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final whitelist setUiHints(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "hints"    # Landroid/os/Bundle;

    .line 1109
    if-eqz p1, :cond_f

    .line 1114
    :try_start_2
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setUiHints(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 1117
    nop

    .line 1118
    return-void

    .line 1115
    :catch_9
    move-exception v0

    .line 1116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hints must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist showSession(Landroid/os/Bundle;I)V
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I

    .line 329
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_10

    .line 333
    :try_start_4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSession(Landroid/os/Bundle;ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 335
    goto :goto_f

    .line 334
    :catch_e
    move-exception v0

    .line 336
    :goto_f
    return-void

    .line 330
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

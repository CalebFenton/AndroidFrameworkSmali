.class public Landroid/hardware/soundtrigger/SoundTrigger;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;,
        Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;,
        Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;,
        Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionModes;,
        Landroid/hardware/soundtrigger/SoundTrigger$ModelParamTypes;,
        Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;,
        Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;,
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    }
.end annotation


# static fields
.field public static final blacklist FAKE_HAL_ARCH:Ljava/lang/String; = "injection"

.field public static final blacklist MODEL_PARAM_INVALID:I = -0x1

.field public static final blacklist MODEL_PARAM_THRESHOLD_FACTOR:I = 0x0

.field public static final whitelist RECOGNITION_MODE_GENERIC:I = 0x8

.field public static final whitelist RECOGNITION_MODE_USER_AUTHENTICATION:I = 0x4

.field public static final whitelist RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final whitelist RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final greylist-max-o RECOGNITION_STATUS_ABORT:I = 0x1

.field public static final greylist-max-o RECOGNITION_STATUS_FAILURE:I = 0x2

.field public static final blacklist RECOGNITION_STATUS_GET_STATE_RESPONSE:I = 0x3

.field public static final greylist-max-o RECOGNITION_STATUS_SUCCESS:I = 0x0

.field public static final greylist-max-o STATUS_BAD_VALUE:I

.field public static final blacklist STATUS_BUSY:I

.field public static final greylist-max-o STATUS_DEAD_OBJECT:I

.field public static final greylist-max-o STATUS_ERROR:I = -0x80000000

.field public static final greylist-max-o STATUS_INVALID_OPERATION:I

.field public static final greylist-max-o STATUS_NO_INIT:I

.field public static final whitelist STATUS_OK:I = 0x0

.field public static final greylist-max-o STATUS_PERMISSION_DENIED:I

.field private static final blacklist TAG:Ljava/lang/String; = "SoundTrigger"

.field private static blacklist mServiceLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    sget v0, Landroid/system/OsConstants;->EPERM:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    .line 99
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    .line 101
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    .line 103
    sget v0, Landroid/system/OsConstants;->EPIPE:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    .line 105
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    .line 107
    sget v0, Landroid/system/OsConstants;->EBUSY:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BUSY:I

    .line 2278
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private static greylist attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .registers 4
    .param p0, "moduleId"    # I
    .param p1, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2437
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist attachModuleAsMiddleman(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .registers 14
    .param p0, "moduleId"    # I
    .param p1, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p4, "originatorIdentity"    # Landroid/media/permission/Identity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2462
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    move-object v5, v0

    .line 2464
    .local v5, "looper":Landroid/os/Looper;
    :try_start_c
    new-instance v1, Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_1e

    const/4 v8, 0x0

    move v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    .end local p0    # "moduleId":I
    .end local p1    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .end local p3    # "middlemanIdentity":Landroid/media/permission/Identity;
    .end local p4    # "originatorIdentity":Landroid/media/permission/Identity;
    .local v3, "moduleId":I
    .local v4, "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .local v6, "middlemanIdentity":Landroid/media/permission/Identity;
    .local v7, "originatorIdentity":Landroid/media/permission/Identity;
    :try_start_17
    invoke-direct/range {v1 .. v8}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    return-object v1

    .line 2466
    :catch_1b
    move-exception v0

    move-object p0, v0

    goto :goto_24

    .end local v3    # "moduleId":I
    .end local v4    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .end local v6    # "middlemanIdentity":Landroid/media/permission/Identity;
    .end local v7    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local p0    # "moduleId":I
    .restart local p1    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .restart local p3    # "middlemanIdentity":Landroid/media/permission/Identity;
    .restart local p4    # "originatorIdentity":Landroid/media/permission/Identity;
    :catch_1e
    move-exception v0

    move v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object p0, v0

    .line 2467
    .end local p1    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .end local p3    # "middlemanIdentity":Landroid/media/permission/Identity;
    .end local p4    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local v3    # "moduleId":I
    .restart local v4    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .restart local v6    # "middlemanIdentity":Landroid/media/permission/Identity;
    .restart local v7    # "originatorIdentity":Landroid/media/permission/Identity;
    .local p0, "e":Ljava/lang/Exception;
    :goto_24
    const-string p1, "SoundTrigger"

    const-string p3, ""

    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2468
    const/4 p1, 0x0

    return-object p1
.end method

.method public static blacklist attachModuleAsOriginator(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .registers 11
    .param p0, "moduleId"    # I
    .param p1, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "originatorIdentity"    # Landroid/media/permission/Identity;

    .line 2490
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    move-object v5, v0

    .line 2492
    .local v5, "looper":Landroid/os/Looper;
    :try_start_c
    new-instance v1, Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_1c

    move v3, p0

    move-object v4, p1

    move-object v6, p3

    .end local p0    # "moduleId":I
    .end local p1    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .end local p3    # "originatorIdentity":Landroid/media/permission/Identity;
    .local v3, "moduleId":I
    .local v4, "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .local v6, "originatorIdentity":Landroid/media/permission/Identity;
    :try_start_15
    invoke-direct/range {v1 .. v6}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    return-object v1

    .line 2494
    :catch_19
    move-exception v0

    move-object p0, v0

    goto :goto_21

    .end local v3    # "moduleId":I
    .end local v4    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .end local v6    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local p0    # "moduleId":I
    .restart local p1    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .restart local p3    # "originatorIdentity":Landroid/media/permission/Identity;
    :catch_1c
    move-exception v0

    move v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object p0, v0

    .line 2495
    .end local p1    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .end local p3    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local v3    # "moduleId":I
    .restart local v4    # "listener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .restart local v6    # "originatorIdentity":Landroid/media/permission/Identity;
    .local p0, "e":Ljava/lang/Exception;
    :goto_21
    const-string p1, "SoundTrigger"

    const-string p3, ""

    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2496
    const/4 p1, 0x0

    return-object p1
.end method

.method private static blacklist convertDescriptorsToModuleProperties([Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;Ljava/util/ArrayList;)V
    .registers 6
    .param p0, "descsIn"    # [Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)V"
        }
    .end annotation

    .line 2414
    .local p1, "modulesOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2415
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2416
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_17

    aget-object v2, p0, v1

    .line 2417
    .local v2, "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiModuleDescriptor(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2416
    .end local v2    # "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2419
    :cond_17
    return-void
.end method

.method private static blacklist getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .registers 5

    .line 2501
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2503
    :goto_3
    const/4 v1, 0x0

    .line 2505
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_4
    const-string v2, "soundtrigger_middleware"

    .line 2506
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    move-object v1, v2

    .line 2508
    invoke-static {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_13
    .catchall {:try_start_4 .. :try_end_f} :catchall_11

    :try_start_f
    monitor-exit v0

    return-object v2

    .line 2513
    .end local v1    # "binder":Landroid/os/IBinder;
    :catchall_11
    move-exception v1

    goto :goto_1d

    .line 2509
    .restart local v1    # "binder":Landroid/os/IBinder;
    :catch_13
    move-exception v2

    .line 2510
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SoundTrigger"

    const-string v4, "Failed to bind to soundtrigger service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2512
    nop

    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 2513
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_11

    throw v1
.end method

.method public static blacklist handleException(Ljava/lang/Exception;)I
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .line 2289
    const-string v0, "Exception caught"

    const-string v1, "SoundTrigger"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2290
    instance-of v0, p0, Landroid/os/RemoteException;

    if-eqz v0, :cond_e

    .line 2291
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    return v0

    .line 2293
    :cond_e
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_2a

    .line 2294
    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/high16 v1, -0x80000000

    packed-switch v0, :pswitch_data_50

    .line 2306
    return v1

    .line 2302
    :pswitch_1d
    return v1

    .line 2300
    :pswitch_1e
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    return v0

    .line 2298
    :pswitch_21
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    return v0

    .line 2296
    :pswitch_24
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    return v0

    .line 2304
    :pswitch_27
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BUSY:I

    return v0

    .line 2308
    :cond_2a
    instance-of v0, p0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_31

    .line 2309
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    return v0

    .line 2311
    :cond_31
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_38

    .line 2312
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    return v0

    .line 2314
    :cond_38
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_4c

    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_41

    goto :goto_4c

    .line 2319
    :cond_41
    const-string v0, "Escalating unexpected exception: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2320
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2315
    :cond_4c
    :goto_4c
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    return v0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1d
    .end packed-switch
.end method

.method public static greylist listModules(Ljava/util/ArrayList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    .line 2340
    .local p0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist listModulesAsMiddleman(Ljava/util/ArrayList;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)I
    .registers 5
    .param p1, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p2, "originatorIdentity"    # Landroid/media/permission/Identity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;",
            "Landroid/media/permission/Identity;",
            "Landroid/media/permission/Identity;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2396
    .local p0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    :try_start_0
    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v0

    .line 2398
    .local v0, "descs":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-static {v0, p0}, Landroid/hardware/soundtrigger/SoundTrigger;->convertDescriptorsToModuleProperties([Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;Ljava/util/ArrayList;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    .line 2399
    const/4 v1, 0x0

    return v1

    .line 2400
    .end local v0    # "descs":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :catch_d
    move-exception v0

    .line 2401
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1

    return v1
.end method

.method public static blacklist listModulesAsOriginator(Ljava/util/ArrayList;Landroid/media/permission/Identity;)I
    .registers 4
    .param p1, "originatorIdentity"    # Landroid/media/permission/Identity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;",
            "Landroid/media/permission/Identity;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2363
    .local p0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    :try_start_0
    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->listModulesAsOriginator(Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v0

    .line 2365
    .local v0, "descs":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-static {v0, p0}, Landroid/hardware/soundtrigger/SoundTrigger;->convertDescriptorsToModuleProperties([Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;Ljava/util/ArrayList;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    .line 2366
    const/4 v1, 0x0

    return v1

    .line 2367
    .end local v0    # "descs":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :catch_d
    move-exception v0

    .line 2368
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1

    return v1
.end method

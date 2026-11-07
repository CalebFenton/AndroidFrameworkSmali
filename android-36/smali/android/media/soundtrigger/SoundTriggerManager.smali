.class public final Landroid/media/soundtrigger/SoundTriggerManager;
.super Ljava/lang/Object;
.source "SoundTriggerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/SoundTriggerManager$Model;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o EXTRA_MESSAGE_TYPE:Ljava/lang/String; = "android.media.soundtrigger.MESSAGE_TYPE"

.field public static final greylist-max-o EXTRA_RECOGNITION_EVENT:Ljava/lang/String; = "android.media.soundtrigger.RECOGNITION_EVENT"

.field public static final greylist-max-o EXTRA_STATUS:Ljava/lang/String; = "android.media.soundtrigger.STATUS"

.field public static final greylist-max-o FLAG_MESSAGE_TYPE_RECOGNITION_ERROR:I = 0x1

.field public static final greylist-max-o FLAG_MESSAGE_TYPE_RECOGNITION_EVENT:I = 0x0

.field public static final greylist-max-o FLAG_MESSAGE_TYPE_RECOGNITION_PAUSED:I = 0x2

.field public static final greylist-max-o FLAG_MESSAGE_TYPE_RECOGNITION_RESUMED:I = 0x3

.field public static final greylist-max-o FLAG_MESSAGE_TYPE_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SoundTriggerManager"


# instance fields
.field private final blacklist mBinderToken:Landroid/os/IBinder;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mReceiverInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Landroid/media/soundtrigger/SoundTriggerDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

.field private final blacklist mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soundTriggerService"    # Lcom/android/internal/app/ISoundTriggerService;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mBinderToken:Landroid/os/IBinder;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    .line 101
    :try_start_11
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 102
    .local v0, "originatorIdentity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 104
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_20} :catch_61

    .line 105
    .local v1, "ignored":Landroid/media/permission/SafeCloseable;
    nop

    .line 106
    :try_start_21
    invoke-interface {p2, v0}, Lcom/android/internal/app/ISoundTriggerService;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/soundtrigger/SoundTriggerManager$$ExternalSyntheticLambda1;-><init>()V

    .line 108
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 110
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    .line 111
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 112
    .local v2, "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    if-eqz v2, :cond_48

    .line 113
    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mBinderToken:Landroid/os/IBinder;

    invoke-interface {p2, v0, v2, v3}, Lcom/android/internal/app/ISoundTriggerService;->attachAsOriginator(Landroid/media/permission/Identity;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;

    move-result-object v3

    iput-object v3, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    goto :goto_4a

    .line 118
    :cond_48
    iput-object v3, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;
    :try_end_4a
    .catchall {:try_start_21 .. :try_end_4a} :catchall_55

    .line 120
    .end local v2    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :goto_4a
    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4f} :catch_61

    .line 123
    .end local v0    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_4f
    nop

    .line 124
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 126
    return-void

    .line 104
    .restart local v0    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_55
    move-exception v2

    if-eqz v1, :cond_60

    :try_start_58
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v3

    :try_start_5d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "soundTriggerService":Lcom/android/internal/app/ISoundTriggerService;
    :cond_60
    :goto_60
    throw v2
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_61} :catch_61

    .line 121
    .end local v0    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "soundTriggerService":Lcom/android/internal/app/ISoundTriggerService;
    :catch_61
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soundTriggerService"    # Lcom/android/internal/app/ISoundTriggerService;
    .param p3, "properties"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mBinderToken:Landroid/os/IBinder;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    .line 174
    :try_start_11
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 175
    .local v0, "originatorIdentity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 176
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_20} :catch_52

    .line 177
    .local v1, "ignored":Landroid/media/permission/SafeCloseable;
    nop

    .line 179
    :try_start_21
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mBinderToken:Landroid/os/IBinder;

    .line 177
    invoke-interface {p2, v0, v2, v3}, Lcom/android/internal/app/ISoundTriggerService;->attachAsOriginator(Landroid/media/permission/Identity;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;

    move-result-object v2

    iput-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_46

    .line 181
    if-eqz v1, :cond_34

    :try_start_31
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_52

    .line 184
    .end local v0    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_34
    nop

    .line 185
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    .line 186
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ISoundTriggerService;

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 187
    return-void

    .line 176
    .restart local v0    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_46
    move-exception v2

    if-eqz v1, :cond_51

    :try_start_49
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v3

    :try_start_4e
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "soundTriggerService":Lcom/android/internal/app/ISoundTriggerService;
    .end local p3    # "properties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :cond_51
    :goto_51
    throw v2
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_52} :catch_52

    .line 182
    .end local v0    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "soundTriggerService":Lcom/android/internal/app/ISoundTriggerService;
    .restart local p3    # "properties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catch_52
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist attachInstrumentation(Ljava/util/concurrent/Executor;Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;)Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    .line 768
    nop

    .line 769
    const-string v0, "soundtrigger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 768
    invoke-static {v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerService;

    move-result-object v0

    .line 770
    .local v0, "service":Lcom/android/internal/app/ISoundTriggerService;
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-direct {v1, v0, p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;-><init>(Lcom/android/internal/app/ISoundTriggerService;Ljava/util/concurrent/Executor;Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;)V

    return-object v1
.end method

.method private final blacklist getTestModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 4

    .line 157
    invoke-static {}, Landroid/media/soundtrigger/SoundTriggerManager;->listModuleProperties()Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/soundtrigger/SoundTriggerManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/soundtrigger/SoundTriggerManager$$ExternalSyntheticLambda0;-><init>()V

    .line 159
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 163
    .local v0, "moduleProps":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    if-eqz v0, :cond_1f

    .line 166
    return-object v0

    .line 164
    :cond_1f
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Fake ST HAL should always be available"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static synthetic blacklist lambda$getTestModuleProperties$1(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z
    .registers 3
    .param p0, "prop"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 160
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    const-string v1, "injection"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z
    .registers 3
    .param p0, "prop"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 108
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "injection"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist listModuleProperties()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 198
    :try_start_0
    const-string v0, "soundtrigger"

    .line 199
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerService;

    move-result-object v0

    .line 200
    .local v0, "service":Lcom/android/internal/app/ISoundTriggerService;
    new-instance v1, Landroid/media/permission/Identity;

    invoke-direct {v1}, Landroid/media/permission/Identity;-><init>()V

    .line 201
    .local v1, "originatorIdentity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 202
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_2f

    .line 203
    .local v2, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_19
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerService;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_23

    .line 204
    if-eqz v2, :cond_22

    :try_start_1f
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_2f

    .line 203
    :cond_22
    return-object v3

    .line 202
    :catchall_23
    move-exception v3

    if-eqz v2, :cond_2e

    :try_start_26
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v4

    :try_start_2b
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw v3
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 205
    .end local v0    # "service":Lcom/android/internal/app/ISoundTriggerService;
    .end local v1    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local v2    # "ignored":Landroid/media/permission/SafeCloseable;
    :catch_2f
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist createManagerForModule(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Landroid/media/soundtrigger/SoundTriggerManager;
    .registers 6
    .param p1, "moduleProperties"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 139
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerManager;

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    invoke-direct {v0, v1, v2, v3}, Landroid/media/soundtrigger/SoundTriggerManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V

    .line 139
    return-object v0
.end method

.method public blacklist createManagerForTestModule()Landroid/media/soundtrigger/SoundTriggerManager;
    .registers 5

    .line 153
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerManager;

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerManager;->getTestModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/soundtrigger/SoundTriggerManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V

    return-object v0
.end method

.method public whitelist createSoundTriggerDetector(Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)Landroid/media/soundtrigger/SoundTriggerDetector;
    .registers 10
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_31

    .line 300
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 301
    .local v0, "oldInstance":Landroid/media/soundtrigger/SoundTriggerDetector;
    nop

    .line 305
    :try_start_d
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerDetector;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v4, Landroid/os/ParcelUuid;

    .line 307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 306
    invoke-interface {v3, v4}, Lcom/android/internal/app/ISoundTriggerSession;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2, p3}, Landroid/media/soundtrigger/SoundTriggerDetector;-><init>(Lcom/android/internal/app/ISoundTriggerSession;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)V

    .line 309
    .local v1, "newInstance":Landroid/media/soundtrigger/SoundTriggerDetector;
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2a} :catch_2b

    .line 310
    return-object v1

    .line 311
    .end local v1    # "newInstance":Landroid/media/soundtrigger/SoundTriggerDetector;
    :catch_2b
    move-exception v1

    .line 312
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 297
    .end local v0    # "oldInstance":Landroid/media/soundtrigger/SoundTriggerDetector;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist deleteModel(Ljava/util/UUID;)V
    .registers 5
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_1c

    .line 269
    :try_start_4
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    .line 270
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 269
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->deleteSoundModel(Landroid/os/ParcelUuid;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_16

    .line 273
    nop

    .line 274
    return-void

    .line 271
    :catch_16
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDetectionServiceOperationsTimeout()I
    .registers 3

    .line 616
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_trigger_detection_service_op_timeout"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 618
    :catch_d
    move-exception v0

    .line 619
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const v1, 0x7fffffff

    return v1
.end method

.method public whitelist getModel(Ljava/util/UUID;)Landroid/media/soundtrigger/SoundTriggerManager$Model;
    .registers 5
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_25

    .line 243
    :try_start_4
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    .line 245
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 244
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    .line 246
    .local v0, "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    if-nez v0, :cond_19

    .line 247
    const/4 v1, 0x0

    return-object v1

    .line 250
    :cond_19
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerManager$Model;

    invoke-direct {v1, v0}, Landroid/media/soundtrigger/SoundTriggerManager$Model;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_1f

    return-object v1

    .line 251
    .end local v0    # "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :catch_1f
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getModelState(Ljava/util/UUID;)I
    .registers 4
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .line 635
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_1b

    .line 638
    if-nez p1, :cond_9

    .line 639
    const/high16 v0, -0x80000000

    return v0

    .line 642
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->getModelState(Landroid/os/ParcelUuid;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    return v0

    .line 643
    :catch_15
    move-exception v0

    .line 644
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 636
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 3

    .line 656
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-nez v0, :cond_6

    .line 657
    const/4 v0, 0x0

    return-object v0

    .line 660
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    invoke-interface {v0}, Lcom/android/internal/app/ISoundTriggerSession;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 661
    :catch_d
    move-exception v0

    .line 662
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getParameter(Ljava/util/UUID;I)I
    .registers 6
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "modelParam"    # I

    .line 718
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_1c

    .line 722
    :try_start_4
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    .line 723
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 722
    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/ISoundTriggerSession;->getParameter(Landroid/os/ParcelUuid;I)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    return v0

    .line 724
    :catch_16
    move-exception v0

    .line 725
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 719
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist isRecognitionActive(Ljava/util/UUID;)Z
    .registers 4
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .line 597
    if-eqz p1, :cond_19

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-nez v0, :cond_7

    goto :goto_19

    .line 601
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->isRecognitionActive(Landroid/os/ParcelUuid;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    return v0

    .line 603
    :catch_13
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 598
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public greylist loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)I
    .registers 4
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 481
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_30

    .line 486
    :try_start_4
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 494
    const-string v0, "SoundTriggerManager"

    goto :goto_22

    .line 488
    :pswitch_e
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I

    move-result v0

    return v0

    .line 491
    :pswitch_18
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v0

    return v0

    .line 494
    :goto_22
    const-string v1, "Unkown model type"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_27} :catch_2a

    .line 495
    const/high16 v0, -0x80000000

    return v0

    .line 497
    :catch_2a
    move-exception v0

    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 482
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_18
        :pswitch_e
    .end packed-switch
.end method

.method public whitelist queryParameter(Ljava/util/UUID;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 6
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "modelParam"    # I

    .line 743
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_1c

    .line 747
    :try_start_4
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    .line 748
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 747
    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/ISoundTriggerSession;->queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    return-object v0

    .line 749
    :catch_16
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 744
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setParameter(Ljava/util/UUID;II)I
    .registers 7
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "modelParam"    # I
    .param p3, "value"    # I

    .line 687
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_1c

    .line 692
    :try_start_4
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    .line 693
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 692
    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/ISoundTriggerSession;->setParameter(Landroid/os/ParcelUuid;II)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    return v0

    .line 695
    :catch_16
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 688
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist startRecognition(Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 7
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "detectionService"    # Landroid/content/ComponentName;
    .param p4, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 526
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_1f

    .line 533
    :try_start_d
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/internal/app/ISoundTriggerSession;->startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    return v0

    .line 535
    :catch_19
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 530
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist stopRecognition(Ljava/util/UUID;)I
    .registers 5
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .line 552
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_1c

    .line 556
    :try_start_4
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    .line 557
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 556
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->stopRecognitionForService(Landroid/os/ParcelUuid;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    return v0

    .line 558
    :catch_16
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 553
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist unloadSoundModel(Ljava/util/UUID;)I
    .registers 5
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .line 577
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_1c

    .line 581
    :try_start_4
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    .line 582
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 581
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->unloadSoundModel(Landroid/os/ParcelUuid;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    return v0

    .line 583
    :catch_16
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 578
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateModel(Landroid/media/soundtrigger/SoundTriggerManager$Model;)V
    .registers 4
    .param p1, "model"    # Landroid/media/soundtrigger/SoundTriggerManager$Model;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_15

    .line 222
    :try_start_4
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    invoke-virtual {p1}, Landroid/media/soundtrigger/SoundTriggerManager$Model;->getGenericSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 225
    nop

    .line 226
    return-void

    .line 223
    :catch_f
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

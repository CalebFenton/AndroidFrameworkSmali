.class abstract Landroid/service/voice/AbstractDetector;
.super Ljava/lang/Object;
.source "AbstractDetector.java"

# interfaces
.implements Landroid/service/voice/HotwordDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AbstractDetector$BinderCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist IS_IDENTITY_WITH_ATTRIBUTION_TAG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private blacklist mOnDestroyListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/voice/AbstractDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const-class v0, Landroid/service/voice/AbstractDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/AbstractDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V
    .registers 7
    .param p1, "managerService"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/service/voice/HotwordDetector$Callback;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AbstractDetector;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    .line 79
    iput-object p1, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 80
    iput-object p3, p0, Landroid/service/voice/AbstractDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    .line 81
    if-eqz p2, :cond_19

    move-object v0, p2

    goto :goto_27

    :cond_19
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    :goto_27
    iput-object v0, p0, Landroid/service/voice/AbstractDetector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .registers 3

    .line 193
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 194
    return-void

    .line 196
    :cond_9
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    :try_start_f
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->destroyDetector(Landroid/os/IBinder;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_26

    .line 201
    nop

    .line 203
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_1a
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    .line 205
    .local v1, "onDestroyListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/voice/AbstractDetector;>;"
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_23

    .line 206
    if-eqz v1, :cond_22

    .line 207
    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 209
    :cond_22
    return-void

    .line 205
    .end local v1    # "onDestroyListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/voice/AbstractDetector;>;"
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1

    .line 199
    :catch_26
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected blacklist initAndVerifyDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILjava/lang/String;)V
    .registers 14
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .param p4, "detectorType"    # I
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 168
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    move-object v2, v0

    .line 169
    .local v2, "identity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 174
    :try_start_c
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v5, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_1c

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p3    # "callback":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local p4    # "detectorType":I
    .local v3, "options":Landroid/os/PersistableBundle;
    .local v4, "sharedMemory":Landroid/os/SharedMemory;
    .local v6, "callback":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .local v7, "detectorType":I
    :try_start_14
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IVoiceInteractionManagerService;->initAndVerifyDetector(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_19

    .line 178
    nop

    .line 179
    return-void

    .line 176
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .end local v3    # "options":Landroid/os/PersistableBundle;
    .end local v4    # "sharedMemory":Landroid/os/SharedMemory;
    .end local v6    # "callback":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local v7    # "detectorType":I
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p3    # "callback":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .restart local p4    # "detectorType":I
    :catch_1c
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .line 177
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p3    # "callback":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local p4    # "detectorType":I
    .restart local v3    # "options":Landroid/os/PersistableBundle;
    .restart local v4    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local v6    # "callback":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .restart local v7    # "detectorType":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_22
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method abstract blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
.end method

.method blacklist isSameToken(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 87
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 88
    return v0

    .line 90
    :cond_4
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method blacklist registerOnDestroyListener(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractDetector;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p1, "onDestroyListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/voice/AbstractDetector;>;"
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    if-nez v1, :cond_b

    .line 186
    iput-object p1, p0, Landroid/service/voice/AbstractDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 184
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "only one destroy listener can be registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AbstractDetector;
    .end local p1    # "onDestroyListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/voice/AbstractDetector;>;"
    throw v1

    .line 187
    .restart local p0    # "this":Landroid/service/voice/AbstractDetector;
    .restart local p1    # "onDestroyListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/voice/AbstractDetector;>;"
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
    .registers 10
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "options"    # Landroid/os/PersistableBundle;

    .line 113
    invoke-virtual {p0}, Landroid/service/voice/AbstractDetector;->throwIfDetectorIsNoLongerActive()V

    .line 118
    :try_start_3
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v4, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    new-instance v5, Landroid/service/voice/AbstractDetector$BinderCallback;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/service/voice/AbstractDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-direct {v5, v1, v2}, Landroid/service/voice/AbstractDetector$BinderCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_1a

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "audioStream":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "audioFormat":Landroid/media/AudioFormat;
    .end local p3    # "options":Landroid/os/PersistableBundle;
    .local v1, "audioStream":Landroid/os/ParcelFileDescriptor;
    .local v2, "audioFormat":Landroid/media/AudioFormat;
    .local v3, "options":Landroid/os/PersistableBundle;
    :try_start_13
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/IBinder;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    .line 126
    goto :goto_22

    .line 124
    :catch_17
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .end local v1    # "audioStream":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "audioFormat":Landroid/media/AudioFormat;
    .end local v3    # "options":Landroid/os/PersistableBundle;
    .restart local p1    # "audioStream":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "audioFormat":Landroid/media/AudioFormat;
    .restart local p3    # "options":Landroid/os/PersistableBundle;
    :catch_1a
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object p1, v0

    .line 125
    .end local p2    # "audioFormat":Landroid/media/AudioFormat;
    .end local p3    # "options":Landroid/os/PersistableBundle;
    .restart local v1    # "audioStream":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "audioFormat":Landroid/media/AudioFormat;
    .restart local v3    # "options":Landroid/os/PersistableBundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 128
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_22
    const/4 p1, 0x1

    return p1
.end method

.method protected blacklist throwIfDetectorIsNoLongerActive()V
    .registers 3

    .line 212
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 217
    return-void

    .line 213
    :cond_9
    sget-object v0, Landroid/service/voice/AbstractDetector;->TAG:Ljava/lang/String;

    const-string v1, "attempting to use a destroyed detector which is no longer active"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 5
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 151
    invoke-virtual {p0}, Landroid/service/voice/AbstractDetector;->throwIfDetectorIsNoLongerActive()V

    .line 153
    :try_start_3
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 156
    nop

    .line 157
    return-void

    .line 154
    :catch_c
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

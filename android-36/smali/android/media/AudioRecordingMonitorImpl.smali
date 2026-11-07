.class public Landroid/media/AudioRecordingMonitorImpl;
.super Ljava/lang/Object;
.source "AudioRecordingMonitorImpl.java"

# interfaces
.implements Landroid/media/AudioRecordingMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;
    }
.end annotation


# static fields
.field private static final blacklist MSG_RECORDING_CONFIG_CHANGE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "android.media.AudioRecordingMonitor"

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private final blacklist mClient:Landroid/media/AudioRecordingMonitorClient;

.field private blacklist mRecordCallbackList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordCallbackLock:Ljava/lang/Object;

.field private final blacklist mRecordingCallback:Landroid/media/IRecordingConfigDispatcher;

.field private volatile blacklist mRecordingCallbackHandler:Landroid/os/Handler;

.field private blacklist mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRecordCallbackList(Landroid/media/AudioRecordingMonitorImpl;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordCallbackLock(Landroid/media/AudioRecordingMonitorImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordingCallbackHandler(Landroid/media/AudioRecordingMonitorImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/AudioRecordingMonitorClient;)V
    .registers 3
    .param p1, "client"    # Landroid/media/AudioRecordingMonitorClient;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackLock:Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    .line 146
    new-instance v0, Landroid/media/AudioRecordingMonitorImpl$1;

    invoke-direct {v0, p0}, Landroid/media/AudioRecordingMonitorImpl$1;-><init>(Landroid/media/AudioRecordingMonitorImpl;)V

    iput-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallback:Landroid/media/IRecordingConfigDispatcher;

    .line 53
    iput-object p1, p0, Landroid/media/AudioRecordingMonitorImpl;->mClient:Landroid/media/AudioRecordingMonitorClient;

    .line 54
    return-void
.end method

.method private blacklist beginRecordingCallbackHandling()V
    .registers 5

    .line 166
    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_31

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.media.AudioRecordingMonitor.RecordingCallback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 168
    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 169
    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 170
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_31

    .line 171
    new-instance v1, Landroid/media/AudioRecordingMonitorImpl$2;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioRecordingMonitorImpl$2;-><init>(Landroid/media/AudioRecordingMonitorImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandler:Landroid/os/Handler;

    .line 208
    invoke-static {}, Landroid/media/AudioRecordingMonitorImpl;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 210
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_25
    iget-object v2, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallback:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 213
    goto :goto_31

    .line 211
    :catch_2b
    move-exception v2

    .line 212
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 216
    .end local v0    # "looper":Landroid/os/Looper;
    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    return-void
.end method

.method private blacklist endRecordingCallbackHandling()V
    .registers 4

    .line 220
    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1d

    .line 221
    invoke-static {}, Landroid/media/AudioRecordingMonitorImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 223
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_8
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallback:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_17

    .line 226
    nop

    .line 227
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 228
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    goto :goto_1d

    .line 224
    :catch_17
    move-exception v1

    .line 225
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 230
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void
.end method

.method private static blacklist getService()Landroid/media/IAudioService;
    .registers 2

    .line 243
    sget-object v0, Landroid/media/AudioRecordingMonitorImpl;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_7

    .line 244
    sget-object v0, Landroid/media/AudioRecordingMonitorImpl;->sService:Landroid/media/IAudioService;

    return-object v0

    .line 246
    :cond_7
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 247
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioRecordingMonitorImpl;->sService:Landroid/media/IAudioService;

    .line 248
    sget-object v1, Landroid/media/AudioRecordingMonitorImpl;->sService:Landroid/media/IAudioService;

    return-object v1
.end method


# virtual methods
.method public whitelist getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;
    .registers 4

    .line 117
    invoke-static {}, Landroid/media/AudioRecordingMonitorImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 119
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v0}, Landroid/media/IAudioService;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual {p0, v1}, Landroid/media/AudioRecordingMonitorImpl;->getMyConfig(Ljava/util/List;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v2

    .line 121
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :catch_d
    move-exception v1

    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method blacklist getMyConfig(Ljava/util/List;)Landroid/media/AudioRecordingConfiguration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)",
            "Landroid/media/AudioRecordingConfiguration;"
        }
    .end annotation

    .line 233
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mClient:Landroid/media/AudioRecordingMonitorClient;

    invoke-interface {v0}, Landroid/media/AudioRecordingMonitorClient;->getPortId()I

    move-result v0

    .line 234
    .local v0, "portId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    .line 235
    .local v2, "config":Landroid/media/AudioRecordingConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    move-result v3

    if-ne v3, v0, :cond_1d

    .line 236
    return-object v2

    .line 238
    .end local v2    # "config":Landroid/media/AudioRecordingConfiguration;
    :cond_1d
    goto :goto_a

    .line 239
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 66
    if-eqz p2, :cond_40

    .line 69
    if-eqz p1, :cond_38

    .line 72
    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_7
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

    .line 75
    .local v2, "arci":Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;
    iget-object v3, v2, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    if-eq v3, p2, :cond_1e

    .line 79
    .end local v2    # "arci":Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;
    goto :goto_d

    .line 76
    .restart local v2    # "arci":Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "AudioRecordingCallback already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioRecordingMonitorImpl;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    throw v1

    .line 80
    .end local v2    # "arci":Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;
    .restart local p0    # "this":Landroid/media/AudioRecordingMonitorImpl;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    :cond_26
    invoke-direct {p0}, Landroid/media/AudioRecordingMonitorImpl;->beginRecordingCallbackHandling()V

    .line 81
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    new-instance v2, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

    invoke-direct {v2, p1, p2}, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v1

    .line 70
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioRecordingCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 6
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 91
    if-eqz p1, :cond_39

    .line 95
    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_5
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

    .line 97
    .local v2, "arci":Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;
    iget-object v3, v2, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    if-ne v3, p1, :cond_2d

    .line 99
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2b

    .line 101
    invoke-direct {p0}, Landroid/media/AudioRecordingMonitorImpl;->endRecordingCallbackHandling()V

    .line 103
    :cond_2b
    monitor-exit v0

    return-void

    .line 105
    .end local v2    # "arci":Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;
    :cond_2d
    goto :goto_b

    .line 106
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AudioRecordingCallback was not registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioRecordingMonitorImpl;
    .end local p1    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    throw v1

    .line 107
    .restart local p0    # "this":Landroid/media/AudioRecordingMonitorImpl;
    .restart local p1    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw v1

    .line 92
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioRecordingCallback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

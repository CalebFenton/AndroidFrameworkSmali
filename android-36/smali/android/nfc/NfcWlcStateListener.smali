.class public Landroid/nfc/NfcWlcStateListener;
.super Landroid/nfc/INfcWlcStateListener$Stub;
.source "NfcWlcStateListener.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdapter:Landroid/nfc/INfcAdapter;

.field private blacklist mCurrentState:Landroid/nfc/WlcListenerDeviceInfo;

.field private blacklist mIsRegistered:Z

.field private final blacklist mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/nfc/NfcAdapter$WlcStateListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$UaDw6iEo6V11FnSljp4QnPaCjW4(Landroid/nfc/NfcWlcStateListener;Landroid/nfc/NfcAdapter$WlcStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nfc/NfcWlcStateListener;->lambda$sendCurrentState$0(Landroid/nfc/NfcAdapter$WlcStateListener;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-class v0, Landroid/nfc/NfcWlcStateListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcWlcStateListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/nfc/INfcAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/nfc/INfcAdapter;

    .line 42
    invoke-direct {p0}, Landroid/nfc/INfcWlcStateListener$Stub;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mListenerMap:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mCurrentState:Landroid/nfc/WlcListenerDeviceInfo;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcWlcStateListener;->mIsRegistered:Z

    .line 43
    iput-object p1, p0, Landroid/nfc/NfcWlcStateListener;->mAdapter:Landroid/nfc/INfcAdapter;

    .line 44
    return-void
.end method

.method private synthetic blacklist lambda$sendCurrentState$0(Landroid/nfc/NfcAdapter$WlcStateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$WlcStateListener;

    .line 102
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mCurrentState:Landroid/nfc/WlcListenerDeviceInfo;

    invoke-interface {p1, v0}, Landroid/nfc/NfcAdapter$WlcStateListener;->onWlcStateChanged(Landroid/nfc/WlcListenerDeviceInfo;)V

    return-void
.end method

.method private blacklist sendCurrentState(Landroid/nfc/NfcAdapter$WlcStateListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$WlcStateListener;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 99
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_27

    .line 101
    .local v1, "identity":J
    :try_start_d
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->enableNfcCharging()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 102
    new-instance v3, Landroid/nfc/NfcWlcStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/nfc/NfcWlcStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/NfcWlcStateListener;Landroid/nfc/NfcAdapter$WlcStateListener;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_21

    .line 106
    :cond_1b
    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    nop

    .line 108
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v1    # "identity":J
    monitor-exit p0

    .line 109
    return-void

    .line 106
    .restart local v0    # "executor":Ljava/util/concurrent/Executor;
    .restart local v1    # "identity":J
    :catchall_21
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    nop

    .end local p0    # "this":Landroid/nfc/NfcWlcStateListener;
    .end local p1    # "listener":Landroid/nfc/NfcAdapter$WlcStateListener;
    throw v3

    .line 108
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcWlcStateListener;
    .restart local p1    # "listener":Landroid/nfc/NfcAdapter$WlcStateListener;
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_27

    throw v0
.end method


# virtual methods
.method public blacklist onWlcStateChanged(Landroid/nfc/WlcListenerDeviceInfo;)V
    .registers 4
    .param p1, "wlcListenerDeviceInfo"    # Landroid/nfc/WlcListenerDeviceInfo;

    .line 113
    monitor-enter p0

    .line 114
    :try_start_1
    iput-object p1, p0, Landroid/nfc/NfcWlcStateListener;->mCurrentState:Landroid/nfc/WlcListenerDeviceInfo;

    .line 116
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcAdapter$WlcStateListener;

    .line 117
    .local v1, "cb":Landroid/nfc/NfcAdapter$WlcStateListener;
    invoke-direct {p0, v1}, Landroid/nfc/NfcWlcStateListener;->sendCurrentState(Landroid/nfc/NfcAdapter$WlcStateListener;)V

    .line 118
    .end local v1    # "cb":Landroid/nfc/NfcAdapter$WlcStateListener;
    goto :goto_d

    .line 119
    :cond_1d
    monitor-exit p0

    .line 120
    return-void

    .line 119
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public blacklist register(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$WlcStateListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/nfc/NfcAdapter$WlcStateListener;

    .line 54
    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 56
    monitor-exit p0

    return-void

    .line 59
    :cond_b
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-boolean v0, p0, Landroid/nfc/NfcWlcStateListener;->mIsRegistered:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_27

    if-nez v0, :cond_25

    .line 63
    :try_start_14
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->registerWlcStateListener(Landroid/nfc/INfcWlcStateListener;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/nfc/NfcWlcStateListener;->mIsRegistered:Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_1d
    .catchall {:try_start_14 .. :try_end_1c} :catchall_27

    .line 67
    goto :goto_25

    .line 65
    :catch_1d
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    sget-object v1, Landroid/nfc/NfcWlcStateListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    :goto_25
    monitor-exit p0

    .line 70
    return-void

    .line 69
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    throw v0
.end method

.method public blacklist unregister(Landroid/nfc/NfcAdapter$WlcStateListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$WlcStateListener;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 80
    monitor-exit p0

    return-void

    .line 83
    :cond_b
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Landroid/nfc/NfcWlcStateListener;->mIsRegistered:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2f

    if-eqz v0, :cond_2d

    .line 87
    :try_start_1c
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener;->mAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->unregisterWlcStateListener(Landroid/nfc/INfcWlcStateListener;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_2f

    .line 90
    goto :goto_2a

    .line 88
    :catch_22
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_23
    sget-object v1, Landroid/nfc/NfcWlcStateListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcWlcStateListener;->mIsRegistered:Z

    .line 93
    :cond_2d
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_2f

    throw v0
.end method

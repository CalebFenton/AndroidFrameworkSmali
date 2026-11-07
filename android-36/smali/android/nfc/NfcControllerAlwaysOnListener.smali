.class public Landroid/nfc/NfcControllerAlwaysOnListener;
.super Landroid/nfc/INfcControllerAlwaysOnListener$Stub;
.source "NfcControllerAlwaysOnListener.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCurrentState:Z

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mIsRegistered:Z

.field private final blacklist mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$JFU9Kqv4JeQqPRj4fh0G2T5f1E8(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcControllerAlwaysOnListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nfc/NfcControllerAlwaysOnListener;->lambda$register$1(Landroid/nfc/NfcControllerAlwaysOnListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SrLZ97DxB1vO1ct_XFHEa17uPIs(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nfc/NfcControllerAlwaysOnListener;->lambda$sendCurrentState$4(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zeIWWqzwAgrlY3PxD5WBrsJ8tV8(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcControllerAlwaysOnListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nfc/NfcControllerAlwaysOnListener;->lambda$unregister$3(Landroid/nfc/NfcControllerAlwaysOnListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerMap(Landroid/nfc/NfcControllerAlwaysOnListener;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeathRecipient(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    iput-object p1, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const-class v0, Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mCurrentState:Z

    .line 42
    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z

    return-void
.end method

.method static synthetic blacklist lambda$register$0()Ljava/lang/Boolean;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$register$1(Landroid/nfc/NfcControllerAlwaysOnListener;)V
    .registers 3
    .param p1, "listenerAidl"    # Landroid/nfc/NfcControllerAlwaysOnListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->registerControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    .line 101
    invoke-direct {p0}, Landroid/nfc/NfcControllerAlwaysOnListener;->linkToNfcDeath()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z

    .line 103
    return-void
.end method

.method private synthetic blacklist lambda$sendCurrentState$4(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    .line 145
    iget-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mCurrentState:Z

    invoke-interface {p1, v0}, Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;->onControllerAlwaysOnChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$unregister$2()Ljava/lang/Boolean;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$unregister$3(Landroid/nfc/NfcControllerAlwaysOnListener;)V
    .registers 5
    .param p1, "listenerAidl"    # Landroid/nfc/NfcControllerAlwaysOnListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->unregisterControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    .line 129
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 130
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 133
    :cond_1c
    iput-boolean v1, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z

    .line 134
    return-void
.end method

.method private blacklist linkToNfcDeath()V
    .registers 4

    .line 46
    :try_start_0
    new-instance v0, Landroid/nfc/NfcControllerAlwaysOnListener$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcControllerAlwaysOnListener$1;-><init>(Landroid/nfc/NfcControllerAlwaysOnListener;)V

    iput-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 72
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 75
    goto :goto_1e

    .line 73
    :catch_16
    move-exception v0

    .line 74
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t link to death"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method private blacklist sendCurrentState(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    .line 140
    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 143
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_21

    .line 145
    .local v1, "identity":J
    :try_start_d
    new-instance v3, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_1b

    .line 148
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    nop

    .line 150
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v1    # "identity":J
    monitor-exit p0

    .line 151
    return-void

    .line 148
    .restart local v0    # "executor":Ljava/util/concurrent/Executor;
    .restart local v1    # "identity":J
    :catchall_1b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    nop

    .end local p0    # "this":Landroid/nfc/NfcControllerAlwaysOnListener;
    .end local p1    # "listener":Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    throw v3

    .line 150
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcControllerAlwaysOnListener;
    .restart local p1    # "listener":Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v0
.end method


# virtual methods
.method public blacklist onControllerAlwaysOnChanged(Z)V
    .registers 4
    .param p1, "isEnabled"    # Z

    .line 155
    monitor-enter p0

    .line 156
    :try_start_1
    iput-boolean p1, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mCurrentState:Z

    .line 157
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

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

    check-cast v1, Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    .line 158
    .local v1, "cb":Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    invoke-direct {p0, v1}, Landroid/nfc/NfcControllerAlwaysOnListener;->sendCurrentState(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    .line 159
    .end local v1    # "cb":Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    goto :goto_d

    .line 160
    :cond_1d
    monitor-exit p0

    .line 161
    return-void

    .line 160
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public blacklist register(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    .line 87
    new-instance v0, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda1;-><init>()V

    .line 88
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    .line 89
    return-void

    .line 91
    :cond_17
    monitor-enter p0

    .line 92
    :try_start_18
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 93
    monitor-exit p0

    return-void

    .line 96
    :cond_22
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z

    if-nez v0, :cond_34

    .line 98
    move-object v0, p0

    .line 99
    .local v0, "listenerAidl":Landroid/nfc/NfcControllerAlwaysOnListener;
    new-instance v1, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda2;-><init>(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcControllerAlwaysOnListener;)V

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 105
    .end local v0    # "listenerAidl":Landroid/nfc/NfcControllerAlwaysOnListener;
    :cond_34
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public blacklist unregister(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    .line 114
    new-instance v0, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda3;-><init>()V

    .line 115
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    .line 116
    return-void

    .line 118
    :cond_17
    monitor-enter p0

    .line 119
    :try_start_18
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 120
    monitor-exit p0

    return-void

    .line 123
    :cond_22
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z

    if-eqz v0, :cond_3c

    .line 126
    move-object v0, p0

    .line 127
    .local v0, "listenerAidl":Landroid/nfc/NfcControllerAlwaysOnListener;
    new-instance v1, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda4;-><init>(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcControllerAlwaysOnListener;)V

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 136
    .end local v0    # "listenerAidl":Landroid/nfc/NfcControllerAlwaysOnListener;
    :cond_3c
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_18 .. :try_end_40} :catchall_3e

    throw v0
.end method

.class public Landroid/uwb/AdapterStateListener;
.super Landroid/uwb/IUwbAdapterStateCallbacks$Stub;
.source "AdapterStateListener.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Uwb.StateListener"


# instance fields
.field private final blacklist mAdapter:Landroid/uwb/IUwbAdapter;

.field private blacklist mAdapterState:I

.field private blacklist mAdapterStateChangeReason:I

.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/uwb/UwbManager$AdapterStateCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsRegistered:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$E498F0-2NRDRpUFI50lZgB9JH-c(Landroid/uwb/AdapterStateListener;Landroid/uwb/UwbManager$AdapterStateCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/AdapterStateListener;->lambda$sendCurrentState$0(Landroid/uwb/UwbManager$AdapterStateCallback;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/uwb/IUwbAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/uwb/IUwbAdapter;

    .line 47
    invoke-direct {p0}, Landroid/uwb/IUwbAdapterStateCallbacks$Stub;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/uwb/AdapterStateListener;->mIsRegistered:Z

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/uwb/AdapterStateListener;->mCallbackMap:Ljava/util/Map;

    .line 42
    const/4 v1, 0x4

    iput v1, p0, Landroid/uwb/AdapterStateListener;->mAdapterStateChangeReason:I

    .line 44
    iput v0, p0, Landroid/uwb/AdapterStateListener;->mAdapterState:I

    .line 48
    iput-object p1, p0, Landroid/uwb/AdapterStateListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    .line 49
    return-void
.end method

.method private static blacklist convertToState(I)I
    .registers 2
    .param p0, "state"    # I

    .line 190
    packed-switch p0, :pswitch_data_c

    .line 202
    const/4 v0, 0x0

    return v0

    .line 198
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 195
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 192
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist convertToStateChangedReason(I)I
    .registers 2
    .param p0, "reason"    # I

    .line 167
    packed-switch p0, :pswitch_data_10

    .line 185
    const/4 v0, 0x4

    return v0

    .line 181
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 178
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 175
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 169
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 172
    :pswitch_d
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private synthetic blacklist lambda$sendCurrentState$0(Landroid/uwb/UwbManager$AdapterStateCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/uwb/UwbManager$AdapterStateCallback;

    .line 143
    iget v0, p0, Landroid/uwb/AdapterStateListener;->mAdapterState:I

    iget v1, p0, Landroid/uwb/AdapterStateListener;->mAdapterStateChangeReason:I

    invoke-interface {p1, v0, v1}, Landroid/uwb/UwbManager$AdapterStateCallback;->onStateChanged(II)V

    return-void
.end method

.method private blacklist sendCurrentState(Landroid/uwb/UwbManager$AdapterStateCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/uwb/UwbManager$AdapterStateCallback;

    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Landroid/uwb/AdapterStateListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 141
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_21

    .line 143
    .local v1, "identity":J
    :try_start_d
    new-instance v3, Landroid/uwb/AdapterStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/uwb/AdapterStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/uwb/AdapterStateListener;Landroid/uwb/UwbManager$AdapterStateCallback;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_1b

    .line 146
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    nop

    .line 148
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v1    # "identity":J
    monitor-exit p0

    .line 149
    return-void

    .line 146
    .restart local v0    # "executor":Ljava/util/concurrent/Executor;
    .restart local v1    # "identity":J
    :catchall_1b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    nop

    .end local p0    # "this":Landroid/uwb/AdapterStateListener;
    .end local p1    # "callback":Landroid/uwb/UwbManager$AdapterStateCallback;
    throw v3

    .line 148
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/uwb/AdapterStateListener;
    .restart local p1    # "callback":Landroid/uwb/UwbManager$AdapterStateCallback;
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v0
.end method


# virtual methods
.method public blacklist getAdapterState()I
    .registers 4

    .line 127
    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Landroid/uwb/AdapterStateListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getAdapterState()I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_b
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    :try_start_7
    monitor-exit p0

    return v0

    .line 134
    :catchall_9
    move-exception v0

    goto :goto_18

    .line 130
    :catch_b
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Uwb.StateListener"

    const-string v2, "Failed to get adapter state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/uwb/AdapterStateListener;
    throw v1

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/uwb/AdapterStateListener;
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_9

    throw v0
.end method

.method public blacklist onAdapterStateChanged(II)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .line 153
    monitor-enter p0

    .line 154
    nop

    .line 155
    :try_start_2
    invoke-static {p2}, Landroid/uwb/AdapterStateListener;->convertToStateChangedReason(I)I

    move-result v0

    .line 156
    .local v0, "localReason":I
    invoke-static {p1}, Landroid/uwb/AdapterStateListener;->convertToState(I)I

    move-result v1

    .line 157
    .local v1, "localState":I
    iput v0, p0, Landroid/uwb/AdapterStateListener;->mAdapterStateChangeReason:I

    .line 158
    iput v1, p0, Landroid/uwb/AdapterStateListener;->mAdapterState:I

    .line 159
    iget-object v2, p0, Landroid/uwb/AdapterStateListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/uwb/UwbManager$AdapterStateCallback;

    .line 160
    .local v3, "cb":Landroid/uwb/UwbManager$AdapterStateCallback;
    invoke-direct {p0, v3}, Landroid/uwb/AdapterStateListener;->sendCurrentState(Landroid/uwb/UwbManager$AdapterStateCallback;)V

    .line 161
    .end local v3    # "cb":Landroid/uwb/UwbManager$AdapterStateCallback;
    goto :goto_18

    .line 162
    .end local v0    # "localReason":I
    .end local v1    # "localState":I
    :cond_28
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public blacklist register(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdapterStateCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/UwbManager$AdapterStateCallback;

    .line 58
    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Landroid/uwb/AdapterStateListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60
    monitor-exit p0

    return-void

    .line 63
    :cond_b
    iget-object v0, p0, Landroid/uwb/AdapterStateListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-boolean v0, p0, Landroid/uwb/AdapterStateListener;->mIsRegistered:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2f

    if-nez v0, :cond_2a

    .line 67
    :try_start_14
    iget-object v0, p0, Landroid/uwb/AdapterStateListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p0}, Landroid/uwb/IUwbAdapter;->registerAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/uwb/AdapterStateListener;->mIsRegistered:Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_1d
    .catchall {:try_start_14 .. :try_end_1c} :catchall_2f

    .line 72
    goto :goto_2d

    .line 69
    :catch_1d
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string v1, "Uwb.StateListener"

    const-string v2, "Failed to register adapter state callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/uwb/AdapterStateListener;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/uwb/UwbManager$AdapterStateCallback;
    throw v1

    .line 74
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/uwb/AdapterStateListener;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/uwb/UwbManager$AdapterStateCallback;
    :cond_2a
    invoke-direct {p0, p2}, Landroid/uwb/AdapterStateListener;->sendCurrentState(Landroid/uwb/UwbManager$AdapterStateCallback;)V

    .line 76
    :goto_2d
    monitor-exit p0

    .line 77
    return-void

    .line 76
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist setEnabled(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .line 110
    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Landroid/uwb/AdapterStateListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->setEnabled(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 116
    nop

    .line 118
    :try_start_7
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_9
    move-exception v0

    goto :goto_18

    .line 113
    :catch_b
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Uwb.StateListener"

    const-string v2, "Failed to set adapter state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/uwb/AdapterStateListener;
    .end local p1    # "isEnabled":Z
    throw v1

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/uwb/AdapterStateListener;
    .restart local p1    # "isEnabled":Z
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_9

    throw v0
.end method

.method public blacklist unregister(Landroid/uwb/UwbManager$AdapterStateCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/uwb/UwbManager$AdapterStateCallback;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Landroid/uwb/AdapterStateListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 87
    monitor-exit p0

    return-void

    .line 90
    :cond_b
    iget-object v0, p0, Landroid/uwb/AdapterStateListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Landroid/uwb/AdapterStateListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Landroid/uwb/AdapterStateListener;->mIsRegistered:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_35

    if-eqz v0, :cond_33

    .line 94
    :try_start_1c
    iget-object v0, p0, Landroid/uwb/AdapterStateListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p0}, Landroid/uwb/IUwbAdapter;->unregisterAdapterStateCallbacks(Landroid/uwb/IUwbAdapterStateCallbacks;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_26
    .catchall {:try_start_1c .. :try_end_21} :catchall_35

    .line 98
    nop

    .line 99
    const/4 v0, 0x0

    :try_start_23
    iput-boolean v0, p0, Landroid/uwb/AdapterStateListener;->mIsRegistered:Z

    goto :goto_33

    .line 95
    :catch_26
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Uwb.StateListener"

    const-string v2, "Failed to unregister AdapterStateCallback with service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/uwb/AdapterStateListener;
    .end local p1    # "callback":Landroid/uwb/UwbManager$AdapterStateCallback;
    throw v1

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/uwb/AdapterStateListener;
    .restart local p1    # "callback":Landroid/uwb/UwbManager$AdapterStateCallback;
    :cond_33
    :goto_33
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_35

    throw v0
.end method

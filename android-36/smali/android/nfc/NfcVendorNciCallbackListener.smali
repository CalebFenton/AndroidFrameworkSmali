.class public final Landroid/nfc/NfcVendorNciCallbackListener;
.super Landroid/nfc/INfcVendorNciCallback$Stub;
.source "NfcVendorNciCallbackListener.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Nfc.NfcVendorNciCallbacks"


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/nfc/NfcAdapter$NfcVendorNciCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mIsRegistered:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$McZfis8naSIo9i1Sgst9Bq6scsc(Landroid/nfc/NfcVendorNciCallbackListener;Landroid/nfc/NfcVendorNciCallbackListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nfc/NfcVendorNciCallbackListener;->lambda$unregister$1(Landroid/nfc/NfcVendorNciCallbackListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WiHrf5ItKgwwTJPoJLZtS60H5bA(Landroid/nfc/NfcVendorNciCallbackListener;Landroid/nfc/NfcVendorNciCallbackListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nfc/NfcVendorNciCallbackListener;->lambda$register$0(Landroid/nfc/NfcVendorNciCallbackListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackMap(Landroid/nfc/NfcVendorNciCallbackListener;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeathRecipient(Landroid/nfc/NfcVendorNciCallbackListener;Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    iput-object p1, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/nfc/INfcVendorNciCallback$Stub;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mIsRegistered:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    .line 38
    return-void
.end method

.method static synthetic blacklist lambda$onVendorNotificationReceived$3(Landroid/nfc/NfcAdapter$NfcVendorNciCallback;II[B)V
    .registers 4
    .param p0, "callback"    # Landroid/nfc/NfcAdapter$NfcVendorNciCallback;
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B

    .line 136
    invoke-interface {p0, p1, p2, p3}, Landroid/nfc/NfcAdapter$NfcVendorNciCallback;->onVendorNciNotification(II[B)V

    return-void
.end method

.method static synthetic blacklist lambda$onVendorResponseReceived$2(Landroid/nfc/NfcAdapter$NfcVendorNciCallback;II[B)V
    .registers 4
    .param p0, "callback"    # Landroid/nfc/NfcAdapter$NfcVendorNciCallback;
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B

    .line 118
    invoke-interface {p0, p1, p2, p3}, Landroid/nfc/NfcAdapter$NfcVendorNciCallback;->onVendorNciResponse(II[B)V

    return-void
.end method

.method private synthetic blacklist lambda$register$0(Landroid/nfc/NfcVendorNciCallbackListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/nfc/NfcVendorNciCallbackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->registerVendorExtensionCallback(Landroid/nfc/INfcVendorNciCallback;)V

    .line 83
    invoke-direct {p0}, Landroid/nfc/NfcVendorNciCallbackListener;->linkToNfcDeath()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mIsRegistered:Z

    .line 85
    return-void
.end method

.method private synthetic blacklist lambda$unregister$1(Landroid/nfc/NfcVendorNciCallbackListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/nfc/NfcVendorNciCallbackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->unregisterVendorExtensionCallback(Landroid/nfc/INfcVendorNciCallback;)V

    .line 99
    iget-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 100
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 103
    :cond_1c
    iput-boolean v1, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mIsRegistered:Z

    .line 104
    return-void
.end method

.method private blacklist linkToNfcDeath()V
    .registers 4

    .line 42
    :try_start_0
    new-instance v0, Landroid/nfc/NfcVendorNciCallbackListener$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcVendorNciCallbackListener$1;-><init>(Landroid/nfc/NfcVendorNciCallbackListener;)V

    iput-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 67
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 70
    goto :goto_1e

    .line 68
    :catch_16
    move-exception v0

    .line 69
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Nfc.NfcVendorNciCallbacks"

    const-string v2, "Couldn\'t link to death"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method


# virtual methods
.method public blacklist onVendorNotificationReceived(II[B)V
    .registers 10
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    monitor-enter p0

    .line 132
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3c

    .line 134
    .local v0, "identity":J
    :try_start_5
    iget-object v2, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NfcAdapter$NfcVendorNciCallback;

    .line 135
    .local v3, "callback":Landroid/nfc/NfcAdapter$NfcVendorNciCallback;
    iget-object v4, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 136
    .local v4, "executor":Ljava/util/concurrent/Executor;
    new-instance v5, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, p1, p2, p3}, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda1;-><init>(Landroid/nfc/NfcAdapter$NfcVendorNciCallback;II[B)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_2b} :catch_34
    .catchall {:try_start_5 .. :try_end_2b} :catchall_32

    .line 137
    .end local v3    # "callback":Landroid/nfc/NfcAdapter$NfcVendorNciCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_f

    .line 141
    :cond_2c
    :try_start_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    nop

    .line 143
    .end local v0    # "identity":J
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_3c

    .line 144
    return-void

    .line 141
    .restart local v0    # "identity":J
    :catchall_32
    move-exception v2

    goto :goto_37

    .line 138
    :catch_34
    move-exception v2

    .line 139
    .local v2, "ex":Ljava/lang/RuntimeException;
    nop

    .end local v0    # "identity":J
    .end local p0    # "this":Landroid/nfc/NfcVendorNciCallbackListener;
    .end local p1    # "gid":I
    .end local p2    # "oid":I
    .end local p3    # "payload":[B
    :try_start_36
    throw v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_32

    .line 141
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcVendorNciCallbackListener;
    .restart local p1    # "gid":I
    .restart local p2    # "oid":I
    .restart local p3    # "payload":[B
    :goto_37
    :try_start_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    nop

    .end local p0    # "this":Landroid/nfc/NfcVendorNciCallbackListener;
    .end local p1    # "gid":I
    .end local p2    # "oid":I
    .end local p3    # "payload":[B
    throw v2

    .line 143
    .end local v0    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcVendorNciCallbackListener;
    .restart local p1    # "gid":I
    .restart local p2    # "oid":I
    .restart local p3    # "payload":[B
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public blacklist onVendorResponseReceived(II[B)V
    .registers 10
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    monitor-enter p0

    .line 114
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3c

    .line 116
    .local v0, "identity":J
    :try_start_5
    iget-object v2, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NfcAdapter$NfcVendorNciCallback;

    .line 117
    .local v3, "callback":Landroid/nfc/NfcAdapter$NfcVendorNciCallback;
    iget-object v4, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 118
    .local v4, "executor":Ljava/util/concurrent/Executor;
    new-instance v5, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, p1, p2, p3}, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/NfcAdapter$NfcVendorNciCallback;II[B)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_2b} :catch_34
    .catchall {:try_start_5 .. :try_end_2b} :catchall_32

    .line 119
    .end local v3    # "callback":Landroid/nfc/NfcAdapter$NfcVendorNciCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_f

    .line 123
    :cond_2c
    :try_start_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    nop

    .line 125
    .end local v0    # "identity":J
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_3c

    .line 126
    return-void

    .line 123
    .restart local v0    # "identity":J
    :catchall_32
    move-exception v2

    goto :goto_37

    .line 120
    :catch_34
    move-exception v2

    .line 121
    .local v2, "ex":Ljava/lang/RuntimeException;
    nop

    .end local v0    # "identity":J
    .end local p0    # "this":Landroid/nfc/NfcVendorNciCallbackListener;
    .end local p1    # "gid":I
    .end local p2    # "oid":I
    .end local p3    # "payload":[B
    :try_start_36
    throw v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_32

    .line 123
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcVendorNciCallbackListener;
    .restart local p1    # "gid":I
    .restart local p2    # "oid":I
    .restart local p3    # "payload":[B
    :goto_37
    :try_start_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    nop

    .end local p0    # "this":Landroid/nfc/NfcVendorNciCallbackListener;
    .end local p1    # "gid":I
    .end local p2    # "oid":I
    .end local p3    # "payload":[B
    throw v2

    .line 125
    .end local v0    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcVendorNciCallbackListener;
    .restart local p1    # "gid":I
    .restart local p2    # "oid":I
    .restart local p3    # "payload":[B
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public blacklist register(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$NfcVendorNciCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$NfcVendorNciCallback;

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    monitor-exit p0

    return-void

    .line 78
    :cond_b
    iget-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-boolean v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mIsRegistered:Z

    if-nez v0, :cond_1d

    .line 80
    move-object v0, p0

    .line 81
    .local v0, "listener":Landroid/nfc/NfcVendorNciCallbackListener;
    new-instance v1, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda2;-><init>(Landroid/nfc/NfcVendorNciCallbackListener;Landroid/nfc/NfcVendorNciCallbackListener;)V

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 87
    .end local v0    # "listener":Landroid/nfc/NfcVendorNciCallbackListener;
    :cond_1d
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public blacklist unregister(Landroid/nfc/NfcAdapter$NfcVendorNciCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$NfcVendorNciCallback;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mIsRegistered:Z

    if-nez v0, :cond_e

    goto :goto_27

    .line 95
    :cond_e
    iget-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 96
    move-object v0, p0

    .line 97
    .local v0, "listener":Landroid/nfc/NfcVendorNciCallbackListener;
    new-instance v1, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda3;-><init>(Landroid/nfc/NfcVendorNciCallbackListener;Landroid/nfc/NfcVendorNciCallbackListener;)V

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 106
    .end local v0    # "listener":Landroid/nfc/NfcVendorNciCallbackListener;
    :cond_20
    iget-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 93
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    .line 107
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.class final Landroid/telecom/ConnectionServiceAdapter;
.super Ljava/lang/Object;
.source "ConnectionServiceAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final greylist-max-o mAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telecom/IConnectionServiceAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    .line 55
    return-void
.end method

.method static synthetic blacklist lambda$queryLocation$0(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 5
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 790
    new-instance v0, Landroid/telecom/QueryLocationException;

    .line 791
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/telecom/QueryLocationException;-><init>(Ljava/lang/String;I)V

    .line 790
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method greylist-max-o addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .registers 7
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 58
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 59
    .local v1, "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_25

    .line 60
    const-string v0, "Ignoring duplicate adapter addition."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void

    .line 63
    .end local v1    # "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_25
    goto :goto_6

    .line 64
    :cond_26
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 66
    :try_start_2e
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_36

    .line 69
    goto :goto_3c

    .line 67
    :catch_36
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3c
    :goto_3c
    return-void
.end method

.method greylist-max-o addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcelableConference"    # Landroid/telecom/ParcelableConference;

    .line 328
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 330
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 332
    goto :goto_1b

    .line 331
    :catch_1a
    move-exception v2

    .line 333
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 334
    :cond_1c
    return-void
.end method

.method greylist-max-o addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    .line 461
    const-string v0, "addExistingConnection: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 464
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_1b
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23

    .line 466
    goto :goto_24

    .line 465
    :catch_23
    move-exception v2

    .line 467
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_24
    goto :goto_f

    .line 468
    :cond_25
    return-void
.end method

.method public whitelist binderDied()V
    .registers 5

    .line 87
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telecom/IConnectionServiceAdapter;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 90
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_27

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 92
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 94
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_27
    goto :goto_6

    .line 95
    :cond_28
    return-void
.end method

.method blacklist handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "conference"    # Landroid/telecom/ParcelableConference;

    .line 114
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 116
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 117
    :try_start_13
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 116
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 119
    goto :goto_1c

    .line 118
    :catch_1b
    move-exception v2

    .line 120
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1c
    goto :goto_6

    .line 121
    :cond_1d
    return-void
.end method

.method greylist-max-o handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    .line 101
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 103
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 104
    :try_start_13
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 103
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 106
    goto :goto_1c

    .line 105
    :catch_1b
    move-exception v2

    .line 107
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1c
    goto :goto_6

    .line 108
    :cond_1d
    return-void
.end method

.method greylist-max-o onConferenceMergeFailed(Ljava/lang/String;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 270
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    const-string/jumbo v2, "merge failed for call %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_23} :catch_24

    .line 273
    goto :goto_25

    .line 272
    :catch_24
    move-exception v2

    .line 274
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_25
    goto :goto_6

    .line 275
    :cond_26
    return-void
.end method

.method greylist-max-o onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 621
    const-string/jumbo v0, "onConnectionEvent: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 624
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_1c
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_24

    .line 626
    goto :goto_25

    .line 625
    :catch_24
    move-exception v2

    .line 627
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_25
    goto :goto_10

    .line 628
    :cond_26
    return-void
.end method

.method greylist-max-o onConnectionServiceFocusReleased()V
    .registers 5

    .line 712
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 714
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    const-string/jumbo v2, "onConnectionServiceFocusReleased"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_22} :catch_23

    .line 717
    goto :goto_24

    .line 716
    :catch_23
    move-exception v2

    .line 718
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_24
    goto :goto_6

    .line 719
    :cond_25
    return-void
.end method

.method greylist-max-o onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 699
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 701
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    const-string/jumbo v2, "onPhoneAccountChanged %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_23} :catch_24

    .line 704
    goto :goto_25

    .line 703
    :catch_24
    move-exception v2

    .line 705
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_25
    goto :goto_6

    .line 706
    :cond_26
    return-void
.end method

.method greylist-max-o onPostDialChar(Ljava/lang/String;C)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    .line 314
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 316
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 318
    goto :goto_1b

    .line 317
    :catch_1a
    move-exception v2

    .line 319
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 320
    :cond_1c
    return-void
.end method

.method greylist-max-o onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 307
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 309
    goto :goto_1b

    .line 308
    :catch_1a
    move-exception v2

    .line 310
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 311
    :cond_1c
    return-void
.end method

.method greylist-max-o onRemoteRttRequest(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 683
    const-string/jumbo v0, "onRemoteRttRequest: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 686
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_1c
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_24

    .line 688
    goto :goto_25

    .line 687
    :catch_24
    move-exception v2

    .line 689
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_25
    goto :goto_10

    .line 690
    :cond_26
    return-void
.end method

.method greylist-max-o onRttInitiationFailure(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 651
    const-string/jumbo v0, "onRttInitiationFailure: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 654
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_1c
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_24

    .line 656
    goto :goto_25

    .line 655
    :catch_24
    move-exception v2

    .line 657
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_25
    goto :goto_10

    .line 658
    :cond_26
    return-void
.end method

.method greylist-max-o onRttInitiationSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 636
    const-string/jumbo v0, "onRttInitiationSuccess: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 639
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_1c
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_24

    .line 641
    goto :goto_25

    .line 640
    :catch_24
    move-exception v2

    .line 642
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_25
    goto :goto_10

    .line 643
    :cond_26
    return-void
.end method

.method greylist-max-o onRttSessionRemotelyTerminated(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 667
    const-string/jumbo v0, "onRttSessionRemotelyTerminated: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 670
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_1c
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_24

    .line 672
    goto :goto_25

    .line 671
    :catch_24
    move-exception v2

    .line 673
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_25
    goto :goto_10

    .line 674
    :cond_26
    return-void
.end method

.method greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 513
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "putExtra: %s %s=%d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 516
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_20
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 517
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 518
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2f} :catch_30

    .line 520
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_31

    .line 519
    :catch_30
    move-exception v2

    .line 521
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_31
    goto :goto_14

    .line 522
    :cond_32
    return-void
.end method

.method greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 532
    const-string/jumbo v0, "putExtra: %s %s=%s"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 535
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_1c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 536
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2c

    .line 539
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_2d

    .line 538
    :catch_2c
    move-exception v2

    .line 540
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_2d
    goto :goto_10

    .line 541
    :cond_2e
    return-void
.end method

.method greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 494
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "putExtra: %s %s=%b"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 497
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_20
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 498
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 499
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2f} :catch_30

    .line 501
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_31

    .line 500
    :catch_30
    move-exception v2

    .line 502
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_31
    goto :goto_14

    .line 503
    :cond_32
    return-void
.end method

.method greylist-max-o putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 477
    const-string/jumbo v0, "putExtras: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 480
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_1c
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_24

    .line 482
    goto :goto_25

    .line 481
    :catch_24
    move-exception v2

    .line 483
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_25
    goto :goto_10

    .line 484
    :cond_26
    return-void
.end method

.method blacklist queryLocation(Ljava/lang/String;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 16
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "timeoutMillis"    # J
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/location/Location;",
            "Landroid/telecom/QueryLocationException;",
            ">;)V"
        }
    .end annotation

    .line 768
    .local p6, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/location/Location;Landroid/telecom/QueryLocationException;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "queryLocation: %s %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 771
    .local v2, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_21
    new-instance v7, Landroid/telecom/ConnectionServiceAdapter$2;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0, p5, p6}, Landroid/telecom/ConnectionServiceAdapter$2;-><init>(Landroid/telecom/ConnectionServiceAdapter;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 787
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v8
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_35

    .line 771
    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    .end local p1    # "callId":Ljava/lang/String;
    .end local p2    # "timeoutMillis":J
    .end local p4    # "provider":Ljava/lang/String;
    .local v3, "callId":Ljava/lang/String;
    .local v4, "timeoutMillis":J
    .local v6, "provider":Ljava/lang/String;
    :try_start_2e
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryLocation(Ljava/lang/String;JLjava/lang/String;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32

    .line 792
    goto :goto_5c

    .line 788
    :catch_32
    move-exception v0

    move-object p1, v0

    goto :goto_3a

    .end local v3    # "callId":Ljava/lang/String;
    .end local v4    # "timeoutMillis":J
    .end local v6    # "provider":Ljava/lang/String;
    .restart local p1    # "callId":Ljava/lang/String;
    .restart local p2    # "timeoutMillis":J
    .restart local p4    # "provider":Ljava/lang/String;
    :catch_35
    move-exception v0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object p1, v0

    .line 789
    .end local p2    # "timeoutMillis":J
    .end local p4    # "provider":Ljava/lang/String;
    .restart local v3    # "callId":Ljava/lang/String;
    .restart local v4    # "timeoutMillis":J
    .restart local v6    # "provider":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_3a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "queryLocation: Exception e : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    new-instance p2, Landroid/telecom/ConnectionServiceAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p6, p1}, Landroid/telecom/ConnectionServiceAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p5, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 793
    .end local v2    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_5c
    move-object p1, v3

    move-wide p2, v4

    move-object p4, v6

    goto :goto_14

    .line 794
    .end local v3    # "callId":Ljava/lang/String;
    .end local v4    # "timeoutMillis":J
    .end local v6    # "provider":Ljava/lang/String;
    .local p1, "callId":Ljava/lang/String;
    .restart local p2    # "timeoutMillis":J
    .restart local p4    # "provider":Ljava/lang/String;
    :cond_60
    return-void
.end method

.method blacklist queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;)V
    .registers 7
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Exception trying to query for remote CSs"

    if-ne v0, v1, :cond_27

    .line 343
    :try_start_c
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 344
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v1

    .line 343
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1f} :catch_20

    goto :goto_26

    .line 345
    :catch_20
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    goto :goto_35

    .line 353
    :cond_27
    :try_start_27
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telecom/RemoteServiceCallback;->onResult(Ljava/util/List;Ljava/util/List;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 356
    goto :goto_35

    .line 354
    :catch_2f
    move-exception v0

    .line 355
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_35
    return-void
.end method

.method greylist-max-o removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .registers 6
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 74
    if-eqz p1, :cond_30

    .line 75
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 76
    .local v1, "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 77
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 78
    goto :goto_30

    .line 80
    .end local v1    # "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_2f
    goto :goto_8

    .line 82
    :cond_30
    :goto_30
    return-void
.end method

.method greylist-max-o removeCall(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 298
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 300
    goto :goto_1b

    .line 299
    :catch_1a
    move-exception v2

    .line 301
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 302
    :cond_1c
    return-void
.end method

.method greylist-max-o removeExtras(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 549
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "removeExtras: %s %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 552
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_1c
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_24

    .line 554
    goto :goto_25

    .line 553
    :catch_24
    move-exception v2

    .line 555
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_25
    goto :goto_10

    .line 556
    :cond_26
    return-void
.end method

.method blacklist requestCallEndpointChange(Ljava/lang/String;Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "endpoint"    # Landroid/telecom/CallEndpoint;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/telecom/CallEndpoint;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallEndpointException;",
            ">;)V"
        }
    .end annotation

    .line 587
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/telecom/CallEndpointException;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "requestCallEndpointChange"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 590
    .local v2, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_1b
    new-instance v3, Landroid/telecom/ConnectionServiceAdapter$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p3, p4}, Landroid/telecom/ConnectionServiceAdapter$1;-><init>(Landroid/telecom/ConnectionServiceAdapter;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 606
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v4

    .line 590
    invoke-interface {v2, p1, p2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->requestCallEndpointChange(Ljava/lang/String;Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29

    .line 609
    goto :goto_31

    .line 607
    :catch_29
    move-exception v3

    .line 608
    .local v3, "ignored":Landroid/os/RemoteException;
    const-string v4, "Remote exception calling requestCallEndpointChange"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    .end local v2    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v3    # "ignored":Landroid/os/RemoteException;
    :goto_31
    goto :goto_f

    .line 611
    :cond_32
    return-void
.end method

.method blacklist resetConnectionTime(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 283
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->resetConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 285
    goto :goto_1b

    .line 284
    :catch_1a
    move-exception v2

    .line 286
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 287
    :cond_1c
    return-void
.end method

.method greylist-max-o setActive(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 132
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 134
    goto :goto_1b

    .line 133
    :catch_1a
    move-exception v2

    .line 135
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 136
    :cond_1c
    return-void
.end method

.method greylist-max-o setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .line 404
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 406
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 408
    goto :goto_1b

    .line 407
    :catch_1a
    move-exception v2

    .line 409
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 410
    :cond_1c
    return-void
.end method

.method greylist-max-o setAudioRoute(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "audioRoute"    # I
    .param p3, "bluetoothAddress"    # Ljava/lang/String;

    .line 565
    nop

    .line 566
    invoke-static {p2}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0, p3}, [Ljava/lang/Object;

    move-result-object v0

    .line 565
    const-string/jumbo v1, "setAudioRoute: %s %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 570
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 571
    :try_start_22
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 570
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_2a

    .line 573
    goto :goto_2b

    .line 572
    :catch_2a
    move-exception v2

    .line 574
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_2b
    goto :goto_15

    .line 575
    :cond_2c
    return-void
.end method

.method blacklist setCallDirection(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .line 747
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 749
    .local v1, "a":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 751
    goto :goto_1b

    .line 750
    :catch_1a
    move-exception v2

    .line 752
    .end local v1    # "a":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 753
    :cond_1c
    return-void
.end method

.method greylist-max-o setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .line 413
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 415
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 416
    :try_start_13
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 415
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 418
    goto :goto_1c

    .line 417
    :catch_1b
    move-exception v2

    .line 419
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1c
    goto :goto_6

    .line 420
    :cond_1d
    return-void
.end method

.method blacklist setConferenceState(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isConference"    # Z

    .line 730
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setConferenceState: %s %b"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 733
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_20
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    .line 735
    goto :goto_29

    .line 734
    :catch_28
    move-exception v2

    .line 736
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_29
    goto :goto_14

    .line 737
    :cond_2a
    return-void
.end method

.method greylist-max-o setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 444
    .local p2, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setConferenceableConnections: %s, %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 447
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 448
    :try_start_1d
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 447
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    .line 450
    goto :goto_26

    .line 449
    :catch_25
    move-exception v2

    .line 451
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_26
    goto :goto_10

    .line 452
    :cond_27
    return-void
.end method

.method greylist-max-o setConnectionCapabilities(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "capabilities"    # I

    .line 227
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 229
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 231
    goto :goto_1b

    .line 230
    :catch_1a
    move-exception v2

    .line 232
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 233
    :cond_1c
    return-void
.end method

.method greylist-max-o setConnectionProperties(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "properties"    # I

    .line 236
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 238
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 240
    goto :goto_1b

    .line 239
    :catch_1a
    move-exception v2

    .line 241
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 242
    :cond_1c
    return-void
.end method

.method greylist-max-o setDialing(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 160
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 162
    goto :goto_1b

    .line 161
    :catch_1a
    move-exception v2

    .line 163
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 164
    :cond_1c
    return-void
.end method

.method greylist-max-o setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 189
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 191
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 193
    goto :goto_1b

    .line 192
    :catch_1a
    move-exception v2

    .line 194
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 195
    :cond_1c
    return-void
.end method

.method greylist-max-o setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 255
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    const-string/jumbo v2, "sending connection %s with conference %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_23} :catch_24

    .line 258
    goto :goto_25

    .line 257
    :catch_24
    move-exception v2

    .line 259
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_25
    goto :goto_6

    .line 260
    :cond_26
    return-void
.end method

.method greylist-max-o setIsVoipAudioMode(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    .line 386
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 388
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 390
    goto :goto_1b

    .line 389
    :catch_1a
    move-exception v2

    .line 391
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 392
    :cond_1c
    return-void
.end method

.method greylist-max-o setOnHold(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 205
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 207
    goto :goto_1b

    .line 206
    :catch_1a
    move-exception v2

    .line 208
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 209
    :cond_1c
    return-void
.end method

.method greylist-max-o setPulling(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 175
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 177
    goto :goto_1b

    .line 176
    :catch_1a
    move-exception v2

    .line 178
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 179
    :cond_1c
    return-void
.end method

.method greylist-max-o setRingbackRequested(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringback"    # Z

    .line 218
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 220
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 222
    goto :goto_1b

    .line 221
    :catch_1a
    move-exception v2

    .line 223
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 224
    :cond_1c
    return-void
.end method

.method greylist-max-o setRinging(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 146
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 148
    goto :goto_1b

    .line 147
    :catch_1a
    move-exception v2

    .line 149
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 150
    :cond_1c
    return-void
.end method

.method greylist-max-o setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .line 395
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 397
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_12
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 399
    goto :goto_1b

    .line 398
    :catch_1a
    move-exception v2

    .line 400
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_1b
    goto :goto_6

    .line 401
    :cond_1c
    return-void
.end method

.method greylist-max-o setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 368
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 370
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    nop

    .line 372
    if-nez p2, :cond_17

    const/4 v2, 0x0

    goto :goto_1b

    :cond_17
    :try_start_17
    invoke-virtual {p2}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v2

    .line 373
    :goto_1b
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v3

    .line 370
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_22} :catch_23

    .line 375
    goto :goto_24

    .line 374
    :catch_23
    move-exception v2

    .line 376
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_24
    goto :goto_6

    .line 377
    :cond_25
    return-void
.end method

.method greylist-max-o setVideoState(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .line 434
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setVideoState: %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 437
    .local v1, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_20
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    .line 439
    goto :goto_29

    .line 438
    :catch_28
    move-exception v2

    .line 440
    .end local v1    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :goto_29
    goto :goto_14

    .line 441
    :cond_2a
    return-void
.end method

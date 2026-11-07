.class public final Landroid/telecom/RemoteConference;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConference$Callback;
    }
.end annotation


# instance fields
.field private final greylist-max-o mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/CallbackRecord<",
            "Landroid/telecom/RemoteConference$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectionCapabilities:I

.field private greylist-max-o mConnectionProperties:I

.field private final greylist-max-o mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mState:I

.field private final greylist-max-o mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectionCapabilities(Landroid/telecom/RemoteConference;)I
    .registers 1

    iget p0, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionProperties(Landroid/telecom/RemoteConference;)I
    .registers 1

    iget p0, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/telecom/RemoteConference;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnmodifiableConferenceableConnections(Landroid/telecom/RemoteConference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/telecom/DisconnectCause;)V
    .registers 3
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    .line 139
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    .line 142
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/RemoteConference;->mState:I

    .line 159
    const-string v0, "NULL"

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 161
    const/4 v0, 0x6

    iput v0, p0, Landroid/telecom/RemoteConference;->mState:I

    .line 162
    iput-object p1, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 163
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    .line 139
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    .line 142
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/RemoteConference;->mState:I

    .line 153
    iput-object p1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 155
    return-void
.end method

.method public static blacklist failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConference;
    .registers 2
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 604
    new-instance v0, Landroid/telecom/RemoteConference;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConference;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private greylist-max-o notifyExtrasChanged()V
    .registers 7

    .line 346
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 347
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v2, p0

    .line 348
    .local v2, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConference$Callback;

    .line 349
    .local v3, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$9;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConference$9;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v2    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "callback":Landroid/telecom/RemoteConference$Callback;
    goto :goto_6

    .line 356
    :cond_26
    return-void
.end method


# virtual methods
.method greylist-max-o addConnection(Landroid/telecom/RemoteConnection;)V
    .registers 8
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 215
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 216
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p1, p0}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    .line 218
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 219
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v2, p0

    .line 220
    .local v2, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConference$Callback;

    .line 221
    .local v3, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$3;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConference$3;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v2    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "callback":Landroid/telecom/RemoteConference$Callback;
    goto :goto_16

    .line 229
    :cond_36
    return-void
.end method

.method public whitelist disconnect()V
    .registers 4

    .line 410
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 412
    goto :goto_a

    .line 411
    :catch_9
    move-exception v0

    .line 413
    :goto_a
    return-void
.end method

.method public whitelist getConferenceableConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getConnectionCapabilities()I
    .registers 2

    .line 383
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    return v0
.end method

.method public final whitelist getConnectionProperties()I
    .registers 2

    .line 393
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    return v0
.end method

.method public final whitelist getConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 492
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 402
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method greylist-max-o getId()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getState()I
    .registers 2

    .line 373
    iget v0, p0, Landroid/telecom/RemoteConference;->mState:I

    return v0
.end method

.method public whitelist hold()V
    .registers 4

    .line 469
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 471
    goto :goto_a

    .line 470
    :catch_9
    move-exception v0

    .line 472
    :goto_a
    return-void
.end method

.method public whitelist merge()V
    .registers 4

    .line 443
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 445
    goto :goto_a

    .line 444
    :catch_9
    move-exception v0

    .line 446
    :goto_a
    return-void
.end method

.method public whitelist playDtmfTone(C)V
    .registers 5
    .param p1, "digit"    # C

    .line 502
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 504
    goto :goto_a

    .line 503
    :catch_9
    move-exception v0

    .line 505
    :goto_a
    return-void
.end method

.method greylist-max-o putExtras(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 322
    if-nez p1, :cond_3

    .line 323
    return-void

    .line 325
    :cond_3
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_e

    .line 326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    .line 328
    :cond_e
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 330
    invoke-direct {p0}, Landroid/telecom/RemoteConference;->notifyExtrasChanged()V

    .line 331
    return-void
.end method

.method public final whitelist registerCallback(Landroid/telecom/RemoteConference$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;

    .line 560
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;Landroid/os/Handler;)V

    .line 561
    return-void
.end method

.method public final whitelist registerCallback(Landroid/telecom/RemoteConference$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 571
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConference;->unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 572
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 573
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    new-instance v1, Landroid/telecom/CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_11
    return-void
.end method

.method greylist-max-o removeConnection(Landroid/telecom/RemoteConnection;)V
    .registers 8
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 233
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 234
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    .line 236
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 237
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v2, p0

    .line 238
    .local v2, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConference$Callback;

    .line 239
    .local v3, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$4;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConference$4;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v2    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "callback":Landroid/telecom/RemoteConference$Callback;
    goto :goto_17

    .line 247
    :cond_37
    return-void
.end method

.method greylist-max-o removeExtras(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 335
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_27

    .line 338
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 339
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 340
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_11

    .line 342
    :cond_23
    invoke-direct {p0}, Landroid/telecom/RemoteConference;->notifyExtrasChanged()V

    .line 343
    return-void

    .line 336
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist separate(Landroid/telecom/RemoteConnection;)V
    .registers 5
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 423
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 425
    :try_start_8
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    .line 427
    goto :goto_14

    .line 426
    :catch_13
    move-exception v0

    .line 429
    :cond_14
    :goto_14
    return-void
.end method

.method public whitelist setAudioState(Landroid/telecom/AudioState;)V
    .registers 3
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    new-instance v0, Landroid/telecom/CallAudioState;

    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 531
    return-void
.end method

.method public whitelist setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 5
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 539
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 541
    goto :goto_a

    .line 540
    :catch_9
    move-exception v0

    .line 542
    :goto_a
    return-void
.end method

.method greylist-max-o setConferenceableConnections(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 290
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v2, p0

    .line 291
    .local v2, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConference$Callback;

    .line 292
    .local v3, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$7;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConference$7;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v2    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "callback":Landroid/telecom/RemoteConference$Callback;
    goto :goto_10

    .line 300
    :cond_30
    return-void
.end method

.method greylist-max-o setConnectionCapabilities(I)V
    .registers 8
    .param p1, "connectionCapabilities"    # I

    .line 251
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_2c

    .line 252
    iput p1, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    .line 253
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 254
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v2, p0

    .line 255
    .local v2, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConference$Callback;

    .line 256
    .local v3, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$5;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConference$5;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v2    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "callback":Landroid/telecom/RemoteConference$Callback;
    goto :goto_c

    .line 265
    :cond_2c
    return-void
.end method

.method greylist-max-o setConnectionProperties(I)V
    .registers 8
    .param p1, "connectionProperties"    # I

    .line 269
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    if-eq v0, p1, :cond_2c

    .line 270
    iput p1, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    .line 271
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 272
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v2, p0

    .line 273
    .local v2, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConference$Callback;

    .line 274
    .local v3, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$6;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConference$6;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v2    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "callback":Landroid/telecom/RemoteConference$Callback;
    goto :goto_c

    .line 283
    :cond_2c
    return-void
.end method

.method greylist-max-o setDestroyed()V
    .registers 7

    .line 172
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection;

    .line 173
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    .line 174
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    goto :goto_6

    .line 175
    :cond_17
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 176
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v2, p0

    .line 177
    .local v2, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConference$Callback;

    .line 178
    .local v3, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$1;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConference$1;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v2    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "callback":Landroid/telecom/RemoteConference$Callback;
    goto :goto_1d

    .line 185
    :cond_3d
    return-void
.end method

.method greylist-max-o setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 8
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 304
    iget v0, p0, Landroid/telecom/RemoteConference;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_30

    .line 305
    iput-object p1, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 306
    invoke-virtual {p0, v1}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 307
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 308
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v2, p0

    .line 309
    .local v2, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConference$Callback;

    .line 310
    .local v3, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$8;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConference$8;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v2    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "callback":Landroid/telecom/RemoteConference$Callback;
    goto :goto_10

    .line 318
    :cond_30
    return-void
.end method

.method greylist-max-o setState(I)V
    .registers 11
    .param p1, "newState"    # I

    .line 189
    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/4 v0, 0x5

    if-eq p1, v0, :cond_18

    const/4 v0, 0x6

    if-eq p1, v0, :cond_18

    .line 192
    nop

    .line 193
    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 192
    const-string v1, "Unsupported state transition for Conference call."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void

    .line 197
    :cond_18
    iget v0, p0, Landroid/telecom/RemoteConference;->mState:I

    if-eq v0, p1, :cond_4c

    .line 198
    iget v5, p0, Landroid/telecom/RemoteConference;->mState:I

    .line 199
    .local v5, "oldState":I
    iput p1, p0, Landroid/telecom/RemoteConference;->mState:I

    .line 200
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/telecom/CallbackRecord;

    .line 201
    .local v7, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v4, p0

    .line 202
    .local v4, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/telecom/RemoteConference$Callback;

    .line 203
    .local v3, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v1, Landroid/telecom/RemoteConference$2;

    move-object v2, p0

    move v6, p1

    .end local p1    # "newState":I
    .local v6, "newState":I
    invoke-direct/range {v1 .. v6}, Landroid/telecom/RemoteConference$2;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;II)V

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    .end local v3    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v4    # "conference":Landroid/telecom/RemoteConference;
    .end local v7    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    goto :goto_26

    .line 200
    .end local v6    # "newState":I
    .restart local p1    # "newState":I
    :cond_4a
    move v6, p1

    .end local p1    # "newState":I
    .restart local v6    # "newState":I
    goto :goto_4d

    .line 197
    .end local v5    # "oldState":I
    .end local v6    # "newState":I
    .restart local p1    # "newState":I
    :cond_4c
    move v6, p1

    .line 211
    .end local p1    # "newState":I
    .restart local v6    # "newState":I
    :goto_4d
    return-void
.end method

.method public whitelist stopDtmfTone()V
    .registers 4

    .line 514
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 516
    goto :goto_a

    .line 515
    :catch_9
    move-exception v0

    .line 517
    :goto_a
    return-void
.end method

.method public whitelist swap()V
    .registers 4

    .line 459
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 461
    goto :goto_a

    .line 460
    :catch_9
    move-exception v0

    .line 462
    :goto_a
    return-void
.end method

.method public whitelist unhold()V
    .registers 4

    .line 479
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 481
    goto :goto_a

    .line 480
    :catch_9
    move-exception v0

    .line 482
    :goto_a
    return-void
.end method

.method public final whitelist unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;

    .line 585
    if-eqz p1, :cond_21

    .line 586
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 587
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_20

    .line 588
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 589
    goto :goto_21

    .line 591
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_20
    goto :goto_8

    .line 593
    :cond_21
    :goto_21
    return-void
.end method

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
.field private final mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/CallbackRecord",
            "<",
            "Landroid/telecom/RemoteConference$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCapabilities:I

.field private mConnectionProperties:I

.field private final mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private mState:I

.field private final mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/telecom/RemoteConference;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/telecom/RemoteConference;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/telecom/RemoteConference;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/telecom/RemoteConference;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    #@2
    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@a
    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    #@11
    .line 140
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    #@13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    .line 139
    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    #@19
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    #@20
    .line 143
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    #@22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@25
    move-result-object v0

    #@26
    .line 142
    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    #@28
    .line 145
    const/4 v0, 0x1

    #@29
    iput v0, p0, Landroid/telecom/RemoteConference;->mState:I

    #@2b
    .line 153
    iput-object p1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    #@2d
    .line 154
    iput-object p2, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2f
    .line 152
    return-void
.end method

.method private notifyExtrasChanged()V
    .locals 6

    #@0
    .prologue
    .line 335
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@12
    .line 336
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    #@13
    .line 337
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    #@19
    .line 338
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConference$9;

    #@1f
    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConference$9;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 334
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method addConnection(Landroid/telecom/RemoteConnection;)V
    .locals 6
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 207
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    #@2
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 208
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    #@a
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 209
    invoke-virtual {p1, p0}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    #@10
    .line 210
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v3

    #@16
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@22
    .line 211
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    #@23
    .line 212
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    #@29
    .line 213
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@2c
    move-result-object v4

    #@2d
    new-instance v5, Landroid/telecom/RemoteConference$3;

    #@2f
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConference$3;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    #@32
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@35
    goto :goto_0

    #@36
    .line 206
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 3

    #@0
    .prologue
    .line 399
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 397
    :goto_0
    return-void

    #@8
    .line 400
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 372
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public final getConnectionProperties()I
    .locals 1

    #@0
    .prologue
    .line 382
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    #@2
    return v0
.end method

.method public final getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getState()I
    .locals 1

    #@0
    .prologue
    .line 362
    iget v0, p0, Landroid/telecom/RemoteConference;->mState:I

    #@2
    return v0
.end method

.method public hold()V
    .locals 3

    #@0
    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 456
    :goto_0
    return-void

    #@8
    .line 459
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public merge()V
    .locals 3

    #@0
    .prologue
    .line 432
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->mergeConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 430
    :goto_0
    return-void

    #@8
    .line 433
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public playDtmfTone(C)V
    .locals 3
    .param p1, "digit"    # C

    #@0
    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 489
    :goto_0
    return-void

    #@8
    .line 492
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method putExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 315
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    #@b
    .line 317
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@10
    .line 319
    invoke-direct {p0}, Landroid/telecom/RemoteConference;->notifyExtrasChanged()V

    #@13
    .line 313
    return-void
.end method

.method public final registerCallback(Landroid/telecom/RemoteConference$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;

    #@0
    .prologue
    .line 549
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    invoke-virtual {p0, p1, v0}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;Landroid/os/Handler;)V

    #@8
    .line 548
    return-void
.end method

.method public final registerCallback(Landroid/telecom/RemoteConference$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 560
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConference;->unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V

    #@3
    .line 561
    if-eqz p1, :cond_0

    #@5
    if-eqz p2, :cond_0

    #@7
    .line 562
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@9
    new-instance v1, Landroid/telecom/CallbackRecord;

    #@b
    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    #@e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@11
    .line 559
    :cond_0
    return-void
.end method

.method removeConnection(Landroid/telecom/RemoteConnection;)V
    .locals 6
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 225
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    #@2
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 226
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    #@a
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@d
    .line 227
    const/4 v4, 0x0

    #@e
    invoke-virtual {p1, v4}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    #@11
    .line 228
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@23
    .line 229
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    #@24
    .line 230
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    #@2a
    .line 231
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@2d
    move-result-object v4

    #@2e
    new-instance v5, Landroid/telecom/RemoteConference$4;

    #@30
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConference$4;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    #@33
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@36
    goto :goto_0

    #@37
    .line 224
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method removeExtras(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 324
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v2, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    .line 325
    :cond_0
    return-void

    #@7
    .line 324
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 327
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/String;

    #@1d
    .line 328
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    #@1f
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@22
    goto :goto_0

    #@23
    .line 331
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Landroid/telecom/RemoteConference;->notifyExtrasChanged()V

    #@26
    .line 323
    return-void
.end method

.method public separate(Landroid/telecom/RemoteConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 412
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    #@2
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 414
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@a
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->splitFromConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 411
    :cond_0
    :goto_0
    return-void

    #@12
    .line 415
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 519
    new-instance v0, Landroid/telecom/CallAudioState;

    #@2
    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    #@8
    .line 518
    return-void
.end method

.method public setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 526
    :goto_0
    return-void

    #@8
    .line 529
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method setConferenceableConnections(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 279
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@5
    .line 280
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    #@7
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 281
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v3

    #@10
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@1c
    .line 282
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    #@1d
    .line 283
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    #@23
    .line 284
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@26
    move-result-object v4

    #@27
    new-instance v5, Landroid/telecom/RemoteConference$7;

    #@29
    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConference$7;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    #@2c
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2f
    goto :goto_0

    #@30
    .line 278
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_0
    return-void
.end method

.method setConnectionCapabilities(I)V
    .locals 6
    .param p1, "connectionCapabilities"    # I

    #@0
    .prologue
    .line 243
    iget v4, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    #@2
    if-eq v4, p1, :cond_0

    #@4
    .line 244
    iput p1, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    #@6
    .line 245
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v3

    #@c
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@18
    .line 246
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    #@19
    .line 247
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    #@1f
    .line 248
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@22
    move-result-object v4

    #@23
    new-instance v5, Landroid/telecom/RemoteConference$5;

    #@25
    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConference$5;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    #@28
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 242
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setConnectionProperties(I)V
    .locals 6
    .param p1, "connectionProperties"    # I

    #@0
    .prologue
    .line 261
    iget v4, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    #@2
    if-eq v4, p1, :cond_0

    #@4
    .line 262
    iput p1, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    #@6
    .line 263
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v3

    #@c
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@18
    .line 264
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    #@19
    .line 265
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    #@1f
    .line 266
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@22
    move-result-object v4

    #@23
    new-instance v5, Landroid/telecom/RemoteConference$6;

    #@25
    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConference$6;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    #@28
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 260
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setDestroyed()V
    .locals 8

    #@0
    .prologue
    .line 164
    iget-object v6, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    #@2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_0

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/telecom/RemoteConnection;

    #@12
    .line 165
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    const/4 v6, 0x0

    #@13
    invoke-virtual {v2, v6}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    #@16
    goto :goto_0

    #@17
    .line 167
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    :cond_0
    iget-object v6, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@19
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v5

    #@1d
    .local v5, "record$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_1

    #@23
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Landroid/telecom/CallbackRecord;

    #@29
    .line 168
    .local v4, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    #@2a
    .line 169
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v4}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    #@30
    .line 170
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v4}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@33
    move-result-object v6

    #@34
    new-instance v7, Landroid/telecom/RemoteConference$1;

    #@36
    invoke-direct {v7, p0, v0, p0}, Landroid/telecom/RemoteConference$1;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    #@39
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3c
    goto :goto_1

    #@3d
    .line 163
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v4    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_1
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 6
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    .line 296
    iget v4, p0, Landroid/telecom/RemoteConference;->mState:I

    #@3
    if-eq v4, v5, :cond_0

    #@5
    .line 297
    iput-object p1, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@7
    .line 298
    invoke-virtual {p0, v5}, Landroid/telecom/RemoteConference;->setState(I)V

    #@a
    .line 299
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v3

    #@10
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@1c
    .line 300
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    #@1d
    .line 301
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    #@23
    .line 302
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@26
    move-result-object v4

    #@27
    new-instance v5, Landroid/telecom/RemoteConference$8;

    #@29
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConference$8;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V

    #@2c
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2f
    goto :goto_0

    #@30
    .line 295
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setState(I)V
    .locals 10
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 181
    const/4 v0, 0x4

    #@1
    if-eq p1, v0, :cond_0

    #@3
    .line 182
    const/4 v0, 0x5

    #@4
    if-eq p1, v0, :cond_0

    #@6
    .line 183
    const/4 v0, 0x6

    #@7
    if-eq p1, v0, :cond_0

    #@9
    .line 184
    const-string/jumbo v0, "Unsupported state transition for Conference call."

    #@c
    const/4 v1, 0x1

    #@d
    new-array v1, v1, [Ljava/lang/Object;

    #@f
    .line 185
    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    const/4 v5, 0x0

    #@14
    aput-object v3, v1, v5

    #@16
    .line 184
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@19
    .line 186
    return-void

    #@1a
    .line 189
    :cond_0
    iget v0, p0, Landroid/telecom/RemoteConference;->mState:I

    #@1c
    if-eq v0, p1, :cond_1

    #@1e
    .line 190
    iget v4, p0, Landroid/telecom/RemoteConference;->mState:I

    #@20
    .line 191
    .local v4, "oldState":I
    iput p1, p0, Landroid/telecom/RemoteConference;->mState:I

    #@22
    .line 192
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v8

    #@28
    .local v8, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v7

    #@32
    check-cast v7, Landroid/telecom/CallbackRecord;

    #@34
    .line 193
    .local v7, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v6, p0

    #@35
    .line 194
    .local v6, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Landroid/telecom/RemoteConference$Callback;

    #@3b
    .line 195
    .local v2, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@3e
    move-result-object v9

    #@3f
    new-instance v0, Landroid/telecom/RemoteConference$2;

    #@41
    move-object v1, p0

    #@42
    move-object v3, p0

    #@43
    move v5, p1

    #@44
    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConference$2;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;II)V

    #@47
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@4a
    goto :goto_0

    #@4b
    .line 180
    .end local v2    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v4    # "oldState":I
    .end local v6    # "conference":Landroid/telecom/RemoteConference;
    .end local v7    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v8    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public stopDtmfTone()V
    .locals 3

    #@0
    .prologue
    .line 503
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 501
    :goto_0
    return-void

    #@8
    .line 504
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public swap()V
    .locals 3

    #@0
    .prologue
    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->swapConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 446
    :goto_0
    return-void

    #@8
    .line 449
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unhold()V
    .locals 3

    #@0
    .prologue
    .line 468
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 466
    :goto_0
    return-void

    #@8
    .line 469
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;

    #@0
    .prologue
    .line 574
    if-eqz p1, :cond_1

    #@2
    .line 575
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/telecom/CallbackRecord;

    #@14
    .line 576
    .local v0, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    invoke-virtual {v0}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    if-ne v2, p1, :cond_0

    #@1a
    .line 577
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    #@1c
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@1f
    .line 573
    .end local v0    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

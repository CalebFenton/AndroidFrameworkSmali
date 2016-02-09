.class public abstract Landroid/telecom/Conference;
.super Landroid/telecom/Conferenceable;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Conference$Listener;,
        Landroid/telecom/Conference$1;
    }
.end annotation


# static fields
.field public static final CONNECT_TIME_NOT_SPECIFIED:J


# instance fields
.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private final mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mDisconnectMessage:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Conference$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/telecom/Conference;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telecom/Conference;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    #@3
    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@a
    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    #@11
    .line 63
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    #@13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    .line 62
    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    #@19
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    #@20
    .line 66
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    #@22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@25
    move-result-object v0

    #@26
    .line 65
    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    #@28
    .line 70
    const/4 v0, 0x1

    #@29
    iput v0, p0, Landroid/telecom/Conference;->mState:I

    #@2b
    .line 74
    const-wide/16 v0, 0x0

    #@2d
    iput-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    #@2f
    .line 78
    new-instance v0, Landroid/telecom/Conference$1;

    #@31
    invoke-direct {v0, p0}, Landroid/telecom/Conference$1;-><init>(Landroid/telecom/Conference;)V

    #@34
    iput-object v0, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@36
    .line 93
    iput-object p1, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@38
    .line 92
    return-void
.end method

.method public static can(II)Z
    .locals 2
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 142
    and-int v1, p0, p1

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private final clearConferenceableList()V
    .locals 3

    #@0
    .prologue
    .line 579
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/telecom/Connection;

    #@12
    .line 580
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@14
    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@17
    goto :goto_0

    #@18
    .line 582
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_0
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    #@1a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@1d
    .line 578
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    #@0
    .prologue
    .line 433
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/telecom/Conference$Listener;

    #@12
    .line 434
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConferenceableConnections()Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V

    #@19
    goto :goto_0

    #@1a
    .line 432
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 7
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 561
    const/4 v3, 0x4

    #@1
    if-eq p1, v3, :cond_0

    #@3
    .line 562
    const/4 v3, 0x5

    #@4
    if-eq p1, v3, :cond_0

    #@6
    .line 563
    const/4 v3, 0x6

    #@7
    if-eq p1, v3, :cond_0

    #@9
    .line 564
    const-string/jumbo v3, "Unsupported state transition for Conference call."

    #@c
    const/4 v4, 0x1

    #@d
    new-array v4, v4, [Ljava/lang/Object;

    #@f
    .line 565
    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    const/4 v6, 0x0

    #@14
    aput-object v5, v4, v6

    #@16
    .line 564
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@19
    .line 566
    return-void

    #@1a
    .line 569
    :cond_0
    iget v3, p0, Landroid/telecom/Conference;->mState:I

    #@1c
    if-eq v3, p1, :cond_1

    #@1e
    .line 570
    iget v2, p0, Landroid/telecom/Conference;->mState:I

    #@20
    .line 571
    .local v2, "oldState":I
    iput p1, p0, Landroid/telecom/Conference;->mState:I

    #@22
    .line 572
    iget-object v3, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@24
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/telecom/Conference$Listener;

    #@34
    .line 573
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, v2, p1}, Landroid/telecom/Conference$Listener;->onStateChanged(Landroid/telecom/Conference;II)V

    #@37
    goto :goto_0

    #@38
    .line 560
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "oldState":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addCapability(I)V
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 173
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    #@5
    .line 172
    return-void
.end method

.method public final addConnection(Landroid/telecom/Connection;)Z
    .locals 6
    .param p1, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 355
    const-string/jumbo v2, "Connection=%s, connection="

    #@5
    new-array v3, v5, [Ljava/lang/Object;

    #@7
    aput-object p1, v3, v4

    #@9
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 356
    if-eqz p1, :cond_0

    #@e
    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    #@10
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 366
    :cond_0
    return v4

    #@17
    .line 357
    :cond_1
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setConference(Landroid/telecom/Conference;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 358
    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    #@1f
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 359
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onConnectionAdded(Landroid/telecom/Connection;)V

    #@25
    .line 360
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v1

    #@2b
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_2

    #@31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/telecom/Conference$Listener;

    #@37
    .line 361
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    #@3a
    goto :goto_0

    #@3b
    .line 363
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_2
    return v5
.end method

.method public final addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 477
    return-object p0
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    #@2
    invoke-static {v0, p1}, Landroid/telecom/Conference;->can(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final destroy()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 449
    const-string/jumbo v4, "destroying conference : %s"

    #@5
    new-array v5, v7, [Ljava/lang/Object;

    #@7
    aput-object p0, v5, v6

    #@9
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 451
    iget-object v4, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    #@e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/telecom/Connection;

    #@1e
    .line 452
    .local v0, "connection":Landroid/telecom/Connection;
    const-string/jumbo v4, "removing connection %s"

    #@21
    new-array v5, v7, [Ljava/lang/Object;

    #@23
    aput-object v0, v5, v6

    #@25
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@28
    .line 453
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    #@2b
    goto :goto_0

    #@2c
    .line 457
    .end local v0    # "connection":Landroid/telecom/Connection;
    :cond_0
    iget v4, p0, Landroid/telecom/Conference;->mState:I

    #@2e
    const/4 v5, 0x6

    #@2f
    if-eq v4, v5, :cond_1

    #@31
    .line 458
    const-string/jumbo v4, "setting to disconnected"

    #@34
    new-array v5, v6, [Ljava/lang/Object;

    #@36
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@39
    .line 459
    new-instance v4, Landroid/telecom/DisconnectCause;

    #@3b
    const/4 v5, 0x2

    #@3c
    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    #@3f
    invoke-virtual {p0, v4}, Landroid/telecom/Conference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    #@42
    .line 463
    :cond_1
    iget-object v4, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@44
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v3

    #@48
    .local v3, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_2

    #@4e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Landroid/telecom/Conference$Listener;

    #@54
    .line 464
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0}, Landroid/telecom/Conference$Listener;->onDestroyed(Landroid/telecom/Conference;)V

    #@57
    goto :goto_1

    #@58
    .line 448
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    :cond_2
    return-void
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 186
    new-instance v0, Landroid/telecom/AudioState;

    #@2
    iget-object v1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@4
    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    #@7
    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@2
    return-object v0
.end method

.method public final getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConnectionTime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 130
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public final getConnectionTime()J
    .locals 2

    #@0
    .prologue
    .line 544
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    #@2
    return-wide v0
.end method

.method public final getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public final getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@2
    return-object v0
.end method

.method public getPrimaryConnection()Landroid/telecom/Connection;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 501
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 502
    :cond_0
    return-object v1

    #@e
    .line 504
    :cond_1
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/telecom/Connection;

    #@17
    return-object v0
.end method

.method public final getState()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    #@2
    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    #@0
    .prologue
    .line 202
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 274
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 281
    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 288
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    #@0
    .prologue
    .line 215
    return-void
.end method

.method public onHold()V
    .locals 0

    #@0
    .prologue
    .line 234
    return-void
.end method

.method public onMerge()V
    .locals 0

    #@0
    .prologue
    .line 245
    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 229
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 258
    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 222
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    #@0
    .prologue
    .line 263
    return-void
.end method

.method public onSwap()V
    .locals 0

    #@0
    .prologue
    .line 251
    return-void
.end method

.method public onUnhold()V
    .locals 0

    #@0
    .prologue
    .line 239
    return-void
.end method

.method public removeCapability(I)V
    .locals 2
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    #@6
    .line 162
    return-void
.end method

.method public final removeConnection(Landroid/telecom/Connection;)V
    .locals 6
    .param p1, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 375
    const-string/jumbo v2, "removing %s from %s"

    #@3
    const/4 v3, 0x2

    #@4
    new-array v3, v3, [Ljava/lang/Object;

    #@6
    const/4 v4, 0x0

    #@7
    aput-object p1, v3, v4

    #@9
    iget-object v4, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    #@b
    const/4 v5, 0x1

    #@c
    aput-object v4, v3, v5

    #@e
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@11
    .line 376
    if-eqz p1, :cond_0

    #@13
    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    #@15
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 377
    invoke-virtual {p1}, Landroid/telecom/Connection;->resetConference()V

    #@1e
    .line 378
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@20
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_0

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/telecom/Conference$Listener;

    #@30
    .line 379
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    #@33
    goto :goto_0

    #@34
    .line 374
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    .line 489
    return-object p0
.end method

.method public final setActive()V
    .locals 1

    #@0
    .prologue
    .line 308
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    #@4
    .line 307
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 554
    const-string/jumbo v0, "setCallAudioState %s"

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c
    .line 555
    iput-object p1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    #@e
    .line 556
    invoke-virtual {p0}, Landroid/telecom/Conference;->getAudioState()Landroid/telecom/AudioState;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    #@15
    .line 557
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    #@18
    .line 553
    return-void
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 390
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-direct {p0}, Landroid/telecom/Conference;->clearConferenceableList()V

    #@3
    .line 391
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/telecom/Connection;

    #@13
    .line 394
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    #@15
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 395
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    #@1d
    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    #@20
    .line 396
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    #@22
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 399
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    #@29
    .line 389
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1
    .param p1, "connectTimeMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 514
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionTime(J)V

    #@3
    .line 513
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    #@0
    .prologue
    .line 339
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    #@2
    if-eq p1, v2, :cond_0

    #@4
    .line 340
    iput p1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    #@6
    .line 342
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/telecom/Conference$Listener;

    #@18
    .line 343
    .local v0, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    #@1a
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    #@1d
    goto :goto_0

    #@1e
    .line 338
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setConnectionTime(J)V
    .locals 1
    .param p1, "connectionTimeMillis"    # J

    #@0
    .prologue
    .line 523
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    #@2
    .line 522
    return-void
.end method

.method public final setDialing()V
    .locals 1

    #@0
    .prologue
    .line 301
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    #@4
    .line 300
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 318
    iput-object p1, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    .line 319
    const/4 v2, 0x6

    #@3
    invoke-direct {p0, v2}, Landroid/telecom/Conference;->setState(I)V

    #@6
    .line 320
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/telecom/Conference$Listener;

    #@18
    .line 321
    .local v0, "l":Landroid/telecom/Conference$Listener;
    iget-object v2, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@1a
    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V

    #@1d
    goto :goto_0

    #@1e
    .line 317
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 623
    iput-object p1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    #@2
    .line 624
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/telecom/Conference$Listener;

    #@14
    .line 625
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V

    #@17
    goto :goto_0

    #@18
    .line 622
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    #@0
    .prologue
    .line 294
    const/4 v0, 0x5

    #@1
    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    #@4
    .line 293
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    #@0
    .prologue
    .line 602
    iput-object p1, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    .line 603
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/telecom/Conference$Listener;

    #@14
    .line 604
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V

    #@17
    goto :goto_0

    #@18
    .line 601
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 425
    const-string/jumbo v2, "setVideoProvider Conference: %s Connection: %s VideoState: %s"

    #@3
    const/4 v3, 0x3

    #@4
    new-array v3, v3, [Ljava/lang/Object;

    #@6
    .line 426
    const/4 v4, 0x0

    #@7
    aput-object p0, v3, v4

    #@9
    const/4 v4, 0x1

    #@a
    aput-object p1, v3, v4

    #@c
    const/4 v4, 0x2

    #@d
    aput-object p2, v3, v4

    #@f
    .line 425
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@12
    .line 427
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/telecom/Conference$Listener;

    #@24
    .line 428
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V

    #@27
    goto :goto_0

    #@28
    .line 424
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(Landroid/telecom/Connection;I)V
    .locals 6
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    #@0
    .prologue
    .line 412
    const-string/jumbo v2, "setVideoState Conference: %s Connection: %s VideoState: %s"

    #@3
    const/4 v3, 0x3

    #@4
    new-array v3, v3, [Ljava/lang/Object;

    #@6
    .line 413
    const/4 v4, 0x0

    #@7
    aput-object p0, v3, v4

    #@9
    const/4 v4, 0x1

    #@a
    aput-object p1, v3, v4

    #@c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v4

    #@10
    const/4 v5, 0x2

    #@11
    aput-object v4, v3, v5

    #@13
    .line 412
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@16
    .line 414
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    #@18
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/telecom/Conference$Listener;

    #@28
    .line 415
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoStateChanged(Landroid/telecom/Conference;I)V

    #@2b
    goto :goto_0

    #@2c
    .line 411
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 587
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    .line 588
    const-string/jumbo v1, "[State: %s,Capabilites: %s, VideoState: %s, VideoProvider: %s, ThisObject %s]"

    #@5
    .line 587
    const/4 v2, 0x5

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    .line 589
    iget v3, p0, Landroid/telecom/Conference;->mState:I

    #@a
    invoke-static {v3}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    aput-object v3, v2, v4

    #@11
    .line 590
    iget v3, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    #@13
    invoke-static {v3}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    const/4 v4, 0x1

    #@18
    aput-object v3, v2, v4

    #@1a
    .line 591
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoState()I

    #@1d
    move-result v3

    #@1e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v3

    #@22
    const/4 v4, 0x2

    #@23
    aput-object v3, v2, v4

    #@25
    .line 592
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@28
    move-result-object v3

    #@29
    const/4 v4, 0x3

    #@2a
    aput-object v3, v2, v4

    #@2c
    .line 593
    invoke-super {p0}, Landroid/telecom/Conferenceable;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    const/4 v4, 0x4

    #@31
    aput-object v3, v2, v4

    #@33
    .line 587
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

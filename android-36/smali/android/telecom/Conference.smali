.class public abstract Landroid/telecom/Conference;
.super Landroid/telecom/Conferenceable;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Conference$Listener;,
        Landroid/telecom/Conference$FailureSignalingConference;
    }
.end annotation


# static fields
.field public static final whitelist CONNECT_TIME_NOT_SPECIFIED:J


# instance fields
.field private blacklist mAddress:Landroid/net/Uri;

.field private blacklist mAddressPresentation:I

.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private blacklist mCallDirection:I

.field private blacklist mCallEndpoint:Landroid/telecom/CallEndpoint;

.field private blacklist mCallerDisplayName:Ljava/lang/String;

.field private blacklist mCallerDisplayNamePresentation:I

.field private final greylist-max-o mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectTimeMillis:J

.field private greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionStartElapsedRealTime:J

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mDisconnectMessage:Ljava/lang/String;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mExtrasLock:Ljava/lang/Object;

.field private blacklist mIsMultiparty:Z

.field private final greylist-max-o mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Conference$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConferenceableConnections(Landroid/telecom/Conference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Conference;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;)V
    .registers 5
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .line 125
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    .line 82
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    .line 85
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/Conference;->mState:I

    .line 97
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 98
    iput-wide v1, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    .line 104
    const/4 v1, 0x3

    iput v1, p0, Landroid/telecom/Conference;->mAddressPresentation:I

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    .line 109
    iput-boolean v0, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    .line 111
    new-instance v0, Landroid/telecom/Conference$1;

    invoke-direct {v0, p0}, Landroid/telecom/Conference$1;-><init>(Landroid/telecom/Conference;)V

    iput-object v0, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 126
    iput-object p1, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 127
    return-void
.end method

.method private final greylist-max-o clearConferenceableList()V
    .registers 4

    .line 849
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 850
    .local v1, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 851
    .end local v1    # "c":Landroid/telecom/Connection;
    goto :goto_6

    .line 852
    :cond_18
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 853
    return-void
.end method

.method public static whitelist createFailedConference(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Conference;
    .registers 3
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .line 845
    new-instance v0, Landroid/telecom/Conference$FailureSignalingConference;

    invoke-direct {v0, p0, p1}, Landroid/telecom/Conference$FailureSignalingConference;-><init>(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method private final greylist-max-o fireOnConferenceableConnectionsChanged()V
    .registers 4

    .line 584
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 585
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConferenceableConnections()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V

    .line 586
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_6

    .line 587
    :cond_1a
    return-void
.end method

.method private greylist-max-o setState(I)V
    .registers 5
    .param p1, "newState"    # I

    .line 808
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    if-eq v0, p1, :cond_1e

    .line 809
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    .line 810
    .local v0, "oldState":I
    iput p1, p0, Landroid/telecom/Conference;->mState:I

    .line 811
    iget-object v1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 812
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0, v0, p1}, Landroid/telecom/Conference$Listener;->onStateChanged(Landroid/telecom/Conference;II)V

    .line 813
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_e

    .line 815
    .end local v0    # "oldState":I
    :cond_1e
    return-void
.end method


# virtual methods
.method public final whitelist addConnection(Landroid/telecom/Connection;)Z
    .registers 4
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 491
    const-string v0, "Connection=%s, connection="

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    if-eqz p1, :cond_39

    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 493
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 494
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onConnectionAdded(Landroid/telecom/Connection;)V

    .line 496
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 497
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    .line 498
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_27

    .line 499
    :cond_37
    const/4 v0, 0x1

    return v0

    .line 502
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .registers 3
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .line 627
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 628
    return-object p0
.end method

.method public final whitelist destroy()V
    .registers 5

    .line 600
    const-string v0, "destroying conference : %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 603
    .local v1, "connection":Landroid/telecom/Connection;
    const-string/jumbo v2, "removing connection %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-virtual {p0, v1}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    .line 605
    .end local v1    # "connection":Landroid/telecom/Connection;
    goto :goto_f

    .line 608
    :cond_29
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_40

    .line 609
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setting to disconnected"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 614
    :cond_40
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 615
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Conference$Listener;->onDestroyed(Landroid/telecom/Conference;)V

    .line 616
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_46

    .line 617
    :cond_56
    return-void
.end method

.method public final blacklist getAddress()Landroid/net/Uri;
    .registers 2

    .line 1165
    iget-object v0, p0, Landroid/telecom/Conference;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final blacklist getAddressPresentation()I
    .registers 2

    .line 1184
    iget v0, p0, Landroid/telecom/Conference;->mAddressPresentation:I

    return v0
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    iget-object v0, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final blacklist getCallDirection()I
    .registers 2

    .line 1210
    iget v0, p0, Landroid/telecom/Conference;->mCallDirection:I

    return v0
.end method

.method public final blacklist getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .line 1192
    iget-object v0, p0, Landroid/telecom/Conference;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getCallerDisplayNamePresentation()I
    .registers 2

    .line 1201
    iget v0, p0, Landroid/telecom/Conference;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final whitelist getConferenceableConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 728
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConnectionTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getConnectionCapabilities()I
    .registers 2

    .line 197
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    return v0
.end method

.method public final whitelist getConnectionProperties()I
    .registers 2

    .line 207
    iget v0, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    return v0
.end method

.method public final whitelist getConnectionStartElapsedRealtimeMillis()J
    .registers 3

    .line 757
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    return-wide v0
.end method

.method public final whitelist getConnectionTime()J
    .registers 3

    .line 739
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getCurrentCallEndpoint()Landroid/telecom/CallEndpoint;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/telecom/Conference;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    return-object v0
.end method

.method public final whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 449
    iget-object v0, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1051
    iget-object v0, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public whitelist getPrimaryConnection()Landroid/telecom/Connection;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 652
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 655
    :cond_d
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0

    .line 653
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getState()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    return v0
.end method

.method public final whitelist getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 884
    iget-object v0, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final whitelist getTelecomCallId()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 141
    iget-object v0, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .registers 2

    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVideoState()I
    .registers 2

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o handleExtrasChanged(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1244
    const/4 v0, 0x0

    .line 1245
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1246
    :try_start_4
    iput-object p1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 1247
    iget-object v2, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_12

    .line 1248
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    .line 1250
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 1251
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 1252
    return-void

    .line 1250
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v2
.end method

.method public blacklist isMultiparty()Z
    .registers 2

    .line 1124
    iget-boolean v0, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    return v0
.end method

.method public final whitelist isRingbackRequested()Z
    .registers 2

    .line 187
    iget-boolean v0, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    return v0
.end method

.method public whitelist onAddConferenceParticipants(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 371
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method

.method public final blacklist onAnswer()V
    .registers 2

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAnswer(I)V

    .line 392
    return-void
.end method

.method public whitelist onAnswer(I)V
    .registers 2
    .param p1, "videoState"    # I

    .line 381
    return-void
.end method

.method public whitelist onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    return-void
.end method

.method public whitelist onAvailableCallEndpointsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p1, "availableEndpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2
    .param p1, "state"    # Landroid/telecom/CallAudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    return-void
.end method

.method public whitelist onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V
    .registers 2
    .param p1, "callEndpoint"    # Landroid/telecom/CallEndpoint;

    .line 344
    return-void
.end method

.method public whitelist onConnectionAdded(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 365
    return-void
.end method

.method public whitelist onDisconnect()V
    .registers 1

    .line 264
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1064
    return-void
.end method

.method public whitelist onHold()V
    .registers 1

    .line 285
    return-void
.end method

.method public whitelist onMerge()V
    .registers 1

    .line 296
    return-void
.end method

.method public whitelist onMerge(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 280
    return-void
.end method

.method public whitelist onMuteStateChanged(Z)V
    .registers 2
    .param p1, "isMuted"    # Z

    .line 358
    return-void
.end method

.method public whitelist onPlayDtmfTone(C)V
    .registers 2
    .param p1, "c"    # C

    .line 309
    return-void
.end method

.method public whitelist onReject()V
    .registers 1

    .line 400
    return-void
.end method

.method public whitelist onSeparate(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 272
    return-void
.end method

.method public whitelist onStopDtmfTone()V
    .registers 1

    .line 314
    return-void
.end method

.method public whitelist onSwap()V
    .registers 1

    .line 302
    return-void
.end method

.method public whitelist onUnhold()V
    .registers 1

    .line 290
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 985
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 986
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 987
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 988
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 999
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 1001
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 972
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 973
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 974
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 975
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 944
    if-nez p1, :cond_3

    .line 945
    return-void

    .line 951
    :cond_3
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_6
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_11

    .line 953
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 955
    :cond_11
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 956
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 957
    .local v1, "listenersBundle":Landroid/os/Bundle;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_3a

    .line 959
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 960
    .local v2, "l":Landroid/telecom/Conference$Listener;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0, v3}, Landroid/telecom/Conference$Listener;->onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V

    .line 961
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_24

    .line 962
    :cond_39
    return-void

    .line 957
    .end local v1    # "listenersBundle":Landroid/os/Bundle;
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public final whitelist removeConnection(Landroid/telecom/Connection;)V
    .registers 4
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 511
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "removing %s from %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    if-eqz p1, :cond_2f

    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 513
    invoke-virtual {p1}, Landroid/telecom/Connection;->resetConference()V

    .line 514
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 515
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    .line 516
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_1f

    .line 518
    :cond_2f
    return-void
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1009
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_45

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_45

    .line 1013
    :cond_9
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1014
    :try_start_c
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_26

    .line 1015
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1016
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1017
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_14

    .line 1019
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_42

    .line 1021
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1022
    .local v0, "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 1023
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0, v0}, Landroid/telecom/Conference$Listener;->onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V

    .line 1024
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_31

    .line 1025
    :cond_41
    return-void

    .line 1019
    .end local v0    # "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1

    .line 1010
    :cond_45
    :goto_45
    return-void
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .registers 3
    .param p1, "keys"    # [Ljava/lang/String;

    .line 1033
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    .line 1034
    return-void
.end method

.method final greylist-max-o removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .registers 3
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .line 639
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 640
    return-object p0
.end method

.method public whitelist sendConferenceEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1304
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1305
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onConnectionEvent(Landroid/telecom/Conference;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1306
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_6

    .line 1307
    :cond_16
    return-void
.end method

.method public final whitelist setActive()V
    .registers 2

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setRingbackRequested(Z)V

    .line 428
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 429
    return-void
.end method

.method public final whitelist setAddress(Landroid/net/Uri;I)V
    .registers 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1143
    const-string/jumbo v0, "setAddress %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    iput-object p1, p0, Landroid/telecom/Conference;->mAddress:Landroid/net/Uri;

    .line 1145
    iput p2, p0, Landroid/telecom/Conference;->mAddressPresentation:I

    .line 1146
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1147
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onAddressChanged(Landroid/telecom/Conference;Landroid/net/Uri;I)V

    .line 1148
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_14

    .line 1149
    :cond_24
    return-void
.end method

.method final blacklist setAvailableCallEndpoints(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 792
    .local p1, "availableEndpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setAvailableCallEndpoints"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 794
    return-void
.end method

.method final greylist-max-o setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 4
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 767
    const-string/jumbo v0, "setCallAudioState %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    iput-object p1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 769
    invoke-virtual {p0}, Landroid/telecom/Conference;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 770
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 771
    return-void
.end method

.method public final blacklist setCallDirection(I)V
    .registers 4
    .param p1, "callDirection"    # I

    .line 1105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setDirection %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1106
    iput p1, p0, Landroid/telecom/Conference;->mCallDirection:I

    .line 1107
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1108
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onCallDirectionChanged(Landroid/telecom/Conference;I)V

    .line 1109
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_16

    .line 1110
    :cond_26
    return-void
.end method

.method final blacklist setCallEndpoint(Landroid/telecom/CallEndpoint;)V
    .registers 4
    .param p1, "endpoint"    # Landroid/telecom/CallEndpoint;

    .line 780
    const-string/jumbo v0, "setCallEndpoint %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    iput-object p1, p0, Landroid/telecom/Conference;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    .line 782
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    .line 783
    return-void
.end method

.method public final whitelist setCallerDisplayName(Ljava/lang/String;I)V
    .registers 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1229
    const-string/jumbo v0, "setCallerDisplayName %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    iput-object p1, p0, Landroid/telecom/Conference;->mCallerDisplayName:Ljava/lang/String;

    .line 1231
    iput p2, p0, Landroid/telecom/Conference;->mCallerDisplayNamePresentation:I

    .line 1232
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1233
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Conference;Ljava/lang/String;I)V

    .line 1234
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_14

    .line 1235
    :cond_24
    return-void
.end method

.method public whitelist setConferenceState(Z)V
    .registers 4
    .param p1, "isConference"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1088
    iput-boolean p1, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    .line 1089
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1090
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConferenceStateChanged(Landroid/telecom/Conference;Z)V

    .line 1091
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_8

    .line 1092
    :cond_18
    return-void
.end method

.method public final whitelist setConferenceableConnections(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-direct {p0}, Landroid/telecom/Conference;->clearConferenceableList()V

    .line 527
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 530
    .local v1, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 531
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 532
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    .end local v1    # "c":Landroid/telecom/Connection;
    :cond_25
    goto :goto_7

    .line 535
    :cond_26
    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    .line 536
    return-void
.end method

.method public final whitelist setConnectTimeMillis(J)V
    .registers 3
    .param p1, "connectTimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 665
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionTime(J)V

    .line 666
    return-void
.end method

.method public final whitelist setConnectionCapabilities(I)V
    .registers 5
    .param p1, "connectionCapabilities"    # I

    .line 459
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    if-eq p1, v0, :cond_1e

    .line 460
    iput p1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 462
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 463
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    .line 464
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_c

    .line 466
    :cond_1e
    return-void
.end method

.method public final whitelist setConnectionProperties(I)V
    .registers 5
    .param p1, "connectionProperties"    # I

    .line 475
    iget v0, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    if-eq p1, v0, :cond_1e

    .line 476
    iput p1, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    .line 478
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 479
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V

    .line 480
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_c

    .line 482
    :cond_1e
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealTime(J)V
    .registers 3
    .param p1, "connectionStartElapsedRealTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 700
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionStartElapsedRealtimeMillis(J)V

    .line 701
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealtimeMillis(J)V
    .registers 3
    .param p1, "connectionStartElapsedRealTime"    # J

    .line 718
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    .line 719
    return-void
.end method

.method public final whitelist setConnectionTime(J)V
    .registers 3
    .param p1, "connectionTimeMillis"    # J

    .line 681
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 682
    return-void
.end method

.method public final whitelist setDialing()V
    .registers 2

    .line 413
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 414
    return-void
.end method

.method public final whitelist setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 438
    iput-object p1, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 439
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 440
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 441
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget-object v2, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V

    .line 442
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_c

    .line 443
    :cond_1e
    return-void
.end method

.method public final whitelist setExtras(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 904
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 906
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 909
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v1, :cond_36

    .line 910
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 912
    .local v3, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_29

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 913
    :cond_29
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    .end local v3    # "oldKey":Ljava/lang/String;
    :cond_2c
    goto :goto_15

    .line 917
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 918
    invoke-virtual {p0, v1}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    .line 924
    .end local v1    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_36
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v1, :cond_41

    .line 925
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    .line 927
    :cond_41
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 928
    if-eqz p1, :cond_51

    .line 929
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 931
    :cond_51
    monitor-exit v0

    .line 932
    return-void

    .line 931
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method final blacklist setMuteState(Z)V
    .registers 4
    .param p1, "isMuted"    # Z

    .line 803
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setMuteState %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onMuteStateChanged(Z)V

    .line 805
    return-void
.end method

.method public final whitelist setOnHold()V
    .registers 2

    .line 406
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 407
    return-void
.end method

.method public final whitelist setRingbackRequested(Z)V
    .registers 4
    .param p1, "ringback"    # Z

    .line 545
    iget-boolean v0, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    if-eq v0, p1, :cond_1c

    .line 546
    iput-boolean p1, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    .line 547
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 548
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onRingbackRequested(Landroid/telecom/Conference;Z)V

    .line 549
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_c

    .line 551
    :cond_1c
    return-void
.end method

.method public final whitelist setRinging()V
    .registers 2

    .line 420
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 421
    return-void
.end method

.method public final whitelist setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 4
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .line 874
    iput-object p1, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    .line 875
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 876
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V

    .line 877
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_8

    .line 878
    :cond_18
    return-void
.end method

.method public final greylist-max-o setTelecomCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public final whitelist setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .registers 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 576
    const-string/jumbo v0, "setVideoProvider Conference: %s Connection: %s VideoState: %s"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 579
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V

    .line 580
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_10

    .line 581
    :cond_20
    return-void
.end method

.method public final whitelist setVideoState(Landroid/telecom/Connection;I)V
    .registers 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .line 563
    nop

    .line 564
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 563
    const-string/jumbo v1, "setVideoState Conference: %s Connection: %s VideoState: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 566
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoStateChanged(Landroid/telecom/Conference;I)V

    .line 567
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    goto :goto_15

    .line 568
    :cond_25
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 857
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Landroid/telecom/Conference;->mState:I

    .line 860
    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 861
    invoke-static {v1}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v3

    .line 862
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 863
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v5

    .line 864
    invoke-virtual {p0}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "Y"

    goto :goto_25

    :cond_23
    const-string v1, "N"

    :goto_25
    move-object v6, v1

    .line 865
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 857
    const-string v2, "[State: %s,Capabilites: %s, VideoState: %s, VideoProvider: %s,isRingbackRequested: %s, ThisObject %s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

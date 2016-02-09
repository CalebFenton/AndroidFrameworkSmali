.class public final Landroid/telecom/RemoteConnection;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$Callback;,
        Landroid/telecom/RemoteConnection$VideoProvider;,
        Landroid/telecom/RemoteConnection$CallbackRecord;
    }
.end annotation


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private final mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/RemoteConference;

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

.field private mConnected:Z

.field private mConnectionCapabilities:I

.field private final mConnectionId:Ljava/lang/String;

.field private mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private mIsVoipAudioMode:Z

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableconferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static synthetic -get0(Landroid/telecom/RemoteConnection;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 570
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    const/16 v1, 0x8

    #@8
    const v2, 0x3f666666    # 0.9f

    #@b
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@e
    .line 569
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@14
    .line 571
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1b
    .line 573
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    .line 572
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    #@23
    .line 575
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@25
    .line 636
    const-string/jumbo v0, "NULL"

    #@28
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@2a
    .line 637
    const/4 v0, 0x0

    #@2b
    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2d
    .line 638
    const/4 v0, 0x6

    #@2e
    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@30
    .line 639
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@32
    .line 635
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 570
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    const/16 v1, 0x8

    #@8
    const v2, 0x3f666666    # 0.9f

    #@b
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@e
    .line 569
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@14
    .line 571
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1b
    .line 573
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    .line 572
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    #@23
    .line 575
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@25
    .line 598
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@27
    .line 599
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@29
    .line 600
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2b
    .line 601
    const/4 v0, 0x0

    #@2c
    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@2e
    .line 597
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 570
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    const/16 v1, 0x8

    #@8
    const v2, 0x3f666666    # 0.9f

    #@b
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@e
    .line 569
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@14
    .line 571
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1b
    .line 573
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    .line 572
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    #@23
    .line 575
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@25
    .line 609
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@27
    .line 610
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@29
    .line 611
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2b
    .line 612
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@31
    .line 613
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@37
    .line 614
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    #@3a
    move-result v0

    #@3b
    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    #@3d
    .line 615
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    #@40
    move-result v0

    #@41
    iput v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    #@43
    .line 616
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    #@46
    move-result v0

    #@47
    iput v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    #@49
    .line 617
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider;

    #@4b
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {v0, v1}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    #@52
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    #@54
    .line 618
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    #@57
    move-result v0

    #@58
    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    #@5a
    .line 619
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@60
    .line 620
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    #@66
    .line 621
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    #@69
    move-result v0

    #@6a
    iput v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    #@6c
    .line 622
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    #@72
    .line 623
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    #@75
    move-result v0

    #@76
    iput v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    #@78
    .line 624
    const/4 v0, 0x0

    #@79
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    #@7b
    .line 608
    return-void
.end method

.method public static failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 1304
    new-instance v0, Landroid/telecom/RemoteConnection;

    #@2
    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    #@0
    .prologue
    .line 810
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 811
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 808
    :cond_0
    :goto_0
    return-void

    #@c
    .line 813
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public answer()V
    .locals 3

    #@0
    .prologue
    .line 822
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 823
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 820
    :cond_0
    :goto_0
    return-void

    #@c
    .line 825
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public answer(I)V
    .locals 3
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 836
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 837
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 834
    :cond_0
    :goto_0
    return-void

    #@c
    .line 839
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    #@0
    .prologue
    .line 884
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 885
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 882
    :cond_0
    :goto_0
    return-void

    #@c
    .line 887
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 736
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getAddressPresentation()I
    .locals 1

    #@0
    .prologue
    .line 746
    iget v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    #@2
    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 755
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 766
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    #@2
    return v0
.end method

.method public getConference()Landroid/telecom/RemoteConference;
    .locals 1

    #@0
    .prologue
    .line 1000
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    #@2
    return-object v0
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
    .line 990
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 707
    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method getConnectionService()Lcom/android/internal/telecom/IConnectionService;
    .locals 1

    #@0
    .prologue
    .line 1010
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2
    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 697
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 792
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1005
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 686
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@2
    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 726
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/RemoteConnection$VideoProvider;
    .locals 1

    #@0
    .prologue
    .line 783
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 775
    iget v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    #@2
    return v0
.end method

.method public hold()V
    .locals 3

    #@0
    .prologue
    .line 860
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 861
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 858
    :cond_0
    :goto_0
    return-void

    #@c
    .line 863
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isRingbackRequested()Z
    .locals 1

    #@0
    .prologue
    .line 802
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    #@2
    return v0
.end method

.method public isVoipAudioMode()Z
    .locals 1

    #@0
    .prologue
    .line 716
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    #@2
    return v0
.end method

.method onPostDialChar(C)V
    .locals 6
    .param p1, "nextChar"    # C

    #@0
    .prologue
    .line 1136
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

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
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@12
    .line 1137
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@13
    .line 1138
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@16
    move-result-object v0

    #@17
    .line 1139
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v4

    #@1b
    new-instance v5, Landroid/telecom/RemoteConnection$7;

    #@1d
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$7;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;C)V

    #@20
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@23
    goto :goto_0

    #@24
    .line 1135
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method public playDtmfTone(C)V
    .locals 3
    .param p1, "digit"    # C

    #@0
    .prologue
    .line 902
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 903
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 900
    :cond_0
    :goto_0
    return-void

    #@c
    .line 905
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public postDialContinue(Z)V
    .locals 3
    .param p1, "proceed"    # Z

    #@0
    .prologue
    .line 948
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 949
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 946
    :cond_0
    :goto_0
    return-void

    #@c
    .line 951
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    #@0
    .prologue
    .line 648
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    invoke-virtual {p0, p1, v0}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    #@8
    .line 647
    return-void
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 658
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection;->unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V

    #@3
    .line 659
    if-eqz p1, :cond_0

    #@5
    if-eqz p2, :cond_0

    #@7
    .line 660
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@9
    new-instance v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@b
    invoke-direct {v1, p1, p2}, Landroid/telecom/RemoteConnection$CallbackRecord;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    #@e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@11
    .line 657
    :cond_0
    return-void
.end method

.method public reject()V
    .locals 3

    #@0
    .prologue
    .line 848
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 849
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 846
    :cond_0
    :goto_0
    return-void

    #@c
    .line 851
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method setAddress(Landroid/net/Uri;I)V
    .locals 9
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    #@0
    .prologue
    .line 1214
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    #@2
    .line 1215
    iput p2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    #@4
    .line 1216
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v7

    #@a
    .local v7, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@16
    .line 1217
    .local v6, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v3, p0

    #@17
    .line 1218
    .local v3, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v6}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1a
    move-result-object v2

    #@1b
    .line 1219
    .local v2, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v6}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1e
    move-result-object v8

    #@1f
    new-instance v0, Landroid/telecom/RemoteConnection$12;

    #@21
    move-object v1, p0

    #@22
    move-object v4, p1

    #@23
    move v5, p2

    #@24
    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$12;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    #@27
    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2a
    goto :goto_0

    #@2b
    .line 1213
    .end local v2    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v3    # "connection":Landroid/telecom/RemoteConnection;
    .end local v6    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 965
    new-instance v0, Landroid/telecom/CallAudioState;

    #@2
    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConnection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    #@8
    .line 964
    return-void
.end method

.method public setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 975
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 976
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 973
    :cond_0
    :goto_0
    return-void

    #@c
    .line 978
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method setCallerDisplayName(Ljava/lang/String;I)V
    .locals 9
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    #@0
    .prologue
    .line 1230
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    #@2
    .line 1231
    iput p2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    #@4
    .line 1232
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v7

    #@a
    .local v7, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@16
    .line 1233
    .local v6, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v3, p0

    #@17
    .line 1234
    .local v3, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v6}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1a
    move-result-object v2

    #@1b
    .line 1235
    .local v2, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v6}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1e
    move-result-object v8

    #@1f
    new-instance v0, Landroid/telecom/RemoteConnection$13;

    #@21
    move-object v1, p0

    #@22
    move-object v4, p1

    #@23
    move v5, p2

    #@24
    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$13;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    #@27
    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2a
    goto :goto_0

    #@2b
    .line 1229
    .end local v2    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v3    # "connection":Landroid/telecom/RemoteConnection;
    .end local v6    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setConference(Landroid/telecom/RemoteConference;)V
    .locals 6
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    #@0
    .prologue
    .line 1264
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    #@2
    if-eq v4, p1, :cond_0

    #@4
    .line 1265
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    #@6
    .line 1266
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

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
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@18
    .line 1267
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@19
    .line 1268
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1c
    move-result-object v0

    #@1d
    .line 1269
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@20
    move-result-object v4

    #@21
    new-instance v5, Landroid/telecom/RemoteConnection$15;

    #@23
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$15;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    #@26
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1263
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
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
    .line 1247
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@5
    .line 1248
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@7
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 1249
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

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
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@1c
    .line 1250
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@1d
    .line 1251
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@20
    move-result-object v0

    #@21
    .line 1252
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@24
    move-result-object v4

    #@25
    new-instance v5, Landroid/telecom/RemoteConnection$14;

    #@27
    invoke-direct {v5, p0, v0, v1}, Landroid/telecom/RemoteConnection$14;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    #@2a
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 1246
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setConnectionCapabilities(I)V
    .locals 6
    .param p1, "connectionCapabilities"    # I

    #@0
    .prologue
    .line 1076
    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    #@2
    .line 1077
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@14
    .line 1078
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1079
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1080
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$4;

    #@1f
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$4;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1075
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setDestroyed()V
    .locals 7

    #@0
    .prologue
    .line 1093
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_2

    #@8
    .line 1095
    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@a
    const/4 v5, 0x6

    #@b
    if-eq v4, v5, :cond_0

    #@d
    .line 1097
    new-instance v4, Landroid/telecom/DisconnectCause;

    #@f
    const-string/jumbo v5, "Connection destroyed."

    #@12
    const/4 v6, 0x1

    #@13
    invoke-direct {v4, v6, v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    #@16
    .line 1096
    invoke-virtual {p0, v4}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    #@19
    .line 1100
    :cond_0
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@2b
    .line 1101
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@2c
    .line 1102
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@2f
    move-result-object v0

    #@30
    .line 1103
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@33
    move-result-object v4

    #@34
    new-instance v5, Landroid/telecom/RemoteConnection$5;

    #@36
    invoke-direct {v5, p0, v0, v1}, Landroid/telecom/RemoteConnection$5;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    #@39
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3c
    goto :goto_0

    #@3d
    .line 1110
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_1
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@3f
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    #@42
    .line 1112
    const/4 v4, 0x0

    #@43
    iput-boolean v4, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@45
    .line 1092
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 6
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    .line 1036
    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@3
    if-eq v4, v5, :cond_0

    #@5
    .line 1037
    iput v5, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@7
    .line 1038
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@9
    .line 1040
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v3

    #@f
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@1b
    .line 1041
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@1c
    .line 1042
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1f
    move-result-object v0

    #@20
    .line 1043
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@23
    move-result-object v4

    #@24
    new-instance v5, Landroid/telecom/RemoteConnection$2;

    #@26
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$2;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    #@29
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 1035
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setExtras(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1281
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    #@2
    .line 1282
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@14
    .line 1283
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1284
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1285
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$16;

    #@1f
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$16;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/os/Bundle;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1280
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setIsVoipAudioMode(Z)V
    .locals 6
    .param p1, "isVoip"    # Z

    #@0
    .prologue
    .line 1184
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    #@2
    .line 1185
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@14
    .line 1186
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1187
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1188
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$10;

    #@1f
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$10;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1183
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setPostDialWait(Ljava/lang/String;)V
    .locals 6
    .param p1, "remainingDigits"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1120
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

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
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@12
    .line 1121
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@13
    .line 1122
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@16
    move-result-object v0

    #@17
    .line 1123
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v4

    #@1b
    new-instance v5, Landroid/telecom/RemoteConnection$6;

    #@1d
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$6;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    #@20
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@23
    goto :goto_0

    #@24
    .line 1119
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setRingbackRequested(Z)V
    .locals 6
    .param p1, "ringback"    # Z

    #@0
    .prologue
    .line 1057
    iget-boolean v4, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    #@2
    if-eq v4, p1, :cond_0

    #@4
    .line 1058
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    #@6
    .line 1059
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

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
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@18
    .line 1060
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@19
    .line 1061
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1c
    move-result-object v0

    #@1d
    .line 1062
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@20
    move-result-object v4

    #@21
    new-instance v5, Landroid/telecom/RemoteConnection$3;

    #@23
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$3;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    #@26
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1056
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setState(I)V
    .locals 6
    .param p1, "state"    # I

    #@0
    .prologue
    .line 1017
    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@2
    if-eq v4, p1, :cond_0

    #@4
    .line 1018
    iput p1, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@6
    .line 1019
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

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
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@18
    .line 1020
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@19
    .line 1021
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1c
    move-result-object v0

    #@1d
    .line 1022
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@20
    move-result-object v4

    #@21
    new-instance v5, Landroid/telecom/RemoteConnection$1;

    #@23
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$1;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    #@26
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1016
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 6
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    #@0
    .prologue
    .line 1199
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    .line 1200
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@14
    .line 1201
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1202
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1203
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$11;

    #@1f
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$11;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1198
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 6
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    #@0
    .prologue
    .line 1169
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    .line 1170
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@14
    .line 1171
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1172
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1173
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$9;

    #@1f
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$9;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1168
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 1152
    iput p1, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    #@2
    .line 1153
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@14
    .line 1154
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1155
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1156
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$8;

    #@1f
    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$8;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1151
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method public stopDtmfTone()V
    .locals 3

    #@0
    .prologue
    .line 918
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 919
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 916
    :cond_0
    :goto_0
    return-void

    #@c
    .line 921
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unhold()V
    .locals 3

    #@0
    .prologue
    .line 872
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 873
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 870
    :cond_0
    :goto_0
    return-void

    #@c
    .line 875
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    #@0
    .prologue
    .line 670
    if-eqz p1, :cond_1

    #@2
    .line 671
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

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
    check-cast v0, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@14
    .line 672
    .local v0, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@17
    move-result-object v2

    #@18
    if-ne v2, p1, :cond_0

    #@1a
    .line 673
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@1c
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@1f
    .line 669
    .end local v0    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

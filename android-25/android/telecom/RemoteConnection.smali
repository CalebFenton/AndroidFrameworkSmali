.class public final Landroid/telecom/RemoteConnection;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$Callback;,
        Landroid/telecom/RemoteConnection$CallbackRecord;,
        Landroid/telecom/RemoteConnection$VideoProvider;
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

.field private mConnectionProperties:I

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
.method static synthetic -get0(Landroid/telecom/RemoteConnection;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/RemoteConnection;)Ljava/util/List;
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
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 592
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    const/16 v1, 0x8

    #@8
    const v2, 0x3f666666    # 0.9f

    #@b
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@e
    .line 591
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@14
    .line 593
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1b
    .line 595
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    .line 594
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    #@23
    .line 597
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@25
    .line 665
    const-string/jumbo v0, "NULL"

    #@28
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@2a
    .line 666
    const/4 v0, 0x0

    #@2b
    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2d
    .line 667
    const/4 v0, 0x6

    #@2e
    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@30
    .line 668
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@32
    .line 664
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
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 592
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    const/16 v1, 0x8

    #@8
    const v2, 0x3f666666    # 0.9f

    #@b
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@e
    .line 591
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@14
    .line 593
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1b
    .line 595
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    .line 594
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    #@23
    .line 597
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@25
    .line 621
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@27
    .line 622
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@29
    .line 623
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2b
    .line 624
    const/4 v0, 0x0

    #@2c
    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@2e
    .line 620
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 592
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@7
    const/16 v2, 0x8

    #@9
    const v3, 0x3f666666    # 0.9f

    #@c
    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@f
    .line 591
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@15
    .line 593
    new-instance v1, Ljava/util/ArrayList;

    #@17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1c
    .line 595
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@1e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@21
    move-result-object v1

    #@22
    .line 594
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    #@24
    .line 597
    iput v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@26
    .line 632
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@28
    .line 633
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2a
    .line 634
    iput-boolean v4, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2c
    .line 635
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    #@2f
    move-result v1

    #@30
    iput v1, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@32
    .line 636
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@38
    .line 637
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    #@3b
    move-result v1

    #@3c
    iput-boolean v1, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    #@3e
    .line 638
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    #@41
    move-result v1

    #@42
    iput v1, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    #@44
    .line 639
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionProperties()I

    #@47
    move-result v1

    #@48
    iput v1, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    #@4a
    .line 640
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    #@4d
    move-result v1

    #@4e
    iput v1, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    #@50
    .line 641
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    #@53
    move-result-object v0

    #@54
    .line 642
    .local v0, "videoProvider":Lcom/android/internal/telecom/IVideoProvider;
    if-eqz v0, :cond_0

    #@56
    .line 643
    new-instance v1, Landroid/telecom/RemoteConnection$VideoProvider;

    #@58
    invoke-direct {v1, v0}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    #@5b
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    #@5d
    .line 647
    :goto_0
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    #@60
    move-result v1

    #@61
    iput-boolean v1, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    #@63
    .line 648
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    #@66
    move-result-object v1

    #@67
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@69
    .line 649
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    #@6c
    move-result-object v1

    #@6d
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    #@6f
    .line 650
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    #@72
    move-result v1

    #@73
    iput v1, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    #@75
    .line 651
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    #@7b
    .line 652
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    #@7e
    move-result v1

    #@7f
    iput v1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    #@81
    .line 653
    iput-object v5, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    #@83
    .line 631
    return-void

    #@84
    .line 645
    :cond_0
    iput-object v5, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    #@86
    goto :goto_0
.end method

.method public static failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 1408
    new-instance v0, Landroid/telecom/RemoteConnection;

    #@2
    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    #@5
    return-object v0
.end method

.method private notifyExtrasChanged()V
    .locals 6

    #@0
    .prologue
    .line 1372
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
    .line 1373
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@13
    .line 1374
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@16
    move-result-object v0

    #@17
    .line 1375
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v4

    #@1b
    new-instance v5, Landroid/telecom/RemoteConnection$17;

    #@1d
    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConnection$17;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    #@20
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@23
    goto :goto_0

    #@24
    .line 1371
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    #@0
    .prologue
    .line 849
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 850
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 847
    :cond_0
    :goto_0
    return-void

    #@c
    .line 852
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
    .line 861
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 862
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 859
    :cond_0
    :goto_0
    return-void

    #@c
    .line 864
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
    .line 875
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 876
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 873
    :cond_0
    :goto_0
    return-void

    #@c
    .line 878
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
    .line 923
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 924
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 921
    :cond_0
    :goto_0
    return-void

    #@c
    .line 926
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
    .line 775
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getAddressPresentation()I
    .locals 1

    #@0
    .prologue
    .line 785
    iget v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    #@2
    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 794
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 805
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    #@2
    return v0
.end method

.method public getConference()Landroid/telecom/RemoteConference;
    .locals 1

    #@0
    .prologue
    .line 1053
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
    .line 1043
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 736
    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public getConnectionProperties()I
    .locals 1

    #@0
    .prologue
    .line 746
    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    #@2
    return v0
.end method

.method getConnectionService()Lcom/android/internal/telecom/IConnectionService;
    .locals 1

    #@0
    .prologue
    .line 1063
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@2
    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 726
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 831
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1058
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 715
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@2
    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 765
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/RemoteConnection$VideoProvider;
    .locals 1

    #@0
    .prologue
    .line 822
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 814
    iget v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    #@2
    return v0
.end method

.method public hold()V
    .locals 3

    #@0
    .prologue
    .line 899
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 900
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 897
    :cond_0
    :goto_0
    return-void

    #@c
    .line 902
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
    .line 841
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    #@2
    return v0
.end method

.method public isVoipAudioMode()Z
    .locals 1

    #@0
    .prologue
    .line 755
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    #@2
    return v0
.end method

.method onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1386
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v8

    #@6
    .local v8, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v7

    #@10
    check-cast v7, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@12
    .line 1387
    .local v7, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v6, p0

    #@13
    .line 1388
    .local v6, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@16
    move-result-object v2

    #@17
    .line 1389
    .local v2, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v9

    #@1b
    new-instance v0, Landroid/telecom/RemoteConnection$18;

    #@1d
    move-object v1, p0

    #@1e
    move-object v3, p0

    #@1f
    move-object v4, p1

    #@20
    move-object v5, p2

    #@21
    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$18;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;Landroid/os/Bundle;)V

    #@24
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@27
    goto :goto_0

    #@28
    .line 1385
    .end local v2    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v6    # "connection":Landroid/telecom/RemoteConnection;
    .end local v7    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method onPostDialChar(C)V
    .locals 6
    .param p1, "nextChar"    # C

    #@0
    .prologue
    .line 1206
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
    .line 1207
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@13
    .line 1208
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@16
    move-result-object v0

    #@17
    .line 1209
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v4

    #@1b
    new-instance v5, Landroid/telecom/RemoteConnection$8;

    #@1d
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$8;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;C)V

    #@20
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@23
    goto :goto_0

    #@24
    .line 1205
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
    .line 941
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 942
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 939
    :cond_0
    :goto_0
    return-void

    #@c
    .line 944
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
    .line 987
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 988
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 985
    :cond_0
    :goto_0
    return-void

    #@c
    .line 990
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public pullExternalCall()V
    .locals 3

    #@0
    .prologue
    .line 1001
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1002
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->pullExternalCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 999
    :cond_0
    :goto_0
    return-void

    #@c
    .line 1004
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method putExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1351
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1352
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    #@b
    .line 1354
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@10
    .line 1356
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->notifyExtrasChanged()V

    #@13
    .line 1350
    return-void
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    #@0
    .prologue
    .line 677
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    invoke-virtual {p0, p1, v0}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    #@8
    .line 676
    return-void
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 687
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection;->unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V

    #@3
    .line 688
    if-eqz p1, :cond_0

    #@5
    if-eqz p2, :cond_0

    #@7
    .line 689
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@9
    new-instance v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@b
    invoke-direct {v1, p1, p2}, Landroid/telecom/RemoteConnection$CallbackRecord;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    #@e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@11
    .line 686
    :cond_0
    return-void
.end method

.method public reject()V
    .locals 3

    #@0
    .prologue
    .line 887
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 888
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 885
    :cond_0
    :goto_0
    return-void

    #@c
    .line 890
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
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
    .line 1361
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v2, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    .line 1362
    :cond_0
    return-void

    #@7
    .line 1361
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 1364
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
    .line 1365
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    #@1f
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@22
    goto :goto_0

    #@23
    .line 1368
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->notifyExtrasChanged()V

    #@26
    .line 1360
    return-void
.end method

.method setAddress(Landroid/net/Uri;I)V
    .locals 10
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    #@0
    .prologue
    .line 1284
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    #@2
    .line 1285
    iput p2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    #@4
    .line 1286
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v8

    #@a
    .local v8, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v7

    #@14
    check-cast v7, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@16
    .line 1287
    .local v7, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v6, p0

    #@17
    .line 1288
    .local v6, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1a
    move-result-object v2

    #@1b
    .line 1289
    .local v2, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1e
    move-result-object v9

    #@1f
    new-instance v0, Landroid/telecom/RemoteConnection$13;

    #@21
    move-object v1, p0

    #@22
    move-object v3, p0

    #@23
    move-object v4, p1

    #@24
    move v5, p2

    #@25
    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$13;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    #@28
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 1283
    .end local v2    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v6    # "connection":Landroid/telecom/RemoteConnection;
    .end local v7    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
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
    .line 1018
    new-instance v0, Landroid/telecom/CallAudioState;

    #@2
    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConnection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    #@8
    .line 1017
    return-void
.end method

.method public setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    #@0
    .prologue
    .line 1028
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1029
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1026
    :cond_0
    :goto_0
    return-void

    #@c
    .line 1031
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method setCallerDisplayName(Ljava/lang/String;I)V
    .locals 10
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    #@0
    .prologue
    .line 1300
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    #@2
    .line 1301
    iput p2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    #@4
    .line 1302
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v8

    #@a
    .local v8, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v7

    #@14
    check-cast v7, Landroid/telecom/RemoteConnection$CallbackRecord;

    #@16
    .line 1303
    .local v7, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v6, p0

    #@17
    .line 1304
    .local v6, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1a
    move-result-object v2

    #@1b
    .line 1305
    .local v2, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1e
    move-result-object v9

    #@1f
    new-instance v0, Landroid/telecom/RemoteConnection$14;

    #@21
    move-object v1, p0

    #@22
    move-object v3, p0

    #@23
    move-object v4, p1

    #@24
    move v5, p2

    #@25
    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$14;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    #@28
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 1299
    .end local v2    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v6    # "connection":Landroid/telecom/RemoteConnection;
    .end local v7    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setConference(Landroid/telecom/RemoteConference;)V
    .locals 6
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    #@0
    .prologue
    .line 1334
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    #@2
    if-eq v4, p1, :cond_0

    #@4
    .line 1335
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    #@6
    .line 1336
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
    .line 1337
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@19
    .line 1338
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1c
    move-result-object v0

    #@1d
    .line 1339
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@20
    move-result-object v4

    #@21
    new-instance v5, Landroid/telecom/RemoteConnection$16;

    #@23
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$16;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    #@26
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1333
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
    .line 1317
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@5
    .line 1318
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    #@7
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 1319
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
    .line 1320
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@1d
    .line 1321
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@20
    move-result-object v0

    #@21
    .line 1322
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@24
    move-result-object v4

    #@25
    new-instance v5, Landroid/telecom/RemoteConnection$15;

    #@27
    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConnection$15;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    #@2a
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 1316
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
    .line 1129
    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    #@2
    .line 1130
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
    .line 1131
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1132
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1133
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$4;

    #@1f
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$4;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1128
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setConnectionProperties(I)V
    .locals 6
    .param p1, "connectionProperties"    # I

    #@0
    .prologue
    .line 1146
    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    #@2
    .line 1147
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
    .line 1148
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1149
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1150
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$5;

    #@1f
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$5;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1145
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
    .line 1163
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_2

    #@8
    .line 1165
    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@a
    const/4 v5, 0x6

    #@b
    if-eq v4, v5, :cond_0

    #@d
    .line 1167
    new-instance v4, Landroid/telecom/DisconnectCause;

    #@f
    const-string/jumbo v5, "Connection destroyed."

    #@12
    const/4 v6, 0x1

    #@13
    invoke-direct {v4, v6, v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    #@16
    .line 1166
    invoke-virtual {p0, v4}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    #@19
    .line 1170
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
    .line 1171
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@2c
    .line 1172
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@2f
    move-result-object v0

    #@30
    .line 1173
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@33
    move-result-object v4

    #@34
    new-instance v5, Landroid/telecom/RemoteConnection$6;

    #@36
    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConnection$6;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    #@39
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3c
    goto :goto_0

    #@3d
    .line 1180
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_1
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@3f
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    #@42
    .line 1182
    const/4 v4, 0x0

    #@43
    iput-boolean v4, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@45
    .line 1162
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
    .line 1089
    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@3
    if-eq v4, v5, :cond_0

    #@5
    .line 1090
    iput v5, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@7
    .line 1091
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@9
    .line 1093
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
    .line 1094
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@1c
    .line 1095
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1f
    move-result-object v0

    #@20
    .line 1096
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@23
    move-result-object v4

    #@24
    new-instance v5, Landroid/telecom/RemoteConnection$2;

    #@26
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$2;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    #@29
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 1088
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setIsVoipAudioMode(Z)V
    .locals 6
    .param p1, "isVoip"    # Z

    #@0
    .prologue
    .line 1254
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    #@2
    .line 1255
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
    .line 1256
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1257
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1258
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$11;

    #@1f
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$11;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1253
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
    .line 1190
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
    .line 1191
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@13
    .line 1192
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@16
    move-result-object v0

    #@17
    .line 1193
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v4

    #@1b
    new-instance v5, Landroid/telecom/RemoteConnection$7;

    #@1d
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$7;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    #@20
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@23
    goto :goto_0

    #@24
    .line 1189
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
    .line 1110
    iget-boolean v4, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    #@2
    if-eq v4, p1, :cond_0

    #@4
    .line 1111
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    #@6
    .line 1112
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
    .line 1113
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@19
    .line 1114
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1c
    move-result-object v0

    #@1d
    .line 1115
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@20
    move-result-object v4

    #@21
    new-instance v5, Landroid/telecom/RemoteConnection$3;

    #@23
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$3;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    #@26
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1109
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
    .line 1070
    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@2
    if-eq v4, p1, :cond_0

    #@4
    .line 1071
    iput p1, p0, Landroid/telecom/RemoteConnection;->mState:I

    #@6
    .line 1072
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
    .line 1073
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@19
    .line 1074
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@1c
    move-result-object v0

    #@1d
    .line 1075
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@20
    move-result-object v4

    #@21
    new-instance v5, Landroid/telecom/RemoteConnection$1;

    #@23
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$1;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    #@26
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1069
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
    .line 1269
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    .line 1270
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
    .line 1271
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1272
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1273
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$12;

    #@1f
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$12;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1268
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
    .line 1239
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    .line 1240
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
    .line 1241
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1242
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1243
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$10;

    #@1f
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$10;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1238
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
    .line 1222
    iput p1, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    #@2
    .line 1223
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
    .line 1224
    .local v2, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    #@15
    .line 1225
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@18
    move-result-object v0

    #@19
    .line 1226
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/RemoteConnection$9;

    #@1f
    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$9;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1221
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
    .line 957
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 958
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 955
    :cond_0
    :goto_0
    return-void

    #@c
    .line 960
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
    .line 911
    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 912
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    #@6
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 909
    :cond_0
    :goto_0
    return-void

    #@c
    .line 914
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
    .line 699
    if-eqz p1, :cond_1

    #@2
    .line 700
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
    .line 701
    .local v0, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    #@17
    move-result-object v2

    #@18
    if-ne v2, p1, :cond_0

    #@1a
    .line 702
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    #@1c
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@1f
    .line 698
    .end local v0    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

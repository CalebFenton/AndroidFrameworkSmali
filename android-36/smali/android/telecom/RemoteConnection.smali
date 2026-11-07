.class public final Landroid/telecom/RemoteConnection;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider;,
        Landroid/telecom/RemoteConnection$Callback;,
        Landroid/telecom/RemoteConnection$CallbackRecord;
    }
.end annotation


# instance fields
.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mAddressPresentation:I

.field private final greylist-max-o mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/RemoteConnection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private greylist-max-o mCallerDisplayNamePresentation:I

.field private blacklist mCallingPackageAbbreviation:Ljava/lang/String;

.field private greylist-max-o mConference:Landroid/telecom/RemoteConference;

.field private final greylist-max-o mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnected:Z

.field private greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionId:Ljava/lang/String;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mIsVoipAudioMode:Z

.field private greylist-max-o mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private final greylist-max-o mUnmodifiableconferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

.field private greylist-max-o mVideoState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/telecom/RemoteConnection;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnmodifiableconferenceableConnections(Landroid/telecom/RemoteConnection;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/telecom/DisconnectCause;)V
    .registers 6
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 642
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 643
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 645
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 731
    const-string v0, "NULL"

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 733
    const/4 v0, 0x6

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 734
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 735
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 642
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 643
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 645
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 670
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 671
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 672
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 673
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 674
    if-eqz p3, :cond_50

    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 675
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 677
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/telecom/Log;->getPackageAbbreviation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    .line 681
    .end local v0    # "callingPackage":Ljava/lang/String;
    :cond_50
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;Ljava/lang/String;I)V
    .registers 10
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "targetSdkVersion"    # I

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 642
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 643
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 645
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 688
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 689
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 690
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 691
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 692
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 693
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 694
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    .line 695
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionProperties()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    .line 696
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 697
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v0

    .line 698
    .local v0, "videoProvider":Lcom/android/internal/telecom/IVideoProvider;
    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 699
    new-instance v2, Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {v2, v0, p4, p5}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    goto :goto_60

    .line 702
    :cond_5e
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 704
    :goto_60
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 705
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 706
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 707
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v2

    iput v2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 708
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 709
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v2

    iput v2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 710
    iput-object v1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 711
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 716
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v1, "newExtras":Landroid/os/Bundle;
    const-string v2, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0, v1}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 719
    invoke-static {p4}, Landroid/telecom/Log;->getPackageAbbreviation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    .line 720
    return-void
.end method

.method public static greylist-max-o failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;
    .registers 2
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 1688
    new-instance v0, Landroid/telecom/RemoteConnection;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private blacklist getActiveOwnerInfo()Ljava/lang/String;
    .registers 3

    .line 1281
    invoke-static {}, Landroid/telecom/Log;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    .line 1282
    .local v0, "info":Landroid/telecom/Logging/Session$Info;
    if-nez v0, :cond_8

    .line 1283
    const/4 v1, 0x0

    return-object v1

    .line 1285
    :cond_8
    iget-object v1, v0, Landroid/telecom/Logging/Session$Info;->ownerInfo:Ljava/lang/String;

    return-object v1
.end method

.method static synthetic blacklist lambda$onRemoteRttRequest$3(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p0, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 1673
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRemoteRttRequest(Landroid/telecom/RemoteConnection;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRttInitiationFailure$1(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V
    .registers 3
    .param p0, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "reason"    # I

    .line 1653
    invoke-virtual {p0, p1, p2}, Landroid/telecom/RemoteConnection$Callback;->onRttInitiationFailure(Landroid/telecom/RemoteConnection;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onRttInitiationSuccess$0(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p0, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 1643
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRttInitiationSuccess(Landroid/telecom/RemoteConnection;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRttSessionRemotelyTerminated$2(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p0, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 1663
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRttSessionRemotelyTerminated(Landroid/telecom/RemoteConnection;)V

    return-void
.end method

.method private greylist-max-o notifyExtrasChanged()V
    .registers 7

    .line 1611
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1612
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1613
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1614
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$17;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConnection$17;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1620
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_6

    .line 1621
    :cond_24
    return-void
.end method


# virtual methods
.method public whitelist abort()V
    .registers 4

    .line 914
    const-string v0, "RC.a"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_21

    .line 917
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_20
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    goto :goto_21

    .line 922
    :catchall_1b
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 923
    throw v0

    .line 920
    :catch_20
    move-exception v0

    .line 922
    :cond_21
    :goto_21
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 923
    nop

    .line 924
    return-void
.end method

.method public whitelist addConferenceParticipants(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1125
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_c

    .line 1126
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 1130
    :cond_c
    goto :goto_e

    .line 1129
    :catch_d
    move-exception v0

    .line 1131
    :goto_e
    return-void
.end method

.method public whitelist answer()V
    .registers 4

    .line 930
    const-string v0, "RC.an"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_21

    .line 933
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_20
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    goto :goto_21

    .line 938
    :catchall_1b
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 939
    throw v0

    .line 936
    :catch_20
    move-exception v0

    .line 938
    :cond_21
    :goto_21
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 939
    nop

    .line 940
    return-void
.end method

.method public greylist-max-o answer(I)V
    .registers 5
    .param p1, "videoState"    # I

    .line 948
    const-string v0, "RC.an2"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_21

    .line 951
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    .line 952
    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    .line 951
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_20
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    goto :goto_21

    .line 956
    :catchall_1b
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 957
    throw v0

    .line 954
    :catch_20
    move-exception v0

    .line 956
    :cond_21
    :goto_21
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 957
    nop

    .line 958
    return-void
.end method

.method public whitelist disconnect()V
    .registers 4

    .line 1012
    const-string v0, "RC.d"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_21

    .line 1015
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_20
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    goto :goto_21

    .line 1020
    :catchall_1b
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1021
    throw v0

    .line 1018
    :catch_20
    move-exception v0

    .line 1020
    :cond_21
    :goto_21
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1021
    nop

    .line 1022
    return-void
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .registers 2

    .line 841
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getAddressPresentation()I
    .registers 2

    .line 851
    iget v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    return v0
.end method

.method public whitelist getCallerDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 860
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallerDisplayNamePresentation()I
    .registers 2

    .line 871
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public whitelist getConference()Landroid/telecom/RemoteConference;
    .registers 2

    .line 1269
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    return-object v0
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

    .line 1259
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getConnectionCapabilities()I
    .registers 2

    .line 802
    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    return v0
.end method

.method public whitelist getConnectionProperties()I
    .registers 2

    .line 812
    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    return v0
.end method

.method greylist-max-o getConnectionService()Lcom/android/internal/telecom/IConnectionService;
    .registers 2

    .line 1295
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    return-object v0
.end method

.method public whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 792
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 897
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method greylist-max-o getId()Ljava/lang/String;
    .registers 2

    .line 1290
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 781
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    return v0
.end method

.method public whitelist getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 831
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final whitelist getVideoProvider()Landroid/telecom/RemoteConnection$VideoProvider;
    .registers 2

    .line 888
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    return-object v0
.end method

.method public whitelist getVideoState()I
    .registers 2

    .line 880
    iget v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    return v0
.end method

.method public whitelist hold()V
    .registers 4

    .line 980
    const-string v0, "RC.h"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_21

    .line 983
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_20
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    goto :goto_21

    .line 988
    :catchall_1b
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 989
    throw v0

    .line 986
    :catch_20
    move-exception v0

    .line 988
    :cond_21
    :goto_21
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 989
    nop

    .line 990
    return-void
.end method

.method public whitelist isRingbackRequested()Z
    .registers 2

    .line 907
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    return v0
.end method

.method public whitelist isVoipAudioMode()Z
    .registers 2

    .line 821
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method public whitelist onCallFilteringCompleted(Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .registers 5
    .param p1, "completionInfo"    # Landroid/telecom/Connection$CallFilteringCompletionInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1211
    const-string v0, "RC.oCFC"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_1c

    .line 1214
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;Landroid/telecom/Logging/Session$Info;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_1b
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 1219
    :catchall_16
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1220
    throw v0

    .line 1217
    :catch_1b
    move-exception v0

    .line 1219
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1220
    nop

    .line 1221
    return-void
.end method

.method greylist-max-o onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1625
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1626
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v5, p0

    .line 1627
    .local v5, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v4

    .line 1628
    .local v4, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v2, Landroid/telecom/RemoteConnection$18;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "event":Ljava/lang/String;
    .end local p2    # "extras":Landroid/os/Bundle;
    .local v6, "event":Ljava/lang/String;
    .local v7, "extras":Landroid/os/Bundle;
    invoke-direct/range {v2 .. v7}, Landroid/telecom/RemoteConnection$18;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1634
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v4    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v5    # "connection":Landroid/telecom/RemoteConnection;
    goto :goto_6

    .line 1635
    .end local v6    # "event":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    .restart local p1    # "event":Ljava/lang/String;
    .restart local p2    # "extras":Landroid/os/Bundle;
    :cond_27
    return-void
.end method

.method greylist-max-o onPostDialChar(C)V
    .registers 8
    .param p1, "nextChar"    # C

    .line 1438
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1439
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1440
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1441
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$8;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$8;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;C)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1447
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_6

    .line 1448
    :cond_24
    return-void
.end method

.method greylist-max-o onRemoteRttRequest()V
    .registers 7

    .line 1669
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1670
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1671
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1672
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v2}, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1674
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_6

    .line 1675
    :cond_24
    return-void
.end method

.method greylist-max-o onRttInitiationFailure(I)V
    .registers 8
    .param p1, "reason"    # I

    .line 1649
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1650
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1651
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1652
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1654
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_6

    .line 1655
    :cond_24
    return-void
.end method

.method greylist-max-o onRttInitiationSuccess()V
    .registers 7

    .line 1639
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1640
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1641
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1642
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3, v2}, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1644
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_6

    .line 1645
    :cond_24
    return-void
.end method

.method greylist-max-o onRttSessionRemotelyTerminated()V
    .registers 7

    .line 1659
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1660
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1661
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1662
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v2}, Landroid/telecom/RemoteConnection$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1664
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_6

    .line 1665
    :cond_24
    return-void
.end method

.method public whitelist playDtmfTone(C)V
    .registers 5
    .param p1, "digit"    # C

    .line 1034
    const-string v0, "RC.pDT"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_1c

    .line 1037
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_1b
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 1041
    :catchall_16
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1042
    throw v0

    .line 1039
    :catch_1b
    move-exception v0

    .line 1041
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1042
    nop

    .line 1043
    return-void
.end method

.method public whitelist postDialContinue(Z)V
    .registers 5
    .param p1, "proceed"    # Z

    .line 1086
    const-string v0, "RC.pDC"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_1c

    .line 1089
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_1b
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 1095
    :catchall_16
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1096
    throw v0

    .line 1092
    :catch_1b
    move-exception v0

    .line 1095
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1096
    nop

    .line 1097
    return-void
.end method

.method public whitelist pullExternalCall()V
    .registers 4

    .line 1105
    const-string v0, "RC.pEC"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_1c

    .line 1108
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_1b
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 1112
    :catchall_16
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1113
    throw v0

    .line 1110
    :catch_1b
    move-exception v0

    .line 1112
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1113
    nop

    .line 1114
    return-void
.end method

.method greylist-max-o putExtras(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1583
    if-nez p1, :cond_3

    .line 1584
    return-void

    .line 1586
    :cond_3
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_e

    .line 1587
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    .line 1590
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/BadParcelableException; {:try_start_e .. :try_end_13} :catch_14

    .line 1593
    goto :goto_2f

    .line 1591
    :catch_14
    move-exception v0

    .line 1592
    .local v0, "bpe":Landroid/os/BadParcelableException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putExtras: could not unmarshal extras; exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1595
    .end local v0    # "bpe":Landroid/os/BadParcelableException;
    :goto_2f
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->notifyExtrasChanged()V

    .line 1596
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .line 743
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    .line 744
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 753
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection;->unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V

    .line 754
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 755
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    new-instance v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/RemoteConnection$CallbackRecord;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_11
    return-void
.end method

.method public whitelist reject()V
    .registers 4

    .line 964
    const-string v0, "RC.r"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_21

    .line 967
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_20
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    goto :goto_21

    .line 972
    :catchall_1b
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 973
    throw v0

    .line 970
    :catch_20
    move-exception v0

    .line 972
    :cond_21
    :goto_21
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 973
    nop

    .line 974
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

    .line 1600
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_27

    .line 1603
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

    .line 1604
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1605
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_11

    .line 1607
    :cond_23
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->notifyExtrasChanged()V

    .line 1608
    return-void

    .line 1601
    :cond_27
    :goto_27
    return-void
.end method

.method public greylist-max-o sendRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V
    .registers 7
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 1233
    const-string v0, "RC.sRUR"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_2e

    .line 1236
    const/4 v0, 0x0

    if-nez p1, :cond_18

    .line 1237
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v0, v0}, Lcom/android/internal/telecom/IConnectionService;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    goto :goto_2e

    .line 1240
    :cond_18
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 1241
    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1240
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/telecom/IConnectionService;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_27} :catch_2d
    .catchall {:try_start_9 .. :try_end_27} :catchall_28

    goto :goto_2e

    .line 1247
    :catchall_28
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1248
    throw v0

    .line 1245
    :catch_2d
    move-exception v0

    .line 1247
    :cond_2e
    :goto_2e
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1248
    nop

    .line 1249
    return-void
.end method

.method greylist-max-o setAddress(Landroid/net/Uri;I)V
    .registers 12
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .line 1516
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 1517
    iput p2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 1518
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1519
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v5, p0

    .line 1520
    .local v5, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v4

    .line 1521
    .local v4, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v2, Landroid/telecom/RemoteConnection$13;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "address":Landroid/net/Uri;
    .end local p2    # "presentation":I
    .local v6, "address":Landroid/net/Uri;
    .local v7, "presentation":I
    invoke-direct/range {v2 .. v7}, Landroid/telecom/RemoteConnection$13;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1527
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v4    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v5    # "connection":Landroid/telecom/RemoteConnection;
    goto :goto_a

    .line 1528
    .end local v6    # "address":Landroid/net/Uri;
    .end local v7    # "presentation":I
    .restart local p1    # "address":Landroid/net/Uri;
    .restart local p2    # "presentation":I
    :cond_2b
    return-void
.end method

.method public whitelist setAudioState(Landroid/telecom/AudioState;)V
    .registers 3
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1143
    new-instance v0, Landroid/telecom/CallAudioState;

    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConnection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 1144
    return-void
.end method

.method public whitelist setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 5
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 1152
    const-string v0, "RC.sCAS"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_1c

    .line 1155
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_1b
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 1160
    :catchall_16
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1161
    throw v0

    .line 1158
    :catch_1b
    move-exception v0

    .line 1160
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1161
    nop

    .line 1162
    return-void
.end method

.method greylist-max-o setCallerDisplayName(Ljava/lang/String;I)V
    .registers 12
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .line 1532
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 1533
    iput p2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 1534
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1535
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v5, p0

    .line 1536
    .local v5, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v4

    .line 1537
    .local v4, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v2, Landroid/telecom/RemoteConnection$14;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "callerDisplayName":Ljava/lang/String;
    .end local p2    # "presentation":I
    .local v6, "callerDisplayName":Ljava/lang/String;
    .local v7, "presentation":I
    invoke-direct/range {v2 .. v7}, Landroid/telecom/RemoteConnection$14;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1544
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v4    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v5    # "connection":Landroid/telecom/RemoteConnection;
    goto :goto_a

    .line 1545
    .end local v6    # "callerDisplayName":Ljava/lang/String;
    .end local v7    # "presentation":I
    .restart local p1    # "callerDisplayName":Ljava/lang/String;
    .restart local p2    # "presentation":I
    :cond_2b
    return-void
.end method

.method greylist-max-o setConference(Landroid/telecom/RemoteConference;)V
    .registers 8
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .line 1566
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    if-eq v0, p1, :cond_2a

    .line 1567
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 1568
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1569
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1570
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1571
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$16;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$16;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1577
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_c

    .line 1579
    :cond_2a
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

    .line 1549
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1550
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1551
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1552
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1553
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1554
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$15;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConnection$15;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1561
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_10

    .line 1562
    :cond_2e
    return-void
.end method

.method greylist-max-o setConnectionCapabilities(I)V
    .registers 8
    .param p1, "connectionCapabilities"    # I

    .line 1361
    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    .line 1362
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1363
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1364
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1365
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$4;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$4;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1371
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_8

    .line 1372
    :cond_26
    return-void
.end method

.method greylist-max-o setConnectionProperties(I)V
    .registers 8
    .param p1, "connectionProperties"    # I

    .line 1378
    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    .line 1379
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1380
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1381
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1382
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$5;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$5;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1388
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_8

    .line 1389
    :cond_26
    return-void
.end method

.method greylist-max-o setDestroyed()V
    .registers 7

    .line 1395
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 1397
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_18

    .line 1398
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x1

    const-string v2, "Connection destroyed."

    invoke-direct {v0, v1, v2}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 1402
    :cond_18
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1403
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1404
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1405
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$6;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/RemoteConnection$6;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1411
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_1e

    .line 1412
    :cond_3c
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1414
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 1416
    :cond_44
    return-void
.end method

.method greylist-max-o setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 8
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 1321
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2d

    .line 1322
    iput v1, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 1323
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1325
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1326
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1327
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1328
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$2;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$2;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1334
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_f

    .line 1336
    :cond_2d
    return-void
.end method

.method greylist-max-o setIsVoipAudioMode(Z)V
    .registers 8
    .param p1, "isVoip"    # Z

    .line 1486
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 1487
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1488
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1489
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1490
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$11;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$11;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1496
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_8

    .line 1497
    :cond_26
    return-void
.end method

.method greylist-max-o setPostDialWait(Ljava/lang/String;)V
    .registers 8
    .param p1, "remainingDigits"    # Ljava/lang/String;

    .line 1422
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1423
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1424
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1425
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$7;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$7;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1431
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_6

    .line 1432
    :cond_24
    return-void
.end method

.method greylist-max-o setRingbackRequested(Z)V
    .registers 8
    .param p1, "ringback"    # Z

    .line 1342
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    if-eq v0, p1, :cond_2a

    .line 1343
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 1344
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1345
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1346
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1347
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$3;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$3;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1353
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_c

    .line 1355
    :cond_2a
    return-void
.end method

.method greylist-max-o setState(I)V
    .registers 8
    .param p1, "state"    # I

    .line 1302
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v0, p1, :cond_2a

    .line 1303
    iput p1, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 1304
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1305
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1306
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1307
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$1;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$1;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1313
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_c

    .line 1315
    :cond_2a
    return-void
.end method

.method greylist-max-o setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 8
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .line 1501
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1502
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1503
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1504
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1505
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$12;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$12;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1511
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_8

    .line 1512
    :cond_26
    return-void
.end method

.method greylist-max-o setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .registers 8
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .line 1471
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 1472
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1473
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1474
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1475
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$10;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$10;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1481
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_8

    .line 1482
    :cond_26
    return-void
.end method

.method greylist-max-o setVideoState(I)V
    .registers 8
    .param p1, "videoState"    # I

    .line 1454
    iput p1, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 1455
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1456
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v2, p0

    .line 1457
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v3

    .line 1458
    .local v3, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$9;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/RemoteConnection$9;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1464
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "callback":Landroid/telecom/RemoteConnection$Callback;
    goto :goto_8

    .line 1465
    :cond_26
    return-void
.end method

.method public greylist-max-o startRtt(Landroid/telecom/Connection$RttTextStream;)V
    .registers 7
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 1171
    const-string v0, "RC.sR"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_24

    .line 1174
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1175
    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1174
    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService;->startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1d} :catch_23
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1e

    goto :goto_24

    .line 1179
    :catchall_1e
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1180
    throw v0

    .line 1177
    :catch_23
    move-exception v0

    .line 1179
    :cond_24
    :goto_24
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1180
    nop

    .line 1181
    return-void
.end method

.method public whitelist stopDtmfTone()V
    .registers 4

    .line 1053
    const-string v0, "RC.sDT"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_1c

    .line 1056
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_1b
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 1060
    :catchall_16
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1061
    throw v0

    .line 1058
    :catch_1b
    move-exception v0

    .line 1060
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1061
    nop

    .line 1062
    return-void
.end method

.method public greylist-max-o stopRtt()V
    .registers 4

    .line 1189
    const-string v0, "RC.stR"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_1c

    .line 1192
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_1b
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 1196
    :catchall_16
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1197
    throw v0

    .line 1194
    :catch_1b
    move-exception v0

    .line 1196
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1197
    nop

    .line 1198
    return-void
.end method

.method public whitelist unhold()V
    .registers 4

    .line 996
    const-string v0, "RC.u"

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->getActiveOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telecom/Log;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :try_start_9
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_21

    .line 999
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallingPackageAbbreviation:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_20
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    goto :goto_21

    .line 1004
    :catchall_1b
    move-exception v0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1005
    throw v0

    .line 1002
    :catch_20
    move-exception v0

    .line 1004
    :cond_21
    :goto_21
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1005
    nop

    .line 1006
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .line 765
    if-eqz p1, :cond_21

    .line 766
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 767
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    if-ne v2, p1, :cond_20

    .line 768
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 769
    goto :goto_21

    .line 771
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_20
    goto :goto_8

    .line 773
    :cond_21
    :goto_21
    return-void
.end method

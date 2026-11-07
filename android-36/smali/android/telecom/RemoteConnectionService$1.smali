.class Landroid/telecom/RemoteConnectionService$1;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnectionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telecom/RemoteConnectionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcel"    # Landroid/telecom/ParcelableConference;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 236
    new-instance v0, Landroid/telecom/RemoteConference;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOutgoingConnectionServiceRpc(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    .line 239
    .local v0, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection;

    .line 241
    .local v3, "c":Landroid/telecom/RemoteConnection;
    if-eqz v3, :cond_30

    .line 242
    invoke-virtual {v0, v3}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    .line 244
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "c":Landroid/telecom/RemoteConnection;
    :cond_30
    goto :goto_13

    .line 249
    :cond_31
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 250
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 251
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionProperties()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->setConnectionProperties(I)V

    .line 252
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 253
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConferenceById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v1, "newExtras":Landroid/os/Bundle;
    const-string v2, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    nop

    .line 262
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 261
    const-string v3, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 263
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 265
    new-instance v2, Landroid/telecom/RemoteConnectionService$1$1;

    invoke-direct {v2, p0, p1}, Landroid/telecom/RemoteConnectionService$1$1;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 273
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telecom/ConnectionService;->addRemoteConference(Landroid/telecom/RemoteConference;)V

    .line 274
    return-void
.end method

.method public blacklist addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .registers 11
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 381
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "addExistingConnection: callId=%s, conn=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "callingPackage":Ljava/lang/String;
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 387
    .local v6, "callingTargetSdkVersion":I
    new-instance v1, Landroid/telecom/RemoteConnection;

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOutgoingConnectionServiceRpc(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v3

    move-object v2, p1

    move-object v4, p2

    .end local p1    # "callId":Ljava/lang/String;
    .end local p2    # "connection":Landroid/telecom/ParcelableConnection;
    .local v2, "callId":Ljava/lang/String;
    .local v4, "connection":Landroid/telecom/ParcelableConnection;
    invoke-direct/range {v1 .. v6}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;Ljava/lang/String;I)V

    .line 391
    .local v1, "remoteConnection":Landroid/telecom/RemoteConnection;
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local p1, "newExtras":Landroid/os/Bundle;
    nop

    .line 393
    invoke-virtual {v4}, Landroid/telecom/ParcelableConnection;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    .line 392
    const-string v0, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 394
    invoke-virtual {v4}, Landroid/telecom/ParcelableConnection;->getParentCallId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_74

    .line 395
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConferenceById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v4}, Landroid/telecom/ParcelableConnection;->getParentCallId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/RemoteConference;

    .line 402
    .local p2, "parentConf":Landroid/telecom/RemoteConference;
    if-eqz p2, :cond_74

    .line 403
    const-string v0, "android.telecom.extra.ADD_TO_CONFERENCE_ID"

    invoke-virtual {p2}, Landroid/telecom/RemoteConference;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    nop

    .line 405
    invoke-virtual {v4}, Landroid/telecom/ParcelableConnection;->getParentCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/RemoteConference;->getId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 404
    const-string v3, "addExistingConnection: stash parent of %s as %s"

    invoke-static {p0, v3, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    .end local p2    # "parentConf":Landroid/telecom/RemoteConference;
    :cond_74
    invoke-virtual {v1, p1}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 409
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance p2, Landroid/telecom/RemoteConnectionService$1$2;

    invoke-direct {p2, p0, v2}, Landroid/telecom/RemoteConnectionService$1$2;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;)V

    .line 417
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/telecom/ConnectionService;->addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V

    .line 418
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "parcel"    # Landroid/telecom/ParcelableConference;
    .param p4, "info"    # Landroid/telecom/Logging/Session$Info;

    .line 112
    return-void
.end method

.method public blacklist handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "parcel"    # Landroid/telecom/ParcelableConnection;
    .param p4, "info"    # Landroid/telecom/Logging/Session$Info;

    .line 63
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 64
    const-string/jumbo v1, "handleCreateConnectionSuccessful"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 65
    .local v0, "connection":Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-$$Nest$sfgetNULL_CONNECTION()Landroid/telecom/RemoteConnection;

    move-result-object v1

    if-eq v0, v1, :cond_db

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmPendingConnections(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 66
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmPendingConnections(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 69
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionProperties()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V

    .line 70
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_3f

    .line 71
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v1

    if-eq v1, v2, :cond_4a

    .line 72
    :cond_3f
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 74
    :cond_4a
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_56

    .line 75
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v1

    if-eq v1, v2, :cond_62

    .line 76
    :cond_56
    nop

    .line 77
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v3

    .line 76
    invoke-virtual {v0, v1, v3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 81
    :cond_62
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v1

    if-ne v1, v2, :cond_70

    .line 82
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_77

    .line 84
    :cond_70
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 86
    :goto_77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 88
    .local v4, "confId":Ljava/lang/String;
    iget-object v5, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v5}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 89
    iget-object v5, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v5}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/RemoteConnection;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v4    # "confId":Ljava/lang/String;
    :cond_ab
    goto :goto_84

    .line 92
    :cond_ac
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 93
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 94
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->getState()I

    move-result v3

    if-ne v3, v2, :cond_bf

    .line 97
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 99
    :cond_bf
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 100
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    .line 101
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    .line 102
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 104
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_db
    return-void
.end method

.method public blacklist onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 451
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 452
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onConnectionEvent"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 455
    :cond_18
    return-void
.end method

.method public blacklist onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V
    .registers 2
    .param p1, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 231
    return-void
.end method

.method public blacklist onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "pHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 228
    return-void
.end method

.method public blacklist onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 295
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onPostDialChar"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->onPostDialChar(C)V

    .line 297
    return-void
.end method

.method public blacklist onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 289
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onPostDialWait"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setPostDialWait(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public blacklist onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 494
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onRemoteRttRequest"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->onRemoteRttRequest()V

    goto :goto_1e

    .line 497
    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onRemoteRttRequest called on a remote conference"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    :goto_1e
    return-void
.end method

.method public blacklist onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 472
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onRttInitiationFailure"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 473
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->onRttInitiationFailure(I)V

    goto :goto_1e

    .line 475
    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onRttInitiationFailure called on a remote conference"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    :goto_1e
    return-void
.end method

.method public blacklist onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 461
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onRttInitiationSuccess"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->onRttInitiationSuccess()V

    goto :goto_1e

    .line 464
    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onRttInitiationSuccess called on a remote conference"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    :goto_1e
    return-void
.end method

.method public blacklist onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 483
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onRttSessionRemotelyTerminated"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->onRttSessionRemotelyTerminated()V

    goto :goto_1e

    .line 486
    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onRttSessionRemotelyTerminated called on a remote conference"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    :goto_1e
    return-void
.end method

.method public blacklist putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 422
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "putExtras"

    if-eqz v0, :cond_15

    .line 423
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    goto :goto_1e

    .line 425
    :cond_15
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 427
    :goto_1e
    return-void
.end method

.method public blacklist queryLocation(Ljava/lang/String;JLjava/lang/String;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "timeoutMillis"    # J
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ResultReceiver;
    .param p6, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 527
    return-void
.end method

.method public blacklist queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 303
    return-void
.end method

.method public blacklist removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 278
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "removeCall"

    if-eqz v0, :cond_19

    .line 279
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    goto :goto_22

    .line 282
    :cond_19
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/telecom/RemoteConference;->setDestroyed()V

    .line 285
    :goto_22
    return-void
.end method

.method public blacklist removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 431
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "removeExtra"

    if-eqz v0, :cond_15

    .line 432
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->removeExtras(Ljava/util/List;)V

    goto :goto_1e

    .line 434
    :cond_15
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->removeExtras(Ljava/util/List;)V

    .line 436
    :goto_1e
    return-void
.end method

.method public blacklist requestCallEndpointChange(Ljava/lang/String;Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "endpoint"    # Landroid/telecom/CallEndpoint;
    .param p3, "callback"    # Landroid/os/ResultReceiver;
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 521
    return-void
.end method

.method public blacklist resetConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 504
    return-void
.end method

.method public blacklist setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 116
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const-string/jumbo v2, "setActive"

    if-eqz v0, :cond_1a

    .line 117
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    goto :goto_23

    .line 120
    :cond_1a
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 123
    :goto_23
    return-void
.end method

.method public blacklist setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 343
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setAddress"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 345
    return-void
.end method

.method public blacklist setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "audioRoute"    # I
    .param p3, "bluetoothAddress"    # Ljava/lang/String;
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 441
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    .line 446
    return-void
.end method

.method public blacklist setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "direction"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 515
    return-void
.end method

.method public blacklist setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 350
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setCallerDisplayName"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 352
    return-void
.end method

.method public blacklist setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 223
    return-void
.end method

.method public blacklist setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isConference"    # Z
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 510
    return-void
.end method

.method public final blacklist setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 362
    .local p2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 365
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v2    # "id":Ljava/lang/String;
    :cond_30
    goto :goto_9

    .line 369
    :cond_31
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "setConferenceableConnections"

    if-eqz v1, :cond_46

    .line 370
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v1

    .line 371
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_4f

    .line 373
    :cond_46
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v1

    .line 374
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->setConferenceableConnections(Ljava/util/List;)V

    .line 376
    :goto_4f
    return-void
.end method

.method public blacklist setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 175
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "setConnectionCapabilities"

    if-eqz v0, :cond_19

    .line 176
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    goto :goto_22

    .line 179
    :cond_19
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 182
    :goto_22
    return-void
.end method

.method public blacklist setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionProperties"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 187
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "setConnectionProperties"

    if-eqz v0, :cond_19

    .line 188
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V

    goto :goto_22

    .line 191
    :cond_19
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setConnectionProperties(I)V

    .line 194
    :goto_22
    return-void
.end method

.method public blacklist setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 133
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDialing"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 134
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 135
    return-void
.end method

.method public blacklist setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 146
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "setDisconnected"

    if-eqz v0, :cond_19

    .line 147
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_22

    .line 150
    :cond_19
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 153
    :goto_22
    return-void
.end method

.method public blacklist setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 200
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 201
    const-string/jumbo v1, "setIsConferenced"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 202
    .local v0, "connection":Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-$$Nest$sfgetNULL_CONNECTION()Landroid/telecom/RemoteConnection;

    move-result-object v2

    if-eq v0, v2, :cond_2e

    .line 203
    if-nez p2, :cond_1f

    .line 205
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 206
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->removeConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_2e

    .line 209
    :cond_1f
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 210
    invoke-static {v2, p2, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v1

    .line 211
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-$$Nest$sfgetNULL_CONFERENCE()Landroid/telecom/RemoteConference;

    move-result-object v2

    if-eq v1, v2, :cond_2e

    .line 212
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    .line 216
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    :cond_2e
    :goto_2e
    return-void
.end method

.method public blacklist setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 329
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setIsVoipAudioMode"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 330
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    .line 331
    return-void
.end method

.method public blacklist setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 157
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const-string/jumbo v2, "setOnHold"

    if-eqz v0, :cond_1a

    .line 158
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    goto :goto_23

    .line 161
    :cond_1a
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1, v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 164
    :goto_23
    return-void
.end method

.method public blacklist setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 139
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setPulling"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 140
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 141
    return-void
.end method

.method public blacklist setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringing"    # Z
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 168
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setRingbackRequested"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    .line 170
    return-void
.end method

.method public blacklist setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 127
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setRinging"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 128
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 129
    return-void
.end method

.method public blacklist setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 336
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setStatusHints"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 337
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 338
    return-void
.end method

.method public blacklist setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    .registers 9
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 309
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "callingPackage":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/ConnectionService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 312
    .local v1, "targetSdkVersion":I
    const/4 v2, 0x0

    .line 313
    .local v2, "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    if-eqz p2, :cond_23

    .line 314
    new-instance v3, Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {v3, p2, v0, v1}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    move-object v2, v3

    .line 317
    :cond_23
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v4, "setVideoProvider"

    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v3

    .line 318
    invoke-virtual {v3, v2}, Landroid/telecom/RemoteConnection;->setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V

    .line 319
    return-void
.end method

.method public blacklist setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;

    .line 323
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setVideoState"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 325
    return-void
.end method

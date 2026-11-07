.class public Lcom/android/internal/telecom/IConnectionServiceAdapter$Default;
.super Ljava/lang/Object;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conference"    # Landroid/telecom/ParcelableConference;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "connection"    # Landroid/telecom/ParcelableConference;
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public blacklist onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V
    .registers 2
    .param p1, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    return-void
.end method

.method public blacklist onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "pHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public blacklist onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    return-void
.end method

.method public blacklist onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public blacklist onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public blacklist onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public blacklist putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public blacklist queryLocation(Ljava/lang/String;JLjava/lang/String;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "timeoutMillis"    # J
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ResultReceiver;
    .param p6, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public blacklist queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist requestCallEndpointChange(Ljava/lang/String;Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "endpoint"    # Landroid/telecom/CallEndpoint;
    .param p3, "callback"    # Landroid/os/ResultReceiver;
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist resetConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callIdi"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    return-void
.end method

.method public blacklist setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    return-void
.end method

.method public blacklist setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "audioRoute"    # I
    .param p3, "bluetoothAddress"    # Ljava/lang/String;
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public blacklist setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "direction"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isConference"    # Z
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public blacklist setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    .local p2, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionProperties"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringing"    # Z
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

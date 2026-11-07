.class public abstract Landroid/telecom/RemoteConnection$Callback;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V
    .registers 4
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .line 155
    return-void
.end method

.method public whitelist onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .registers 4
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .line 167
    return-void
.end method

.method public whitelist onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "conference"    # Landroid/telecom/RemoteConference;

    .line 219
    return-void
.end method

.method public whitelist onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConnection;",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    return-void
.end method

.method public whitelist onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "connectionCapabilities"    # I

    .line 95
    return-void
.end method

.method public whitelist onConnectionEvent(Landroid/telecom/RemoteConnection;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 238
    return-void
.end method

.method public whitelist onConnectionPropertiesChanged(Landroid/telecom/RemoteConnection;I)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "connectionProperties"    # I

    .line 106
    return-void
.end method

.method public whitelist onDestroyed(Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 184
    return-void
.end method

.method public whitelist onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 75
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/telecom/RemoteConnection;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 227
    return-void
.end method

.method public whitelist onPostDialChar(Landroid/telecom/RemoteConnection;C)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "nextChar"    # C

    .line 126
    return-void
.end method

.method public whitelist onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "remainingPostDialSequence"    # Ljava/lang/String;

    .line 117
    return-void
.end method

.method public greylist-max-o onRemoteRttRequest(Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 273
    return-void
.end method

.method public whitelist onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "ringback"    # Z

    .line 84
    return-void
.end method

.method public greylist-max-o onRttInitiationFailure(Landroid/telecom/RemoteConnection;I)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "reason"    # I

    .line 257
    return-void
.end method

.method public greylist-max-o onRttInitiationSuccess(Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 246
    return-void
.end method

.method public greylist-max-o onRttSessionRemotelyTerminated(Landroid/telecom/RemoteConnection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 265
    return-void
.end method

.method public whitelist onStateChanged(Landroid/telecom/RemoteConnection;I)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "state"    # I

    .line 64
    return-void
.end method

.method public whitelist onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .line 144
    return-void
.end method

.method public whitelist onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .line 207
    return-void
.end method

.method public whitelist onVideoStateChanged(Landroid/telecom/RemoteConnection;I)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "videoState"    # I

    .line 176
    return-void
.end method

.method public whitelist onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V
    .registers 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "isVoip"    # Z

    .line 135
    return-void
.end method

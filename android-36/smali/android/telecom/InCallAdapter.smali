.class public final Landroid/telecom/InCallAdapter;
.super Ljava/lang/Object;
.source "InCallAdapter.java"


# instance fields
.field private final greylist-max-o mAdapter:Lcom/android/internal/telecom/IInCallAdapter;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/internal/telecom/IInCallAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 362
    goto :goto_7

    .line 361
    :catch_6
    move-exception v0

    .line 363
    :goto_7
    return-void
.end method

.method public greylist-max-o answerCall(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->answerCall(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 66
    goto :goto_7

    .line 65
    :catch_6
    move-exception v0

    .line 67
    :goto_7
    return-void
.end method

.method public greylist-max-o conference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "otherCallId"    # Ljava/lang/String;

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 349
    goto :goto_7

    .line 348
    :catch_6
    move-exception v0

    .line 350
    :goto_7
    return-void
.end method

.method public greylist-max-o deflectCall(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;

    .line 77
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 79
    goto :goto_7

    .line 78
    :catch_6
    move-exception v0

    .line 80
    :goto_7
    return-void
.end method

.method public greylist-max-o disconnectCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->disconnectCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 147
    goto :goto_7

    .line 146
    :catch_6
    move-exception v0

    .line 148
    :goto_7
    return-void
.end method

.method public blacklist enterBackgroundAudioProcessing(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 203
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->enterBackgroundAudioProcessing(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 205
    goto :goto_7

    .line 204
    :catch_6
    move-exception v0

    .line 206
    :goto_7
    return-void
.end method

.method public blacklist exitBackgroundAudioProcessing(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "shouldRing"    # Z

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 215
    goto :goto_7

    .line 214
    :catch_6
    move-exception v0

    .line 216
    :goto_7
    return-void
.end method

.method public greylist-max-o handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "destAcct"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "videoState"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 580
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telecom/IInCallAdapter;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 582
    goto :goto_7

    .line 581
    :catch_6
    move-exception v0

    .line 583
    :goto_7
    return-void
.end method

.method public greylist-max-o holdCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->holdCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 159
    goto :goto_7

    .line 158
    :catch_6
    move-exception v0

    .line 160
    :goto_7
    return-void
.end method

.method public greylist-max-o mergeConference(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 385
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->mergeConference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 387
    goto :goto_7

    .line 386
    :catch_6
    move-exception v0

    .line 388
    :goto_7
    return-void
.end method

.method public greylist-max-o mute(Z)V
    .registers 3
    .param p1, "shouldMute"    # Z

    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->mute(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 183
    goto :goto_7

    .line 182
    :catch_6
    move-exception v0

    .line 184
    :goto_7
    return-void
.end method

.method public greylist-max-o phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "setDefault"    # Z

    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 336
    goto :goto_7

    .line 335
    :catch_6
    move-exception v0

    .line 337
    :goto_7
    return-void
.end method

.method public greylist-max-o playDtmfTone(Ljava/lang/String;C)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 279
    goto :goto_7

    .line 278
    :catch_6
    move-exception v0

    .line 280
    :goto_7
    return-void
.end method

.method public greylist-max-o postDialContinue(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .line 319
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->postDialContinue(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 321
    goto :goto_7

    .line 320
    :catch_6
    move-exception v0

    .line 322
    :goto_7
    return-void
.end method

.method public greylist-max-o pullExternalCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->pullExternalCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 409
    goto :goto_7

    .line 408
    :catch_6
    move-exception v0

    .line 410
    :goto_7
    return-void
.end method

.method public greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 465
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 466
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 469
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_f

    .line 468
    :catch_e
    move-exception v0

    .line 470
    :goto_f
    return-void
.end method

.method public greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 481
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 485
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_f

    .line 484
    :catch_e
    move-exception v0

    .line 486
    :goto_f
    return-void
.end method

.method public greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 449
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 453
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_f

    .line 452
    :catch_e
    move-exception v0

    .line 454
    :goto_f
    return-void
.end method

.method public greylist-max-o putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 435
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 437
    goto :goto_7

    .line 436
    :catch_6
    move-exception v0

    .line 438
    :goto_7
    return-void
.end method

.method public blacklist rejectCall(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectReason"    # I

    .line 104
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->rejectCallWithReason(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 106
    goto :goto_7

    .line 105
    :catch_6
    move-exception v0

    .line 107
    :goto_7
    return-void
.end method

.method public greylist-max-o rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "textMessage"    # Ljava/lang/String;

    .line 91
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 93
    goto :goto_7

    .line 92
    :catch_6
    move-exception v0

    .line 94
    :goto_7
    return-void
.end method

.method public greylist-max-o removeExtras(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 495
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 497
    goto :goto_7

    .line 496
    :catch_6
    move-exception v0

    .line 498
    :goto_7
    return-void
.end method

.method public greylist-max-o requestBluetoothAudio(Ljava/lang/String;)V
    .registers 4
    .param p1, "bluetoothAddress"    # Ljava/lang/String;

    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->setAudioRoute(ILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 230
    goto :goto_8

    .line 229
    :catch_7
    move-exception v0

    .line 231
    :goto_8
    return-void
.end method

.method public blacklist requestCallEndpointChange(Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "endpoint"    # Landroid/telecom/CallEndpoint;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/CallEndpoint;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallEndpointException;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/telecom/CallEndpointException;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    new-instance v1, Landroid/telecom/InCallAdapter$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p3}, Landroid/telecom/InCallAdapter$1;-><init>(Landroid/telecom/InCallAdapter;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/IInCallAdapter;->requestCallEndpointChange(Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 263
    goto :goto_15

    .line 261
    :catch_c
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Remote exception calling requestCallEndpointChange"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method public greylist-max-o respondToRttRequest(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "accept"    # Z

    .line 542
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->respondToRttRequest(Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 544
    goto :goto_7

    .line 543
    :catch_6
    move-exception v0

    .line 545
    :goto_7
    return-void
.end method

.method public greylist-max-o sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "targetSdkVer"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 422
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telecom/IInCallAdapter;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 424
    goto :goto_7

    .line 423
    :catch_6
    move-exception v0

    .line 425
    :goto_7
    return-void
.end method

.method public greylist-max-o sendRttRequest(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 529
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->sendRttRequest(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 531
    goto :goto_7

    .line 530
    :catch_6
    move-exception v0

    .line 532
    :goto_7
    return-void
.end method

.method public greylist-max-o setAudioRoute(I)V
    .registers 4
    .param p1, "route"    # I

    .line 193
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/IInCallAdapter;->setAudioRoute(ILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 195
    goto :goto_8

    .line 194
    :catch_7
    move-exception v0

    .line 196
    :goto_8
    return-void
.end method

.method public greylist-max-o setRttMode(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 563
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->setRttMode(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 565
    goto :goto_7

    .line 564
    :catch_6
    move-exception v0

    .line 566
    :goto_7
    return-void
.end method

.method public greylist-max-o splitFromConference(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 375
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->splitFromConference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 377
    goto :goto_7

    .line 376
    :catch_6
    move-exception v0

    .line 378
    :goto_7
    return-void
.end method

.method public greylist-max-o stopDtmfTone(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 295
    goto :goto_7

    .line 294
    :catch_6
    move-exception v0

    .line 296
    :goto_7
    return-void
.end method

.method public greylist-max-o stopRtt(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 552
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->stopRtt(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 554
    goto :goto_7

    .line 553
    :catch_6
    move-exception v0

    .line 555
    :goto_7
    return-void
.end method

.method public greylist-max-o swapConference(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 395
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->swapConference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 397
    goto :goto_7

    .line 396
    :catch_6
    move-exception v0

    .line 398
    :goto_7
    return-void
.end method

.method public blacklist transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "targetNumber"    # Landroid/net/Uri;
    .param p3, "isConfirmationRequired"    # Z

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 122
    goto :goto_7

    .line 121
    :catch_6
    move-exception v0

    .line 123
    :goto_7
    return-void
.end method

.method public blacklist transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "otherCallId"    # Ljava/lang/String;

    .line 133
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 135
    goto :goto_7

    .line 134
    :catch_6
    move-exception v0

    .line 136
    :goto_7
    return-void
.end method

.method public greylist-max-o turnProximitySensorOff(Z)V
    .registers 3
    .param p1, "screenOnImmediately"    # Z

    .line 519
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->turnOffProximitySensor(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 521
    goto :goto_7

    .line 520
    :catch_6
    move-exception v0

    .line 522
    :goto_7
    return-void
.end method

.method public greylist-max-o turnProximitySensorOn()V
    .registers 2

    .line 505
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0}, Lcom/android/internal/telecom/IInCallAdapter;->turnOnProximitySensor()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 507
    goto :goto_7

    .line 506
    :catch_6
    move-exception v0

    .line 508
    :goto_7
    return-void
.end method

.method public greylist-max-o unholdCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->unholdCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 171
    goto :goto_7

    .line 170
    :catch_6
    move-exception v0

    .line 172
    :goto_7
    return-void
.end method

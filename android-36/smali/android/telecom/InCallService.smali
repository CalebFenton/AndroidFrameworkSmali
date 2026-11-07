.class public abstract Landroid/telecom/InCallService;
.super Landroid/app/Service;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/InCallService$InCallServiceBinder;,
        Landroid/telecom/InCallService$VideoCall;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_ADD_CALL:I = 0x2

.field private static final greylist-max-o MSG_BRING_TO_FOREGROUND:I = 0x6

.field private static final blacklist MSG_ON_AVAILABLE_CALL_ENDPOINTS_CHANGED:I = 0xf

.field private static final greylist-max-o MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x5

.field private static final blacklist MSG_ON_CALL_ENDPOINT_CHANGED:I = 0xe

.field private static final greylist-max-o MSG_ON_CAN_ADD_CALL_CHANGED:I = 0x7

.field private static final greylist-max-o MSG_ON_CONNECTION_EVENT:I = 0x9

.field private static final greylist-max-o MSG_ON_HANDOVER_COMPLETE:I = 0xd

.field private static final greylist-max-o MSG_ON_HANDOVER_FAILED:I = 0xc

.field private static final blacklist MSG_ON_MUTE_STATE_CHANGED:I = 0x10

.field private static final greylist-max-o MSG_ON_RTT_INITIATION_FAILURE:I = 0xb

.field private static final greylist-max-o MSG_ON_RTT_UPGRADE_REQUEST:I = 0xa

.field private static final greylist-max-o MSG_SET_IN_CALL_ADAPTER:I = 0x1

.field private static final greylist-max-o MSG_SET_POST_DIAL_WAIT:I = 0x4

.field private static final greylist-max-o MSG_SILENCE_RINGER:I = 0x8

.field private static final greylist-max-o MSG_UPDATE_CALL:I = 0x3

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.InCallService"


# instance fields
.field private blacklist mCallEndpoint:Landroid/telecom/CallEndpoint;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mPhone:Landroid/telecom/Phone;

.field private greylist-max-o mPhoneListener:Landroid/telecom/Phone$Listener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallEndpoint(Landroid/telecom/InCallService;)Landroid/telecom/CallEndpoint;
    .registers 1

    iget-object p0, p0, Landroid/telecom/InCallService;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/InCallService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;
    .registers 1

    iget-object p0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneListener(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;
    .registers 1

    iget-object p0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallEndpoint(Landroid/telecom/InCallService;Landroid/telecom/CallEndpoint;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/InCallService;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhone(Landroid/telecom/InCallService;Landroid/telecom/Phone;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 532
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 283
    new-instance v0, Landroid/telecom/InCallService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$1;-><init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    .line 487
    new-instance v0, Landroid/telecom/InCallService$2;

    invoke-direct {v0, p0}, Landroid/telecom/InCallService$2;-><init>(Landroid/telecom/InCallService;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    .line 533
    return-void
.end method


# virtual methods
.method public final whitelist canAddCall()Z
    .registers 2

    .line 588
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->canAddCall()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public final greylist-max-o getAudioState()Landroid/telecom/AudioState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 615
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public final whitelist getCalls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCalls()Ljava/util/List;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public final whitelist getCurrentCallEndpoint()Landroid/telecom/CallEndpoint;
    .registers 2

    .line 688
    iget-object v0, p0, Landroid/telecom/InCallService;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    return-object v0
.end method

.method public whitelist getPhone()Landroid/telecom/Phone;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 570
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method public greylist-max-o onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .param p1, "audioState"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
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

    .line 758
    .local p1, "availableEndpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 537
    new-instance v0, Landroid/telecom/InCallService$InCallServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService-IA;)V

    return-object v0
.end method

.method public whitelist onBringToForeground(Z)V
    .registers 2
    .param p1, "showDialpad"    # Z

    .line 776
    return-void
.end method

.method public whitelist onCallAdded(Landroid/telecom/Call;)V
    .registers 2
    .param p1, "call"    # Landroid/telecom/Call;

    .line 788
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 742
    return-void
.end method

.method public whitelist onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V
    .registers 2
    .param p1, "callEndpoint"    # Landroid/telecom/CallEndpoint;

    .line 750
    return-void
.end method

.method public whitelist onCallRemoved(Landroid/telecom/Call;)V
    .registers 2
    .param p1, "call"    # Landroid/telecom/Call;

    .line 799
    return-void
.end method

.method public whitelist onCanAddCallChanged(Z)V
    .registers 2
    .param p1, "canAddCall"    # Z

    .line 809
    return-void
.end method

.method public whitelist onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 828
    return-void
.end method

.method public whitelist onMuteStateChanged(Z)V
    .registers 2
    .param p1, "isMuted"    # Z

    .line 766
    return-void
.end method

.method public whitelist onPhoneCreated(Landroid/telecom/Phone;)V
    .registers 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 704
    return-void
.end method

.method public whitelist onPhoneDestroyed(Landroid/telecom/Phone;)V
    .registers 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 719
    return-void
.end method

.method public whitelist onSilenceRinger()V
    .registers 1

    .line 815
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 542
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_14

    .line 543
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    .line 544
    .local v0, "oldPhone":Landroid/telecom/Phone;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    .line 546
    invoke-virtual {v0}, Landroid/telecom/Phone;->destroy()V

    .line 550
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->removeListener(Landroid/telecom/Phone$Listener;)V

    .line 552
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->onPhoneDestroyed(Landroid/telecom/Phone;)V

    .line 555
    .end local v0    # "oldPhone":Landroid/telecom/Phone;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 658
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_d

    .line 659
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->requestBluetoothAudio(Ljava/lang/String;)V

    .line 661
    :cond_d
    return-void
.end method

.method public final whitelist requestCallEndpointChange(Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
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

    .line 676
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/telecom/CallEndpointException;>;"
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_9

    .line 677
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telecom/Phone;->requestCallEndpointChange(Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 679
    :cond_9
    return-void
.end method

.method public final whitelist setAudioRoute(I)V
    .registers 3
    .param p1, "route"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_9

    .line 641
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setAudioRoute(I)V

    .line 643
    :cond_9
    return-void
.end method

.method public final whitelist setMuted(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 625
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_9

    .line 626
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setMuted(Z)V

    .line 628
    :cond_9
    return-void
.end method

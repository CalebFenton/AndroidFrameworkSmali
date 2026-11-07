.class public Landroid/net/sip/SipAudioCall$Listener;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipAudioCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCallBusy(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 143
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 144
    return-void
.end method

.method public whitelist onCallEnded(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 133
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 134
    return-void
.end method

.method public whitelist onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 123
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 124
    return-void
.end method

.method public whitelist onCallHeld(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 153
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 154
    return-void
.end method

.method public whitelist onCalling(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 92
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 93
    return-void
.end method

.method public whitelist onChanged(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 176
    return-void
.end method

.method public whitelist onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .registers 4
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 167
    return-void
.end method

.method public whitelist onReadyToCall(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 82
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 83
    return-void
.end method

.method public whitelist onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V
    .registers 3
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;

    .line 103
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 104
    return-void
.end method

.method public whitelist onRingingBack(Landroid/net/sip/SipAudioCall;)V
    .registers 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 113
    invoke-virtual {p0, p1}, Landroid/net/sip/SipAudioCall$Listener;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 114
    return-void
.end method

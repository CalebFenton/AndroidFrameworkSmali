.class public Landroid/net/sip/SipSession$Listener;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCallBusy(Landroid/net/sip/SipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 165
    return-void
.end method

.method public whitelist onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 199
    return-void
.end method

.method public whitelist onCallEnded(Landroid/net/sip/SipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 157
    return-void
.end method

.method public whitelist onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .line 149
    return-void
.end method

.method public greylist-max-o onCallTransferring(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .registers 3
    .param p1, "newSession"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .line 176
    return-void
.end method

.method public whitelist onCalling(Landroid/net/sip/SipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 120
    return-void
.end method

.method public whitelist onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 188
    return-void
.end method

.method public whitelist onRegistering(Landroid/net/sip/SipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 207
    return-void
.end method

.method public whitelist onRegistrationDone(Landroid/net/sip/SipSession;I)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "duration"    # I

    .line 216
    return-void
.end method

.method public whitelist onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 227
    return-void
.end method

.method public whitelist onRegistrationTimeout(Landroid/net/sip/SipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 235
    return-void
.end method

.method public whitelist onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    .line 131
    return-void
.end method

.method public whitelist onRingingBack(Landroid/net/sip/SipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 139
    return-void
.end method

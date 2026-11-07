.class public Landroid/net/sip/SipSessionAdapter;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSessionAdapter.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallBusy(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 43
    return-void
.end method

.method public blacklist onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method public blacklist onCallEnded(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 40
    return-void
.end method

.method public blacklist onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .line 37
    return-void
.end method

.method public blacklist onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .line 47
    return-void
.end method

.method public blacklist onCalling(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 26
    return-void
.end method

.method public blacklist onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 54
    return-void
.end method

.method public blacklist onRegistering(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 57
    return-void
.end method

.method public blacklist onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    .line 60
    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 64
    return-void
.end method

.method public blacklist onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 67
    return-void
.end method

.method public blacklist onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    .line 30
    return-void
.end method

.method public blacklist onRingingBack(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 33
    return-void
.end method

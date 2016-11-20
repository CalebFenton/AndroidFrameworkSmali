.class public Landroid/net/sip/SipSessionAdapter;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSessionAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/ISipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 42
    return-void
.end method

.method public onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/ISipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 39
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    return-void
.end method

.method public onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    return-void
.end method

.method public onCalling(Landroid/net/sip/ISipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 25
    return-void
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 56
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    #@0
    .prologue
    .line 59
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 66
    return-void
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/ISipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 32
    return-void
.end method

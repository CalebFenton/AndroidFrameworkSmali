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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 162
    return-void
.end method

.method public onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 196
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 154
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 146
    return-void
.end method

.method public onCallTransferring(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "newSession"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    return-void
.end method

.method public onCalling(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 117
    return-void
.end method

.method public onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    return-void
.end method

.method public onRegistering(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 204
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/SipSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "duration"    # I

    #@0
    .prologue
    .line 213
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 232
    return-void
.end method

.method public onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    #@0
    .prologue
    .line 136
    return-void
.end method

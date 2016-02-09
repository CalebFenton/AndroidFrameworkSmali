.class Landroid/net/sip/SipManager$ListenerRelay;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRelay"
.end annotation


# instance fields
.field private mListener:Landroid/net/sip/SipRegistrationListener;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 599
    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    #@3
    .line 600
    iput-object p1, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    #@5
    .line 601
    iput-object p2, p0, Landroid/net/sip/SipManager$ListenerRelay;->mUri:Ljava/lang/String;

    #@7
    .line 599
    return-void
.end method

.method private getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;
    .locals 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 606
    if-nez p1, :cond_0

    #@3
    .line 607
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager$ListenerRelay;->mUri:Ljava/lang/String;

    #@5
    .line 606
    :goto_0
    return-object v1

    #@6
    .line 608
    :cond_0
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    goto :goto_0

    #@f
    .line 609
    :catch_0
    move-exception v0

    #@10
    .line 611
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "SipManager"

    #@13
    const-string/jumbo v2, "getUri(): "

    #@16
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 612
    return-object v3
.end method


# virtual methods
.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 618
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    #@2
    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Landroid/net/sip/SipRegistrationListener;->onRegistering(Ljava/lang/String;)V

    #@9
    .line 617
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    #@0
    .prologue
    .line 623
    int-to-long v0, p2

    #@1
    .line 624
    .local v0, "expiryTime":J
    if-lez p2, :cond_0

    #@3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v2

    #@7
    add-long/2addr v0, v2

    #@8
    .line 625
    :cond_0
    iget-object v2, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    #@a
    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v2, v3, v0, v1}, Landroid/net/sip/SipRegistrationListener;->onRegistrationDone(Ljava/lang/String;J)V

    #@11
    .line 622
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 631
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    #@2
    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1, p2, p3}, Landroid/net/sip/SipRegistrationListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    #@9
    .line 630
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 636
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    #@2
    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 637
    const-string/jumbo v2, "registration timed out"

    #@9
    const/4 v3, -0x5

    #@a
    .line 636
    invoke-interface {v0, v1, v3, v2}, Landroid/net/sip/SipRegistrationListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    #@d
    .line 635
    return-void
.end method

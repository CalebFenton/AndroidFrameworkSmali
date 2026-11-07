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
.field private greylist-max-o mListener:Landroid/net/sip/SipRegistrationListener;

.field private greylist-max-o mUri:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .param p2, "uri"    # Ljava/lang/String;

    .line 643
    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 644
    iput-object p1, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    .line 645
    iput-object p2, p0, Landroid/net/sip/SipManager$ListenerRelay;->mUri:Ljava/lang/String;

    .line 646
    return-void
.end method

.method private greylist-max-o getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;
    .registers 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 650
    if-nez p1, :cond_5

    .line 651
    :try_start_2
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mUri:Ljava/lang/String;

    goto :goto_d

    .line 652
    :cond_5
    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_e

    .line 650
    :goto_d
    return-object v0

    .line 653
    :catchall_e
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SipManager"

    const-string v2, "getUri(): "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist onRegistering(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 662
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/sip/SipRegistrationListener;->onRegistering(Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public blacklist onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .registers 7
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    .line 667
    int-to-long v0, p2

    .line 668
    .local v0, "expiryTime":J
    if-lez p2, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 669
    :cond_8
    iget-object v2, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/net/sip/SipRegistrationListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 670
    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 6
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 675
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/net/sip/SipRegistrationListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 676
    return-void
.end method

.method public blacklist onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .registers 6
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 680
    iget-object v0, p0, Landroid/net/sip/SipManager$ListenerRelay;->mListener:Landroid/net/sip/SipRegistrationListener;

    invoke-direct {p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;->getUri(Landroid/net/sip/ISipSession;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    const-string v3, "registration timed out"

    invoke-interface {v0, v1, v2, v3}, Landroid/net/sip/SipRegistrationListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 682
    return-void
.end method

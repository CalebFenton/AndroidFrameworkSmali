.class Lcom/android/server/sip/SipSessionListenerProxy;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSessionListenerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SipSessionListnerProxy"


# instance fields
.field private mListener:Landroid/net/sip/ISipSessionListener;


# direct methods
.method static synthetic -get0(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    #@3
    return-void
.end method

.method private handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 249
    instance-of v0, p1, Landroid/os/DeadObjectException;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 250
    iput-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@7
    .line 248
    :cond_0
    :goto_0
    return-void

    #@8
    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 254
    invoke-direct {p0, p2, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 259
    const-string/jumbo v0, "SipSessionListnerProxy"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 258
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 263
    const-string/jumbo v0, "SipSessionListnerProxy"

    #@3
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 262
    return-void
.end method

.method private proxy(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/lang/Thread;

    #@2
    const-string/jumbo v1, "SipSessionCallbackThread"

    #@5
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@b
    .line 39
    return-void
.end method


# virtual methods
.method public getListener()Landroid/net/sip/ISipSessionListener;
    .locals 1

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    return-object v0
.end method

.method public onCallBusy(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 142
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$7;

    #@7
    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$7;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 140
    return-void
.end method

.method public onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 158
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$8;

    #@7
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$8;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 156
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 111
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$5;

    #@7
    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$5;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 109
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 96
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$4;

    #@7
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$4;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 94
    return-void
.end method

.method public onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 1
    .param p1, "newSession"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 127
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$6;

    #@7
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$6;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 125
    return-void
.end method

.method public onCalling(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 49
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$1;

    #@7
    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$1;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 47
    return-void
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 174
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$9;

    #@7
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$9;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 172
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 189
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$10;

    #@7
    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$10;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 187
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 205
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$11;

    #@7
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$11;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;I)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 203
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 221
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$12;

    #@7
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$12;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 219
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 236
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$13;

    #@7
    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$13;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 234
    return-void
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 65
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$2;

    #@7
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$2;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 63
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/ISipSession;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 80
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$3;

    #@7
    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$3;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    #@d
    .line 78
    return-void
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    #@0
    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    #@2
    .line 31
    return-void
.end method

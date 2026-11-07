.class Lcom/android/server/sip/SipSessionListenerProxy;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSessionListenerProxy.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SipSessionListnerProxy"


# instance fields
.field private blacklist mListener:Landroid/net/sip/ISipSessionListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandle(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method

.method private blacklist handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .line 249
    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_8

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    goto :goto_f

    .line 253
    :cond_8
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-eqz v0, :cond_f

    .line 254
    invoke-direct {p0, p2, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    :cond_f
    :goto_f
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 259
    const-string v0, "SipSessionListnerProxy"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 263
    const-string v0, "SipSessionListnerProxy"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    return-void
.end method

.method private blacklist proxy(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 43
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SipSessionCallbackThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getListener()Landroid/net/sip/ISipSessionListener;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    return-object v0
.end method

.method public blacklist onCallBusy(Landroid/net/sip/ISipSession;)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 141
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 142
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$7;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public blacklist onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 158
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$8;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public blacklist onCallEnded(Landroid/net/sip/ISipSession;)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 110
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 111
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$5;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public blacklist onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 96
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$4;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public blacklist onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .registers 4
    .param p1, "newSession"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 127
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$6;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public blacklist onCalling(Landroid/net/sip/ISipSession;)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 48
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 49
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$1;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public blacklist onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 174
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$9;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public blacklist onRegistering(Landroid/net/sip/ISipSession;)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 188
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 189
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$10;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public blacklist onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    .line 204
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 205
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy$11;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;I)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 221
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$12;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method public blacklist onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 235
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 236
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$13;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$13;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method public blacklist onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 65
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy$2;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public blacklist onRingingBack(Landroid/net/sip/ISipSession;)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 79
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    if-nez v0, :cond_5

    return-void

    .line 80
    :cond_5
    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionListenerProxy$3;-><init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public blacklist setListener(Landroid/net/sip/ISipSessionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    .line 32
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;

    .line 33
    return-void
.end method

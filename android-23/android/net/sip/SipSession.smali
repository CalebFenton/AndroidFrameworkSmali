.class public final Landroid/net/sip/SipSession;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipSession$State;,
        Landroid/net/sip/SipSession$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SipSession"


# instance fields
.field private mListener:Landroid/net/sip/SipSession$Listener;

.field private final mSession:Landroid/net/sip/ISipSession;


# direct methods
.method static synthetic -get0(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "realSession"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 240
    iput-object p1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@5
    .line 241
    if-eqz p1, :cond_0

    #@7
    .line 243
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipSession;->createListener()Landroid/net/sip/ISipSessionListener;

    #@a
    move-result-object v1

    #@b
    invoke-interface {p1, v1}, Landroid/net/sip/ISipSession;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 239
    :cond_0
    :goto_0
    return-void

    #@f
    .line 244
    :catch_0
    move-exception v0

    #@10
    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SipSession.setListener:"

    #@13
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    goto :goto_0
.end method

.method constructor <init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V
    .locals 0
    .param p1, "realSession"    # Landroid/net/sip/ISipSession;
    .param p2, "listener"    # Landroid/net/sip/SipSession$Listener;

    #@0
    .prologue
    .line 251
    invoke-direct {p0, p1}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V

    #@3
    .line 252
    invoke-virtual {p0, p2}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    #@6
    .line 250
    return-void
.end method

.method private createListener()Landroid/net/sip/ISipSessionListener;
    .locals 1

    #@0
    .prologue
    .line 465
    new-instance v0, Landroid/net/sip/SipSession$1;

    #@2
    invoke-direct {v0, p0}, Landroid/net/sip/SipSession$1;-><init>(Landroid/net/sip/SipSession;)V

    #@5
    return-object v0
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 572
    const-string/jumbo v0, "SipSession"

    #@3
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 571
    return-void
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    #@0
    .prologue
    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/sip/ISipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 419
    :goto_0
    return-void

    #@6
    .line 422
    :catch_0
    move-exception v0

    #@7
    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "answerCall:"

    #@a
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    goto :goto_0
.end method

.method public changeCall(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    #@0
    .prologue
    .line 454
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/sip/ISipSession;->changeCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 452
    :goto_0
    return-void

    #@6
    .line 455
    :catch_0
    move-exception v0

    #@7
    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "changeCall:"

    #@a
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    goto :goto_0
.end method

.method public endCall()V
    .locals 2

    #@0
    .prologue
    .line 437
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->endCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 435
    :goto_0
    return-void

    #@6
    .line 438
    :catch_0
    move-exception v0

    #@7
    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "endCall:"

    #@a
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getCallId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 335
    :catch_0
    move-exception v0

    #@8
    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getCallId:"

    #@b
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    .line 337
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getLocalIp()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 263
    :catch_0
    move-exception v0

    #@8
    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getLocalIp:"

    #@b
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    .line 265
    const-string/jumbo v1, "127.0.0.1"

    #@11
    return-object v1
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 2

    #@0
    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 277
    :catch_0
    move-exception v0

    #@8
    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getLocalProfile:"

    #@b
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    .line 279
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 2

    #@0
    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getPeerProfile()Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 292
    :catch_0
    move-exception v0

    #@8
    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getPeerProfile:"

    #@b
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    .line 294
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method getRealSession()Landroid/net/sip/ISipSession;
    .locals 1

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 2

    #@0
    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 307
    :catch_0
    move-exception v0

    #@8
    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getState:"

    #@b
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    .line 309
    const/16 v1, 0x65

    #@10
    return v1
.end method

.method public isInCall()Z
    .locals 2

    #@0
    .prologue
    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->isInCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 321
    :catch_0
    move-exception v0

    #@8
    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "isInCall:"

    #@b
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    .line 323
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 2
    .param p1, "callee"    # Landroid/net/sip/SipProfile;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    #@0
    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/net/sip/ISipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 401
    :goto_0
    return-void

    #@6
    .line 404
    :catch_0
    move-exception v0

    #@7
    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "makeCall:"

    #@a
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    goto :goto_0
.end method

.method public register(I)V
    .locals 2
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1, p1}, Landroid/net/sip/ISipSession;->register(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 363
    :goto_0
    return-void

    #@6
    .line 366
    :catch_0
    move-exception v0

    #@7
    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "register:"

    #@a
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    goto :goto_0
.end method

.method public setListener(Landroid/net/sip/SipSession$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/sip/SipSession$Listener;

    #@0
    .prologue
    .line 350
    iput-object p1, p0, Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;

    #@2
    .line 349
    return-void
.end method

.method public unregister()V
    .locals 2

    #@0
    .prologue
    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    #@2
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->unregister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 380
    :goto_0
    return-void

    #@6
    .line 383
    :catch_0
    move-exception v0

    #@7
    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "unregister:"

    #@a
    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    goto :goto_0
.end method

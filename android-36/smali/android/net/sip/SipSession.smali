.class public final Landroid/net/sip/SipSession;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipSession$Listener;,
        Landroid/net/sip/SipSession$State;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SipSession"


# instance fields
.field private greylist-max-o mListener:Landroid/net/sip/SipSession$Listener;

.field private final greylist-max-o mSession:Landroid/net/sip/ISipSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;
    .registers 1

    iget-object p0, p0, Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "realSession"    # Landroid/net/sip/ISipSession;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    .line 243
    if-eqz p1, :cond_15

    .line 245
    :try_start_7
    invoke-direct {p0}, Landroid/net/sip/SipSession;->createListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/net/sip/ISipSession;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 248
    goto :goto_15

    .line 246
    :catch_f
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SipSession.setListener:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V
    .registers 3
    .param p1, "realSession"    # Landroid/net/sip/ISipSession;
    .param p2, "listener"    # Landroid/net/sip/SipSession$Listener;

    .line 253
    invoke-direct {p0, p1}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V

    .line 254
    invoke-virtual {p0, p2}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 255
    return-void
.end method

.method private greylist-max-o createListener()Landroid/net/sip/ISipSessionListener;
    .registers 2

    .line 467
    new-instance v0, Landroid/net/sip/SipSession$1;

    invoke-direct {v0, p0}, Landroid/net/sip/SipSession$1;-><init>(Landroid/net/sip/SipSession;)V

    return-object v0
.end method

.method private greylist-max-o loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 574
    const-string v0, "SipSession"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    return-void
.end method


# virtual methods
.method public whitelist answerCall(Ljava/lang/String;I)V
    .registers 5
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 423
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0, p1, p2}, Landroid/net/sip/ISipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 426
    goto :goto_c

    .line 424
    :catch_6
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "answerCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist changeCall(Ljava/lang/String;I)V
    .registers 5
    .param p1, "sessionDescription"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 456
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0, p1, p2}, Landroid/net/sip/ISipSession;->changeCall(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 459
    goto :goto_c

    .line 457
    :catch_6
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "changeCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist endCall()V
    .registers 3

    .line 439
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0}, Landroid/net/sip/ISipSession;->endCall()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 442
    goto :goto_c

    .line 440
    :catch_6
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "endCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .registers 3

    .line 336
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0}, Landroid/net/sip/ISipSession;->getCallId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 337
    :catch_7
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getCallId:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getLocalIp()Ljava/lang/String;
    .registers 3

    .line 264
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0}, Landroid/net/sip/ISipSession;->getLocalIp()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 265
    :catch_7
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getLocalIp:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    const-string v1, "127.0.0.1"

    return-object v1
.end method

.method public whitelist getLocalProfile()Landroid/net/sip/SipProfile;
    .registers 3

    .line 278
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 279
    :catch_7
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getLocalProfile:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPeerProfile()Landroid/net/sip/SipProfile;
    .registers 3

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0}, Landroid/net/sip/ISipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 294
    :catch_7
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getPeerProfile:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getRealSession()Landroid/net/sip/ISipSession;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 3

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0}, Landroid/net/sip/ISipSession;->getState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 309
    :catch_7
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getState:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    const/16 v1, 0x65

    return v1
.end method

.method public whitelist isInCall()Z
    .registers 3

    .line 322
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0}, Landroid/net/sip/ISipSession;->isInCall()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 323
    :catch_7
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "isInCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .registers 6
    .param p1, "callee"    # Landroid/net/sip/SipProfile;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .line 405
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/sip/ISipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 408
    goto :goto_c

    .line 406
    :catch_6
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "makeCall:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist register(I)V
    .registers 4
    .param p1, "duration"    # I

    .line 367
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0, p1}, Landroid/net/sip/ISipSession;->register(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 370
    goto :goto_c

    .line 368
    :catch_6
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "register:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist setListener(Landroid/net/sip/SipSession$Listener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/sip/SipSession$Listener;

    .line 352
    iput-object p1, p0, Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;

    .line 353
    return-void
.end method

.method public whitelist unregister()V
    .registers 3

    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipSession;->mSession:Landroid/net/sip/ISipSession;

    invoke-interface {v0}, Landroid/net/sip/ISipSession;->unregister()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 387
    goto :goto_c

    .line 385
    :catch_6
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "unregister:"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipSession;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.class public Landroid/net/sip/SipManager;
.super Ljava/lang/Object;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipManager$ListenerRelay;
    }
.end annotation


# static fields
.field public static final ACTION_SIP_ADD_PHONE:Ljava/lang/String; = "com.android.phone.SIP_ADD_PHONE"

.field public static final ACTION_SIP_CALL_OPTION_CHANGED:Ljava/lang/String; = "com.android.phone.SIP_CALL_OPTION_CHANGED"

.field public static final ACTION_SIP_INCOMING_CALL:Ljava/lang/String; = "com.android.phone.SIP_INCOMING_CALL"

.field public static final ACTION_SIP_REMOVE_PHONE:Ljava/lang/String; = "com.android.phone.SIP_REMOVE_PHONE"

.field public static final ACTION_SIP_SERVICE_UP:Ljava/lang/String; = "android.net.sip.SIP_SERVICE_UP"

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android:sipCallID"

.field public static final EXTRA_LOCAL_URI:Ljava/lang/String; = "android:localSipUri"

.field public static final EXTRA_OFFER_SD:Ljava/lang/String; = "android:sipOfferSD"

.field public static final INCOMING_CALL_RESULT_CODE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SipManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSipService:Landroid/net/sip/ISipService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 169
    iput-object p1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@5
    .line 170
    invoke-direct {p0}, Landroid/net/sip/SipManager;->createSipService()V

    #@8
    .line 168
    return-void
.end method

.method public static createIncomingCallBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "callId"    # Ljava/lang/String;
    .param p1, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 470
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 471
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android:sipCallID"

    #@8
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@b
    .line 472
    const-string/jumbo v1, "android:sipOfferSD"

    #@e
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@11
    .line 473
    return-object v0
.end method

.method private static createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;
    .locals 1
    .param p0, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 555
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    new-instance v0, Landroid/net/sip/SipManager$ListenerRelay;

    #@6
    invoke-direct {v0, p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;-><init>(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)V

    #@9
    goto :goto_0
.end method

.method private createSipService()V
    .locals 2

    #@0
    .prologue
    .line 174
    const-string/jumbo v1, "sip"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 175
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/sip/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipService;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@d
    .line 173
    return-void
.end method

.method public static getCallId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 445
    const-string/jumbo v0, "android:sipCallID"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 457
    const-string/jumbo v0, "android:sipOfferSD"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static isApiSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    .line 149
    const-string/jumbo v1, "android.software.sip"

    #@7
    .line 148
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static isIncomingCallIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 432
    if-nez p0, :cond_0

    #@3
    return v2

    #@4
    .line 433
    :cond_0
    invoke-static {p0}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 434
    .local v0, "callId":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/sip/SipManager;->getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 435
    .local v1, "offerSd":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@e
    if-eqz v1, :cond_1

    #@10
    const/4 v2, 0x1

    #@11
    :cond_1
    return v2
.end method

.method public static isSipWifiOnly(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 165
    const v1, 0x1120057

    #@7
    .line 164
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static isVoipSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    .line 157
    const-string/jumbo v1, "android.software.sip.voip"

    #@7
    .line 156
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 157
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    #@10
    move-result v0

    #@11
    .line 156
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 141
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    new-instance v0, Landroid/net/sip/SipManager;

    #@8
    invoke-direct {v0, p0}, Landroid/net/sip/SipManager;-><init>(Landroid/content/Context;)V

    #@b
    :goto_0
    return-object v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 3
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/net/sip/ISipService;->close(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 269
    return-void

    #@c
    .line 272
    :catch_0
    move-exception v0

    #@d
    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@f
    const-string/jumbo v2, "close()"

    #@12
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method

.method public createSipSession(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession$Listener;)Landroid/net/sip/SipSession;
    .locals 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "listener"    # Landroid/net/sip/SipSession$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 569
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2
    .line 570
    iget-object v3, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 569
    const/4 v4, 0x0

    #@9
    invoke-interface {v2, p1, v4, v3}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@c
    move-result-object v1

    #@d
    .line 571
    .local v1, "s":Landroid/net/sip/ISipSession;
    if-nez v1, :cond_0

    #@f
    .line 572
    new-instance v2, Landroid/net/sip/SipException;

    #@11
    .line 573
    const-string/jumbo v3, "Failed to create SipSession; network unavailable?"

    #@14
    .line 572
    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 576
    .end local v1    # "s":Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v0

    #@19
    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/net/sip/SipException;

    #@1b
    const-string/jumbo v3, "createSipSession()"

    #@1e
    invoke-direct {v2, v3, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@21
    throw v2

    #@22
    .line 575
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "s":Landroid/net/sip/ISipSession;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/net/sip/SipSession;

    #@24
    invoke-direct {v2, v1, p2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@27
    return-object v2
.end method

.method public getListOfProfiles()[Landroid/net/sip/SipProfile;
    .locals 3

    #@0
    .prologue
    .line 588
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Landroid/net/sip/ISipService;->getListOfProfiles(Ljava/lang/String;)[Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 589
    :catch_0
    move-exception v0

    #@e
    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    new-array v1, v1, [Landroid/net/sip/SipProfile;

    #@11
    return-object v1
.end method

.method public getSessionFor(Landroid/content/Intent;)Landroid/net/sip/SipSession;
    .locals 6
    .param p1, "incomingCallIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 544
    :try_start_0
    invoke-static {p1}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 545
    .local v0, "callId":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@7
    .line 546
    iget-object v5, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 545
    invoke-interface {v4, v0, v5}, Landroid/net/sip/ISipService;->getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@10
    move-result-object v2

    #@11
    .line 547
    .local v2, "s":Landroid/net/sip/ISipSession;
    if-nez v2, :cond_0

    #@13
    :goto_0
    return-object v3

    #@14
    :cond_0
    new-instance v3, Landroid/net/sip/SipSession;

    #@16
    invoke-direct {v3, v2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    goto :goto_0

    #@1a
    .line 548
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "s":Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v1

    #@1b
    .line 549
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Landroid/net/sip/SipException;

    #@1d
    const-string/jumbo v4, "getSessionFor()"

    #@20
    invoke-direct {v3, v4, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v3
.end method

.method public isOpened(Ljava/lang/String;)Z
    .locals 3
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/net/sip/ISipService;->isOpened(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 288
    :catch_0
    move-exception v0

    #@e
    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@10
    const-string/jumbo v2, "isOpened()"

    #@13
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public isRegistered(Ljava/lang/String;)Z
    .locals 3
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/net/sip/ISipService;->isRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 309
    :catch_0
    move-exception v0

    #@e
    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@10
    const-string/jumbo v2, "isRegistered()"

    #@13
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;
    .locals 4
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "listener"    # Landroid/net/sip/SipAudioCall$Listener;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 335
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 336
    new-instance v2, Landroid/net/sip/SipException;

    #@a
    const-string/jumbo v3, "VOIP API is not supported"

    #@d
    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 338
    :cond_0
    new-instance v0, Landroid/net/sip/SipAudioCall;

    #@13
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@15
    invoke-direct {v0, v2, p1}, Landroid/net/sip/SipAudioCall;-><init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    #@18
    .line 339
    .local v0, "call":Landroid/net/sip/SipAudioCall;
    invoke-virtual {v0, p3}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    #@1b
    .line 340
    const/4 v2, 0x0

    #@1c
    invoke-virtual {p0, p1, v2}, Landroid/net/sip/SipManager;->createSipSession(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession$Listener;)Landroid/net/sip/SipSession;

    #@1f
    move-result-object v1

    #@20
    .line 341
    .local v1, "s":Landroid/net/sip/SipSession;
    invoke-virtual {v0, p2, v1, p4}, Landroid/net/sip/SipAudioCall;->makeCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession;I)V

    #@23
    .line 342
    return-object v0
.end method

.method public makeAudioCall(Ljava/lang/String;Ljava/lang/String;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;
    .locals 3
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "peerProfileUri"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/sip/SipAudioCall$Listener;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    iget-object v1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 368
    new-instance v1, Landroid/net/sip/SipException;

    #@a
    const-string/jumbo v2, "VOIP API is not supported"

    #@d
    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 372
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/sip/SipProfile$Builder;

    #@13
    invoke-direct {v1, p1}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v1}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    #@19
    move-result-object v1

    #@1a
    .line 373
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    #@1c
    invoke-direct {v2, p2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    #@22
    move-result-object v2

    #@23
    .line 371
    invoke-virtual {p0, v1, v2, p3, p4}, Landroid/net/sip/SipManager;->makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 375
    :catch_0
    move-exception v0

    #@29
    .line 376
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Landroid/net/sip/SipException;

    #@2b
    const-string/jumbo v2, "build SipProfile"

    #@2e
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    throw v1
.end method

.method public open(Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/net/sip/ISipService;->open(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 189
    return-void

    #@c
    .line 192
    :catch_0
    move-exception v0

    #@d
    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@f
    const-string/jumbo v2, "open()"

    #@12
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method

.method public open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    .locals 4
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    if-nez p2, :cond_0

    #@2
    .line 230
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    .line 231
    const-string/jumbo v2, "incomingCallPendingIntent cannot be null"

    #@7
    .line 230
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 234
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@d
    .line 235
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-static {p3, v2}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    #@14
    move-result-object v2

    #@15
    .line 236
    iget-object v3, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 234
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/net/sip/ISipService;->open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 228
    return-void

    #@1f
    .line 237
    :catch_0
    move-exception v0

    #@20
    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@22
    const-string/jumbo v2, "open()"

    #@25
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    throw v1
.end method

.method public register(Landroid/net/sip/SipProfile;ILandroid/net/sip/SipRegistrationListener;)V
    .locals 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "expiryTime"    # I
    .param p3, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 492
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2
    .line 493
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-static {p3, v3}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    #@9
    move-result-object v3

    #@a
    .line 494
    iget-object v4, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 492
    invoke-interface {v2, p1, v3, v4}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@13
    move-result-object v1

    #@14
    .line 495
    .local v1, "session":Landroid/net/sip/ISipSession;
    if-nez v1, :cond_0

    #@16
    .line 496
    new-instance v2, Landroid/net/sip/SipException;

    #@18
    .line 497
    const-string/jumbo v3, "SipService.createSession() returns null"

    #@1b
    .line 496
    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 500
    .end local v1    # "session":Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v0

    #@20
    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/net/sip/SipException;

    #@22
    const-string/jumbo v3, "register()"

    #@25
    invoke-direct {v2, v3, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    throw v2

    #@29
    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "session":Landroid/net/sip/ISipSession;
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Landroid/net/sip/ISipSession;->register(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2c
    .line 490
    return-void
.end method

.method public setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    .locals 4
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2
    .line 255
    invoke-static {p2, p1}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    #@5
    move-result-object v2

    #@6
    .line 256
    iget-object v3, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 254
    invoke-interface {v1, p1, v2, v3}, Landroid/net/sip/ISipService;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 252
    return-void

    #@10
    .line 257
    :catch_0
    move-exception v0

    #@11
    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@13
    const-string/jumbo v2, "setRegistrationListener()"

    #@16
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19
    throw v1
.end method

.method public takeAudioCall(Landroid/content/Intent;Landroid/net/sip/SipAudioCall$Listener;)Landroid/net/sip/SipAudioCall;
    .locals 7
    .param p1, "incomingCallIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/net/sip/SipAudioCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 394
    if-nez p1, :cond_0

    #@2
    .line 395
    new-instance v5, Landroid/net/sip/SipException;

    #@4
    const-string/jumbo v6, "Cannot retrieve session with null intent"

    #@7
    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 398
    :cond_0
    invoke-static {p1}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 399
    .local v1, "callId":Ljava/lang/String;
    if-nez v1, :cond_1

    #@11
    .line 400
    new-instance v5, Landroid/net/sip/SipException;

    #@13
    const-string/jumbo v6, "Call ID missing in incoming call intent"

    #@16
    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@19
    throw v5

    #@1a
    .line 403
    :cond_1
    invoke-static {p1}, Landroid/net/sip/SipManager;->getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 404
    .local v2, "offerSd":Ljava/lang/String;
    if-nez v2, :cond_2

    #@20
    .line 405
    new-instance v5, Landroid/net/sip/SipException;

    #@22
    const-string/jumbo v6, "Session description missing in incoming call intent"

    #@25
    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@28
    throw v5

    #@29
    .line 410
    :cond_2
    :try_start_0
    iget-object v5, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2b
    .line 411
    iget-object v6, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@2d
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    .line 410
    invoke-interface {v5, v1, v6}, Landroid/net/sip/ISipService;->getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@34
    move-result-object v3

    #@35
    .line 412
    .local v3, "session":Landroid/net/sip/ISipSession;
    if-nez v3, :cond_3

    #@37
    .line 413
    new-instance v5, Landroid/net/sip/SipException;

    #@39
    const-string/jumbo v6, "No pending session for the call"

    #@3c
    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 420
    .end local v3    # "session":Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v4

    #@41
    .line 421
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Landroid/net/sip/SipException;

    #@43
    const-string/jumbo v6, "takeAudioCall()"

    #@46
    invoke-direct {v5, v6, v4}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@49
    throw v5

    #@4a
    .line 415
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v3    # "session":Landroid/net/sip/ISipSession;
    :cond_3
    :try_start_1
    new-instance v0, Landroid/net/sip/SipAudioCall;

    #@4c
    .line 416
    iget-object v5, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@4e
    invoke-interface {v3}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    #@51
    move-result-object v6

    #@52
    .line 415
    invoke-direct {v0, v5, v6}, Landroid/net/sip/SipAudioCall;-><init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    #@55
    .line 417
    .local v0, "call":Landroid/net/sip/SipAudioCall;
    new-instance v5, Landroid/net/sip/SipSession;

    #@57
    invoke-direct {v5, v3}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V

    #@5a
    invoke-virtual {v0, v5, v2}, Landroid/net/sip/SipAudioCall;->attachCall(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    #@5d
    .line 418
    invoke-virtual {v0, p2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@60
    .line 419
    return-object v0
.end method

.method public unregister(Landroid/net/sip/SipProfile;Landroid/net/sip/SipRegistrationListener;)V
    .locals 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 518
    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2
    .line 519
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-static {p2, v3}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    #@9
    move-result-object v3

    #@a
    .line 520
    iget-object v4, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 518
    invoke-interface {v2, p1, v3, v4}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@13
    move-result-object v1

    #@14
    .line 521
    .local v1, "session":Landroid/net/sip/ISipSession;
    if-nez v1, :cond_0

    #@16
    .line 522
    new-instance v2, Landroid/net/sip/SipException;

    #@18
    .line 523
    const-string/jumbo v3, "SipService.createSession() returns null"

    #@1b
    .line 522
    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 526
    .end local v1    # "session":Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v0

    #@20
    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/net/sip/SipException;

    #@22
    const-string/jumbo v3, "unregister()"

    #@25
    invoke-direct {v2, v3, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    throw v2

    #@29
    .line 525
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "session":Landroid/net/sip/ISipSession;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->unregister()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2c
    .line 516
    return-void
.end method

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

.method private checkSipServiceConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    invoke-direct {p0}, Landroid/net/sip/SipManager;->createSipService()V

    #@3
    .line 182
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 183
    new-instance v0, Landroid/net/sip/SipException;

    #@9
    const-string/jumbo v1, "SipService is dead and is restarting..."

    #@c
    new-instance v2, Ljava/lang/Exception;

    #@e
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    #@11
    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v0

    #@15
    .line 180
    :cond_0
    return-void
.end method

.method public static createIncomingCallBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "callId"    # Ljava/lang/String;
    .param p1, "sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 486
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 487
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android:sipCallID"

    #@8
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@b
    .line 488
    const-string/jumbo v1, "android:sipOfferSD"

    #@e
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@11
    .line 489
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
    .line 574
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
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 175
    const-string/jumbo v1, "sip"

    #@7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    .line 176
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/sip/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipService;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@11
    .line 173
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method public static getCallId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 461
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
    .line 473
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
    .line 448
    if-nez p0, :cond_0

    #@3
    return v2

    #@4
    .line 449
    :cond_0
    invoke-static {p0}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 450
    .local v0, "callId":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/sip/SipManager;->getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 451
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
    const v1, 0x112005e

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
    .line 283
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@3
    .line 284
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@5
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, p1, v2}, Landroid/net/sip/ISipService;->close(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 281
    return-void

    #@f
    .line 285
    :catch_0
    move-exception v0

    #@10
    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@12
    const-string/jumbo v2, "close()"

    #@15
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
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
    .line 588
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@3
    .line 589
    iget-object v2, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@5
    .line 590
    iget-object v3, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 589
    const/4 v4, 0x0

    #@c
    invoke-interface {v2, p1, v4, v3}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@f
    move-result-object v1

    #@10
    .line 591
    .local v1, "s":Landroid/net/sip/ISipSession;
    if-nez v1, :cond_0

    #@12
    .line 592
    new-instance v2, Landroid/net/sip/SipException;

    #@14
    .line 593
    const-string/jumbo v3, "Failed to create SipSession; network unavailable?"

    #@17
    .line 592
    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 596
    .end local v1    # "s":Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v0

    #@1c
    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/net/sip/SipException;

    #@1e
    const-string/jumbo v3, "createSipSession()"

    #@21
    invoke-direct {v2, v3, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v2

    #@25
    .line 595
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "s":Landroid/net/sip/ISipSession;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/net/sip/SipSession;

    #@27
    invoke-direct {v2, v1, p2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2a
    return-object v2
.end method

.method public getListOfProfiles()[Landroid/net/sip/SipProfile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 608
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@3
    .line 609
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@5
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2}, Landroid/net/sip/ISipService;->getListOfProfiles(Ljava/lang/String;)[Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 610
    :catch_0
    move-exception v0

    #@11
    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@12
    new-array v1, v1, [Landroid/net/sip/SipProfile;

    #@14
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
    .line 562
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@4
    .line 563
    invoke-static {p1}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 564
    .local v0, "callId":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@a
    .line 565
    iget-object v5, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    .line 564
    invoke-interface {v4, v0, v5}, Landroid/net/sip/ISipService;->getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@13
    move-result-object v2

    #@14
    .line 566
    .local v2, "s":Landroid/net/sip/ISipSession;
    if-nez v2, :cond_0

    #@16
    :goto_0
    return-object v3

    #@17
    :cond_0
    new-instance v3, Landroid/net/sip/SipSession;

    #@19
    invoke-direct {v3, v2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    goto :goto_0

    #@1d
    .line 567
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "s":Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v1

    #@1e
    .line 568
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Landroid/net/sip/SipException;

    #@20
    const-string/jumbo v4, "getSessionFor()"

    #@23
    invoke-direct {v3, v4, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
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
    .line 300
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@3
    .line 301
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@5
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, p1, v2}, Landroid/net/sip/ISipService;->isOpened(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 302
    :catch_0
    move-exception v0

    #@11
    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@13
    const-string/jumbo v2, "isOpened()"

    #@16
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19
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
    .line 322
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@3
    .line 323
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@5
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, p1, v2}, Landroid/net/sip/ISipService;->isRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 324
    :catch_0
    move-exception v0

    #@11
    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@13
    const-string/jumbo v2, "isRegistered()"

    #@16
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19
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
    .line 350
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 351
    new-instance v2, Landroid/net/sip/SipException;

    #@a
    const-string/jumbo v3, "VOIP API is not supported"

    #@d
    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 353
    :cond_0
    new-instance v0, Landroid/net/sip/SipAudioCall;

    #@13
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@15
    invoke-direct {v0, v2, p1}, Landroid/net/sip/SipAudioCall;-><init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    #@18
    .line 354
    .local v0, "call":Landroid/net/sip/SipAudioCall;
    invoke-virtual {v0, p3}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    #@1b
    .line 355
    const/4 v2, 0x0

    #@1c
    invoke-virtual {p0, p1, v2}, Landroid/net/sip/SipManager;->createSipSession(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession$Listener;)Landroid/net/sip/SipSession;

    #@1f
    move-result-object v1

    #@20
    .line 356
    .local v1, "s":Landroid/net/sip/SipSession;
    invoke-virtual {v0, p2, v1, p4}, Landroid/net/sip/SipAudioCall;->makeCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession;I)V

    #@23
    .line 357
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
    .line 382
    iget-object v1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 383
    new-instance v1, Landroid/net/sip/SipException;

    #@a
    const-string/jumbo v2, "VOIP API is not supported"

    #@d
    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 387
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
    .line 388
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    #@1c
    invoke-direct {v2, p2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    #@22
    move-result-object v2

    #@23
    .line 386
    invoke-virtual {p0, v1, v2, p3, p4}, Landroid/net/sip/SipManager;->makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 390
    :catch_0
    move-exception v0

    #@29
    .line 391
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
    .line 200
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@3
    .line 201
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@5
    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, p1, v2}, Landroid/net/sip/ISipService;->open(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 198
    return-void

    #@f
    .line 202
    :catch_0
    move-exception v0

    #@10
    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@12
    const-string/jumbo v2, "open()"

    #@15
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
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
    .line 239
    if-nez p2, :cond_0

    #@2
    .line 240
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    .line 241
    const-string/jumbo v2, "incomingCallPendingIntent cannot be null"

    #@7
    .line 240
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 244
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@e
    .line 245
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@10
    .line 246
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-static {p3, v2}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    #@17
    move-result-object v2

    #@18
    .line 247
    iget-object v3, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 245
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/net/sip/ISipService;->open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 238
    return-void

    #@22
    .line 248
    :catch_0
    move-exception v0

    #@23
    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@25
    const-string/jumbo v2, "open()"

    #@28
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
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
    .line 508
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@3
    .line 509
    iget-object v2, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@5
    .line 510
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-static {p3, v3}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    #@c
    move-result-object v3

    #@d
    .line 511
    iget-object v4, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 509
    invoke-interface {v2, p1, v3, v4}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@16
    move-result-object v1

    #@17
    .line 512
    .local v1, "session":Landroid/net/sip/ISipSession;
    if-nez v1, :cond_0

    #@19
    .line 513
    new-instance v2, Landroid/net/sip/SipException;

    #@1b
    .line 514
    const-string/jumbo v3, "SipService.createSession() returns null"

    #@1e
    .line 513
    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 517
    .end local v1    # "session":Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v0

    #@23
    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/net/sip/SipException;

    #@25
    const-string/jumbo v3, "register()"

    #@28
    invoke-direct {v2, v3, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
    throw v2

    #@2c
    .line 516
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "session":Landroid/net/sip/ISipSession;
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Landroid/net/sip/ISipSession;->register(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2f
    .line 506
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
    .line 265
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@3
    .line 266
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@5
    .line 267
    invoke-static {p2, p1}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    #@8
    move-result-object v2

    #@9
    .line 268
    iget-object v3, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 266
    invoke-interface {v1, p1, v2, v3}, Landroid/net/sip/ISipService;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 263
    return-void

    #@13
    .line 269
    :catch_0
    move-exception v0

    #@14
    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    #@16
    const-string/jumbo v2, "setRegistrationListener()"

    #@19
    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1c
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
    .line 409
    if-nez p1, :cond_0

    #@2
    .line 410
    new-instance v5, Landroid/net/sip/SipException;

    #@4
    const-string/jumbo v6, "Cannot retrieve session with null intent"

    #@7
    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 413
    :cond_0
    invoke-static {p1}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 414
    .local v1, "callId":Ljava/lang/String;
    if-nez v1, :cond_1

    #@11
    .line 415
    new-instance v5, Landroid/net/sip/SipException;

    #@13
    const-string/jumbo v6, "Call ID missing in incoming call intent"

    #@16
    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@19
    throw v5

    #@1a
    .line 418
    :cond_1
    invoke-static {p1}, Landroid/net/sip/SipManager;->getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 419
    .local v2, "offerSd":Ljava/lang/String;
    if-nez v2, :cond_2

    #@20
    .line 420
    new-instance v5, Landroid/net/sip/SipException;

    #@22
    const-string/jumbo v6, "Session description missing in incoming call intent"

    #@25
    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@28
    throw v5

    #@29
    .line 425
    :cond_2
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@2c
    .line 426
    iget-object v5, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@2e
    .line 427
    iget-object v6, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@30
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    .line 426
    invoke-interface {v5, v1, v6}, Landroid/net/sip/ISipService;->getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@37
    move-result-object v3

    #@38
    .line 428
    .local v3, "session":Landroid/net/sip/ISipSession;
    if-nez v3, :cond_3

    #@3a
    .line 429
    new-instance v5, Landroid/net/sip/SipException;

    #@3c
    const-string/jumbo v6, "No pending session for the call"

    #@3f
    invoke-direct {v5, v6}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@42
    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 436
    .end local v3    # "session":Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v4

    #@44
    .line 437
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Landroid/net/sip/SipException;

    #@46
    const-string/jumbo v6, "takeAudioCall()"

    #@49
    invoke-direct {v5, v6, v4}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4c
    throw v5

    #@4d
    .line 431
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v3    # "session":Landroid/net/sip/ISipSession;
    :cond_3
    :try_start_1
    new-instance v0, Landroid/net/sip/SipAudioCall;

    #@4f
    .line 432
    iget-object v5, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@51
    invoke-interface {v3}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    #@54
    move-result-object v6

    #@55
    .line 431
    invoke-direct {v0, v5, v6}, Landroid/net/sip/SipAudioCall;-><init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    #@58
    .line 433
    .local v0, "call":Landroid/net/sip/SipAudioCall;
    new-instance v5, Landroid/net/sip/SipSession;

    #@5a
    invoke-direct {v5, v3}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V

    #@5d
    invoke-virtual {v0, v5, v2}, Landroid/net/sip/SipAudioCall;->attachCall(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    #@60
    .line 434
    invoke-virtual {v0, p2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@63
    .line 435
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
    .line 535
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    #@3
    .line 536
    iget-object v2, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    #@5
    .line 537
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-static {p2, v3}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    #@c
    move-result-object v3

    #@d
    .line 538
    iget-object v4, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 536
    invoke-interface {v2, p1, v3, v4}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@16
    move-result-object v1

    #@17
    .line 539
    .local v1, "session":Landroid/net/sip/ISipSession;
    if-nez v1, :cond_0

    #@19
    .line 540
    new-instance v2, Landroid/net/sip/SipException;

    #@1b
    .line 541
    const-string/jumbo v3, "SipService.createSession() returns null"

    #@1e
    .line 540
    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 544
    .end local v1    # "session":Landroid/net/sip/ISipSession;
    :catch_0
    move-exception v0

    #@23
    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/net/sip/SipException;

    #@25
    const-string/jumbo v3, "unregister()"

    #@28
    invoke-direct {v2, v3, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
    throw v2

    #@2c
    .line 543
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "session":Landroid/net/sip/ISipSession;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/net/sip/ISipSession;->unregister()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2f
    .line 533
    return-void
.end method

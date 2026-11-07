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
.field public static final greylist-max-o ACTION_SIP_ADD_PHONE:Ljava/lang/String; = "com.android.phone.SIP_ADD_PHONE"

.field public static final whitelist ACTION_SIP_CALL_OPTION_CHANGED:Ljava/lang/String; = "android.net.sip.action.SIP_CALL_OPTION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SIP_INCOMING_CALL:Ljava/lang/String; = "android.net.sip.action.SIP_INCOMING_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SIP_REMOVE_PROFILE:Ljava/lang/String; = "android.net.sip.action.SIP_REMOVE_PROFILE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SIP_SERVICE_UP:Ljava/lang/String; = "android.net.sip.action.SIP_SERVICE_UP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_START_SIP:Ljava/lang/String; = "android.net.sip.action.START_SIP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_ID:Ljava/lang/String; = "android:sipCallID"

.field public static final greylist-max-o EXTRA_LOCAL_URI:Ljava/lang/String; = "android:localSipUri"

.field public static final whitelist EXTRA_OFFER_SD:Ljava/lang/String; = "android:sipOfferSD"

.field public static final whitelist INCOMING_CALL_RESULT_CODE:I = 0x65

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SipManager"


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mSipService:Landroid/net/sip/ISipService;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 192
    invoke-direct {p0}, Landroid/net/sip/SipManager;->createSipService()V

    .line 193
    return-void
.end method

.method private greylist-max-o checkSipServiceConnection()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Landroid/net/sip/SipManager;->createSipService()V

    .line 204
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    if-eqz v0, :cond_8

    .line 207
    return-void

    .line 205
    :cond_8
    new-instance v0, Landroid/net/sip/SipException;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SipService is dead and is restarting..."

    invoke-direct {v0, v2, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static greylist-max-o createIncomingCallBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "callId"    # Ljava/lang/String;
    .param p1, "sessionDescription"    # Ljava/lang/String;

    .line 508
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 509
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android:sipCallID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v1, "android:sipOfferSD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    return-object v0
.end method

.method private static greylist-max-o createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;
    .registers 3
    .param p0, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .param p1, "uri"    # Ljava/lang/String;

    .line 596
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/sip/SipManager$ListenerRelay;

    invoke-direct {v0, p0, p1}, Landroid/net/sip/SipManager$ListenerRelay;-><init>(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)V

    :goto_9
    return-object v0
.end method

.method private greylist-max-o createSipService()V
    .registers 3

    .line 196
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    if-nez v0, :cond_10

    .line 197
    const-string v0, "sip"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 198
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/sip/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    .line 200
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    return-void
.end method

.method public static whitelist getCallId(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    .line 483
    const-string v0, "android:sipCallID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    .line 495
    const-string v0, "android:sipOfferSD"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isApiSupported(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.sip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isIncomingCallIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 470
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 471
    :cond_4
    invoke-static {p0}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "callId":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/sip/SipManager;->getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "offerSd":Ljava/lang/String;
    if-eqz v1, :cond_11

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static whitelist isSipWifiOnly(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110245

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist isVoipSupported(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.sip.voip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 179
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 178
    :goto_15
    return v0
.end method

.method public static whitelist newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 163
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/net/sip/SipManager;

    invoke-direct {v0, p0}, Landroid/net/sip/SipManager;-><init>(Landroid/content/Context;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method


# virtual methods
.method public whitelist close(Ljava/lang/String;)V
    .registers 5
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 305
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 306
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    iget-object v1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/sip/ISipService;->close(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 309
    nop

    .line 310
    return-void

    .line 307
    :catch_10
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "close()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist createSipSession(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession$Listener;)Landroid/net/sip/SipSession;
    .registers 6
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "listener"    # Landroid/net/sip/SipSession$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 610
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 611
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    iget-object v1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 612
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 611
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 613
    .local v0, "s":Landroid/net/sip/ISipSession;
    if-eqz v0, :cond_18

    .line 617
    new-instance v1, Landroid/net/sip/SipSession;

    invoke-direct {v1, v0, p2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;Landroid/net/sip/SipSession$Listener;)V

    return-object v1

    .line 614
    :cond_18
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "Failed to create SipSession; network unavailable?"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/sip/SipManager;
    .end local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .end local p2    # "listener":Landroid/net/sip/SipSession$Listener;
    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    .line 618
    .end local v0    # "s":Landroid/net/sip/ISipSession;
    .restart local p0    # "this":Landroid/net/sip/SipManager;
    .restart local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .restart local p2    # "listener":Landroid/net/sip/SipSession$Listener;
    :catch_20
    move-exception v0

    .line 619
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "createSipSession()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getProfiles()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 631
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 632
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    iget-object v1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/sip/ISipService;->getProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 633
    :catch_10
    move-exception v0

    .line 634
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getSessionFor(Landroid/content/Intent;)Landroid/net/sip/SipSession;
    .registers 5
    .param p1, "incomingCallIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 584
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 585
    invoke-static {p1}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 587
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-interface {v1, v0, v2}, Landroid/net/sip/ISipService;->getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v1

    .line 588
    .local v1, "s":Landroid/net/sip/ISipSession;
    if-nez v1, :cond_17

    const/4 v2, 0x0

    goto :goto_1c

    :cond_17
    new-instance v2, Landroid/net/sip/SipSession;

    invoke-direct {v2, v1}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-object v2

    .line 589
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "s":Landroid/net/sip/ISipSession;
    :catch_1d
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "getSessionFor()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isOpened(Ljava/lang/String;)Z
    .registers 5
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 322
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 323
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    iget-object v1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/sip/ISipService;->isOpened(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return v0

    .line 324
    :catch_10
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "isOpened()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isRegistered(Ljava/lang/String;)Z
    .registers 5
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 344
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 345
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    iget-object v1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/sip/ISipService;->isRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return v0

    .line 346
    :catch_10
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "isRegistered()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;
    .registers 7
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "listener"    # Landroid/net/sip/SipAudioCall$Listener;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 375
    new-instance v0, Landroid/net/sip/SipAudioCall;

    iget-object v1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/net/sip/SipAudioCall;-><init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    .line 376
    .local v0, "call":Landroid/net/sip/SipAudioCall;
    invoke-virtual {v0, p3}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 377
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/net/sip/SipManager;->createSipSession(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession$Listener;)Landroid/net/sip/SipSession;

    move-result-object v1

    .line 378
    .local v1, "s":Landroid/net/sip/SipSession;
    invoke-virtual {v0, p2, v1, p4}, Landroid/net/sip/SipAudioCall;->makeCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession;I)V

    .line 379
    return-object v0

    .line 373
    .end local v0    # "call":Landroid/net/sip/SipAudioCall;
    .end local v1    # "s":Landroid/net/sip/SipSession;
    :cond_1b
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, "VOIP API is not supported"

    invoke-direct {v0, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist makeAudioCall(Ljava/lang/String;Ljava/lang/String;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;
    .registers 8
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "peerProfileUri"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/sip/SipAudioCall$Listener;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 408
    :try_start_8
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v0, p1}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    new-instance v1, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v1, p2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 408
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/net/sip/SipManager;->makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;

    move-result-object v0
    :try_end_1e
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_1e} :catch_1f

    return-object v0

    .line 412
    :catch_1f
    move-exception v0

    .line 413
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "build SipProfile"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 405
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_28
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, "VOIP API is not supported"

    invoke-direct {v0, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist open(Landroid/net/sip/SipProfile;)V
    .registers 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 222
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 223
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    iget-object v1, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/sip/ISipService;->open(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 226
    nop

    .line 227
    return-void

    .line 224
    :catch_10
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "open()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    .registers 7
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 261
    if-eqz p2, :cond_23

    .line 266
    :try_start_2
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 267
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    .line 268
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 269
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/net/sip/ISipService;->open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_1a

    .line 272
    nop

    .line 273
    return-void

    .line 270
    :catch_1a
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "open()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "incomingCallPendingIntent cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist register(Landroid/net/sip/SipProfile;ILandroid/net/sip/SipRegistrationListener;)V
    .registers 7
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "expiryTime"    # I
    .param p3, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 530
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 531
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    .line 532
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 533
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-interface {v0, p1, v1, v2}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 534
    .local v0, "session":Landroid/net/sip/ISipSession;
    if-eqz v0, :cond_1e

    .line 538
    invoke-interface {v0, p2}, Landroid/net/sip/ISipSession;->register(I)V

    .line 541
    .end local v0    # "session":Landroid/net/sip/ISipSession;
    nop

    .line 542
    return-void

    .line 535
    .restart local v0    # "session":Landroid/net/sip/ISipSession;
    :cond_1e
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "SipService.createSession() returns null"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/sip/SipManager;
    .end local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .end local p2    # "expiryTime":I
    .end local p3    # "listener":Landroid/net/sip/SipRegistrationListener;
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 539
    .end local v0    # "session":Landroid/net/sip/ISipSession;
    .restart local p0    # "this":Landroid/net/sip/SipManager;
    .restart local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .restart local p2    # "expiryTime":I
    .restart local p3    # "listener":Landroid/net/sip/SipRegistrationListener;
    :catch_26
    move-exception v0

    .line 540
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "register()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    .registers 6
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 287
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 288
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    .line 289
    invoke-static {p2, p1}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-interface {v0, p1, v1, v2}, Landroid/net/sip/ISipService;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 293
    nop

    .line 294
    return-void

    .line 291
    :catch_14
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "setRegistrationListener()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist takeAudioCall(Landroid/content/Intent;Landroid/net/sip/SipAudioCall$Listener;)Landroid/net/sip/SipAudioCall;
    .registers 9
    .param p1, "incomingCallIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/net/sip/SipAudioCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 431
    if-eqz p1, :cond_57

    .line 435
    invoke-static {p1}, Landroid/net/sip/SipManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "callId":Ljava/lang/String;
    if-eqz v0, :cond_4f

    .line 440
    invoke-static {p1}, Landroid/net/sip/SipManager;->getOfferSessionDescription(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "offerSd":Ljava/lang/String;
    if-eqz v1, :cond_47

    .line 447
    :try_start_e
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 448
    iget-object v2, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    iget-object v3, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 449
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-interface {v2, v0, v3}, Landroid/net/sip/ISipService;->getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 450
    .local v2, "session":Landroid/net/sip/ISipSession;
    if-eqz v2, :cond_36

    .line 453
    new-instance v3, Landroid/net/sip/SipAudioCall;

    iget-object v4, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 454
    invoke-interface {v2}, Landroid/net/sip/ISipSession;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/net/sip/SipAudioCall;-><init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    .line 455
    .local v3, "call":Landroid/net/sip/SipAudioCall;
    new-instance v4, Landroid/net/sip/SipSession;

    invoke-direct {v4, v2}, Landroid/net/sip/SipSession;-><init>(Landroid/net/sip/ISipSession;)V

    invoke-virtual {v3, v4, v1}, Landroid/net/sip/SipAudioCall;->attachCall(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v3, p2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 457
    return-object v3

    .line 451
    .end local v3    # "call":Landroid/net/sip/SipAudioCall;
    :cond_36
    new-instance v3, Landroid/net/sip/SipException;

    const-string v4, "No pending session for the call"

    invoke-direct {v3, v4}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "offerSd":Ljava/lang/String;
    .end local p0    # "this":Landroid/net/sip/SipManager;
    .end local p1    # "incomingCallIntent":Landroid/content/Intent;
    .end local p2    # "listener":Landroid/net/sip/SipAudioCall$Listener;
    throw v3
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_3e

    .line 458
    .end local v2    # "session":Landroid/net/sip/ISipSession;
    .restart local v0    # "callId":Ljava/lang/String;
    .restart local v1    # "offerSd":Ljava/lang/String;
    .restart local p0    # "this":Landroid/net/sip/SipManager;
    .restart local p1    # "incomingCallIntent":Landroid/content/Intent;
    .restart local p2    # "listener":Landroid/net/sip/SipAudioCall$Listener;
    :catchall_3e
    move-exception v2

    .line 459
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Landroid/net/sip/SipException;

    const-string v4, "takeAudioCall()"

    invoke-direct {v3, v4, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 442
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_47
    new-instance v2, Landroid/net/sip/SipException;

    const-string v3, "Session description missing in incoming call intent"

    invoke-direct {v2, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 437
    .end local v1    # "offerSd":Ljava/lang/String;
    :cond_4f
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "Call ID missing in incoming call intent"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    .end local v0    # "callId":Ljava/lang/String;
    :cond_57
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, "Cannot retrieve session with null intent"

    invoke-direct {v0, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregister(Landroid/net/sip/SipProfile;Landroid/net/sip/SipRegistrationListener;)V
    .registers 6
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "listener"    # Landroid/net/sip/SipRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 557
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipManager;->checkSipServiceConnection()V

    .line 558
    iget-object v0, p0, Landroid/net/sip/SipManager;->mSipService:Landroid/net/sip/ISipService;

    .line 559
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/net/sip/SipManager;->createRelay(Landroid/net/sip/SipRegistrationListener;Ljava/lang/String;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/net/sip/SipManager;->mContext:Landroid/content/Context;

    .line 560
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-interface {v0, p1, v1, v2}, Landroid/net/sip/ISipService;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v0

    .line 561
    .local v0, "session":Landroid/net/sip/ISipSession;
    if-eqz v0, :cond_1e

    .line 565
    invoke-interface {v0}, Landroid/net/sip/ISipSession;->unregister()V

    .line 568
    .end local v0    # "session":Landroid/net/sip/ISipSession;
    nop

    .line 569
    return-void

    .line 562
    .restart local v0    # "session":Landroid/net/sip/ISipSession;
    :cond_1e
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "SipService.createSession() returns null"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/sip/SipManager;
    .end local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .end local p2    # "listener":Landroid/net/sip/SipRegistrationListener;
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 566
    .end local v0    # "session":Landroid/net/sip/ISipSession;
    .restart local p0    # "this":Landroid/net/sip/SipManager;
    .restart local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .restart local p2    # "listener":Landroid/net/sip/SipRegistrationListener;
    :catch_26
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "unregister()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

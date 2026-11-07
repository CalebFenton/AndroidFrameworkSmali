.class public Landroid/telephony/ims/compat/feature/MMTelFeature;
.super Landroid/telephony/ims/compat/feature/ImsFeature;
.source "MMTelFeature.java"


# instance fields
.field private final greylist-max-o mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/ImsFeature;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/feature/MMTelFeature$1;-><init>(Landroid/telephony/ims/compat/feature/MMTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    .line 54
    return-void
.end method


# virtual methods
.method public greylist-max-o addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 256
    return-void
.end method

.method public greylist-max-o createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "callSessionType"    # I
    .param p3, "callType"    # I

    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o endSession(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 222
    return-void
.end method

.method public bridge synthetic blacklist getBinder()Landroid/os/IInterface;
    .registers 2

    .line 47
    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getBinder()Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    return-object v0
.end method

.method public greylist-max-o getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .registers 2

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .registers 2

    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .registers 2

    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;
    .registers 2

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o isConnected(II)Z
    .registers 4
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOpened()Z
    .registers 2

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onFeatureReady()V
    .registers 1

    .line 363
    return-void
.end method

.method public greylist-max-o onFeatureRemoved()V
    .registers 1

    .line 370
    return-void
.end method

.method public greylist-max-o removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 264
    return-void
.end method

.method public greylist-max-o setUiTTYMode(ILandroid/os/Message;)V
    .registers 3
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 351
    return-void
.end method

.method public greylist-max-o startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 4
    .param p1, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o turnOffIms()V
    .registers 1

    .line 336
    return-void
.end method

.method public greylist-max-o turnOnIms()V
    .registers 1

    .line 330
    return-void
.end method

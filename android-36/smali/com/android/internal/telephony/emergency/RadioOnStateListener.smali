.class public Lcom/android/internal/telephony/emergency/RadioOnStateListener;
.super Ljava/lang/Object;
.source "RadioOnStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;
    }
.end annotation


# static fields
.field private static blacklist MAX_NUM_RETRIES:I = 0x5

.field public static final blacklist MSG_IMS_CAPABILITY_CHANGED:I = 0x6

.field public static final blacklist MSG_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x5

.field public static final blacklist MSG_RADIO_ON:I = 0x4

.field public static final blacklist MSG_SATELLITE_ENABLED_CHANGED:I = 0x8

.field public static final blacklist MSG_SERVICE_STATE_CHANGED:I = 0x2

.field public static final blacklist MSG_TIMEOUT_ONTIMEOUT_CALLBACK:I = 0x7

.field private static blacklist TIME_BETWEEN_RETRIES_MILLIS:J = 0x1388L


# instance fields
.field private blacklist mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

.field private blacklist mForEmergencyCall:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mNumRetriesSoFar:I

.field private blacklist mOnTimeoutCallbackInterval:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mSatelliteCallback:Landroid/telephony/satellite/ISatelliteModemStateCallback;

.field private blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field private blacklist mSelectedPhoneForEmergencyCall:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monImsCapabilityChanged(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onImsCapabilityChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRadioOn(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onRadioOn()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRetryTimeout(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onRetryTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSatelliteEnabledChanged(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onSatelliteEnabledChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Landroid/telephony/ServiceState;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeoutCallbackTimeout(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onTimeoutCallbackTimeout()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForRadioOn(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->registerForRadioOn()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSequenceInternal(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$1;-><init>(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/emergency/RadioOnStateListener$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$2;-><init>(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteCallback:Landroid/telephony/satellite/ISatelliteModemStateCallback;

    return-void
.end method

.method private blacklist cancelRetryTimer()V
    .registers 2

    .line 469
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist isOkToCall(IZ)Z
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 355
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->isOkToCall(Lcom/android/internal/telephony/Phone;IZ)Z

    move-result p0

    return p0
.end method

.method private blacklist onComplete(Z)V
    .registers 4

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 549
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    .line 550
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->onComplete(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Z)V

    :cond_a
    return-void
.end method

.method private blacklist onImsCapabilityChanged()V
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_5

    return-void

    .line 256
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v0

    .line 259
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 258
    const-string v2, "onImsCapabilityChanged, capable = %s, Phone = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioOnStateListener"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->isOkToCall(IZ)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 262
    const-string v0, "onImsCapabilityChanged: ok to call!"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 264
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 268
    :cond_43
    const-string p0, "onImsCapabilityChanged: not ready to call yet, keep waiting."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onRadioOn()V
    .registers 4

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_5

    return-void

    .line 327
    :cond_5
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onRadioOn, state = %s, Phone = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioOnStateListener"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->isOkToCall(IZ)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    .line 330
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 333
    :cond_3a
    const-string p0, "onRadioOn: not ready to call yet, keep waiting."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onRetryTimeout()V
    .registers 6

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_5

    return-void

    .line 373
    :cond_5
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 375
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 377
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 375
    const-string v3, "onRetryTimeout():  phone state = %s, service state = %d, retries = %d."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 374
    const-string v2, "RadioOnStateListener"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->isOkToCall(IZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    .line 386
    const-string v0, "onRetryTimeout: Radio is on. Cleaning up."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 395
    :cond_49
    iget v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumRetriesSoFar is now "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    sget v3, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->MAX_NUM_RETRIES:I

    if-le v0, v3, :cond_82

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 400
    const-string p0, "Hit MAX_NUM_RETRIES; waiting onTimeout callback"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 403
    :cond_79
    const-string v0, "Hit MAX_NUM_RETRIES; giving up."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 406
    :cond_82
    const-string v0, "Trying (again) to turn the radio on and satellite modem off."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-boolean v2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mForEmergencyCall:Z

    iget-boolean v3, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSelectedPhoneForEmergencyCall:Z

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPower(ZZZZ)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$3;-><init>(Lcom/android/internal/telephony/emergency/RadioOnStateListener;)V

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 421
    :cond_a3
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->startRetryTimer()V

    return-void
.end method

.method private blacklist onSatelliteEnabledChanged()V
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_5

    return-void

    .line 341
    :cond_5
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 342
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v1

    .line 341
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->isOkToCall(IZ)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 343
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 346
    :cond_21
    const-string p0, "RadioOnStateListener"

    const-string v0, "onSatelliteEnabledChanged: not ready to call yet, keep waiting."

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_5

    return-void

    .line 302
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 301
    const-string v1, "onServiceStateChanged(), new state = %s, Phone = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioOnStateListener"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->isOkToCall(IZ)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 313
    const-string p1, "onServiceStateChanged: ok to call!"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 315
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 319
    :cond_39
    const-string p0, "onServiceStateChanged: not ready to call yet, keep waiting."

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onTimeout(IZ)Z
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 363
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->onTimeout(Lcom/android/internal/telephony/Phone;IZ)Z

    move-result p0

    return p0
.end method

.method private blacklist onTimeoutCallbackTimeout()V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_5

    return-void

    .line 277
    :cond_5
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 278
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v1

    .line 277
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onTimeout(IZ)Z

    move-result v0

    const-string v1, "RadioOnStateListener"

    if-eqz v0, :cond_28

    .line 279
    const-string v0, "onTimeout: ok to call!"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 281
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 283
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    sget v2, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->MAX_NUM_RETRIES:I

    if-le v0, v2, :cond_37

    .line 284
    const-string v0, "onTimeout: Hit MAX_NUM_RETRIES; giving up."

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    return-void

    .line 287
    :cond_37
    const-string v0, "onTimeout: not ready to call yet, keep waiting."

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->startOnTimeoutCallbackTimer()V

    return-void
.end method

.method private blacklist registerForImsCapabilityChanged()V
    .registers 4

    .line 523
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForImsCapabilityChanged()V

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 525
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForImsCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist registerForRadioOff()V
    .registers 4

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist registerForRadioOn()V
    .registers 4

    .line 501
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForRadioOff()V

    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist registerForSatelliteEnabledChanged()V
    .registers 2

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteCallback:Landroid/telephony/satellite/ISatelliteModemStateCallback;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I

    return-void
.end method

.method private blacklist registerForServiceStateChanged()V
    .registers 4

    .line 476
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForServiceStateChanged()V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist startOnTimeoutCallbackTimer()V
    .registers 5

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startOnTimeoutCallbackTimer: mOnTimeoutCallbackInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mOnTimeoutCallbackInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioOnStateListener"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    iget v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mOnTimeoutCallbackInterval:I

    if-lez v0, :cond_28

    .line 541
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_28
    return-void
.end method

.method private blacklist startRetryTimer()V
    .registers 4

    .line 464
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cancelRetryTimer()V

    .line 465
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    sget-wide v1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->TIME_BETWEEN_RETRIES_MILLIS:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private blacklist startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V
    .registers 8

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSequenceInternal: Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioOnStateListener"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    .line 228
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 229
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    .line 230
    iput-boolean p3, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mForEmergencyCall:Z

    .line 231
    iput-boolean p4, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSelectedPhoneForEmergencyCall:Z

    .line 232
    iput p5, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mOnTimeoutCallbackInterval:I

    .line 234
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->registerForServiceStateChanged()V

    .line 237
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->registerForRadioOff()V

    .line 238
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 240
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->registerForSatelliteEnabledChanged()V

    .line 246
    :cond_3e
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->startRetryTimer()V

    .line 247
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->registerForImsCapabilityChanged()V

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->startOnTimeoutCallbackTimer()V

    return-void
.end method

.method private blacklist unregisterForImsCapabilityChanged()V
    .registers 3

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_d

    .line 530
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    .line 531
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForImsCapabilityChanged(Landroid/os/Handler;)V

    .line 533
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist unregisterForRadioOff()V
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_b

    .line 495
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 497
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist unregisterForRadioOn()V
    .registers 3

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_b

    .line 508
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 510
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist unregisterForSatelliteEnabledChanged()V
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mSatelliteCallback:Landroid/telephony/satellite/ISatelliteModemStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->unregisterForModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    .line 519
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist unregisterForServiceStateChanged()V
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    .line 483
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 485
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public blacklist cleanup()V
    .registers 3

    .line 444
    const-string v0, "RadioOnStateListener"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 448
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->onComplete(Z)V

    .line 450
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForServiceStateChanged()V

    .line 451
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForRadioOff()V

    .line 452
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForRadioOn()V

    .line 453
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForSatelliteEnabledChanged()V

    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cancelRetryTimer()V

    .line 455
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->unregisterForImsCapabilityChanged()V

    const/4 v1, 0x0

    .line 458
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 459
    iput v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    .line 460
    iput v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mOnTimeoutCallbackInterval:I

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_41

    .line 573
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_41

    .line 576
    :cond_16
    check-cast p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    .line 578
    iget v2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    iget v3, p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    if-eq v2, v3, :cond_1f

    return v1

    .line 581
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-eqz v2, :cond_2c

    iget-object v3, p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_30

    :cond_2c
    iget-object v2, p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-eqz v2, :cond_31

    :goto_30
    return v1

    .line 584
    :cond_31
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_3c

    iget-object p1, p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3c
    iget-object p0, p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez p0, :cond_41

    return v0

    :cond_41
    :goto_41
    return v1
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 556
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    const/16 v0, 0xd9

    .line 590
    iget v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mNumRetriesSoFar:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 592
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez p0, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1e
    add-int/2addr v0, v2

    return v0
.end method

.method public blacklist setMaxNumRetries(I)V
    .registers 2

    .line 561
    sput p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->MAX_NUM_RETRIES:I

    return-void
.end method

.method public blacklist setTimeBetweenRetriesMillis(J)V
    .registers 3

    .line 566
    sput-wide p1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->TIME_BETWEEN_RETRIES_MILLIS:J

    return-void
.end method

.method public blacklist waitForRadioOn(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V
    .registers 8

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitForRadioOn: Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioOnStateListener"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1f

    return-void

    .line 203
    :cond_1f
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 204
    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 205
    iput-object p2, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 206
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    .line 207
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg4:Ljava/lang/Object;

    .line 208
    iput p5, v0, Lcom/android/internal/telephony/SomeArgs;->argi1:I

    .line 209
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

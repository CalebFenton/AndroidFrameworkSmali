.class public Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;
.super Landroid/os/Handler;
.source "ImsNrSaModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$N1ModeSetter;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ImsNrSaModeHandler"


# instance fields
.field private final blacklist mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field private blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mIsInImsCall:Z

.field private blacklist mIsNrSaDisabledForWfc:Z

.field private blacklist mIsNrSaSupported:Z

.field private blacklist mIsVoiceCapable:Z

.field private blacklist mIsWifiRegistered:Z

.field private blacklist mN1ModeSetter:Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$N1ModeSetter;

.field private blacklist mNrSaDisablePolicy:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method public static synthetic blacklist $r8$lambda$a-lQSYD4fIPqMiBYcsSCGz6Y8Yw(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xpULVt58LOPD4GPbmiFx51XWccs(Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->lambda$new$0(IIII)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/Looper;)V
    .registers 4

    .line 83
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    new-instance p2, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mN1ModeSetter:Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$N1ModeSetter;

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "carrier_config"

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->registerForCarrierConfigChanges()V

    return-void
.end method

.method private blacklist calculateAndControlNrSaIfNeeded()V
    .registers 4

    .line 343
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mNrSaDisablePolicy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    goto :goto_52

    .line 345
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isNrSaDisabledForWfc()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiRegisteredForVoice()Z

    move-result v2

    if-ne v0, v2, :cond_17

    goto :goto_52

    .line 352
    :cond_17
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiRegisteredForVoice()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setNrSaMode(Z)V

    return-void

    .line 365
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isNrSaDisabledForWfc()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiCallingOngoing()Z

    move-result v2

    if-ne v0, v2, :cond_2b

    goto :goto_52

    .line 371
    :cond_2b
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiCallingOngoing()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x66

    .line 374
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x0

    .line 373
    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/CommandsInterface;->isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void

    .line 379
    :cond_44
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setNrSaMode(Z)V

    return-void

    .line 355
    :cond_48
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isNrSaDisabledForWfc()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiCallingOngoing()Z

    move-result v2

    if-ne v0, v2, :cond_53

    :goto_52
    return-void

    .line 362
    :cond_53
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiCallingOngoing()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setNrSaMode(Z)V

    return-void
.end method

.method private blacklist isImsCallJustEstablished()Z
    .registers 3

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isImsCallOngoing()Z

    move-result v0

    if-nez v0, :cond_29

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_20

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    if-ne p0, v1, :cond_29

    .line 324
    :cond_20
    const-string p0, "ImsNrSaModeHandler"

    const-string v0, "isImsCallJustEstablished"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isImsCallJustTerminated()Z
    .registers 2

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isImsCallOngoing()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    if-nez p0, :cond_2f

    .line 335
    const-string p0, "ImsNrSaModeHandler"

    const-string v0, "isImsCallJustTerminated"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNrSaDisabledForWfc()Z
    .registers 1

    .line 312
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsNrSaDisabledForWfc:Z

    return p0
.end method

.method private blacklist isWifiCallingOngoing()Z
    .registers 2

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsVoiceCapable:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isImsCallOngoing()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isWifiRegisteredForVoice()Z
    .registers 2

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsVoiceCapable:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 80
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setNrSaDisablePolicy(I)V

    return-void
.end method

.method private blacklist registerForCarrierConfigChanges()V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_e

    .line 230
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;)V

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_e
    return-void
.end method

.method private blacklist registerForPreciseCallStateChanges()V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist setNrSaDisablePolicy(I)V
    .registers 6

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    if-ne v0, p1, :cond_69

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_69

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    const-string v1, "ims.sa_disable_policy_int"

    const-string v2, "carrier_nr_availabilities_int_array"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 249
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_36

    .line 251
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v2

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsNrSaSupported:Z

    if-nez v0, :cond_3c

    goto :goto_69

    .line 258
    :cond_3c
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mNrSaDisablePolicy:I

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNrSaDisablePolicy : NrSaDisablePolicy = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mNrSaDisablePolicy:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsNrSaModeHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mNrSaDisablePolicy:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_66

    if-ne p1, v2, :cond_62

    goto :goto_66

    .line 266
    :cond_62
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->unregisterForPreciseCallStateChanges()V

    return-void

    .line 264
    :cond_66
    :goto_66
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->registerForPreciseCallStateChanges()V

    :cond_69
    :goto_69
    return-void
.end method

.method private blacklist setNrSaMode(Z)V
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mN1ModeSetter:Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$N1ModeSetter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$N1ModeSetter;->setN1ModeEnabled(ZLandroid/os/Message;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNrSaMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsNrSaModeHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p1, 0x1

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setNrSaDisabledForWfc(Z)V

    return-void
.end method

.method private blacklist unregisterForCarrierConfigChanges()V
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_9

    .line 240
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->unregisterCarrierConfigChangeListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_9
    return-void
.end method

.method private blacklist unregisterForPreciseCallStateChanges()V
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x66

    if-eq v0, v1, :cond_b

    return-void

    .line 192
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 194
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_3b

    .line 195
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result isVoNrEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsNrSaModeHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiCallingOngoing()Z

    move-result v0

    if-eqz v0, :cond_3b

    if-nez p1, :cond_3b

    const/4 p1, 0x0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setNrSaMode(Z)V

    :cond_3b
    return-void

    .line 189
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->onPreciseCallStateChanged()V

    return-void
.end method

.method public blacklist isImsCallOngoing()Z
    .registers 1

    .line 308
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsInImsCall:Z

    return p0
.end method

.method public blacklist isWifiRegistered()Z
    .registers 1

    .line 303
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsWifiRegistered:Z

    return p0
.end method

.method public blacklist onImsRegistered(ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsNrSaSupported:Z

    if-eqz p2, :cond_30

    iget p2, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mNrSaDisablePolicy:I

    if-nez p2, :cond_9

    goto :goto_30

    .line 118
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onImsRegistered: ImsRegistrationTech = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImsNrSaModeHandler"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_23

    goto :goto_24

    :cond_23
    const/4 p2, 0x0

    .line 121
    :goto_24
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiRegistered()Z

    move-result p1

    if-eq p1, p2, :cond_30

    .line 122
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setWifiRegStatus(Z)V

    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->calculateAndControlNrSaIfNeeded()V

    :cond_30
    :goto_30
    return-void
.end method

.method public blacklist onImsUnregistered(I)V
    .registers 4

    .line 134
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsNrSaSupported:Z

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mNrSaDisablePolicy:I

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2f

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiRegistered()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_2f

    .line 139
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsUnregistered : ImsRegistrationTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsNrSaModeHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setWifiRegStatus(Z)V

    .line 142
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->calculateAndControlNrSaIfNeeded()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public blacklist onPreciseCallStateChanged()V
    .registers 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreciseCallStateChanged :  foreground state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 150
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 151
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "ImsNrSaModeHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isImsCallJustEstablished()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setImsCallStatus(Z)V

    goto :goto_49

    .line 158
    :cond_3d
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isImsCallJustTerminated()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    .line 159
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setImsCallStatus(Z)V

    goto :goto_49

    :cond_48
    move v1, v2

    .line 163
    :goto_49
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isWifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_54

    if-eqz v1, :cond_54

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->calculateAndControlNrSaIfNeeded()V

    :cond_54
    return-void
.end method

.method public blacklist setImsCallStatus(Z)V
    .registers 4

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsCallStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsNrSaModeHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsInImsCall:Z

    return-void
.end method

.method public blacklist setN1ModeSetter(Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$N1ModeSetter;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mN1ModeSetter:Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$N1ModeSetter;

    return-void
.end method

.method public blacklist setNrSaDisabledForWfc(Z)V
    .registers 2

    .line 317
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsNrSaDisabledForWfc:Z

    return-void
.end method

.method public blacklist setWifiRegStatus(Z)V
    .registers 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiRegStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsNrSaModeHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsWifiRegistered:Z

    return-void
.end method

.method public blacklist tearDown()V
    .registers 2

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->unregisterForCarrierConfigChanges()V

    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->unregisterForPreciseCallStateChanges()V

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->isNrSaDisabledForWfc()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->setNrSaMode(Z)V

    :cond_10
    return-void
.end method

.method public blacklist updateImsCapability(I)V
    .registers 3

    .line 172
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsNrSaSupported:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mNrSaDisablePolicy:I

    if-nez v0, :cond_9

    goto :goto_18

    :cond_9
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 177
    :goto_f
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsVoiceCapable:Z

    if-eq p1, v0, :cond_18

    .line 178
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->mIsVoiceCapable:Z

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->calculateAndControlNrSaIfNeeded()V

    :cond_18
    :goto_18
    return-void
.end method

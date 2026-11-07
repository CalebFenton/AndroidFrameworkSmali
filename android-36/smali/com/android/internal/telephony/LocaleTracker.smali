.class public Lcom/android/internal/telephony/LocaleTracker;
.super Landroid/os/Handler;
.source "LocaleTracker.java"


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCountryOverride:Ljava/lang/String;

.field private blacklist mCurrentCountryIso:Ljava/lang/String;

.field private blacklist mFailCellInfoCount:I

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIsTracking:Z

.field private blacklist mLastServiceState:I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mNitzStateMachine:Lcom/android/internal/telephony/NitzStateMachine;

.field private blacklist mOperatorNumeric:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSimState:I

.field private blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/LocaleTracker;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/LocaleTracker;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 7

    .line 252
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p3, 0x3

    .line 165
    iput p3, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    const/4 p3, 0x0

    .line 167
    iput-boolean p3, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    .line 169
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x20

    invoke-direct {v0, v1, p3}, Lcom/android/internal/telephony/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 172
    new-instance v0, Lcom/android/internal/telephony/LocaleTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LocaleTracker$1;-><init>(Lcom/android/internal/telephony/LocaleTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 253
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 254
    iput-object p2, p0, Lcom/android/internal/telephony/LocaleTracker;->mNitzStateMachine:Lcom/android/internal/telephony/NitzStateMachine;

    .line 255
    iput p3, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/LocaleTracker;->mTag:Ljava/lang/String;

    .line 257
    iput-object p4, p0, Lcom/android/internal/telephony/LocaleTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 259
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    const-string p3, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    sget-boolean p3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz p3, :cond_54

    .line 262
    const-string p3, "com.android.internal.telephony.action.COUNTRY_OVERRIDE"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    :cond_54
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 266
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p2, 0x4

    .line 267
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static blacklist getCellInfoDelayTime(I)J
    .registers 5

    const/16 v0, 0x1e

    .line 445
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x7d0

    mul-long/2addr v0, v2

    .line 446
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getMccFromCellInfo()Ljava/lang/String;
    .registers 7

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 291
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 292
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 295
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_39

    .line 296
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v5, v4

    .line 298
    :cond_39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-le v5, v2, :cond_11

    move-object v1, v3

    move v2, v5

    goto :goto_11

    :cond_45
    return-object v1
.end method

.method private blacklist getMccMncFromCellInfo(Ljava/lang/String;)Lcom/android/internal/telephony/MccTable$MccMnc;
    .registers 8

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 326
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 327
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 329
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v3

    .line 330
    new-instance v5, Lcom/android/internal/telephony/MccTable$MccMnc;

    invoke-direct {v5, v4, v3}, Lcom/android/internal/telephony/MccTable$MccMnc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4a

    .line 333
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v4, v3

    .line 335
    :cond_4a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-le v4, v2, :cond_11

    move v2, v4

    move-object v1, v5

    goto :goto_11

    :cond_56
    return-object v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 633
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 637
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2

    .line 368
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    .line 370
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateTrackingStatus()V

    return-void
.end method

.method private blacklist onSimCardStateChanged(I)V
    .registers 2

    .line 357
    iput p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    .line 358
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    .line 359
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateTrackingStatus()V

    return-void
.end method

.method private blacklist processCellInfo(Landroid/os/AsyncResult;)V
    .registers 4

    if-eqz p1, :cond_25

    .line 402
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    goto :goto_25

    .line 406
    :cond_7
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCellInfo: cell info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 409
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    .line 410
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    return-void

    :cond_25
    :goto_25
    const/4 p1, 0x0

    .line 403
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    return-void
.end method

.method private blacklist requestNextCellInfo(Z)V
    .registers 7

    .line 414
    iget-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 416
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_21

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->resetCellInfoRetry()V

    const/4 p1, 0x4

    .line 421
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x5

    .line 422
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 427
    :cond_21
    iget p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    invoke-static {p1}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfoDelayTime(I)J

    move-result-wide v1

    .line 428
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get cell info. Try again in "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " secs."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist resetCellInfoRetry()V
    .registers 2

    const/4 v0, 0x0

    .line 454
    iput v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    const/4 v0, 0x1

    .line 455
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist startTracking()V
    .registers 3

    .line 482
    iget-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    if-eqz v0, :cond_5

    return-void

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "Starting LocaleTracker"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 485
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    .line 487
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist stopTracking()V
    .registers 3

    .line 472
    iget-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    .line 475
    const-string v0, "Stopping LocaleTracker"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    .line 478
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->resetCellInfoRetry()V

    return-void
.end method

.method private blacklist updateLastKnownCountryIso(Ljava/lang/String;)V
    .registers 5

    .line 609
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "last_known_country_iso"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 612
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 613
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 614
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update country iso in sharedPrefs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method private declared-synchronized blacklist updateLocale()V
    .registers 7

    monitor-enter p0

    .line 495
    :try_start_1
    const-string v0, ""

    .line 496
    const-string v1, "empty as default"

    .line 498
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 499
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable$MccMnc;->fromOperatorNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/MccTable$MccMnc;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 501
    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->geoCountryCodeForMccMnc(Lcom/android/internal/telephony/MccTable$MccMnc;)Ljava/lang/String;

    move-result-object v0

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OperatorNumeric("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): MccTable.geoCountryCodeForMccMnc(\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    :catchall_3a
    move-exception v0

    goto/16 :goto_1dd

    .line 505
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLocale: Can\'t get country from operator numeric. mOperatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->loge(Ljava/lang/String;)V

    .line 512
    :cond_53
    :goto_53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 514
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getMccFromCellInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 516
    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CellInfo: MccTable.countryCodeForMcc(\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->getMccMncFromCellInfo(Ljava/lang/String;)Lcom/android/internal/telephony/MccTable$MccMnc;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 524
    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->geoCountryCodeForMccMnc(Lcom/android/internal/telephony/MccTable$MccMnc;)Ljava/lang/String;

    move-result-object v0

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CellInfo: MccTable.geoCountryCodeForMccMnc("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    :cond_99
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mCountryOverride:Ljava/lang/String;

    if-eqz v2, :cond_b6

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCountryOverride = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCountryOverride:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    .line 536
    :cond_b6
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c5

    .line 537
    const-string v0, ""

    .line 538
    const-string v1, "radio off"

    .line 541
    iput-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    .line 544
    :cond_c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocale: countryIso = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", countryIsoDebugInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 546
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_182

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocale: Change the current country to \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", countryIsoDebugInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mCellInfoList = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 551
    iget-object v4, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 552
    iput-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    .line 555
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_121

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->updateLastKnownCountryIso(Ljava/lang/String;)V

    .line 559
    :cond_121
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 560
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_148

    .line 561
    new-instance v4, Ljava/util/ArrayList;

    .line 562
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->operator_iso_country()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 563
    :goto_136
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v2, :cond_140

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_136

    .line 564
    :cond_140
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-static {v4}, Landroid/internal/telephony/sysprop/TelephonyProperties;->operator_iso_country(Ljava/util/List;)V

    .line 568
    :cond_148
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyCountryDetector;->getInstance(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/TelephonyCountryDetector;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 569
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->onNetworkCountryCodeChanged(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 571
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    const-string v3, "android.telephony.extra.NETWORK_COUNTRY"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v3, "android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY"

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getLastKnownCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 573
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 576
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 584
    :cond_182
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ab

    .line 587
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    const-string v3, "001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ab

    .line 589
    const-string v0, ""

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test cell: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_1ac

    :cond_1ab
    const/4 v2, 0x0

    .line 593
    :goto_1ac
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocale: timeZoneCountryIso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", timeZoneCountryIsoDebugInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 596
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    if-nez v2, :cond_1d6

    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mNitzStateMachine:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine;->handleCountryUnavailable()V

    goto :goto_1db

    .line 599
    :cond_1d6
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mNitzStateMachine:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/NitzStateMachine;->handleCountryDetected(Ljava/lang/String;)V
    :try_end_1db
    .catchall {:try_start_1 .. :try_end_1db} :catchall_3a

    .line 601
    :goto_1db
    monitor-exit p0

    return-void

    :goto_1dd
    :try_start_1dd
    monitor-exit p0
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_3a

    throw v0
.end method

.method private blacklist updateOperatorNumericImmediate(Ljava/lang/String;)V
    .registers 4

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operator numeric changes to \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 396
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 397
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    :cond_2b
    return-void
.end method

.method private blacklist updateTrackingStatus()V
    .registers 3

    .line 459
    iget v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_d
    iget v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    goto :goto_19

    .line 467
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->stopTracking()V

    return-void

    .line 465
    :cond_19
    :goto_19
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->startTracking()V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 648
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocaleTracker-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 651
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsTracking = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperatorNumeric = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimState = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCellInfoList = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentCountryIso = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFailCellInfoCount = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 659
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 661
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 662
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getCountryOverride()Ljava/lang/String;
    .registers 1

    .line 672
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCountryOverride:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCurrentCountry()Ljava/lang/String;
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public blacklist getLastKnownCountryIso()Ljava/lang/String;
    .registers 3

    .line 627
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "last_known_country_iso"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 629
    const-string v0, ""

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_7c

    .line 239
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message arrives. msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :pswitch_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCountryOverride:Ljava/lang/String;

    .line 235
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    return-void

    .line 229
    :pswitch_29
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumericImmediate(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateTrackingStatus()V

    return-void

    .line 213
    :pswitch_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->processCellInfo(Landroid/os/AsyncResult;)V

    .line 216
    iget-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    if-eqz p1, :cond_44

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_44

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->requestNextCellInfo(Z)V

    return-void

    .line 207
    :pswitch_49
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->processCellInfo(Landroid/os/AsyncResult;)V

    .line 209
    iget-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfoList:Ljava/util/List;

    if-eqz p1, :cond_5d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5d

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->requestNextCellInfo(Z)V

    :cond_5d
    return-void

    .line 225
    :pswitch_5e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->onSimCardStateChanged(I)V

    return-void

    .line 220
    :pswitch_64
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 221
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    .line 203
    :pswitch_70
    iget-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/Phone;->requestCellInfoUpdate(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_70
        :pswitch_64
        :pswitch_5e
        :pswitch_49
        :pswitch_32
        :pswitch_29
        :pswitch_1f
    .end packed-switch
.end method

.method public blacklist isTracking()Z
    .registers 1

    .line 605
    iget-boolean p0, p0, Lcom/android/internal/telephony/LocaleTracker;->mIsTracking:Z

    return p0
.end method

.method public blacklist updateOperatorNumeric(Ljava/lang/String;)V
    .registers 4

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_18

    .line 380
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_17

    .line 381
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_17
    return-void

    .line 385
    :cond_18
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumericImmediate(Ljava/lang/String;)V

    return-void
.end method

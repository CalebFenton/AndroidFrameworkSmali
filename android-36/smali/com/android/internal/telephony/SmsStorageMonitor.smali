.class public Lcom/android/internal/telephony/SmsStorageMonitor;
.super Landroid/os/Handler;
.source "SmsStorageMonitor.java"


# instance fields
.field final greylist-max-r mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field blacklist mInitialStorageAvailableStatus:Z

.field private blacklist mIsMemoryStatusReportingFailed:Z

.field private blacklist mIsWaitingResponse:Z

.field private blacklist mMaxRetryCount:I

.field private blacklist mMemoryStatusOverrideFlag:Z

.field private blacklist mNeedNewReporting:Z

.field blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mResultReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRetryCount:I

.field private blacklist mRetryDelay:I

.field blacklist mStorageAvailable:Z

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 6

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMaxRetryCount:I

    const/16 v1, 0x1388

    .line 79
    iput v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryDelay:I

    const/4 v1, 0x0

    .line 80
    iput v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    .line 81
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsWaitingResponse:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mNeedNewReporting:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsMemoryStatusReportingFailed:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mInitialStorageAvailableStatus:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMemoryStatusOverrideFlag:Z

    .line 301
    new-instance v1, Lcom/android/internal/telephony/SmsStorageMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsStorageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 112
    iput-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    .line 114
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->createWakelock()V

    const/4 v2, 0x0

    .line 118
    invoke-interface {p1, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 119
    invoke-interface {p1, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    const-string p1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string p1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist createWakelock()V
    .registers 4

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 269
    const-string v1, "SmsStorageMonitor"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 270
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private blacklist handleIccFull()V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 279
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 278
    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSimFullApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist sendMemoryStatusReport(Z)V
    .registers 6

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsWaitingResponse:Z

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111024b

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_36

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 256
    const-string v2, "SmsStorageMonitor1"

    const-string v3, "sendMemoryStatusReport: smsIfcMngr is available"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result v2

    if-eqz v2, :cond_36

    if-eqz p1, :cond_36

    .line 258
    iget-object p1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 259
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 258
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SmsDispatchersController;->reportSmsMemoryStatus(Landroid/os/Message;)V

    return-void

    .line 264
    :cond_36
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public blacklist clearMemoryStatusOverride()V
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mInitialStorageAvailableStatus:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMemoryStatusOverrideFlag:Z

    return-void
.end method

.method public blacklist dispose()V
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 176
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 178
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10c

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "(full)"

    const-string v6, "(not full)"

    const/4 v7, 0x0

    const-string v8, "SmsStorageMonitor1"

    if-eq v1, v3, :cond_de

    const/4 v3, 0x3

    if-eq v1, v3, :cond_55

    if-eq v1, v4, :cond_3a

    const/4 p1, 0x5

    if-eq v1, p1, :cond_1b

    goto :goto_39

    .line 241
    :cond_1b
    iget-boolean p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsMemoryStatusReportingFailed:Z

    if-eqz p1, :cond_39

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RADIO_ON - report failed sms memory status"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2c

    move-object v5, v6

    .line 243
    :cond_2c
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {v8, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->sendMemoryStatusReport(Z)V

    :cond_39
    :goto_39
    return-void

    .line 235
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RETRY_MEMORY_STATUS_REPORTING - retry"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_47

    move-object v5, v6

    .line 236
    :cond_47
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-static {v8, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->sendMemoryStatusReport(Z)V

    return-void

    .line 202
    :cond_55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 203
    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsWaitingResponse:Z

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_REPORT_MEMORY_STATUS_DONE - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6c

    const-string v3, "succeeded"

    goto :goto_6e

    :cond_6c
    const-string v3, "failed"

    :goto_6e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v8, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mNeedNewReporting:Z

    if-eqz v1, :cond_9b

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_REPORT_MEMORY_STATUS_DONE - report again now"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_89

    move-object v5, v6

    .line 208
    :cond_89
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {v8, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mNeedNewReporting:Z

    .line 211
    iput v7, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    .line 212
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->sendMemoryStatusReport(Z)V

    return-void

    .line 214
    :cond_9b
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_d9

    .line 215
    iget p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    iget v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMaxRetryCount:I

    if-ge p1, v0, :cond_cf

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_REPORT_MEMORY_STATUS_DONE - retry in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryDelay:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryDelay:I

    int-to-long v0, v0

    .line 218
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 222
    :cond_cf
    const-string p1, "EVENT_REPORT_MEMORY_STATUS_DONE - no retry anymore(pended)"

    invoke-static {v8, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput v7, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    .line 225
    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsMemoryStatusReportingFailed:Z

    return-void

    .line 228
    :cond_d9
    iput v7, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    .line 229
    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsMemoryStatusReportingFailed:Z

    return-void

    .line 184
    :cond_de
    iget-boolean p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsWaitingResponse:Z

    if-eqz p1, :cond_ea

    .line 185
    const-string p1, "EVENT_REPORT_MEMORY_STATUS - deferred"

    invoke-static {v8, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mNeedNewReporting:Z

    return-void

    .line 190
    :cond_ea
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_REPORT_MEMORY_STATUS - report sms memory status"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_f7

    move-object v5, v6

    .line 191
    :cond_f7
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {v8, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mIsMemoryStatusReportingFailed:Z

    .line 196
    iput v7, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryCount:I

    .line 197
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->sendMemoryStatusReport(Z)V

    return-void

    .line 180
    :cond_10c
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    return-void
.end method

.method public blacklist isStorageAvailable()Z
    .registers 1

    .line 298
    iget-boolean p0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    return p0
.end method

.method public blacklist sendMemoryStatusOverride(Z)V
    .registers 3

    .line 136
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMemoryStatusOverrideFlag:Z

    if-nez v0, :cond_b

    .line 137
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mInitialStorageAvailableStatus:Z

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMemoryStatusOverrideFlag:Z

    .line 140
    :cond_b
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    if-eqz p1, :cond_17

    const/4 p1, 0x2

    .line 142
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_17
    return-void
.end method

.method public blacklist setMaxRetries(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mMaxRetryCount:I

    return-void
.end method

.method public blacklist setRetryDelayInMillis(I)V
    .registers 2

    .line 161
    iput p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mRetryDelay:I

    return-void
.end method

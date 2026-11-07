.class public Lcom/android/internal/telephony/TelephonyTester;
.super Ljava/lang/Object;
.source "TelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;
    }
.end annotation


# static fields
.field private static blacklist mImsExternalCallStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mLogTag:Ljava/lang/String;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mServiceStateTestIntent:Landroid/content/Intent;

.field private blacklist mSignalStrengthTest:Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;


# direct methods
.method public static synthetic blacklist $r8$lambda$KGxDCLQH6kyBChiKk9v35dYE5W4(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V
    .registers 3

    const/4 v0, 0x1

    .line 658
    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/Connection;->setAddress(Ljava/lang/String;I)V

    .line 659
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Connection;->setDialString(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogTag(Lcom/android/internal/telephony/TelephonyTester;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mLogTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleHandoverFailedIntent(Lcom/android/internal/telephony/TelephonyTester;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->handleHandoverFailedIntent()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSuppServiceFailedIntent(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->handleSuppServiceFailedIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTestConferenceEventPackage(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyTester;->handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTestDialogEventPackageIntent(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->handleTestDialogEventPackageIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/TelephonyTester;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendTestSuppServiceNotification(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->sendTestSuppServiceNotification(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 9

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Lcom/android/internal/telephony/TelephonyTester$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/TelephonyTester$1;-><init>(Lcom/android/internal/telephony/TelephonyTester;)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 233
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_cf

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyTester-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mLogTag:Ljava/lang/String;

    .line 235
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register for intent action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_aa

    .line 244
    const-string v0, "register for intent action=com.android.internal.telephony.TestConferenceEventPackage"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 245
    const-string v0, "com.android.internal.telephony.TestConferenceEventPackage"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v0, "com.android.internal.telephony.TestDialogEventPackage"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v0, "com.android.internal.telephony.TestSuppSrvcFail"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v0, "com.android.internal.telephony.TestHandoverFail"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v0, "com.android.internal.telephony.TestSuppSrvcNotification"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v0, "com.android.internal.telephony.TestImsECall"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v0, "com.android.internal.telephony.TestReceiveDtmf"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    .line 255
    :cond_aa
    const-string v0, "com.android.internal.telephony.TestServiceState"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v0, "register for intent action=com.android.internal.telephony.TestServiceState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 258
    const-string v0, "com.android.internal.telephony.TestChangeNumber"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v0, "register for intent action=com.android.internal.telephony.TestChangeNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_cf
    return-void
.end method

.method private blacklist getImsCall()Lcom/android/ims/ImsCall;
    .registers 2

    .line 616
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 621
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 626
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    :cond_16
    return-object p0
.end method

.method private blacklist handleHandoverFailedIntent()V
    .registers 5

    .line 286
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 291
    :cond_7
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p0

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    const/16 v2, 0xd

    const/16 v3, 0x12

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private blacklist handleSuppServiceFailedIntent(Landroid/content/Intent;)V
    .registers 4

    .line 276
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez p0, :cond_7

    return-void

    .line 280
    :cond_7
    const-string v0, "failureCode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 281
    invoke-static {}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->values()[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method private blacklist handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_7

    goto :goto_3a

    .line 311
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 313
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    :try_start_16
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1b} :catch_3f

    .line 322
    new-instance p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;-><init>(Ljava/io/InputStream;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->parse()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p0

    if-nez p0, :cond_27

    goto :goto_3a

    :cond_27
    if-eqz p3, :cond_2d

    .line 329
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->injectTestConferenceState(Landroid/telephony/ims/ImsConferenceState;)V

    return-void

    .line 331
    :cond_2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    if-nez p1, :cond_34

    goto :goto_3a

    .line 336
    :cond_34
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p1

    if-nez p1, :cond_3b

    :goto_3a
    return-void

    .line 341
    :cond_3b
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    return-void

    .line 318
    :catch_3f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Test conference event package file not found: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleTestDialogEventPackageIntent(Landroid/content/Intent;)V
    .registers 10

    .line 351
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez p0, :cond_7

    goto :goto_5f

    .line 355
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_5f

    .line 360
    :cond_e
    const-string v0, "startPackage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 361
    sget-object p0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 362
    :cond_1c
    const-string v0, "sendPackage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 363
    sget-object p1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshExternalCallState(Ljava/util/List;)V

    .line 364
    sget-object p0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 365
    :cond_2f
    const-string p0, "dialogId"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 366
    new-instance v1, Landroid/telephony/ims/ImsExternalCallState;

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string p0, "number"

    .line 368
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string p0, "canPull"

    const/4 v0, 0x1

    .line 369
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string p0, "state"

    .line 370
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    .line 375
    sget-object p0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    :goto_5f
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 272
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist sendTestSuppServiceNotification(Landroid/content/Intent;)V
    .registers 6

    .line 380
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, -0x1

    .line 381
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 382
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v1, :cond_20

    goto :goto_40

    .line 387
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test supp service notification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 388
    new-instance p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 389
    iput v0, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 390
    iput p1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 391
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    :cond_40
    :goto_40
    return-void
.end method


# virtual methods
.method public blacklist getOverriddenSignalStrength()Landroid/telephony/SignalStrength;
    .registers 1

    .line 447
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mSignalStrengthTest:Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;

    return-object p0
.end method

.method blacklist overrideServiceState(Landroid/telephony/ServiceState;)V
    .registers 10

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2b1

    if-nez p1, :cond_8

    goto/16 :goto_2b1

    .line 467
    :cond_8
    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    .line 468
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 469
    const-string p1, "Service state override reset"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void

    .line 473
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "voice_reg_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "data_reg_state"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_72

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 476
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 478
    invoke-virtual {p1, v4, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 480
    new-instance v5, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v5, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    if-nez v0, :cond_50

    .line 482
    invoke-virtual {v5, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    goto :goto_53

    .line 484
    :cond_50
    invoke-virtual {v5, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    .line 487
    :goto_53
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override voice service state with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 490
    :cond_72
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_b5

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 493
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 494
    invoke-virtual {p1, v1, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 496
    new-instance v5, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v5, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    if-nez v0, :cond_93

    .line 498
    invoke-virtual {v5, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    goto :goto_96

    .line 500
    :cond_93
    invoke-virtual {v5, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    .line 503
    :goto_96
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override data service state with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 506
    :cond_b5
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "operator"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 508
    array-length v2, v0

    const-string v5, ""

    if-lez v2, :cond_d3

    aget-object v2, v0, v3

    goto :goto_d4

    :cond_d3
    move-object v2, v5

    .line 509
    :goto_d4
    array-length v6, v0

    if-le v6, v4, :cond_da

    aget-object v6, v0, v4

    goto :goto_db

    :cond_da
    move-object v6, v2

    .line 510
    :goto_db
    array-length v7, v0

    if-le v7, v1, :cond_e0

    aget-object v5, v0, v1

    .line 511
    :cond_e0
    invoke-virtual {p1, v2, v6, v5}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override operator with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 514
    :cond_fb
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "operator_raw"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLongRaw(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaShortRaw(Ljava/lang/String;)V

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override operator_raw with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 520
    :cond_125
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "nr_frequency_range"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setNrFrequencyRange(I)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override NR frequency range with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 525
    :cond_150
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "nr_state"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_195

    .line 526
    invoke-virtual {p1, v1, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_171

    .line 529
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 530
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 531
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 534
    :cond_171
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo;->setNrState(I)V

    .line 536
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override NR state with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 539
    :cond_195
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "voice_rat"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 540
    invoke-virtual {p1, v4, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_1b6

    .line 543
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 544
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 545
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 548
    :cond_1b6
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    .line 549
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 548
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 551
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override voice rat with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 554
    :cond_1de
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "data_rat"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_227

    .line 555
    invoke-virtual {p1, v1, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_1ff

    .line 558
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 559
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 563
    :cond_1ff
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    .line 564
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 563
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 566
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override data rat with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 569
    :cond_227
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "voice_roaming_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26c

    .line 570
    invoke-virtual {p1, v4, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_248

    .line 573
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 574
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 575
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 578
    :cond_248
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 580
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override voice roaming type with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 583
    :cond_26c
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v2, "data_roaming_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b1

    .line 584
    invoke-virtual {p1, v1, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_28d

    .line 587
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 588
    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 589
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 592
    :cond_28d
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 594
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override data roaming type with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    :cond_2b1
    :goto_2b1
    return-void
.end method

.method public blacklist setServiceStateTestIntent(Landroid/content/Intent;)V
    .registers 5

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "phone_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_15

    return-void

    .line 458
    :cond_15
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    .line 461
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist setSignalStrength(I)V
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_3f

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSignalStrength: level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 432
    new-instance v0, Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;-><init>(Lcom/android/internal/telephony/TelephonyTester;Lcom/android/internal/telephony/TelephonyTester-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mSignalStrengthTest:Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;

    .line 433
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;->mockLevel(I)V

    .line 434
    new-instance p1, Landroid/os/AsyncResult;

    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mSignalStrengthTest:Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;

    invoke-direct {p1, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object p0

    const/16 v1, 0x9

    .line 436
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 435
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 438
    :cond_3f
    const-string p1, "setSignalStrength: clear mock"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 439
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mSignalStrengthTest:Lcom/android/internal/telephony/TelephonyTester$SignalStrengthTestable;

    .line 440
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->getSignalStrengthFromCi()V

    return-void
.end method

.method blacklist testChangeNumber(Landroid/content/Intent;)V
    .registers 4

    .line 648
    const-string v0, "number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_46

    .line 652
    :cond_9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/TelephonyTester$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/TelephonyTester$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 663
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v0, :cond_36

    .line 664
    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 665
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    return-void

    .line 666
    :cond_36
    instance-of v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_46

    .line 667
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 668
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    :cond_46
    :goto_46
    return-void
.end method

.method blacklist testImsECall()V
    .registers 5

    .line 601
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 604
    :cond_7
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 605
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_16

    .line 607
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 609
    :cond_16
    const-string v2, "e_call"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 610
    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 611
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method blacklist testImsReceiveDtmf(Landroid/content/Intent;)V
    .registers 4

    .line 634
    const-string v0, "digit"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_18

    .line 637
    :cond_9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 639
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_19

    :goto_18
    return-void

    .line 644
    :cond_19
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionDtmfReceived(C)V

    return-void
.end method

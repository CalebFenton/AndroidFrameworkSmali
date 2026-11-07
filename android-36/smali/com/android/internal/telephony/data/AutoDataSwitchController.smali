.class public Lcom/android/internal/telephony/data/AutoDataSwitchController;
.super Landroid/os/Handler;
.source "AutoDataSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;,
        Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;,
        Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;,
        Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;
    }
.end annotation


# static fields
.field public static final blacklist EVALUATION_REASON_DATA_SETTINGS_CHANGED:I = 0x5

.field public static final blacklist EVALUATION_REASON_DEFAULT_NETWORK_CHANGED:I = 0x4

.field public static final blacklist EVALUATION_REASON_DISPLAY_INFO_CHANGED:I = 0x2

.field public static final blacklist EVALUATION_REASON_REGISTRATION_STATE_CHANGED:I = 0x1

.field public static final blacklist EVALUATION_REASON_RETRY_VALIDATION:I = 0x6

.field public static final blacklist EVALUATION_REASON_SIGNAL_STRENGTH_CHANGED:I = 0x3

.field public static final blacklist EVALUATION_REASON_SIM_LOADED:I = 0x7

.field public static final blacklist EVALUATION_REASON_VOICE_CALL_END:I = 0x8

.field private static final blacklist RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J

.field private static final blacklist STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;


# instance fields
.field private final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mAutoDataSwitchValidationMaxRetry:I

.field private blacklist mAutoSwitchValidationFailedCount:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultNetworkIsOnNonCellular:Z

.field private blacklist mDisplayedNotification:Z

.field private final blacklist mEventsToAlarmListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/AlarmManager$OnAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

.field private final blacklist mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

.field private blacklist mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

.field private blacklist mRequirePingTestBeforeSwitch:Z

.field private final blacklist mScheduledEventsToExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScoreTolerance:I

.field private blacklist mSelectedTargetPhoneId:I

.field private final blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method public static synthetic blacklist $r8$lambda$N7MAQCv7FXZal5NWBMy_pBIvCeA(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Long;)V
    .registers 4

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->switchTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZK7kHF8vUj4xB3UFIedEbuAMfuI(Lcom/android/internal/telephony/data/AutoDataSwitchController;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->lambda$scheduleEventWithTimer$0(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisInService(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isInService(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 135
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    .line 171
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 172
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J

    .line 179
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/data/PhoneSwitcher;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;)V
    .registers 8

    .line 377
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 174
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 p2, 0x0

    .line 219
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDefaultNetworkIsOnNonCellular:Z

    .line 221
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDisplayedNotification:Z

    const/4 v0, -0x1

    .line 227
    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    const/4 v1, 0x1

    .line 232
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    .line 234
    iput p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    .line 246
    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 378
    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    .line 379
    sput-object p4, Lcom/android/internal/telephony/data/AutoDataSwitchController;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 380
    iput-object p5, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    .line 381
    const-class p4, Landroid/app/AlarmManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 382
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    .line 383
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mEventsToAlarmListener:Ljava/util/Map;

    .line 384
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 385
    iput-object p3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 386
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->readDeviceResourceConfig()V

    .line 387
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    array-length p1, p1

    .line 388
    new-array p3, p1, [Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    iput-object p3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    :goto_4d
    if-ge p2, p1, :cond_55

    .line 392
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->registerAllEventsForPhone(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4d

    :cond_55
    return-void
.end method

.method private blacklist cancelAnyPendingSwitch()V
    .registers 5

    const/4 v0, -0x1

    .line 1045
    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 1046
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->resetFailedCount()V

    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mEventsToAlarmListener:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mEventsToAlarmListener:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_2e

    .line 1051
    :cond_29
    const-string v0, "cancelAnyPendingSwitch: EVENT_STABILITY_CHECK_PASSED listener is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    .line 1053
    :goto_2e
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    :cond_36
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;->onRequireCancelAnyPendingAutoSwitchValidation()V

    return-void
.end method

.method private blacklist evaluateAnyCandidateToUse(ILjava/lang/StringBuilder;)Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;
    .registers 13

    .line 822
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 824
    new-instance v1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;-><init>(IIZLcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    if-nez v0, :cond_16

    .line 828
    const-string p0, ", no candidate as no sim loaded"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 832
    :cond_16
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result v0

    if-nez v0, :cond_22

    .line 833
    const-string p0, ", no candidate as user disabled mobile data"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 837
    :cond_22
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDefaultNetworkIsOnNonCellular:Z

    if-eqz v0, :cond_31

    .line 838
    const-string p0, ", no candidate as default network is active"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on non-cellular transport"

    .line 839
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 844
    :cond_31
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isRatSignalStrengthBasedSwitchEnabled()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmDataRegState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I

    move-result v0

    .line 845
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isHomeService(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 846
    const-string p0, ", no candidate as default phone is in HOME service"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    .line 850
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v0, v0, p1

    move v2, v4

    .line 851
    :goto_50
    iget-object v3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length v6, v3

    if-ge v4, v6, :cond_ed

    if-ne v4, p1, :cond_59

    goto/16 :goto_e9

    .line 855
    :cond_59
    aget-object v6, v3, v4

    .line 856
    aget-object v3, v3, p1

    .line 857
    invoke-static {v3}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v3

    .line 858
    iget-object v7, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v7, v7, v4

    .line 859
    invoke-static {v7}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v7

    .line 860
    const-string v8, ", found phone "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", default is "

    .line 862
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 863
    iget v8, v7, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    iget v9, v3, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    if-le v8, v9, :cond_8c

    .line 864
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    goto :goto_cd

    .line 865
    :cond_8c
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isRatSignalStrengthBasedSwitchEnabled()Z

    move-result v8

    if-eqz v8, :cond_cc

    sget-object v8, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->HOME:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    if-ne v3, v8, :cond_cc

    if-ne v7, v8, :cond_cc

    .line 870
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I

    move-result v3

    .line 871
    invoke-static {v6}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I

    move-result v6

    sub-int v7, v6, v3

    .line 872
    iget v8, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    if-le v7, v8, :cond_bc

    .line 873
    const-string v2, " with "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " versus candidate higher score "

    .line 874
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 875
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v2, 0x1

    goto :goto_cd

    .line 878
    :cond_bc
    const-string v7, ", candidate\'s score "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t justify the switch given the current "

    .line 879
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_cc
    move-object v3, v5

    :goto_cd
    if-eqz v3, :cond_e9

    .line 885
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->getInternetEvaluation(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v3

    .line 887
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v6

    if-nez v6, :cond_e1

    .line 888
    new-instance p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    invoke-direct {p1, v4, v2, p0, v5}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;-><init>(IIZLcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    return-object p1

    .line 891
    :cond_e1
    const-string v6, ", but candidate\'s data is not allowed "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e9
    :goto_e9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_50

    .line 896
    :cond_ed
    const-string p0, ", found no qualified candidate."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method public static blacklist evaluationReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_32

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1006
    :pswitch_1a
    const-string p0, "VOICE_CALL_END"

    return-object p0

    .line 1005
    :pswitch_1d
    const-string p0, "SIM_LOADED"

    return-object p0

    .line 1004
    :pswitch_20
    const-string p0, "RETRY_VALIDATION"

    return-object p0

    .line 1003
    :pswitch_23
    const-string p0, "DATA_SETTINGS_CHANGED"

    return-object p0

    .line 1002
    :pswitch_26
    const-string p0, "DEFAULT_NETWORK_CHANGED"

    return-object p0

    .line 1001
    :pswitch_29
    const-string p0, "SIGNAL_STRENGTH_CHANGED"

    return-object p0

    .line 1000
    :pswitch_2c
    const-string p0, "DISPLAY_INFO_CHANGED"

    return-object p0

    .line 999
    :pswitch_2f
    const-string p0, "REGISTRATION_STATE_CHANGED"

    return-object p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private blacklist getHigherScoreCandidatePhoneId()I
    .registers 8

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v0

    .line 636
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 637
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v2

    .line 636
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v1

    .line 638
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 639
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I

    move-result v2

    const/4 v3, 0x0

    .line 640
    :goto_25
    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length v5, v4

    if-ge v3, v5, :cond_4b

    if-ne v3, v0, :cond_2d

    goto :goto_47

    .line 642
    :cond_2d
    aget-object v4, v4, v3

    .line 644
    invoke-static {v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->HOME:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    if-eq v5, v6, :cond_38

    goto :goto_47

    .line 647
    :cond_38
    invoke-static {v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I

    move-result v4

    sub-int v5, v4, v2

    .line 648
    iget v6, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    if-gt v5, v6, :cond_4a

    if-lt v4, v2, :cond_47

    if-ne v3, v1, :cond_47

    goto :goto_4a

    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_4a
    :goto_4a
    return v3

    :cond_4b
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getInternetEvaluation(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/data/DataEvaluation;
    .registers 5

    .line 907
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0xc

    .line 908
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 910
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0xd

    .line 912
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 915
    :cond_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 916
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    sget-object v2, Lcom/android/internal/telephony/data/AutoDataSwitchController;->sFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 915
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isActiveModemPhone(I)Z
    .registers 2

    if-ltz p1, :cond_9

    .line 1142
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length p0, p0

    if-ge p1, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isActiveSubId(I)Z
    .registers 2

    .line 1013
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1014
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1015
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isHomeService(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isInService(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v1, 0x5

    if-ne p0, v1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    return v0
.end method

.method private blacklist isRatSignalStrengthBasedSwitchEnabled()Z
    .registers 6

    .line 924
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    if-ltz p0, :cond_1c

    sget-object p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    const/4 v0, 0x1

    .line 925
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_1c

    return v0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$scheduleEventWithTimer$0(I)V
    .registers 2

    .line 970
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1161
    const-string p0, "ADSC"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1169
    const-string p0, "ADSC"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 1177
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 1178
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onDisplayInfoChanged(I)V
    .registers 5

    .line 593
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 594
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 595
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v1, v1, p1

    invoke-static {v1, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fputmDisplayInfo(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Landroid/telephony/TelephonyDisplayInfo;)V

    .line 598
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->getHigherScoreCandidatePhoneId()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    if-eq v1, v2, :cond_43

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfoChanged: phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_43
    return-void

    .line 603
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected null phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " upon its display info changed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onEvaluateAutoDataSwitch(I)V
    .registers 16

    .line 681
    sget-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_18

    goto :goto_29

    .line 682
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v0

    .line 684
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2a

    :goto_29
    return-void

    .line 685
    :cond_2a
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v2

    .line 687
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v5, :cond_4b

    .line 689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvaluateAutoDataSwitch: cannot find the phone associated with default data subscription "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void

    .line 694
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v0

    .line 695
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onEvaluateAutoDataSwitch:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    const-string v7, " defaultPhoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " preferredPhoneId: "

    .line 697
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", reason: "

    .line 698
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluationReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    if-ne v0, v2, :cond_a2

    .line 701
    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAnyCandidateToUse(ILjava/lang/StringBuilder;)Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    move-result-object v0

    .line 702
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 703
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result v1

    if-eq v1, p1, :cond_9e

    .line 704
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 705
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result p1

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgetswitchType(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result v1

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgetneedValidation(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->startStabilityCheck(IIZ)V

    return-void

    .line 707
    :cond_9e
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->cancelAnyPendingSwitch()V

    return-void

    .line 711
    :cond_a2
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    if-eqz v7, :cond_1c2

    .line 712
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v8

    if-nez v8, :cond_b0

    goto/16 :goto_1c2

    .line 719
    :cond_b0
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result v5

    const/4 v8, 0x5

    const v9, 0x7fffffff

    if-nez v5, :cond_d1

    .line 720
    iput p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 721
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    invoke-virtual {p1, v9, v8}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;->onRequireImmediatelySwitchToPhone(II)V

    .line 723
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->cancelAnyPendingSwitch()V

    .line 724
    const-string p1, ", immediately back to default as user turns off default"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 724
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    return-void

    .line 727
    :cond_d1
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->getInternetEvaluation(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    filled-new-array {v7}, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    move-result-object v7

    .line 728
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/data/DataEvaluation;->isSubsetOf([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v7

    if-nez v7, :cond_fb

    .line 729
    iput p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 730
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    invoke-virtual {p1, v9, v8}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;->onRequireImmediatelySwitchToPhone(II)V

    .line 732
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->cancelAnyPendingSwitch()V

    .line 733
    const-string p1, ", immediately back to default because backup "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 733
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    return-void

    .line 743
    :cond_fb
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDefaultNetworkIsOnNonCellular:Z

    if-eqz p1, :cond_10e

    .line 744
    const-string p1, ", back to default as default network"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is active on nonCellular transport"

    .line 745
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    move v1, v3

    move v3, p1

    goto/16 :goto_1af

    .line 749
    :cond_10e
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object p1, p1, v2

    .line 750
    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object p1

    .line 751
    iget-object v5, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v5, v5, v0

    .line 752
    invoke-static {v5}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v5

    .line 754
    iget v7, v5, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    sget-object v8, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NOT_USABLE:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    iget v8, v8, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    if-le v7, v8, :cond_128

    move v8, v3

    goto :goto_129

    :cond_128
    move v8, v1

    .line 757
    :goto_129
    iget v10, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->mScore:I

    const-string v11, " , backup phone: "

    const-string v12, " : "

    if-ge v7, v10, :cond_152

    .line 758
    const-string v4, ", back to default phone "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_14d

    .line 764
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    if-eqz p1, :cond_14d

    move p1, v3

    goto :goto_14e

    :cond_14d
    move p1, v1

    :goto_14e
    move v13, v3

    move v3, v1

    move v1, v13

    goto :goto_1af

    :cond_152
    if-ne v10, v7, :cond_1ad

    .line 766
    const-string v7, ", default phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_1a4

    .line 772
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isRatSignalStrengthBasedSwitchEnabled()Z

    move-result v4

    if-eqz v4, :cond_19c

    sget-object v4, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->HOME:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    if-ne v5, v4, :cond_19c

    if-ne p1, v4, :cond_19c

    .line 775
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object p1, p1, v2

    .line 776
    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I

    move-result p1

    .line 777
    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v0, v4, v0

    .line 778
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I

    move-result v0

    if-lt p1, v0, :cond_1ad

    .line 780
    const-string v1, ", back to default for higher or equal score "

    .line 781
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " versus current "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 786
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    move v1, v3

    goto :goto_1af

    .line 790
    :cond_19c
    const-string p1, ", back to default as it\'s usable. "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    goto :goto_14e

    .line 795
    :cond_1a4
    const-string p1, ", back to default as both phones are unusable."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    move v1, v3

    move v3, v4

    goto :goto_1af

    :cond_1ad
    move p1, v3

    move v3, v1

    :goto_1af
    if-eqz v1, :cond_1be

    .line 804
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 805
    iput v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    .line 806
    invoke-direct {p0, v9, v3, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->startStabilityCheck(IIZ)V

    return-void

    .line 809
    :cond_1be
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->cancelAnyPendingSwitch()V

    return-void

    .line 713
    :cond_1c2
    :goto_1c2
    const-string p1, " Unexpected null phone "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as the current active data phone"

    .line 714
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 713
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onServiceStateChanged(I)V
    .registers 7

    .line 552
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 553
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 554
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmDataRegState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I

    move-result v1

    .line 555
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 556
    invoke-virtual {v0, v2, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    if-eq v0, v1, :cond_6e

    .line 561
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v2, v2, p1

    invoke-static {v2, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fputmDataRegState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;I)V

    .line 562
    invoke-static {v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isInService(I)Z

    move-result v2

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isInService(I)Z

    move-result v4

    if-ne v2, v4, :cond_3f

    .line 563
    invoke-static {v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isHomeService(I)Z

    move-result v2

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isHomeService(I)Z

    move-result v4

    if-eq v2, v4, :cond_6e

    .line 564
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChanged: phone "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-static {v0}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_6e
    return-void

    .line 572
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected null phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " upon its registration state changed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onSignalStrengthChanged(I)V
    .registers 6

    .line 612
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 613
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 614
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmSignalStrength(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 616
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    if-eq v2, v3, :cond_61

    .line 617
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v2, v2, p1

    invoke-static {v2, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fputmSignalStrength(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Landroid/telephony/SignalStrength;)V

    .line 618
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->getHigherScoreCandidatePhoneId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    if-eq v2, v3, :cond_61

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthChanged: phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_61
    return-void

    .line 625
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected null phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " upon its signal strength changed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onSubscriptionsChanged()V
    .registers 6

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 v1, 0x1

    .line 426
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v0

    .line 425
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 427
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    invoke-interface {v0, v3}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 428
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    .line 429
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 431
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_31

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_31
    const/4 v2, 0x0

    move v3, v2

    .line 433
    :goto_33
    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length v4, v4

    if-ge v2, v4, :cond_6c

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmListeningForEvents(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 436
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->registerAllEventsForPhone(I)V

    :goto_4f
    move v3, v1

    goto :goto_69

    .line 438
    :cond_51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmListeningForEvents(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 440
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->unregisterAllEventsForPhone(I)V

    goto :goto_4f

    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_6c
    if-eqz v3, :cond_88

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubscriptionChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->logl(Ljava/lang/String;)V

    :cond_88
    return-void
.end method

.method private blacklist readDeviceResourceConfig()V
    .registers 8

    .line 488
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchScoreTolerance()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    .line 491
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->isPingTestBeforeAutoDataSwitchRequired()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    .line 492
    sget-object v1, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 493
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchAvailabilityStabilityTimeThreshold()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 492
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 494
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 495
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchPerformanceStabilityTimeThreshold()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 494
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 496
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 497
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchAvailabilitySwitchbackStabilityTimeThreshold()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4e

    .line 498
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchAvailabilitySwitchbackStabilityTimeThreshold()J

    move-result-wide v3

    goto :goto_52

    .line 499
    :cond_4e
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchAvailabilityStabilityTimeThreshold()J

    move-result-wide v3

    .line 497
    :goto_52
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 496
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchValidationMaxRetry()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSwitchValidationMaxRetry:I

    return-void
.end method

.method private blacklist registerAllEventsForPhone(I)V
    .registers 6

    .line 452
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 453
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 454
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    new-instance v2, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    aput-object v2, v1, p1

    .line 455
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v1

    .line 456
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 455
    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/DisplayInfoController;->registerForTelephonyDisplayInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 457
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object v1

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    .line 457
    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/SignalStrengthController;->registerForSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 459
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 460
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 459
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 461
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object p0, p0, p1

    invoke-static {p0, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fputmListeningForEvents(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Z)V

    return-void

    .line 463
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected null phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when register all events"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist scheduleEventWithTimer(ILjava/lang/Object;J)V
    .registers 13

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mEventsToAlarmListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/AutoDataSwitchController;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mEventsToAlarmListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/AlarmManager$OnAlarmListener;

    .line 974
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-wide v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->RETRY_LONG_DELAY_TIMER_THRESHOLD_MILLIS:J

    cmp-long p2, p3, v0

    if-gtz p2, :cond_36

    .line 981
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 988
    :cond_36
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 989
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long v3, p1, p3

    const-string v5, "ADSC"

    const/4 v2, 0x3

    move-object v7, p0

    .line 988
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist startStabilityCheck(IIZ)V
    .registers 11

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    const/4 v1, 0x5

    .line 940
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v4, v5, v6}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;-><init>(IIZLcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    .line 945
    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result v2

    const-wide/16 v3, -0x1

    if-ne v2, p1, :cond_2c

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgetneedValidation(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)Z

    move-result v2

    if-ne v2, p3, :cond_2c

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgetswitchType(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result v2

    if-eq v2, p2, :cond_2a

    goto :goto_2c

    :cond_2a
    move-wide p1, v3

    goto :goto_44

    .line 948
    :cond_2c
    :goto_2c
    new-instance v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    invoke-direct {v0, p1, p2, p3, v6}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;-><init>(IIZLcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    .line 952
    sget-object p1, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 953
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->scheduleEventWithTimer(ILjava/lang/Object;J)V

    .line 955
    :goto_44
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStabilityCheck: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p1, p1, v3

    if-eqz p1, :cond_55

    .line 956
    const-string p1, "scheduling "

    goto :goto_57

    :cond_55
    const-string p1, "already scheduled "

    :goto_57
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 955
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist switchTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1151
    :cond_1f
    const-string p0, "AVAILABILITY_SWITCH_BACK"

    return-object p0

    .line 1150
    :cond_22
    const-string p0, "PERFORMANCE_SWITCH"

    return-object p0

    .line 1149
    :cond_25
    const-string p0, "AVAILABILITY_SWITCH"

    return-object p0
.end method

.method private blacklist unregisterAllEventsForPhone(I)V
    .registers 4

    .line 472
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveModemPhone(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/DisplayInfoController;->unregisterForTelephonyDisplayInfoChanged(Landroid/os/Handler;)V

    .line 475
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/SignalStrengthController;->unregisterForSignalStrengthChanged(Landroid/os/Handler;)V

    .line 476
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 477
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    aget-object p0, p0, p1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->-$$Nest$fputmListeningForEvents(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Z)V

    return-void

    .line 479
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected out of bound phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when unregister all events"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist displayAutoDataSwitchNotification(IZ)V
    .registers 9

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_d

    goto :goto_1a

    .line 1068
    :cond_d
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDisplayedNotification:Z

    const/4 v2, 0x1

    const-string v3, "auto_data_switch"

    if-eqz v1, :cond_18

    .line 1070
    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void

    :cond_18
    if-nez p2, :cond_1b

    :goto_1a
    return-void

    .line 1078
    :cond_1b
    iget-object p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1079
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    if-eqz p2, :cond_cc

    .line 1080
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-eqz v1, :cond_2f

    goto/16 :goto_cc

    .line 1085
    :cond_2f
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayAutoDataSwitchNotification: display for subId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->logl(Ljava/lang/String;)V

    .line 1088
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1091
    const-string v5, ":settings:fragment_args_key"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v5, "android.provider.extra.SUB_ID"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1094
    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    const/high16 v5, 0x4000000

    invoke-static {v4, p1, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1097
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p2

    .line 1098
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    const v4, 0x104017d

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1100
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    const v4, 0x104017c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1103
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1104
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 1105
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const v4, 0x108008a

    .line 1106
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object v4, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mContext:Landroid/content/Context;

    .line 1107
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string v4, "mobileDataAlertNew"

    .line 1109
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 1110
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1111
    invoke-virtual {p2, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1112
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 1113
    invoke-virtual {v0, v3, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1115
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDisplayedNotification:Z

    return-void

    .line 1081
    :cond_cc
    :goto_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayAutoDataSwitchNotification: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " unexpected subInfo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 1189
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1190
    const-string p2, "AutoDataSwitchController:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScoreTolerance="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScoreTolerance:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoDataSwitchValidationMaxRetry="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSwitchValidationMaxRetry:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAutoSwitchValidationFailedCount="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRequirePingTestBeforeDataSwitch="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mRequirePingTestBeforeSwitch:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    const-string p2, "STABILITY_CHECK_TIMER_MAP:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    sget-object p2, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSelectedTargetPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mSelectedTargetPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1201
    iget-object p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_87
    if-ge v2, v1, :cond_91

    aget-object v3, p2, v2

    .line 1202
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 1204
    :cond_91
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1205
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist evaluateAutoDataSwitch(I)V
    .registers 7

    const/4 v0, 0x6

    if-ne p1, v0, :cond_18

    .line 665
    sget-object v0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->STABILITY_CHECK_TIMER_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    .line 664
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    shl-long/2addr v0, v2

    goto :goto_1a

    :cond_18
    const-wide/16 v0, 0x0

    .line 667
    :goto_1a
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 668
    new-instance v2, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;-><init>(ILcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->scheduleEventWithTimer(ILjava/lang/Object;J)V

    :cond_30
    return-void
.end method

.method public blacklist evaluateRetryOnValidationFailed()V
    .registers 3

    .line 1127
    iget v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSwitchValidationMaxRetry:I

    if-ge v0, v1, :cond_11

    const/4 v0, 0x6

    .line 1128
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    .line 1129
    iget v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    return-void

    .line 1131
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateRetryOnValidationFailed: reached max auto switch retry count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoDataSwitchValidationMaxRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->logl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1133
    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 509
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_be

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->loge(Ljava/lang/String;)V

    return-void

    .line 543
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onSubscriptionsChanged()V

    return-void

    .line 533
    :pswitch_20
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 534
    instance-of v1, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    if-eqz v1, :cond_9c

    check-cast p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    .line 535
    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I

    move-result v1

    .line 536
    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->-$$Nest$fgetneedValidation(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)Z

    move-result p1

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "require validation on phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4b

    .line 538
    const-string v3, ""

    goto :goto_4d

    :cond_4b
    const-string v3, " no"

    :goto_4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " need to pass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 539
    iget-object v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;->onRequireValidation(IZ)V

    return-void

    .line 521
    :pswitch_6b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 522
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 523
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onSignalStrengthChanged(I)V

    return-void

    .line 526
    :pswitch_7b
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 527
    instance-of v1, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;

    if-eqz v1, :cond_9c

    check-cast p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;

    .line 528
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mScheduledEventsToExtras:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-static {p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->-$$Nest$fgetevaluateReason(Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onEvaluateAutoDataSwitch(I)V

    :cond_9c
    return-void

    .line 516
    :pswitch_9d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 517
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 518
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onDisplayInfoChanged(I)V

    return-void

    .line 511
    :pswitch_ad
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 512
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 513
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->onServiceStateChanged(I)V

    return-void

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_9d
        :pswitch_7b
        :pswitch_6b
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist notifySubscriptionsMappingChanged()V
    .registers 2

    const/4 v0, 0x6

    .line 417
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public declared-synchronized blacklist onMultiSimConfigChanged(I)V
    .registers 4

    monitor-enter p0

    .line 401
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    if-ne v0, p1, :cond_8

    .line 402
    monitor-exit p0

    return-void

    :cond_8
    move v1, p1

    :goto_9
    if-ge v1, v0, :cond_13

    .line 405
    :try_start_b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->unregisterAllEventsForPhone(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catchall_11
    move-exception p1

    goto :goto_41

    .line 407
    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    iput-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    :goto_1d
    if-ge v0, p1, :cond_25

    .line 410
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->registerAllEventsForPhone(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 412
    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMultiSimConfigChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhonesSignalStatus:[Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->logl(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_11

    .line 413
    monitor-exit p0

    return-void

    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_11

    throw p1
.end method

.method public blacklist resetFailedCount()V
    .registers 2

    const/4 v0, 0x0

    .line 1120
    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mAutoSwitchValidationFailedCount:I

    return-void
.end method

.method public blacklist updateDefaultNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 1028
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDefaultNetworkIsOnNonCellular:Z

    if-nez p1, :cond_22

    .line 1029
    iget-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 1030
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getAutoSelectedDataSubId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->isActiveSubId(I)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1031
    const-string p1, "default network is active on non cellular, switch back to default"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    :cond_22
    return-void

    .line 1035
    :cond_23
    const-string p1, "default network is lost, try to find another active sub to switch to"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->log(Ljava/lang/String;)V

    .line 1036
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController;->mDefaultNetworkIsOnNonCellular:Z

    .line 1037
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    return-void
.end method

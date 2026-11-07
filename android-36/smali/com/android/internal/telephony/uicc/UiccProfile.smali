.class public Lcom/android/internal/telephony/uicc/UiccProfile;
.super Lcom/android/internal/telephony/IccCard;
.source "UiccProfile.java"


# static fields
.field protected static final blacklist DBG:Z = true

.field public static final blacklist EVENT_APP_READY:I = 0x3

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "UiccProfile"

.field private static final blacklist VDBG:Z


# instance fields
.field private final blacklist mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private blacklist mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private blacklist mCdmaSubscriptionAppIndex:I

.field private blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mCurrentAppType:I

.field private blacklist mDisposed:Z

.field private blacklist mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mGsmUmtsSubscriptionAppIndex:I

.field public final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private blacklist mImsSubscriptionAppIndex:I

.field private blacklist mLastReportedNumOfUiccApplications:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mPhoneId:I

.field private final blacklist mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

.field private final blacklist mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

.field private blacklist mProvisionCompleteContentObserverRegistered:Z

.field private blacklist mRadioTech:I

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private blacklist mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private blacklist mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private final blacklist mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private blacklist mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private final blacklist mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mUserUnlockReceiverRegistered:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$n4jeyd9GOiLZgB8y95dJobKVG48(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .registers 2

    .line 1764
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p1

    .line 1763
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1764
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1763
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisposed(Lcom/android/internal/telephony/uicc/UiccProfile;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIccRecords(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPinStorage(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/PinStorage;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/telephony/TelephonyManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiccApplication(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProvisionCompleteContentObserverRegistered(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserverRegistered:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTestOverrideCarrierPrivilegeRules(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserUnlockReceiverRegistered(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiverRegistered:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCarrierNameOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->handleCarrierNameOverride()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSimCountryIsoOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->handleSimCountryIsoOverride()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->logWithLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierPrivilegesLoadedMessage(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->onCarrierPrivilegesLoadedMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowCarrierAppNotificationsIfPossible(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->showCarrierAppNotificationsIfPossible()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVDBG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smeventToString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->eventToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 108
    const-string v0, "UiccProfile"

    const/4 v1, 0x2

    .line 109
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 14

    .line 338
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;-><init>()V

    const/16 v0, 0x8

    .line 122
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    .line 132
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 160
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v1, 0x1

    .line 162
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    .line 164
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mRadioTech:I

    const/4 v2, 0x0

    .line 165
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 166
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 167
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 174
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile$1;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    .line 187
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$2;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$3;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 213
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccProfile$4;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$4;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 339
    const-string v5, "Creating profile"

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 340
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 341
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    .line 342
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 343
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 346
    invoke-static {p4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p4

    if-eqz p4, :cond_66

    .line 348
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p4

    if-ne p4, v1, :cond_63

    move v0, v1

    :cond_63
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    .line 351
    :cond_66
    instance-of p4, p5, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz p4, :cond_70

    .line 353
    check-cast p5, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    const/4 p4, 0x6

    invoke-virtual {p5, v4, p4, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 355
    :cond_70
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/internal/telephony/uicc/UiccController;->getPinStorage()Lcom/android/internal/telephony/uicc/PinStorage;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    .line 357
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 358
    invoke-interface {p2, v4, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->resetProperties()V

    .line 361
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 363
    new-instance p0, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, p0, v3}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    return-void
.end method

.method private blacklist areAllApplicationsReady()Z
    .registers 7

    .line 1260
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_2a

    aget-object v4, v0, v3

    if-eqz v4, :cond_27

    .line 1261
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v5

    if-nez v5, :cond_27

    .line 1262
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isAppIgnored()Z

    move-result v4

    if-nez v4, :cond_27

    .line 1263
    sget-boolean p0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz p0, :cond_26

    const-string p0, "areAllApplicationsReady: return false"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    :cond_26
    return v2

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1268
    :cond_2a
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areAllApplicationsReady: outside loop, return "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_3f

    move v3, v1

    goto :goto_40

    :cond_3f
    move v3, v2

    :goto_40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1271
    :cond_4a
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_4f

    return v1

    :cond_4f
    return v2
.end method

.method private blacklist areAllRecordsLoaded()Z
    .registers 7

    .line 1275
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_30

    aget-object v4, v0, v3

    if-eqz v4, :cond_2d

    .line 1276
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isAppIgnored()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 1277
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 1278
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1279
    :cond_23
    sget-boolean p0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz p0, :cond_2c

    const-string p0, "areAllRecordsLoaded: return false"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    :cond_2c
    return v2

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1284
    :cond_30
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_50

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areAllRecordsLoaded: outside loop, return "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_45

    move v3, v1

    goto :goto_46

    :cond_45
    move v3, v2

    :goto_46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1287
    :cond_50
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_55

    return v1

    :cond_55
    return v2
.end method

.method private blacklist checkAndUpdateIfAnyAppToBeIgnored()V
    .registers 9

    .line 1241
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 1242
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ge v5, v3, :cond_2e

    aget-object v6, v2, v5

    if-eqz v6, :cond_2b

    .line 1243
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1244
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput-boolean v1, v0, v6

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 1248
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    :goto_31
    if-ge v4, v3, :cond_55

    aget-object v5, v2, v4

    if-eqz v5, :cond_52

    .line 1249
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v6

    if-nez v6, :cond_52

    .line 1252
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-boolean v6, v0, v6

    if-eqz v6, :cond_52

    .line 1253
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setAppIgnoreState(Z)V

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_55
    return-void
.end method

.method private blacklist checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .registers 8

    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "App index "

    const/4 v2, -0x1

    if-eqz v0, :cond_5e

    array-length v3, v0

    if-lt p1, v3, :cond_b

    goto :goto_5e

    :cond_b
    if-gez p1, :cond_e

    return v2

    .line 1301
    :cond_e
    aget-object v0, v0, p1

    if-nez v0, :cond_2a

    .line 1302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return v2

    .line 1306
    :cond_2a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    if-eq v0, p2, :cond_5d

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object p0, p0, p1

    .line 1307
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p0

    if-eq p0, p3, :cond_5d

    .line 1308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid since it\'s not "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and not "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return v2

    :cond_5d
    return p1

    .line 1292
    :cond_5e
    :goto_5e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid since there are no applications"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return v2
.end method

.method private blacklist createAndUpdateCatServiceLocked()V
    .registers 4

    .line 1185
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    if-lez v1, :cond_23

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_23

    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_1b

    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0, v1, p0, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-void

    .line 1190
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)V

    return-void

    .line 1193
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_2a

    .line 1194
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    :cond_2a
    const/4 v0, 0x0

    .line 1196
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-void
.end method

.method private static blacklist eventToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_4a

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1828
    :pswitch_1a
    const-string p0, "SUPPLY_ICC_PIN_DONE"

    return-object p0

    .line 1827
    :pswitch_1d
    const-string p0, "CARRIER_PRIVILEGES_TEST_OVERRIDE_SET"

    return-object p0

    .line 1825
    :pswitch_20
    const-string p0, "CARRIER_CONFIG_CHANGED"

    return-object p0

    .line 1824
    :pswitch_23
    const-string p0, "CARRIER_PRIVILEGES_LOADED"

    return-object p0

    .line 1823
    :pswitch_26
    const-string p0, "SIM_IO_DONE"

    return-object p0

    .line 1822
    :pswitch_29
    const-string p0, "TRANSMIT_APDU_BASIC_CHANNEL_DONE"

    return-object p0

    .line 1821
    :pswitch_2c
    const-string p0, "TRANSMIT_APDU_LOGICAL_CHANNEL_DONE"

    return-object p0

    .line 1819
    :pswitch_2f
    const-string p0, "CLOSE_LOGICAL_CHANNEL_DONE"

    return-object p0

    .line 1818
    :pswitch_32
    const-string p0, "OPEN_LOGICAL_CHANNEL_DONE"

    return-object p0

    .line 1817
    :pswitch_35
    const-string p0, "ICC_RECORD_EVENTS"

    return-object p0

    .line 1816
    :pswitch_38
    const-string p0, "EID_READY"

    return-object p0

    .line 1815
    :pswitch_3b
    const-string p0, "NETWORK_LOCKED"

    return-object p0

    .line 1814
    :pswitch_3e
    const-string p0, "RECORDS_LOADED"

    return-object p0

    .line 1813
    :pswitch_41
    const-string p0, "APP_READY"

    return-object p0

    .line 1812
    :pswitch_44
    const-string p0, "ICC_LOCKED"

    return-object p0

    .line 1811
    :pswitch_47
    const-string p0, "RADIO_OFF_OR_UNAVAILABLE"

    return-object p0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
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

.method private blacklist getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    .registers 3

    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1727
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v1, :cond_b

    .line 1728
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_f

    .line 1730
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    monitor-exit v0

    return-object p0

    .line 1731
    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_9

    throw p0
.end method

.method private blacklist getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .registers 2

    .line 861
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_20

    const/4 p0, 0x0

    return-object p0

    .line 867
    :pswitch_d
    const-string p0, "CARD_RESTRICTED"

    return-object p0

    .line 866
    :pswitch_10
    const-string p0, "CARD_IO_ERROR"

    return-object p0

    .line 865
    :pswitch_13
    const-string p0, "PERM_DISABLED"

    return-object p0

    .line 864
    :pswitch_16
    const-string p0, "NETWORK"

    return-object p0

    .line 863
    :pswitch_19
    const-string p0, "PUK"

    return-object p0

    .line 862
    :pswitch_1c
    const-string p0, "PIN"

    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private blacklist getUninstalledCarrierPackages()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1427
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carrier_app_whitelist"

    .line 1426
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1429
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1430
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 1432
    :cond_15
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->parseToCertificateToPackageMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1433
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1434
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 1436
    :cond_22
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 1438
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 1440
    :cond_2b
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1441
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getAccessRules()Ljava/util/List;

    move-result-object v1

    .line 1442
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccAccessRule;

    .line 1443
    invoke-virtual {v3}, Landroid/telephony/UiccAccessRule;->getCertificateHexString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1444
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1445
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->isPackageBundled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 1446
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_66
    return-object v2
.end method

.method private blacklist handleCarrierNameOverride()V
    .registers 6

    .line 460
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId not valid for Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 466
    :cond_20
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 467
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-nez v1, :cond_32

    .line 469
    const-string p0, "Failed to load a Carrier Config"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 473
    :cond_32
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v2, "carrier_name_override_bool"

    const-string v3, "carrier_name_string"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-static {v1, v0, v4}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 480
    const-string p0, "handleCarrierNameOverride: fail to get carrier configs."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    :cond_4c
    const/4 v4, 0x0

    .line 483
    invoke-virtual {v1, v2, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 485
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_8b

    .line 494
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    goto :goto_8b

    .line 497
    :cond_68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 500
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 502
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_83

    const/4 v4, 0x4

    move-object v1, v2

    goto :goto_8c

    .line 507
    :cond_83
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    goto :goto_8c

    :cond_88
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_8c

    :cond_8b
    :goto_8b
    const/4 v4, 0x3

    .line 513
    :goto_8c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 514
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 518
    :cond_9e
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateCarrierNameForSubscription(II)V

    return-void
.end method

.method private blacklist handleSimCountryIsoOverride()V
    .registers 5

    .line 533
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId not valid for Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 539
    :cond_20
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 540
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-nez v1, :cond_32

    .line 542
    const-string p0, "Failed to load a Carrier Config"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 546
    :cond_32
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v2, "sim_country_iso_override_string"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 547
    invoke-static {v1, v0, v3}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 550
    const-string p0, "handleSimCountryIsoOverride: fail to get carrier configs."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 553
    :cond_4a
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 555
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v2, p0, v1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setCountryIso(ILjava/lang/String;)V

    :cond_6e
    return-void
.end method

.method static blacklist isPackageBundled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1343
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x20000000

    .line 1348
    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1349
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is installed."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_1d} :catch_1f

    const/4 p0, 0x1

    return p0

    .line 1352
    :catch_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isProvisioned()Z
    .registers 3

    .line 1407
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1408
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1407
    const-string v0, "device_provisioned"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_10

    return v1

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .registers 4

    .line 1231
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_2b

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_2b

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1232
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccController;->isCdmaSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 1233
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p0, v0, :cond_2b

    .line 1234
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p0, p1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isUserUnlocked()Z
    .registers 2

    .line 1413
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    return p0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1834
    const-string v0, "UiccProfile"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logWithLocalLog(Ljava/lang/String;)V
    .registers 4

    .line 1842
    const-string v0, "UiccProfile"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccProfile["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccController;->addLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1838
    const-string v0, "UiccProfile"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onCarrierPrivilegesLoadedMessage()V
    .registers 8

    .line 1366
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1368
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1367
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V

    .line 1370
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_2a

    .line 1373
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManager;->onCarrierPrivilegedAppsChanged()V

    .line 1376
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideAllNotifications(Landroid/content/Context;)V

    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_37
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isProvisioned()Z

    move-result v1

    .line 1381
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isUserUnlocked()Z

    move-result v2

    if-eqz v1, :cond_5d

    if-eqz v2, :cond_5d

    .line 1385
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUninstalledCarrierPackages()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1386
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->promptInstallCarrierApp(Ljava/lang/String;)V

    goto :goto_4b

    :catchall_5b
    move-exception p0

    goto :goto_88

    :cond_5d
    const/4 v3, 0x1

    if-nez v1, :cond_74

    .line 1390
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1391
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1395
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserverRegistered:Z

    :cond_74
    if-nez v2, :cond_86

    .line 1398
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1400
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiverRegistered:Z

    .line 1403
    :cond_86
    monitor-exit v0

    return-void

    :goto_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_37 .. :try_end_89} :catchall_5b

    throw p0
.end method

.method public static blacklist parseToCertificateToPackageMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1462
    const-string v0, "\\s*;\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1464
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1465
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 1468
    :cond_13
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1469
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1470
    const-string v2, "\\s*:\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1472
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_46

    const/4 v2, 0x0

    .line 1473
    aget-object v2, v1, v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 1475
    :cond_46
    const-string v1, "Incorrect length of key-value pair in carrier app allow list map.  Length should be exactly 2"

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    goto :goto_20

    :cond_4c
    return-object v0
.end method

.method private blacklist promptInstallCarrierApp(Ljava/lang/String;)V
    .registers 3

    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 1359
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1360
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist registerAllAppEvents()V
    .registers 9

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_36

    aget-object v3, v0, v2

    if-eqz v3, :cond_33

    .line 760
    sget-boolean v4, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v4, :cond_13

    const-string v5, "registerUiccCardEvents: registering for EVENT_APP_READY"

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 761
    :cond_13
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 762
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    if-eqz v3, :cond_33

    if-eqz v4, :cond_27

    .line 764
    const-string v4, "registerUiccCardEvents: registering for EVENT_RECORDS_LOADED"

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 765
    :cond_27
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 766
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_36
    return-void
.end method

.method private blacklist registerCurrAppEvents()V
    .registers 5

    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_13

    .line 788
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private blacklist sanitizeApplicationIndexesLocked()V
    .registers 4

    .line 1211
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1212
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    .line 1214
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1215
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    .line 1217
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v2, 0x0

    .line 1218
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    return-void
.end method

.method private blacklist setCurrentAppType(Z)V
    .registers 6

    .line 435
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "setCurrentAppType"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    move v3, v1

    move v1, v0

    move v0, v3

    .line 445
    :cond_10
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 446
    :try_start_13
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-nez v2, :cond_25

    .line 447
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-nez v2, :cond_20

    goto :goto_25

    .line 450
    :cond_20
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    goto :goto_27

    :catchall_23
    move-exception p0

    goto :goto_29

    .line 448
    :cond_25
    :goto_25
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    .line 452
    :goto_27
    monitor-exit p1

    return-void

    :goto_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_23

    throw p0
.end method

.method private blacklist setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 3

    const/4 v0, 0x0

    .line 840
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    return-void
.end method

.method private blacklist setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .registers 5

    .line 801
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_3
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExternalState: mPhoneId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is invalid; Return!!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 804
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    goto/16 :goto_d0

    :cond_2b
    if-nez p2, :cond_47

    .line 807
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p2, :cond_47

    .line 808
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExternalState: !override and newstate unchanged from "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 809
    monitor-exit v0

    return-void

    .line 811
    :cond_47
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 812
    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p2, :cond_9f

    .line 814
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p1, :cond_9f

    .line 815
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    .line 816
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalState: operator="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 818
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9a

    .line 819
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p2, v1, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    const/4 p2, 0x0

    const/4 v1, 0x3

    .line 820
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 822
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 823
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 822
    invoke-virtual {p2, v1, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_9f

    .line 825
    :cond_94
    const-string p1, "setExternalState: state LOADED; Country code is null"

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    goto :goto_9f

    .line 828
    :cond_9a
    const-string p1, "setExternalState: state LOADED; Operator name is null"

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 832
    :cond_9f
    :goto_9f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExternalState: set mPhoneId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mExternalState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 834
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 835
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object p0

    .line 834
    invoke-virtual {p1, p2, v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->updateSimState(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    .line 836
    monitor-exit v0

    return-void

    :goto_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_3 .. :try_end_d1} :catchall_28

    throw p0
.end method

.method private blacklist showCarrierAppNotificationsIfPossible()V
    .registers 4

    .line 1417
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1418
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUninstalledCarrierPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1419
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 1420
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->registerPackageInstallReceiver(Landroid/content/Context;)V

    goto :goto_14

    :cond_2b
    return-void
.end method

.method private blacklist unregisterAllAppEvents()V
    .registers 6

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    if-eqz v3, :cond_1f

    .line 775
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 776
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 778
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 779
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_22
    return-void
.end method

.method private blacklist unregisterCurrAppEvents()V
    .registers 3

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_10

    .line 795
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkLockedRecordsLoaded(Landroid/os/Handler;)V

    :cond_10
    return-void
.end method

.method private blacklist updateCarrierNameForSubscription(II)V
    .registers 6

    .line 563
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 564
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 565
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_52

    .line 571
    :cond_17
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim name["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    :cond_52
    :goto_52
    return-void
.end method

.method private blacklist updateIccAvailability(Z)V
    .registers 5

    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_3
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 590
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    goto :goto_13

    :catchall_10
    move-exception p0

    goto :goto_37

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz p1, :cond_1b

    .line 594
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterAllAppEvents()V

    .line 595
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerAllAppEvents()V

    .line 598
    :cond_1b
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne p1, v2, :cond_23

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq p1, v1, :cond_32

    .line 599
    :cond_23
    const-string p1, "Icc changed. Reregistering."

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 600
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 601
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 602
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 603
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerCurrAppEvents()V

    .line 605
    :cond_32
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    .line 606
    monitor-exit v0

    return-void

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_10

    throw p0
.end method


# virtual methods
.method public blacklist areCarrierPrivilegeRulesLoaded()Z
    .registers 1

    .line 1692
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1694
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->areCarrierPriviligeRulesLoaded()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1092
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 1093
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_21

    :catchall_b
    move-exception p0

    goto :goto_23

    :cond_d
    if-eqz p3, :cond_21

    .line 1095
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1096
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1097
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1098
    monitor-exit v0

    return-void

    .line 1100
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b

    throw p0
.end method

.method public blacklist changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 1079
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_21

    :catchall_b
    move-exception p0

    goto :goto_23

    :cond_d
    if-eqz p3, :cond_21

    .line 1081
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1082
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1083
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1084
    monitor-exit v0

    return-void

    .line 1086
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b

    throw p0
.end method

.method public blacklist dispose()V
    .registers 7

    .line 371
    const-string v0, "Disposing profile"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v1, :cond_12

    .line 376
    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->unregisterForEidReady(Landroid/os/Handler;)V

    .line 378
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_15
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterAllAppEvents()V

    .line 380
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 382
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserverRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    .line 384
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 385
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserverRegistered:Z

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_89

    .line 388
    :cond_30
    :goto_30
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiverRegistered:Z

    if-eqz v1, :cond_3d

    .line 389
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiverRegistered:Z

    .line 393
    :cond_3d
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideAllNotifications(Landroid/content/Context;)V

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 396
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_59

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    if-eqz v3, :cond_59

    .line 399
    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->unregisterCarrierConfigChangeListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 403
    :cond_59
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 404
    :cond_60
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v1

    move v4, v2

    :goto_64
    if-ge v4, v3, :cond_70

    aget-object v5, v1, v4

    if-eqz v5, :cond_6d

    .line 406
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_70
    const/4 v1, 0x0

    .line 409
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 410
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 411
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mRadioTech:I

    .line 412
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x1

    .line 415
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    .line 416
    monitor-exit v0

    return-void

    :goto_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_15 .. :try_end_8a} :catchall_2e

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 1872
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1873
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1874
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCatService="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v1, p2

    .line 1875
    :goto_22
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    const-string v3, "]="

    if-ge v1, v2, :cond_55

    .line 1876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOperatorBrandOverrideRegistrants["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1877
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1876
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1879
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUniversalPinState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCdmaSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImsSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUiccApplications: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    move v1, p2

    .line 1885
    :goto_c8
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v2

    if-ge v1, v4, :cond_11c

    .line 1886
    aget-object v2, v2, v1

    const-string v4, "mUiccApplications["

    if-nez v2, :cond_ed

    .line 1887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_119

    .line 1889
    :cond_ed
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v1

    .line 1890
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1889
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_119
    add-int/lit8 v1, v1, 0x1

    goto :goto_c8

    .line 1893
    :cond_11c
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1894
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 1896
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    move v4, p2

    :goto_126
    if-ge v4, v2, :cond_135

    aget-object v5, v1, v4

    if-eqz v5, :cond_132

    .line 1898
    invoke-virtual {v5, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    :cond_132
    add-int/lit8 v4, v4, 0x1

    goto :goto_126

    .line 1903
    :cond_135
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    move v4, p2

    :goto_139
    if-ge v4, v2, :cond_14e

    aget-object v5, v1, v4

    if-eqz v5, :cond_14b

    .line 1905
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    if-eqz v5, :cond_14b

    .line 1907
    invoke-virtual {v5, p1, v0, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    :cond_14b
    add-int/lit8 v4, v4, 0x1

    goto :goto_139

    .line 1913
    :cond_14e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v1, :cond_158

    .line 1914
    const-string v1, "mCarrierPrivilegeRules: null"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_168

    .line 1916
    :cond_158
    const-string v1, "mCarrierPrivilegeRules: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1918
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1921
    :goto_168
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v1, :cond_187

    .line 1922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTestOverrideCarrierPrivilegeRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1924
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1926
    :cond_187
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1928
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkLockedRegistrants: size="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p3}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1929
    :goto_1a4
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p1

    if-ge p2, p1, :cond_1d5

    .line 1930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mNetworkLockedRegistrants["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1931
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1930
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1a4

    .line 1933
    :cond_1d5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCurrentAppType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mUiccCard="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1935
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mUiccApplication="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIccRecords="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mExternalState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1939
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 1202
    const-string p0, "UiccProfile finalized"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 4

    .line 1515
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    const/16 p1, 0x8

    goto :goto_19

    .line 1525
    :cond_f
    :try_start_f
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    goto :goto_19

    :catchall_12
    move-exception p0

    goto :goto_27

    .line 1522
    :cond_14
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    goto :goto_19

    .line 1519
    :cond_17
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    :goto_19
    if-ltz p1, :cond_24

    .line 1528
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, p0

    if-ge p1, v1, :cond_24

    .line 1529
    aget-object p0, p0, p1

    monitor-exit v0

    return-object p0

    :cond_24
    const/4 p0, 0x0

    .line 1531
    monitor-exit v0

    return-object p0

    .line 1532
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_12

    throw p0
.end method

.method public blacklist getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 6

    .line 1558
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1559
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    if-ge v1, v3, :cond_22

    .line 1560
    aget-object v2, v2, v1

    if-eqz v2, :cond_1f

    .line 1561
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 1562
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object p0, p0, v1

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    goto :goto_25

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_22
    const/4 p0, 0x0

    .line 1565
    monitor-exit v0

    return-object p0

    .line 1566
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_1d

    throw p0
.end method

.method public blacklist getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 4

    .line 1542
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_10

    .line 1543
    :try_start_5
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, p0

    if-ge p1, v1, :cond_10

    .line 1544
    aget-object p0, p0, p1

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p0

    goto :goto_13

    :cond_10
    const/4 p0, 0x0

    .line 1546
    monitor-exit v0

    return-object p0

    .line 1547
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_e

    throw p0
.end method

.method public blacklist getCarrierPrivilegeAccessRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 1717
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object p0

    if-nez p0, :cond_9

    .line 1719
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1721
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getAccessRules()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getCertsFromCarrierPrivilegeAccessRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1705
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 1707
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getAccessRules()Ljava/util/List;

    move-result-object p0

    .line 1708
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccAccessRule;

    .line 1709
    invoke-virtual {v1}, Landroid/telephony/UiccAccessRule;->getCertificateHexString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1712
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x0

    return-object p0

    :cond_2f
    return-object v0
.end method

.method public blacklist getIccFdnAvailable()Z
    .registers 2

    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 1021
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public blacklist getIccFdnEnabled()Z
    .registers 2

    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1013
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 1014
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public blacklist getIccId()Ljava/lang/String;
    .registers 5

    .line 1798
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    if-eqz v2, :cond_1b

    .line 1800
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1801
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 1802
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIccLockEnabled()Z
    .registers 2

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 1007
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public blacklist getIccPin2Blocked()Z
    .registers 1

    .line 1027
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccPuk2Blocked()Z
    .registers 1

    .line 1033
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 2

    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 883
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 884
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist getIccRecordsLoaded()Z
    .registers 2

    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_f

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    .line 852
    monitor-exit v0

    return p0

    .line 853
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public blacklist getNumApplications()I
    .registers 1

    .line 1677
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLastReportedNumOfUiccApplications:I

    return p0
.end method

.method public blacklist getOperatorBrandOverride()Ljava/lang/String;
    .registers 5

    .line 1785
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 1789
    :cond_c
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator_branding_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPhoneId()I
    .registers 1

    .line 1684
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    return p0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .registers 2

    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1106
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_f

    .line 1107
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    .line 1109
    monitor-exit v0

    return-object p0

    .line 1110
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2

    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 877
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .registers 2

    .line 1503
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1504
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1505
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist hasIccCard()Z
    .registers 2

    .line 1116
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 1120
    :cond_c
    const-string p0, "hasIccCard: UiccProfile is not null but UiccCard is null or card state is ABSENT"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist iccCloseLogicalChannel(IZLandroid/os/Message;)V
    .registers 6

    .line 1634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccCloseLogicalChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->logWithLocalLog(Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 1636
    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1635
    invoke-interface {v0, p1, p2, p0}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(IZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 18

    .line 1662
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    move-object/from16 v2, p7

    .line 1663
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p1

    move v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v3, p6

    .line 1662
    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 6

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccOpenLogicalChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " by pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1624
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->logWithLocalLog(Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    .line 1627
    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1626
    invoke-interface {v0, p1, p2, p0}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 10

    move-object v0, p0

    .line 1653
    iget-object p0, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 1654
    invoke-virtual {v0, v1, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p7

    .line 1653
    invoke-interface/range {p0 .. p7}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V
    .registers 12

    move-object v0, p0

    .line 1644
    iget-object p0, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    .line 1645
    invoke-virtual {v0, v1, p9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p9

    .line 1644
    invoke-interface/range {p0 .. p9}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .registers 7

    .line 1489
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 1490
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v3

    if-ge v2, v4, :cond_1c

    .line 1491
    aget-object v3, v3, v2

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    if-ne v3, p1, :cond_19

    const/4 p0, 0x1

    .line 1492
    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    goto :goto_1e

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1495
    :cond_1c
    monitor-exit v0

    return v1

    .line 1496
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_17

    throw p0
.end method

.method public blacklist isEmptyProfile()Z
    .registers 1

    .line 1044
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLastReportedNumOfUiccApplications:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist refresh()V
    .registers 2

    .line 1852
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 895
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p2, :cond_38

    .line 898
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p1, :cond_33

    .line 899
    new-instance p1, Landroid/os/AsyncResult;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 900
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 899
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_38

    :catchall_31
    move-exception p0

    goto :goto_3a

    .line 904
    :cond_33
    const-string p0, "registerForNetworkLocked: not notifying registrants, mUiccApplication == null"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 908
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_31

    throw p0
.end method

.method public blacklist registerForOpertorBrandOverride(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 1325
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1326
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1327
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1328
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public blacklist resetAppWithAid(Ljava/lang/String;Z)Z
    .registers 12

    .line 1582
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1585
    :goto_7
    :try_start_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v2, v6, :cond_4b

    .line 1586
    aget-object v5, v5, v2

    if-eqz v5, :cond_48

    .line 1587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_76

    .line 1591
    :cond_29
    :goto_29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    .line 1592
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v5, :cond_3c

    move v4, v8

    .line 1597
    :cond_3c
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 1598
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v7, v3, v2

    move v3, v8

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_4b
    if-eqz p2, :cond_6f

    .line 1602
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1603
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz p1, :cond_65

    .line 1604
    iput-object v7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 1605
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    move v3, v8

    .line 1610
    :cond_65
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz p1, :cond_6f

    .line 1611
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 1612
    iput-object v7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move v3, v8

    :cond_6f
    if-eqz v3, :cond_74

    if-nez v4, :cond_74

    move v1, v8

    .line 1616
    :cond_74
    monitor-exit v0

    return v1

    .line 1617
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_7 .. :try_end_77} :catchall_27

    throw p0
.end method

.method blacklist resetProperties()V
    .registers 4

    .line 610
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 611
    const-string v0, "update icc_operator_numeric="

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, p0, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    :cond_21
    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 1670
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1063
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 1065
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_21

    :catchall_b
    move-exception p0

    goto :goto_23

    :cond_d
    if-eqz p3, :cond_21

    .line 1067
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1068
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1069
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1070
    monitor-exit v0

    return-void

    .line 1072
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b

    throw p0
.end method

.method public blacklist setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1050
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 1051
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_21

    :catchall_b
    move-exception p0

    goto :goto_23

    :cond_d
    if-eqz p3, :cond_21

    .line 1053
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1054
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1055
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1056
    monitor-exit v0

    return-void

    .line 1058
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b

    throw p0
.end method

.method public blacklist setOperatorBrandOverride(Ljava/lang/String;)Z
    .registers 9

    .line 1738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOperatorBrandOverride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current iccId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1742
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    return v2

    .line 1746
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    .line 1747
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v3

    .line 1748
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v3

    if-nez v3, :cond_63

    .line 1750
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setOperatorBrandOverride: Cannot find subscription info for sub "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return v2

    .line 1754
    :cond_63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1755
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1756
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v3

    .line 1757
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 1758
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v4

    .line 1759
    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1760
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v6

    .line 1759
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1758
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1763
    :cond_94
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/uicc/UiccProfile$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 1765
    const-string p0, "iccId doesn\'t match current active subId."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return v2

    .line 1769
    :cond_a9
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1770
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator_branding_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_ce

    .line 1773
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_d5

    .line 1775
    :cond_ce
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1777
    :goto_d5
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setTestOverrideCarrierPrivilegeRules(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)V"
        }
    .end annotation

    .line 1864
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xf

    .line 1865
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1864
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist setVoiceRadioTech(I)V
    .registers 5

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 428
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mRadioTech:I

    .line 429
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    const/4 p1, 0x0

    .line 430
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateIccAvailability(Z)V

    .line 431
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 978
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_21

    :catchall_b
    move-exception p0

    goto :goto_23

    :cond_d
    if-eqz p2, :cond_21

    .line 980
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CommandsInterface is not set."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 981
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 982
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 983
    monitor-exit v0

    return-void

    .line 985
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b

    throw p0
.end method

.method public blacklist supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 922
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_21

    :catchall_b
    move-exception p0

    goto :goto_23

    :cond_d
    if-eqz p2, :cond_21

    .line 924
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 925
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 926
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 927
    monitor-exit v0

    return-void

    .line 929
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b

    throw p0
.end method

.method public blacklist supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 949
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 950
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_21

    :catchall_b
    move-exception p0

    goto :goto_23

    :cond_d
    if-eqz p2, :cond_21

    .line 952
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 953
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 954
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 955
    monitor-exit v0

    return-void

    .line 957
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b

    throw p0
.end method

.method public blacklist supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 936
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_21

    :catchall_b
    move-exception p0

    goto :goto_23

    :cond_d
    if-eqz p3, :cond_21

    .line 938
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 939
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 940
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 941
    monitor-exit v0

    return-void

    .line 943
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b

    throw p0
.end method

.method public blacklist supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 964
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_21

    :catchall_b
    move-exception p0

    goto :goto_23

    :cond_d
    if-eqz p3, :cond_21

    .line 966
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 967
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 968
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 969
    monitor-exit v0

    return-void

    .line 971
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b

    throw p0
.end method

.method public blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 992
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_21

    :catchall_b
    move-exception p0

    goto :goto_23

    :cond_d
    if-eqz p3, :cond_21

    .line 994
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CommandsInterface is not set."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 996
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 997
    monitor-exit v0

    return-void

    .line 999
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_b

    throw p0
.end method

.method public blacklist unregisterForNetworkLocked(Landroid/os/Handler;)V
    .registers 3

    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 915
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForOperatorBrandOverride(Landroid/os/Handler;)V
    .registers 3

    .line 1337
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1339
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .registers 13

    .line 1129
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1130
    :try_start_3
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 1131
    iget v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    .line 1132
    iget v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    .line 1133
    iget v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    .line 1134
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1135
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1136
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " applications"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1141
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length p1, p1

    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLastReportedNumOfUiccApplications:I

    const/4 p1, 0x0

    .line 1143
    :goto_3e
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, p2

    const/4 v2, 0x0

    if-ge p1, v0, :cond_7f

    .line 1144
    aget-object v0, p2, p1

    if-nez v0, :cond_64

    .line 1146
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v2, v0

    if-ge p1, v2, :cond_62

    .line 1147
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v0, p1

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    aput-object v3, p2, p1

    goto :goto_7b

    :catchall_5e
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ea

    :cond_62
    move-object v4, p0

    goto :goto_7b

    :cond_64
    move-object v4, p0

    .line 1150
    iget-object p0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length p2, p0

    if-lt p1, p2, :cond_72

    .line 1152
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 1153
    iget-object p0, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v2, p0, p1

    goto :goto_7b

    .line 1156
    :cond_72
    aget-object p0, p0, p1

    iget-object p2, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v2, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, p0, p2, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    :goto_7b
    add-int/lit8 p1, p1, 0x1

    move-object p0, v4

    goto :goto_3e

    :cond_7f
    move-object v4, p0

    .line 1160
    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->createAndUpdateCatServiceLocked()V

    .line 1163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Before privilege rules: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1164
    iget-object p0, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez p0, :cond_c1

    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object p2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, p2, :cond_c1

    .line 1165
    iget p1, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mLastReportedNumOfUiccApplications:I

    if-lez p1, :cond_c1

    .line 1167
    new-instance p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    iget-object p1, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xd

    .line 1168
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V

    iput-object p0, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    goto :goto_d6

    :cond_c1
    if-eqz p0, :cond_d6

    .line 1169
    iget-object p0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq p0, p1, :cond_d6

    .line 1171
    iput-object v2, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 1172
    iget-object p0, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object p1, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1176
    :cond_d6
    :goto_d6
    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->sanitizeApplicationIndexesLocked()V

    .line 1177
    iget p0, v4, Lcom/android/internal/telephony/uicc/UiccProfile;->mRadioTech:I

    if-eqz p0, :cond_e4

    .line 1178
    invoke-static {p0}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result p0

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    :cond_e4
    const/4 p0, 0x1

    .line 1180
    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateIccAvailability(Z)V

    .line 1181
    monitor-exit v1

    return-void

    :goto_ea
    monitor-exit v1
    :try_end_eb
    .catchall {:try_start_3 .. :try_end_eb} :catchall_5e

    throw p0
.end method

.method public blacklist updateExternalState()V
    .registers 5

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_10

    .line 625
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 629
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_20

    .line 630
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 634
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v1, :cond_34

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    .line 636
    const-string p0, "EID is not ready yet."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void

    .line 642
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_43

    .line 643
    const-string v0, "updateExternalState: setting state to NOT_READY because mUiccApplication is null"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 645
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 652
    :cond_43
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v1

    .line 655
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_60

    .line 656
    sget-boolean v1, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v1, :cond_5b

    const-string v1, "updateExternalState: PERM_DISABLED"

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 658
    :cond_5b
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_5d
    move-object v2, v1

    move v1, v3

    goto :goto_9e

    .line 660
    :cond_60
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_70

    .line 661
    sget-boolean v1, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v1, :cond_6d

    const-string v1, "updateExternalState: PIN_REQUIRED"

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 663
    :cond_6d
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_5d

    .line 664
    :cond_70
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_80

    .line 665
    sget-boolean v1, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v1, :cond_7d

    const-string v1, "updateExternalState: PUK_REQUIRED"

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 667
    :cond_7d
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_5d

    .line 668
    :cond_80
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_9c

    .line 669
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->isPersoLocked(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 670
    sget-boolean v1, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v1, :cond_99

    const-string v1, "updateExternalState: PERSOSUBSTATE_SIM_NETWORK"

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 672
    :cond_99
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_5d

    :cond_9c
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9e
    if-eqz v1, :cond_10f

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_100

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 680
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 681
    :cond_b2
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v0, :cond_bb

    .line 682
    const-string v0, "updateExternalState: card locked and records loaded; setting state to locked"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 687
    :cond_bb
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v0, :cond_fc

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/PinStorage;->getPin(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fc

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN_REQUIRED["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - Cache present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 696
    :cond_fc
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 698
    :cond_100
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v0, :cond_109

    .line 699
    const-string v0, "updateExternalState: card locked but records not loaded; setting state to NOT_READY"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 702
    :cond_109
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 708
    :cond_10f
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccProfile$5;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_190

    const/4 v1, 0x2

    if-eq v0, v1, :cond_181

    const/4 v1, 0x3

    if-eq v0, v1, :cond_120

    return-void

    .line 732
    :cond_120
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkAndUpdateIfAnyAppToBeIgnored()V

    .line 733
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areAllApplicationsReady()Z

    move-result v0

    if-eqz v0, :cond_172

    .line 734
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areAllRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPrivilegeRulesLoaded()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 735
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v0, :cond_13e

    const-string v0, "updateExternalState: setting state to LOADED"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 736
    :cond_13e
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 738
    :cond_144
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v0, :cond_16c

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateExternalState: setting state to READY; records loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areAllRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", carrier privilige rules loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPrivilegeRulesLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 743
    :cond_16c
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 746
    :cond_172
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v0, :cond_17b

    .line 747
    const-string v0, "updateExternalState: app state is READY but not for all apps; setting state to NOT_READY"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 750
    :cond_17b
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 726
    :cond_181
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v0, :cond_18a

    .line 727
    const-string v0, "updateExternalState: app state is detected; setting state to NOT_READY"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 729
    :cond_18a
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 720
    :cond_190
    sget-boolean v0, Lcom/android/internal/telephony/uicc/UiccProfile;->VDBG:Z

    if-eqz v0, :cond_199

    .line 721
    const-string v0, "updateExternalState: app state is unknown; setting state to NOT_READY"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 723
    :cond_199
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

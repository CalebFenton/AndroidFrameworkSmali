.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# static fields
.field public static final blacklist APP_FAM_3GPP:I = 0x1

.field public static final blacklist APP_FAM_3GPP2:I = 0x2

.field public static final blacklist APP_FAM_IMS:I = 0x3

.field public static final blacklist INVALID_SLOT_ID:I = -0x1

.field private static final blacklist VDBG:Z

.field private static greylist mInstance:Lcom/android/internal/telephony/uicc/UiccController;

.field private static final greylist mLock:Ljava/lang/Object;

.field public static blacklist sLastSlotStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sLocalLog:Lcom/android/internal/telephony/LocalLog;


# instance fields
.field private blacklist mCardStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private greylist-max-r mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field public greylist mContext:Landroid/content/Context;

.field private blacklist mDefaultEuiccCardId:I

.field private final blacklist mEuiccSlots:[I

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mHasActiveBuiltInEuicc:Z

.field private blacklist mHasBuiltInEuicc:Z

.field protected blacklist mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mIsSlotStatusSupported:Z

.field private blacklist mLauncher:Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

.field private blacklist mPhoneIdToSlotId:[I

.field private final blacklist mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

.field private blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private final blacklist mSimApplicationState:[I

.field private final blacklist mSimCardState:[I

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

.field private blacklist mUseRemovableEsimAsDefault:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$3-HHeJOIf4HW5sDWkHadcuuc84Q(Lcom/android/internal/telephony/uicc/UiccController;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->lambda$updateSimStateForInactivePort$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ATcts-Hm9n73GTlx0-PR7RHRs_s(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/UiccController;->lambda$updateSimState$2(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nkJAljiimZVBBNHRX7rKvl0SLks(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccSlot;I)Z
    .registers 3

    .line 548
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId(I)Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$zYVo8ZXisvE5FLaCrh3gmYU160Y(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccController;->lambda$updateSimState$3(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 140
    const-string v0, "UiccController"

    const/4 v1, 0x2

    .line 141
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    .line 252
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_19

    const/16 v1, 0x100

    goto :goto_1b

    :cond_19
    const/16 v1, 0x40

    :goto_1b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 9

    .line 270
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z

    const/4 v1, 0x0

    .line 215
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasBuiltInEuicc:Z

    .line 218
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    .line 240
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 271
    const-string v2, "Creating UiccController"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 273
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 274
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e00fa

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 277
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->sim_slots_count()Ljava/util/Optional;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config_num_physical_slots = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 284
    new-array p2, p2, [Lcom/android/internal/telephony/uicc/UiccSlot;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    .line 285
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length p2, p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    .line 286
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p2

    .line 287
    new-array v2, p2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimCardState:[I

    .line 288
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimApplicationState:[I

    .line 289
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    const/4 v2, -0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([II)V

    .line 290
    sget-boolean p2, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    if-eqz p2, :cond_84

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->logPhoneIdToSlotIdMapping()V

    .line 291
    :cond_84
    invoke-static {}, Lcom/android/internal/telephony/RadioConfig;->getInstance()Lcom/android/internal/telephony/RadioConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 292
    invoke-virtual {p2, p0, v2, v3}, Lcom/android/internal/telephony/RadioConfig;->registerForSimSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    move p2, v1

    .line 293
    :goto_90
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v4, v2

    if-ge p2, v4, :cond_c6

    .line 294
    aget-object v2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p0, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 295
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 296
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 297
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_90

    .line 300
    :cond_c6
    new-instance p2, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {p2, p1, p0, v0}, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mLauncher:Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    .line 301
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->loadCardStrings()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    const/4 p1, -0x2

    .line 302
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 304
    new-instance p1, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 306
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070105

    .line 307
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mEuiccSlots:[I

    .line 308
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->hasBuiltInEuicc()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasBuiltInEuicc:Z

    const/16 p1, 0xa

    .line 310
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 313
    new-instance p1, Lcom/android/internal/telephony/uicc/PinStorage;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/uicc/PinStorage;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    .line 314
    sget-boolean p1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    if-nez p1, :cond_116

    .line 315
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "removable_esim"

    .line 316
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    :cond_116
    return-void
.end method

.method private blacklist addCardId(Ljava/lang/String;)V
    .registers 4

    .line 1158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_23

    .line 1161
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_13

    .line 1162
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1164
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->saveCardStrings()V

    :cond_23
    :goto_23
    return-void
.end method

.method public static blacklist addLocalLog(Ljava/lang/String;)V
    .registers 2

    .line 1813
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist broadcastSimApplicationStateChanged(II)V
    .registers 9

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimApplicationState:[I

    aget v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    const/4 v0, 0x6

    if-ne p2, v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    .line 867
    :goto_e
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 868
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v3

    if-eqz v3, :cond_1f

    move v1, v2

    .line 869
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimApplicationState:[I

    aget v3, v2, p1

    if-eq p2, v3, :cond_b1

    if-eqz v0, :cond_29

    if-eqz v1, :cond_b1

    .line 870
    :cond_29
    aput p2, v2, p1

    .line 871
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 872
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 873
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 874
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    .line 875
    invoke-static {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndMaybeSubIdExtra(Landroid/content/Intent;II)V

    .line 878
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    .line 879
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getSlotIdFromPhoneId(I)I

    move-result v3

    .line 880
    const-string v4, "slot"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_63

    .line 882
    const-string v4, "port"

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    :cond_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting intent ACTION_SIM_APPLICATION_STATE_CHANGED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for phone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " port: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sub: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    const-string v2, "UiccController"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 894
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateSimState(II)V

    :cond_b1
    return-void
.end method

.method private blacklist broadcastSimCardStateChanged(II)V
    .registers 9

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimCardState:[I

    aget v1, v0, p1

    if-eq p2, v1, :cond_8c

    .line 824
    aput p2, v0, p1

    .line 825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 826
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 827
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    .line 829
    invoke-static {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndMaybeSubIdExtra(Landroid/content/Intent;II)V

    .line 832
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    .line 833
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getSlotIdFromPhoneId(I)I

    move-result v3

    .line 834
    const-string v4, "slot"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_41

    .line 837
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v2

    .line 838
    const-string v4, "port"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_42

    :cond_41
    const/4 v2, -0x1

    .line 840
    :goto_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting intent ACTION_SIM_CARD_STATE_CHANGED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for phone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " port: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sub: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 840
    const-string v2, "UiccController"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 849
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateSimState(II)V

    :cond_8c
    return-void
.end method

.method private blacklist broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 804
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 805
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 806
    const-string v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    const-string v1, "ss"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    .line 810
    invoke-static {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndMaybeSubIdExtra(Landroid/content/Intent;II)V

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reason "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for phone: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " sub: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UiccController"

    invoke-static {p3, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-static {}, Lcom/android/internal/telephony/IntentBroadcaster;->getInstance()Lcom/android/internal/telephony/IntentBroadcaster;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/internal/telephony/IntentBroadcaster;->broadcastStickyIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method private blacklist broadcastSimStateEvents(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V
    .registers 8

    .line 931
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    .line 935
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x6

    const/16 v2, 0xb

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_30

    move v1, v3

    move v2, v1

    goto :goto_26

    :pswitch_16
    const/16 v1, 0xa

    goto :goto_26

    :pswitch_19
    const/16 v2, 0x9

    goto :goto_26

    :pswitch_1c
    const/16 v2, 0x8

    goto :goto_26

    .line 944
    :pswitch_1f
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/UiccController;->getSimStateFromLockedReason(Ljava/lang/String;)I

    move-result v1

    goto :goto_26

    :pswitch_24
    const/4 v2, 0x1

    move v1, v3

    .line 969
    :goto_26
    :pswitch_26
    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccController;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->broadcastSimCardStateChanged(II)V

    .line 971
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccController;->broadcastSimApplicationStateChanged(II)V

    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_26
        :pswitch_26
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method private static blacklist eventToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_38

    .line 734
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

    .line 733
    :pswitch_1a
    const-string p0, "MULTI_SIM_CONFIG_CHANGED"

    return-object p0

    .line 732
    :pswitch_1d
    const-string p0, "EID_READY"

    return-object p0

    .line 731
    :pswitch_20
    const-string p0, "SIM_REFRESH"

    return-object p0

    .line 730
    :pswitch_23
    const-string p0, "RADIO_UNAVAILABLE"

    return-object p0

    .line 729
    :pswitch_26
    const-string p0, "RADIO_AVAILABLE"

    return-object p0

    .line 728
    :pswitch_29
    const-string p0, "RADIO_ON"

    return-object p0

    .line 727
    :pswitch_2c
    const-string p0, "GET_SLOT_STATUS_DONE"

    return-object p0

    .line 726
    :pswitch_2f
    const-string p0, "GET_ICC_STATUS_DONE"

    return-object p0

    .line 725
    :pswitch_32
    const-string p0, "SLOT_STATUS_CHANGED"

    return-object p0

    .line 724
    :pswitch_35
    const-string p0, "ICC_STATUS_CHANGED"

    return-object p0

    :pswitch_data_38
    .packed-switch 0x1
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

.method private blacklist getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .registers 3

    .line 702
    new-instance p0, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    if-eqz p1, :cond_26

    .line 710
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_13

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 711
    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_13
    if-eqz p1, :cond_26

    .line 712
    instance-of v0, p1, Landroid/os/AsyncResult;

    if-eqz v0, :cond_26

    .line 713
    check-cast p1, Landroid/os/AsyncResult;

    .line 714
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p1, :cond_26

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_26

    .line 715
    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_26
    return-object p0
.end method

.method public static blacklist getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .registers 2

    .line 757
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-string v0, "LOCKED"

    packed-switch p0, :pswitch_data_24

    .line 768
    const-string p0, "UNKNOWN"

    return-object p0

    .line 767
    :pswitch_10
    const-string p0, "LOADED"

    return-object p0

    .line 766
    :pswitch_13
    const-string p0, "CARD_RESTRICTED"

    return-object p0

    .line 765
    :pswitch_16
    const-string p0, "CARD_IO_ERROR"

    return-object p0

    :pswitch_19
    return-object v0

    .line 763
    :pswitch_1a
    const-string p0, "NOT_READY"

    return-object p0

    .line 762
    :pswitch_1d
    const-string p0, "READY"

    return-object p0

    :pswitch_20
    return-object v0

    .line 758
    :pswitch_21
    const-string p0, "ABSENT"

    return-object p0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public static greylist getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .registers 2

    .line 346
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_5

    return-object v0

    .line 347
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getPrintableCardStrings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1817
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1818
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1819
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    .line 1818
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 1821
    :cond_22
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static blacklist getSimStateFromLockedReason(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 907
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_5a

    goto :goto_3a

    :sswitch_f
    const-string v4, "PERM_DISABLED"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_3a

    :cond_18
    move v3, v0

    goto :goto_3a

    :sswitch_1a
    const-string v4, "PUK"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_3a

    :cond_23
    move v3, v1

    goto :goto_3a

    :sswitch_25
    const-string v4, "PIN"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_3a

    :cond_2e
    const/4 v3, 0x1

    goto :goto_3a

    :sswitch_30
    const-string v4, "NETWORK"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v2

    :goto_3a
    packed-switch v3, :pswitch_data_6c

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected SIM locked reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UiccController"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_54
    const/4 p0, 0x7

    return p0

    :pswitch_56
    return v0

    :pswitch_57
    return v1

    :pswitch_58
    const/4 p0, 0x4

    return p0

    :sswitch_data_5a
    .sparse-switch
        -0x675319f2 -> :sswitch_30
        0x13575 -> :sswitch_25
        0x136e6 -> :sswitch_1a
        0xb5d3eeb -> :sswitch_f
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_54
    .end packed-switch
.end method

.method private blacklist hasActivePort([Lcom/android/internal/telephony/uicc/IccSimPortInfo;)Z
    .registers 5

    .line 1505
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_10

    aget-object v2, p1, v1

    .line 1506
    iget-boolean v2, v2, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    return v0
.end method

.method private blacklist hasBuiltInEuicc()Z
    .registers 1

    .line 1639
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mEuiccSlots:[I

    if-eqz p0, :cond_9

    array-length p0, p0

    if-lez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1686
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1687
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_1f

    aget-object v3, p0, v2

    .line 1688
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1689
    const-string p0, "UiccController"

    const-string p1, "mvno icc id match found"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1f
    return v1
.end method

.method private static blacklist imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1703
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    .line 1706
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_f

    return v1

    :cond_f
    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_29

    .line 1709
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_26

    const/16 v4, 0x58

    if-eq v3, v4, :cond_26

    .line 1710
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_25

    goto :goto_26

    :cond_25
    return v1

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isBuiltInEuiccSlot(I)Z
    .registers 6

    .line 1643
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasBuiltInEuicc:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1646
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mEuiccSlots:[I

    array-length v0, p0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_15

    aget v3, p0, v2

    if-ne v3, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    return v1
.end method

.method public static blacklist isCdmaSupported(Landroid/content/Context;)Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isShuttingDown()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 1676
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 1677
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1678
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    return v0
.end method

.method private blacklist isValidPhoneIndex(I)Z
    .registers 2

    if-ltz p1, :cond_c

    .line 1668
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    if-ge p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isValidSlotIndex(I)Z
    .registers 2

    if-ltz p1, :cond_9

    .line 1672
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length p0, p0

    if-ge p1, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$updateSimState$2(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 1015
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccController;->broadcastSimStateEvents(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p2

    const/4 p3, 0x5

    if-ne p4, p3, :cond_b

    return-void

    :cond_b
    const/4 p3, 0x6

    if-ne p4, p3, :cond_26

    if-eqz p2, :cond_26

    .line 1025
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->isEmptyProfile()Z

    move-result p2

    if-nez p2, :cond_26

    .line 1026
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p2

    .line 1027
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areUiccAppsEnabledOnCard(I)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 1034
    const-string p1, "updateSimState: SIM_STATE_NOT_READY is not a final state."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void

    .line 1039
    :cond_26
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p2

    if-nez p2, :cond_43

    .line 1040
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateSimState: Cannot update carrier services. Invalid phone id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1048
    :cond_43
    const-string p2, "updateSimState: resolve carrier id and update carrier services."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1050
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/android/internal/telephony/Phone;->resolveSubscriptionCarrierId(Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0, p1, p5}, Lcom/android/internal/telephony/uicc/UiccController;->updateCarrierServices(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSimState$3(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V
    .registers 13

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimState: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1000
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1001
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateSimState: Invalid phone id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1005
    :cond_41
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 1007
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v8

    .line 1008
    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v7

    .line 1009
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    new-instance v2, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v4, v7, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSimState(IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSimStateForInactivePort$1(ILjava/lang/String;)V
    .registers 4

    .line 780
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 782
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 783
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 786
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    .line 787
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 786
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSimStateForInactivePort(ILjava/lang/String;)V

    return-void
.end method

.method private blacklist loadCardStrings()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1300
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 1301
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "card_strings"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1302
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1304
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1306
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private greylist-max-r log(Ljava/lang/String;)V
    .registers 2

    .line 1798
    const-string p0, "UiccController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logPhoneIdToSlotIdMapping()V
    .registers 4

    .line 1530
    const-string v0, "mPhoneIdToSlotId mapping:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1531
    :goto_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2e
    return-void
.end method

.method private blacklist logWithLocalLog(Ljava/lang/String;)V
    .registers 4

    .line 1802
    const-string p0, "UiccController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logeWithLocalLog(Ljava/lang/String;)V
    .registers 4

    .line 1807
    const-string p0, "UiccController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/uicc/UiccController;
    .registers 4

    .line 261
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_12

    .line 265
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    .line 266
    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    goto :goto_1a

    .line 263
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "UiccController.make() should only be called once"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_10

    throw p0
.end method

.method private blacklist onEidReady(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .registers 7

    .line 1598
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, "UiccController"

    if-eqz v0, :cond_1d

    .line 1599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEidReady: exception: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1603
    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 1604
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onEidReady: invalid index: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1607
    :cond_3c
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p1, p1, p2

    .line 1608
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-nez p2, :cond_6a

    .line 1610
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEidReady: UiccCard in slot "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1615
    :cond_6a
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v0

    .line 1616
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->addCardId(Ljava/lang/String;)V

    .line 1617
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_79

    const/4 v2, -0x3

    if-ne v1, v2, :cond_e8

    .line 1619
    :cond_79
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v1

    const-string v2, " mDefaultEuiccCardId="

    const-string v3, "onEidReady: eid="

    if-nez v1, :cond_b6

    .line 1620
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1622
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " slot="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1621
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    goto :goto_e8

    .line 1624
    :cond_b6
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    if-nez v1, :cond_e8

    .line 1627
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1629
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from removable eUICC in slot="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1628
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 1634
    :cond_e8
    :goto_e8
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->unregisterForEidReady(Landroid/os/Handler;)V

    return-void
.end method

.method private declared-synchronized blacklist onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .registers 8

    monitor-enter p0

    .line 1059
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    .line 1060
    const-string p1, "UiccController"

    const-string p2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    invoke-static {p1, p2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 1063
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto/16 :goto_1c4

    .line 1065
    :cond_11
    :try_start_11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1066
    const-string p1, "UiccController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_e

    .line 1067
    monitor-exit p0

    return-void

    .line 1069
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1073
    const-string p1, "onGetIccCardStatusDone: shudown in progress ignore event"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_e

    .line 1074
    monitor-exit p0

    return-void

    .line 1077
    :cond_40
    :try_start_40
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetIccCardStatusDone: phoneId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IccCardStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 1082
    sget-boolean v1, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    if-eqz v1, :cond_84

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetIccCardStatusDone: phoneId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " physicalSlotIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    :cond_84
    const/4 v2, -0x1

    if-ne v0, v2, :cond_8b

    .line 1084
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1087
    :cond_8b
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v0, v3, v4

    if-eqz v1, :cond_98

    .line 1089
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->logPhoneIdToSlotIdMapping()V

    .line 1091
    :cond_98
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v3, v3, v0

    if-nez v3, :cond_ca

    if-eqz v1, :cond_bf

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating mUiccSlots["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]; mUiccSlots.length = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1096
    :cond_bf
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccSlot;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/uicc/UiccSlot;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->setUiccSlot(ILcom/android/internal/telephony/uicc/UiccSlot;)V

    .line 1099
    :cond_ca
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, v0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, p1, v4, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;II)V

    .line 1101
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_10d

    .line 1103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiccSlots["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] has no card. Notifying IccChangedRegistrants"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1104
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_10b
    .catchall {:try_start_40 .. :try_end_10b} :catchall_e

    .line 1105
    monitor-exit p0

    return-void

    .line 1108
    :cond_10d
    :try_start_10d
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v4, v4, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v4

    if-nez v4, :cond_148

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUiccSlots["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] has no UiccPort with index["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]. Notifying IccChangedRegistrants"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1112
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_146
    .catchall {:try_start_10d .. :try_end_146} :catchall_e

    .line 1113
    monitor-exit p0

    return-void

    .line 1117
    :cond_148
    :try_start_148
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v4

    if-eqz v4, :cond_15a

    .line 1119
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object p1

    goto :goto_166

    .line 1121
    :cond_15a
    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object p1

    :goto_166
    if-eqz p1, :cond_16b

    .line 1125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->addCardId(Ljava/lang/String;)V

    :cond_16b
    if-eqz v4, :cond_1b3

    .line 1130
    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    if-eq v4, v2, :cond_1b3

    if-nez p1, :cond_17b

    .line 1132
    check-cast v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    const/16 p1, 0x9

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1b3

    :cond_17b
    const/4 v1, -0x2

    if-eq v4, v1, :cond_181

    const/4 v1, -0x3

    if-ne v4, v1, :cond_1b3

    .line 1141
    :cond_181
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccCardStatus eid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1143
    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " slot="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mDefaultEuiccCardId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1142
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 1149
    :cond_1b3
    :goto_1b3
    const-string p1, "Notifying IccChangedRegistrants"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1150
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_1c2
    .catchall {:try_start_148 .. :try_end_1c2} :catchall_e

    .line 1151
    monitor-exit p0

    return-void

    :goto_1c4
    :try_start_1c4
    monitor-exit p0
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_e

    throw p1
.end method

.method private declared-synchronized blacklist onGetSlotStatusDone(Landroid/os/AsyncResult;)V
    .registers 16

    monitor-enter p0

    .line 1317
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z

    if-nez v0, :cond_14

    .line 1318
    sget-boolean p1, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    if-eqz p1, :cond_12

    const-string p1, "onGetSlotStatusDone: ignoring since mIsSlotStatusSupported is false"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_12

    :catchall_f
    move-exception p1

    goto/16 :goto_2ba

    .line 1319
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 1321
    :cond_14
    :try_start_14
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 1323
    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_30

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v2, :cond_28

    goto :goto_30

    .line 1330
    :cond_28
    const-string p1, "onGetSlotStatusDone: request not supported; marking mIsSlotStatusSupported to false"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 1332
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z

    goto :goto_46

    .line 1327
    :cond_30
    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error getting slot status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logeWithLocalLog(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_f

    .line 1334
    :goto_46
    monitor-exit p0

    return-void

    .line 1336
    :cond_48
    :try_start_48
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1340
    const-string p1, "onGetSlotStatusDone: shudown in progress ignore event"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_f

    .line 1341
    monitor-exit p0

    return-void

    .line 1344
    :cond_55
    :try_start_55
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 1346
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->slotStatusChanged(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 1347
    const-string p1, "onGetSlotStatusDone: No change in slot status"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_f

    .line 1348
    monitor-exit p0

    return-void

    .line 1350
    :cond_66
    :try_start_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetSlotStatusDone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 1352
    sput-object p1, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    .line 1357
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    .line 1359
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1360
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v2, v2

    if-ge v2, v0, :cond_a9

    .line 1361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of the physical slots reported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is greater than the expectation "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->logeWithLocalLog(Ljava/lang/String;)V

    .line 1363
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v0, v0

    :cond_a9
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_ad
    const/4 v6, 0x1

    if-ge v2, v0, :cond_1a7

    .line 1367
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 1368
    iget-object v8, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/UiccController;->hasActivePort([Lcom/android/internal/telephony/uicc/IccSimPortInfo;)Z

    move-result v8

    .line 1369
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v2

    if-nez v9, :cond_ef

    .line 1370
    sget-boolean v9, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    if-eqz v9, :cond_e5

    .line 1371
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Creating mUiccSlot["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]; mUiccSlots.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1373
    :cond_e5
    new-instance v9, Lcom/android/internal/telephony/uicc/UiccSlot;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v8}, Lcom/android/internal/telephony/uicc/UiccSlot;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, v2, v9}, Lcom/android/internal/telephony/uicc/UiccController;->setUiccSlot(ILcom/android/internal/telephony/uicc/UiccSlot;)V

    :cond_ef
    if-eqz v8, :cond_13a

    move v9, v1

    .line 1377
    :goto_f2
    iget-object v10, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    array-length v11, v10

    if-ge v9, v11, :cond_13a

    .line 1378
    aget-object v10, v10, v9

    iget-boolean v11, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v11, :cond_137

    .line 1379
    iget v10, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 1381
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v11

    if-nez v11, :cond_131

    .line 1382
    const-string v11, "UiccController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping slot "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " portIndex "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " as phone "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is not available to communicate with this slot"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    .line 1386
    :cond_131
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    aput v2, v11, v10

    :goto_135
    add-int/lit8 v4, v4, 0x1

    :cond_137
    add-int/lit8 v9, v9, 0x1

    goto :goto_f2

    .line 1393
    :cond_13a
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v2

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v9, v10, v7, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->update([Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccSlotStatus;I)V

    .line 1395
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v9

    if-eqz v9, :cond_1a3

    if-eqz v8, :cond_158

    .line 1399
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->isBuiltInEuiccSlot(I)Z

    move-result v5

    if-eqz v5, :cond_157

    .line 1400
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    :cond_157
    move v5, v6

    .line 1403
    :cond_158
    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 1404
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_161

    goto :goto_1a3

    .line 1409
    :cond_161
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->addCardId(Ljava/lang/String;)V

    .line 1413
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v8

    if-nez v8, :cond_1a3

    if-nez v3, :cond_1a3

    .line 1415
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using eid="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in slot="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to set mDefaultEuiccCardId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    move v3, v6

    :cond_1a3
    :goto_1a3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_ad

    .line 1423
    :cond_1a7
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    if-nez v2, :cond_1ff

    if-nez v3, :cond_1ff

    move v2, v1

    :goto_1ae
    if-ge v2, v0, :cond_1ff

    .line 1430
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v7

    if-eqz v7, :cond_1fc

    .line 1431
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 1432
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1fc

    .line 1434
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Using eid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1436
    invoke-static {v0, v7}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from removable eUICC in slot="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to set mDefaultEuiccCardId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1435
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    move v3, v6

    goto :goto_1ff

    :cond_1fc
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ae

    .line 1445
    :cond_1ff
    :goto_1ff
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasBuiltInEuicc:Z

    if-eqz p1, :cond_210

    if-nez v5, :cond_210

    if-nez v3, :cond_210

    .line 1446
    const-string p1, "onGetSlotStatusDone: mDefaultEuiccCardId=TEMPORARILY_UNSUPPORTED_CARD_ID"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    const/4 p1, -0x3

    .line 1449
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    move v3, v6

    :cond_210
    if-nez v3, :cond_26b

    .line 1454
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    const/4 v0, -0x2

    if-ltz p1, :cond_264

    .line 1458
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1459
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v3, v2

    move v5, v1

    :goto_223
    if-ge v1, v3, :cond_244

    aget-object v7, v2, v1

    .line 1460
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v8

    if-nez v8, :cond_22e

    goto :goto_241

    .line 1464
    :cond_22e
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1463
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_241

    move v5, v6

    :cond_241
    :goto_241
    add-int/lit8 v1, v1, 0x1

    goto :goto_223

    :cond_244
    if-nez v5, :cond_26b

    .line 1469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetSlotStatusDone: mDefaultEuiccCardId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is no longer inserted. Setting mDefaultEuiccCardId=UNINITIALIZED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 1472
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    goto :goto_26b

    .line 1477
    :cond_264
    const-string p1, "onGetSlotStatusDone: mDefaultEuiccCardId=UNINITIALIZED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 1478
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1482
    :cond_26b
    :goto_26b
    sget-boolean p1, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    if-eqz p1, :cond_272

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->logPhoneIdToSlotIdMapping()V

    .line 1485
    :cond_272
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length p1, p1

    if-eq v4, p1, :cond_298

    .line 1486
    const-string p1, "UiccController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of active ports "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not match the number of Phones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_298
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 1492
    invoke-virtual {p1, v6}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 1493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 1494
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1496
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 1497
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 1496
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2b8
    .catchall {:try_start_66 .. :try_end_2b8} :catchall_f

    .line 1502
    monitor-exit p0

    return-void

    :goto_2ba
    :try_start_2ba
    monitor-exit p0
    :try_end_2bb
    .catchall {:try_start_2ba .. :try_end_2bb} :catchall_f

    throw p1
.end method

.method private blacklist onMultiSimConfigChanged(I)V
    .registers 6

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v0, v0

    .line 680
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiSimConfigChanged: prevActiveModemCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newActiveModemCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    :goto_2d
    if-ge v0, p1, :cond_68

    .line 692
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 693
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v1, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 695
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v1, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v1, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_68
    return-void
.end method

.method private blacklist onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .registers 7

    .line 1537
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, "UiccController"

    if-eqz v0, :cond_1d

    .line 1538
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSimRefresh: Sim REFRESH with exception: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1542
    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1543
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSimRefresh: invalid index : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1547
    :cond_3c
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimRefresh: index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    if-nez p1, :cond_64

    .line 1551
    const-string p0, "onSimRefresh: received without input"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1555
    :cond_64
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_83

    .line 1557
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSimRefresh: refresh on null card : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1561
    :cond_83
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    if-nez v0, :cond_a2

    .line 1563
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSimRefresh: refresh on null port : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1568
    :cond_a2
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_b2

    if-eq v1, v2, :cond_ab

    return-void

    .line 1572
    :cond_ab
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccPort;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_b9

    .line 1576
    :cond_b2
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccPort;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result v0

    :goto_b9
    if-eqz v0, :cond_d2

    .line 1582
    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne p1, v2, :cond_d2

    .line 1585
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v0, "carrier_config"

    .line 1586
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 1587
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "UNKNOWN"

    invoke-virtual {p1, v0, v1}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 1591
    :cond_d2
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist saveCardStrings()V
    .registers 3

    .line 1310
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 1311
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1312
    const-string v1, ","

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "card_strings"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1313
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private blacklist updateCarrierServices(ILjava/lang/String;)V
    .registers 5

    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_f

    .line 983
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 985
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist convertToCardString(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_14

    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 1180
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1177
    :cond_14
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToCardString: cardId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist convertToPublicCardId(Ljava/lang/String;)I
    .registers 6

    .line 1192
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 1197
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, -0x2

    if-eqz v0, :cond_e

    return v2

    .line 1201
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_1a

    .line 1202
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1204
    :cond_1a
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ne p0, v1, :cond_23

    return v2

    :cond_23
    return p0
.end method

.method public blacklist dispose()V
    .registers 5

    .line 1829
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 1830
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    .line 1832
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1836
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1837
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsCdmaSupported="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->isCdmaSupported(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasBuiltInEuicc="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasBuiltInEuicc:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1839
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasActiveBuiltInEuicc="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCardStrings="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getPrintableCardStrings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1841
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefaultEuiccCardId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1842
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneIdToSlotId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUseRemovableEsimAsDefault="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiccSlots: size="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const/4 p2, 0x0

    .line 1846
    :goto_c6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v2, v1

    if-ge p2, v2, :cond_110

    .line 1847
    aget-object v1, v1, p2

    const-string v2, "mUiccSlots["

    if-nez v1, :cond_e9

    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10d

    .line 1850
    :cond_e9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1852
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    :goto_10d
    add-int/lit8 p2, p2, 0x1

    goto :goto_c6

    .line 1856
    :cond_110
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1857
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 1858
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 1860
    const-string p2, "sLocalLog= "

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1862
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/uicc/PinStorage;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1863
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getAllUiccCardInfos()Ljava/util/ArrayList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1216
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1217
    :try_start_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v8, v3

    .line 1218
    :goto_c
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v5, v4

    if-ge v8, v5, :cond_af

    .line 1219
    aget-object v4, v4, v8

    if-nez v4, :cond_17

    goto/16 :goto_a8

    .line 1221
    :cond_17
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v5

    .line 1223
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    .line 1225
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v9

    const/4 v7, 0x0

    if-eqz v6, :cond_54

    if-eqz v5, :cond_36

    .line 1231
    check-cast v6, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v7

    .line 1232
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v6

    goto :goto_66

    :catchall_33
    move-exception v0

    goto/16 :goto_b1

    .line 1235
    :cond_36
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v6

    if-nez v6, :cond_47

    .line 1237
    const-string v10, "92885ba7-98bb-490a-ba19-987b1c8b2055"

    .line 1238
    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    const-string v11, "UiccController: Found UiccPort Null object."

    .line 1237
    invoke-static {v10, v11}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    :cond_47
    if-eqz v6, :cond_4e

    .line 1241
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object v6

    goto :goto_4f

    :cond_4e
    move-object v6, v7

    .line 1242
    :goto_4f
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v6

    goto :goto_66

    .line 1246
    :cond_54
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId(I)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_65

    .line 1248
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_65

    .line 1249
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v6

    goto :goto_66

    :cond_65
    const/4 v6, -0x2

    .line 1253
    :goto_66
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v10

    .line 1255
    array-length v12, v10

    move v13, v3

    :goto_71
    if-ge v13, v12, :cond_97

    aget v14, v10, v13

    .line 1256
    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1257
    new-instance v3, Landroid/telephony/UiccPortInfo;

    .line 1258
    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPhoneIdFromPortIndex(I)I

    move-result v0

    move/from16 v16, v5

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v5

    invoke-direct {v3, v15, v14, v0, v5}, Landroid/telephony/UiccPortInfo;-><init>(Ljava/lang/String;IIZ)V

    .line 1257
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v16

    const/4 v3, 0x0

    goto :goto_71

    :cond_97
    move-object v0, v4

    move/from16 v16, v5

    .line 1260
    new-instance v4, Landroid/telephony/UiccCardInfo;

    .line 1262
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result v10

    move/from16 v5, v16

    invoke-direct/range {v4 .. v11}, Landroid/telephony/UiccCardInfo;-><init>(ZILjava/lang/String;IZZLjava/util/List;)V

    .line 1263
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a8
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    goto/16 :goto_c

    .line 1265
    :cond_af
    monitor-exit v1

    return-object v2

    .line 1266
    :goto_b1
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_5 .. :try_end_b2} :catchall_33

    throw v0
.end method

.method public blacklist getCardIdForDefaultEuicc()I
    .registers 7

    .line 1273
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_7

    const/4 p0, -0x1

    return p0

    .line 1279
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    if-eqz v0, :cond_52

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    if-nez v0, :cond_52

    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    const-string v3, "UiccController"

    if-ge v2, v1, :cond_4d

    aget-object v4, v0, v2

    if-eqz v4, :cond_4a

    .line 1281
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 1282
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getEid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result p0

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardIdForDefaultEuicc: Removable eSIM is default, cardId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1289
    :cond_4d
    const-string v0, "getCardIdForDefaultEuicc: No removable eSIM slot is found"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_52
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    return p0
.end method

.method public greylist-max-r getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 4

    .line 572
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 575
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    .line 577
    monitor-exit v0

    return-object p0

    .line 578
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public greylist-max-r getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 4

    .line 560
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 563
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    .line 565
    monitor-exit v0

    return-object p0

    .line 566
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public blacklist getPhoneIdFromSlotPortIndex(II)I
    .registers 3

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 329
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPhoneIdFromPortIndex(I)I

    move-result p0

    return p0
.end method

.method public blacklist getPinStorage()Lcom/android/internal/telephony/uicc/PinStorage;
    .registers 1

    .line 1296
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    return-object p0
.end method

.method public blacklist getSlotIdFromPhoneId(I)I
    .registers 2

    .line 338
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    aget p0, p0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSupportedMepMode(I)Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;
    .registers 3

    .line 1789
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1790
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1791
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getSupportedMepMode()Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object p0

    goto :goto_12

    :catchall_e
    move-exception p0

    goto :goto_14

    .line 1792
    :cond_10
    sget-object p0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    :goto_12
    monitor-exit v0

    return-object p0

    .line 1793
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_e

    throw p0
.end method

.method public greylist getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .registers 3

    .line 355
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 357
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public greylist-max-r getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 4

    .line 741
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 744
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UiccPort;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    .line 746
    monitor-exit v0

    return-object p0

    .line 747
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public blacklist getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .registers 4

    .line 412
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    .line 419
    monitor-exit v0

    return-object p0

    .line 420
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public blacklist getUiccCardForSlot(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .registers 3

    .line 397
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    .line 402
    monitor-exit v0

    return-object p0

    .line 403
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public blacklist getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;
    .registers 3

    .line 365
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 367
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public blacklist getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;
    .registers 4

    .line 430
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    goto :goto_20

    :cond_1d
    const/4 p0, 0x0

    .line 440
    monitor-exit v0

    return-object p0

    .line 441
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1b

    throw p0
.end method

.method public blacklist getUiccPortForSlot(II)Lcom/android/internal/telephony/uicc/UiccPort;
    .registers 4

    .line 378
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 383
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    .line 386
    monitor-exit v0

    return-object p0

    .line 387
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public blacklist getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;
    .registers 5

    .line 450
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v2

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_1b

    :cond_17
    :goto_17
    monitor-exit v0

    return-object v2

    .line 455
    :cond_19
    monitor-exit v0

    return-object v2

    .line 456
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_15

    throw p0
.end method

.method public blacklist getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;
    .registers 4

    .line 481
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 483
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object p0, p0, p1

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    .line 485
    monitor-exit v0

    return-object p0

    .line 486
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public blacklist getUiccSlotForCardId(Ljava/lang/String;)I
    .registers 7

    .line 533
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 535
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v4, v3

    if-ge v2, v4, :cond_25

    .line 536
    aget-object v3, v3, v2

    if-eqz v3, :cond_22

    .line 537
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 538
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 539
    monitor-exit v0

    return v2

    :catchall_20
    move-exception p0

    goto :goto_49

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 544
    :cond_25
    :goto_25
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v3, v2

    if-ge v1, v3, :cond_46

    .line 545
    aget-object v2, v2, v1

    if-eqz v2, :cond_43

    .line 547
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccSlot;)V

    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 549
    monitor-exit v0

    return v1

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_46
    const/4 p0, -0x1

    .line 553
    monitor-exit v0

    return p0

    .line 554
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_20

    throw p0
.end method

.method public blacklist getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;
    .registers 4

    .line 515
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getSlotIdFromPhoneId(I)I

    move-result p1

    .line 518
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 519
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object p0, p0, p1

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    goto :goto_1e

    :cond_1b
    const/4 p0, 0x0

    .line 522
    monitor-exit v0

    return-object p0

    .line 523
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_19

    throw p0
.end method

.method public blacklist getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;
    .registers 2

    .line 464
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 466
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 601
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .line 603
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccController;->eventToString(I)Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_101

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v4, v4

    if-lt v3, v4, :cond_1e

    goto/16 :goto_101

    .line 611
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for phoneId "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 613
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 614
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    packed-switch v3, :pswitch_data_124

    .line 672
    const-string p0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Unknown Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ff

    :catchall_5e
    move-exception p0

    goto/16 :goto_121

    .line 667
    :pswitch_61
    const-string v1, "Received EVENT_MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 668
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 669
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->onMultiSimConfigChanged(I)V

    goto/16 :goto_ff

    .line 663
    :pswitch_77
    const-string p1, "Received EVENT_EID_READY"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 664
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onEidReady(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_ff

    .line 659
    :pswitch_81
    const-string p1, "Received EVENT_SIM_REFRESH"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_ff

    .line 650
    :pswitch_8b
    const-string p1, "EVENT_RADIO_UNAVAILABLE, dispose card"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 651
    sput-object p1, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    .line 652
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    if-eqz v2, :cond_a4

    .line 654
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->onRadioStateUnavailable(I)V

    .line 656
    :cond_a4
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, p1, v1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_ff

    .line 623
    :pswitch_af
    const-string p1, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON, calling getIccCardStatus"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_c9

    .line 629
    const-string p1, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON for phoneId 0, calling getSimSlotsStatus"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 632
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/RadioConfig;->getSimSlotsStatus(Landroid/os/Message;)V

    .line 635
    :cond_c9
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_ff

    .line 639
    :pswitch_d9
    const-string p1, "Received EVENT_GET_ICC_STATUS_DONE"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 640
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_ff

    .line 645
    :pswitch_e2
    const-string p1, "Received EVENT_SLOT_STATUS_CHANGED or EVENT_GET_SLOT_STATUS_DONE"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 647
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->onGetSlotStatusDone(Landroid/os/AsyncResult;)V

    goto :goto_ff

    .line 616
    :pswitch_eb
    const-string p1, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 617
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 675
    :goto_ff
    monitor-exit v0

    return-void

    .line 606
    :cond_101
    :goto_101
    const-string p0, "UiccController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid phoneId : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received with event "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    monitor-exit v0

    return-void

    .line 675
    :goto_121
    monitor-exit v0
    :try_end_122
    .catchall {:try_start_3 .. :try_end_122} :catchall_5e

    throw p0

    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_eb
        :pswitch_e2
        :pswitch_d9
        :pswitch_e2
        :pswitch_af
        :pswitch_af
        :pswitch_8b
        :pswitch_81
        :pswitch_77
        :pswitch_61
    .end packed-switch
.end method

.method public blacklist isRemovableEsimDefaultEuicc()Z
    .registers 3

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUseRemovableEsimAsDefault: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    return p0
.end method

.method public blacklist mvnoMatches(IILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    .line 1728
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_10

    .line 1730
    const-string p0, "UiccController"

    const-string p2, "isMvnoMatched# IccRecords is null"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_10
    if-nez p2, :cond_1f

    .line 1734
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderNameWithBrandOverride()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5c

    .line 1735
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5c

    return v0

    :cond_1f
    if-ne p2, v0, :cond_2e

    .line 1739
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5c

    .line 1740
    invoke-static {p3, p0}, Lcom/android/internal/telephony/uicc/UiccController;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5c

    return v0

    :cond_2e
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4c

    .line 1744
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object p0

    .line 1745
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p0, :cond_5c

    .line 1746
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p2, :cond_5c

    .line 1747
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5c

    return v0

    :cond_4c
    const/4 v1, 0x3

    if-ne p2, v1, :cond_5c

    .line 1751
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5c

    .line 1752
    invoke-static {p3, p0}, Lcom/android/internal/telephony/uicc/UiccController;->iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5c

    return v0

    :cond_5c
    return p1
.end method

.method public greylist registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 585
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 587
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_17

    .line 590
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_17
    move-exception p0

    .line 587
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public blacklist setRemovableEsimAsDefaultEuicc(Z)V
    .registers 3

    .line 1766
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    .line 1767
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 1768
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1769
    const-string v0, "removable_esim"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1770
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1771
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRemovableEsimAsDefaultEuicc isDefault: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setUiccSlot(ILcom/android/internal/telephony/uicc/UiccSlot;)V
    .registers 5

    .line 499
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 503
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, p1

    if-eqz v1, :cond_15

    .line 504
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->dispose()V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_35

    .line 506
    :cond_15
    :goto_15
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object p2, p0, p1

    .line 507
    monitor-exit v0

    return-void

    .line 501
    :cond_1e
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid slot index: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 507
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_13

    throw p0
.end method

.method public blacklist slotStatusChanged(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;)Z"
        }
    .end annotation

    .line 1518
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    const/4 v0, 0x1

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq p0, v1, :cond_10

    goto :goto_2f

    :cond_10
    const/4 p0, 0x0

    move v1, p0

    .line 1521
    :goto_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 1522
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v0

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2e
    return p0

    :cond_2f
    :goto_2f
    return v0
.end method

.method public blacklist switchSlots(Ljava/util/List;Landroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchSlots: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 473
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioConfig;->setSimSlotsMapping(Ljava/util/List;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist unregisterForIccChanged(Landroid/os/Handler;)V
    .registers 3

    .line 594
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 596
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist updateSimState(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V
    .registers 5

    .line 997
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateSimStateForInactivePort(ILjava/lang/String;)V
    .registers 4

    .line 779
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/uicc/UiccController;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

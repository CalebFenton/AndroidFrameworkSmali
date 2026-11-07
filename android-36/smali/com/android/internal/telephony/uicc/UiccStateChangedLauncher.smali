.class public Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;
.super Landroid/os/Handler;
.source "UiccStateChangedLauncher.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "com.android.internal.telephony.uicc.UiccStateChangedLauncher"

.field private static blacklist sDeviceProvisioningPackage:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIsRestricted:[Z

.field private blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 6

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    .line 57
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x1040260

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    if-eqz p3, :cond_25

    .line 60
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_25

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p2, p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_25
    return-void
.end method

.method private blacklist notifyStateChanged()V
    .registers 3

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :try_start_c
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 109
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 69
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_47

    .line 72
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    const/4 v1, 0x0

    if-nez p1, :cond_18

    .line 73
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    move p1, v0

    goto :goto_19

    :cond_18
    move p1, v1

    :goto_19
    move v2, v1

    .line 76
    :goto_1a
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_41

    .line 79
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 81
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v3, v4, :cond_30

    goto :goto_32

    :cond_30
    move v3, v1

    goto :goto_33

    :cond_32
    :goto_32
    move v3, v0

    :goto_33
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    aget-boolean v5, v4, v2

    if-eq v3, v5, :cond_3e

    xor-int/lit8 p1, v5, 0x1

    .line 83
    aput-boolean p1, v4, v2

    move p1, v0

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_41
    if-eqz p1, :cond_46

    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->notifyStateChanged()V

    :cond_46
    return-void

    .line 92
    :cond_47
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unexpected event not handled"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

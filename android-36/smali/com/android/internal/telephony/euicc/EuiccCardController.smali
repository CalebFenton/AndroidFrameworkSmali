.class public Lcom/android/internal/telephony/euicc/EuiccCardController;
.super Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static blacklist sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;


# instance fields
.field private blacklist mAppOps:Landroid/app/AppOpsManager;

.field private blacklist mBestComponent:Landroid/content/pm/ComponentInfo;

.field private blacklist mCallingPackage:Ljava/lang/String;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

.field private blacklist mEuiccMainThreadHandler:Landroid/os/Handler;

.field private blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private blacklist mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

.field private blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private final blacklist mVendorApiLevel:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEuiccController(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEuiccMainThreadHandler(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimSlotStatusChangeReceiver(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiccController(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/uicc/UiccController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetResultCode(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getResultCode(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/telephony/euicc/EuiccController;Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 7

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    .line 142
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mAppOps:Landroid/app/AppOpsManager;

    .line 144
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    .line 145
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 146
    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 147
    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 149
    const-string p2, "ro.vendor.api_level"

    sget p3, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mVendorApiLevel:I

    .line 152
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->isBootUp(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 153
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/EuiccCardController-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mSimSlotStatusChangeReceiver:Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    .line 154
    new-instance p0, Landroid/content/IntentFilter;

    const-string p3, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3f
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 9

    .line 126
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccCardController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/telephony/euicc/EuiccController;Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 129
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/os/TelephonyServiceManager;->getEuiccCardControllerServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object p0

    .line 131
    invoke-virtual {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->register(Landroid/os/IBinder;)V

    return-void
.end method

.method private blacklist checkCallingPackage(Ljava/lang/String;)V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mCallingPackage:Ljava/lang/String;

    .line 215
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mBestComponent:Landroid/content/pm/ComponentInfo;

    if-eqz p1, :cond_24

    .line 216
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mCallingPackage:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 217
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_24

    return-void

    .line 218
    :cond_24
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The calling package can only be LPA."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_40

    .line 1543
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_7

    goto :goto_40

    :cond_7
    const-wide/32 v0, 0x11c2f5c6

    .line 1548
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1547
    invoke-static {v0, v1, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mVendorApiLevel:I

    const/16 v0, 0x23

    if-ge p1, v0, :cond_1b

    goto :goto_40

    .line 1556
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "android.hardware.telephony.euicc"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_40

    .line 1557
    :cond_26
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is unsupported without "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    return-void
.end method

.method public static blacklist get()Lcom/android/internal/telephony/euicc/EuiccCardController;
    .registers 3

    .line 115
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    if-nez v0, :cond_19

    .line 116
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccCardController;

    monitor-enter v0

    .line 117
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    if-eqz v1, :cond_f

    .line 120
    monitor-exit v0

    goto :goto_19

    :catchall_d
    move-exception v1

    goto :goto_17

    .line 118
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "get() called before init()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_d

    throw v1

    .line 122
    :cond_19
    :goto_19
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    return-object v0
.end method

.method private blacklist getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;
    .registers 4

    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getUiccSlotForEmbeddedCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 241
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    if-nez p0, :cond_23

    .line 243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccCard is null. cardId : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;)V

    return-object v0

    .line 246
    :cond_23
    check-cast p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    return-object p0
.end method

.method private blacklist getEuiccPort(Ljava/lang/String;I)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;
    .registers 5

    .line 281
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 285
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    if-nez p0, :cond_2b

    .line 287
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccPort is null. cardId : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " portIndex : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;)V

    return-object v0

    .line 290
    :cond_2b
    check-cast p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    return-object p0
.end method

.method private blacklist getEuiccPortFromIccId(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;
    .registers 5

    .line 250
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getUiccSlotForEmbeddedCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 254
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    if-nez v1, :cond_23

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UiccCard is null. cardId : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;)V

    return-object v0

    .line 259
    :cond_23
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromIccId(Ljava/lang/String;)I

    move-result p0

    .line 260
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p2

    if-nez p2, :cond_4a

    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccPort is null. cardId : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " portIndex : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;)V

    return-object v0

    .line 265
    :cond_4a
    check-cast p2, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    return-object p2
.end method

.method private blacklist getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;
    .registers 4

    .line 269
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 273
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPortList()[Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_19

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPortList()[Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    check-cast p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    return-object p0

    .line 276
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No active ports exists. cardId : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist getResultCode(Ljava/lang/Throwable;)I
    .registers 2

    .line 294
    instance-of p0, p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    if-eqz p0, :cond_b

    .line 295
    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->getErrorCode()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getUiccSlotForEmbeddedCard(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccSlot;
    .registers 6

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForCardId(Ljava/lang/String;)I

    move-result v0

    .line 224
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    const/4 v1, 0x0

    .line 225
    const-string v2, " cardId : "

    if-nez p0, :cond_2c

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiccSlot is null. slotId : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;)V

    return-object v1

    .line 229
    :cond_2c
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiccSlot is not embedded slot : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_4d
    return-object p0
.end method

.method public static blacklist init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/euicc/EuiccCardController;
    .registers 4

    .line 103
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccCardController;

    monitor-enter v0

    .line 104
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    if-nez v1, :cond_11

    .line 105
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    goto :goto_29

    :catchall_f
    move-exception p0

    goto :goto_2d

    .line 107
    :cond_11
    const-string p0, "EuiccCardController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() called multiple times! sInstance = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_f

    .line 110
    sget-object p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccCardController;

    return-object p0

    .line 109
    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_f

    throw p0
.end method

.method public static blacklist isBootUp(Landroid/content/Context;)Z
    .registers 5

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    const-string v1, "boot_count"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 168
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 169
    const-string v1, "last_boot_count"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v2, :cond_1e

    if-eq v3, v2, :cond_1e

    if-eq v0, v3, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    return p0

    .line 171
    :cond_1e
    :goto_1e
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1563
    const-string v0, "EuiccCardController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1567
    const-string v0, "EuiccCardController"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public blacklist authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V
    .registers 12

    const/4 v0, 0x0

    .line 1117
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_2f

    .line 1127
    const-string v1, "authenticateServer"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1c

    const/4 p0, -0x2

    .line 1132
    :try_start_10
    invoke-interface {p8, p0, v0}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;->onComplete(I[B)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    move-object p0, v0

    .line 1134
    const-string p1, "authenticateServer callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    :cond_1c
    move-object p2, p4

    move-object p4, p6

    .line 1139
    new-instance p6, Lcom/android/internal/telephony/euicc/EuiccCardController$16;

    invoke-direct {p6, p0, p8}, Lcom/android/internal/telephony/euicc/EuiccCardController$16;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V

    .line 1160
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    move-object v2, p7

    move-object p7, p0

    move-object p0, p1

    move-object p1, p3

    move-object p3, p5

    move-object p5, v2

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->authenticateServer(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_2f
    const/4 p0, -0x3

    .line 1120
    :try_start_30
    invoke-interface {p8, p0, v0}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;->onComplete(I[B)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3b

    :catch_34
    move-exception v0

    move-object p0, v0

    .line 1122
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3b
    return-void
.end method

.method public blacklist cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
    .registers 8

    const/4 v0, 0x0

    .line 1273
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 1283
    const-string v1, "cancelSession"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 1288
    :try_start_10
    invoke-interface {p5, p0, v0}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback;->onComplete(I[B)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1290
    const-string p1, "cancelSession callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 1295
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$19;

    invoke-direct {p2, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccCardController$19;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ICancelSessionCallback;)V

    .line 1316
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p4, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->cancelSession([BILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 1276
    :try_start_27
    invoke-interface {p5, p0, v0}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback;->onComplete(I[B)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 1278
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
    .registers 6

    .line 659
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_25

    .line 669
    const-string v0, "deleteProfile"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p0, -0x2

    .line 674
    :try_start_f
    invoke-interface {p4, p0}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;->onComplete(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 676
    const-string p1, "deleteProfile callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 681
    :cond_1a
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$7;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V

    .line 705
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, v0, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->deleteProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_25
    const/4 p0, -0x3

    .line 662
    :try_start_26
    invoke-interface {p4, p0}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;->onComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception p0

    .line 664
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method public blacklist disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
    .registers 7

    .line 491
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_25

    .line 501
    const-string v0, "disableProfile"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccPortFromIccId(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p0, -0x2

    .line 506
    :try_start_f
    invoke-interface {p5, p0}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback;->onComplete(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 508
    const-string p1, "disableProfile callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 513
    :cond_1a
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$4;

    invoke-direct {p2, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccCardController$4;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IDisableProfileCallback;)V

    .line 534
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p4, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->disableProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_25
    const/4 p0, -0x3

    .line 494
    :try_start_26
    invoke-interface {p5, p0}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback;->onComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception p0

    .line 496
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1525
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "Requires DUMP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1528
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mCallingPackage="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mBestComponent="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mBestComponent:Landroid/content/pm/ComponentInfo;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public blacklist getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V
    .registers 6

    const/4 v0, 0x0

    .line 304
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 314
    const-string v1, "getAllProfiles"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 319
    :try_start_10
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;->onComplete(I[Landroid/service/euicc/EuiccProfileInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 321
    const-string p1, "getAllProfiles callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 326
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$1;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getAllProfiles(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 307
    :try_start_27
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;->onComplete(I[Landroid/service/euicc/EuiccProfileInfo;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 309
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V
    .registers 6

    const/4 v0, 0x0

    .line 765
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 775
    const-string v1, "getDefaultSmdpAddress"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 780
    :try_start_10
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;->onComplete(ILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 782
    const-string p1, "getDefaultSmdpAddress callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 787
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$9;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$9;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V

    .line 808
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getDefaultSmdpAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 768
    :try_start_27
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;->onComplete(ILjava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 770
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist getEnabledProfile(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    .registers 12

    const/4 v0, 0x0

    .line 405
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_6f

    .line 415
    const-string v1, "getEnabledProfile"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move-object v4, v0

    move v3, v2

    :goto_13
    if-ge v2, v1, :cond_2f

    aget-object v5, p1, v2

    .line 421
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->getEid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 423
    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isValidPortIndex(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 425
    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2f
    const/4 p1, -0x2

    if-nez v3, :cond_3d

    .line 431
    :try_start_32
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/IGetProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p0

    .line 433
    const-string p1, "getEnabledProfile callback failure due to invalid port slot."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 439
    :cond_3d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "getEnabledProfile callback failure."

    if-eqz v1, :cond_4f

    const/4 p0, -0x4

    .line 441
    :try_start_46
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/IGetProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception p0

    .line 443
    invoke-static {v2, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 448
    :cond_4f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccPort(Ljava/lang/String;I)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p3

    if-nez p3, :cond_64

    .line 451
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p3

    if-nez p3, :cond_64

    .line 454
    :try_start_5b
    invoke-interface {p4, p1, v0}, Lcom/android/internal/telephony/euicc/IGetProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_5f

    return-void

    :catch_5f
    move-exception p0

    .line 456
    invoke-static {v2, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 462
    :cond_64
    new-instance p1, Lcom/android/internal/telephony/euicc/EuiccCardController$3;

    invoke-direct {p1, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$3;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    .line 483
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p3, v4, p1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_6f
    const/4 p0, -0x3

    .line 408
    :try_start_70
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/IGetProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_7a

    :catch_74
    move-exception p0

    .line 410
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7a
    return-void
.end method

.method public blacklist getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V
    .registers 6

    const/4 v0, 0x0

    .line 966
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 976
    const-string v1, "getEuiccChallenge"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 981
    :try_start_10
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;->onComplete(I[B)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 983
    const-string p1, "getEuiccChallenge callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 988
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$13;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$13;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V

    .line 1009
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getEuiccChallenge(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 969
    :try_start_27
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;->onComplete(I[B)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 971
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
    .registers 6

    const/4 v0, 0x0

    .line 1016
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 1026
    const-string v1, "getEuiccInfo1"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 1031
    :try_start_10
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;->onComplete(I[B)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1033
    const-string p1, "getEuiccInfo1 callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 1038
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$14;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$14;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V

    .line 1059
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getEuiccInfo1(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 1019
    :try_start_27
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;->onComplete(I[B)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 1021
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
    .registers 6

    const/4 v0, 0x0

    .line 1066
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 1076
    const-string v1, "getEuiccInfo2"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 1081
    :try_start_10
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;->onComplete(I[B)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1083
    const-string p1, "getEuiccInfo2 callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 1088
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$15;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$15;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V

    .line 1109
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getEuiccInfo2(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 1069
    :try_start_27
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;->onComplete(I[B)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 1071
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    .registers 7

    const/4 v0, 0x0

    .line 355
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 365
    const-string v1, "getProfile"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 370
    :try_start_10
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/IGetProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 372
    const-string p1, "getProfile callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 377
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$2;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$2;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    .line 398
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 358
    :try_start_27
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/IGetProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 360
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
    .registers 6

    const/4 v0, 0x0

    .line 915
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 925
    const-string v1, "getRulesAuthTable"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 930
    :try_start_10
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;->onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 932
    const-string p1, "getRulesAuthTable callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 937
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$12;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$12;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V

    .line 959
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getRulesAuthTable(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 918
    :try_start_27
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;->onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 920
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V
    .registers 6

    const/4 v0, 0x0

    .line 815
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 825
    const-string v1, "getSmdsAddress"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 830
    :try_start_10
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;->onComplete(ILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 832
    const-string p1, "getSmdsAddress callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 837
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$10;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccCardController$10;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V

    .line 858
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getSmdsAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 818
    :try_start_27
    invoke-interface {p3, p0, v0}, Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;->onComplete(ILjava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 820
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist isEmbeddedCardPresent()Z
    .registers 6

    .line 196
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 200
    :cond_a
    array-length v1, p0

    move v2, v0

    :goto_c
    if-ge v2, v1, :cond_2d

    aget-object v3, p0, v2

    if-eqz v3, :cond_2a

    .line 202
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 203
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 204
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2d
    return v0
.end method

.method public blacklist isEmbeddedSlotActivated()Z
    .registers 5

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    move v1, v0

    .line 184
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_23

    .line 185
    aget-object v2, p0, v1

    if-eqz v2, :cond_20

    .line 186
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_23
    return v0
.end method

.method public blacklist listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
    .registers 7

    const/4 v0, 0x0

    .line 1323
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 1333
    const-string v1, "listNotifications"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 1338
    :try_start_10
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1340
    const-string p1, "listNotifications callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 1345
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$20;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$20;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IListNotificationsCallback;)V

    .line 1367
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->listNotifications(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 1326
    :try_start_27
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 1328
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
    .registers 7

    const/4 v0, 0x0

    .line 1220
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 1230
    const-string v1, "loadBoundProfilePackage"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 1235
    :try_start_10
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;->onComplete(I[B)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1237
    const-string p1, "loadBoundProfilePackage callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 1242
    :cond_1b
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$18;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V

    .line 1266
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, v0, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loadBoundProfilePackage([BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 1223
    :try_start_27
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;->onComplete(I[B)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 1225
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V
    .registers 11

    const/4 v0, 0x0

    .line 1169
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_2f

    .line 1179
    const-string v1, "prepareDownload"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1c

    const/4 p0, -0x2

    .line 1184
    :try_start_10
    invoke-interface {p7, p0, v0}, Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;->onComplete(I[B)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    move-object p0, v0

    .line 1186
    const-string p1, "prepareDownload callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    :cond_1c
    move-object p2, p0

    move-object p0, p1

    move-object p1, p3

    move-object p3, p5

    .line 1191
    new-instance p5, Lcom/android/internal/telephony/euicc/EuiccCardController$17;

    invoke-direct {p5, p2, p7}, Lcom/android/internal/telephony/euicc/EuiccCardController$17;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V

    .line 1212
    iget-object p2, p2, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    move-object v2, p6

    move-object p6, p2

    move-object p2, p4

    move-object p4, v2

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->prepareDownload([B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_2f
    const/4 p0, -0x3

    .line 1172
    :try_start_30
    invoke-interface {p7, p0, v0}, Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;->onComplete(I[B)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3b

    :catch_34
    move-exception v0

    move-object p0, v0

    .line 1174
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3b
    return-void
.end method

.method public blacklist removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V
    .registers 6

    .line 1476
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_25

    .line 1486
    const-string v0, "removeNotificationFromList"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p0, -0x2

    .line 1491
    :try_start_f
    invoke-interface {p4, p0}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;->onComplete(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 1493
    const-string p1, "removeNotificationFromList callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 1498
    :cond_1a
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$23;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$23;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V

    .line 1520
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->removeNotificationFromList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_25
    const/4 p0, -0x3

    .line 1479
    :try_start_26
    invoke-interface {p4, p0}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;->onComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception p0

    .line 1481
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method public blacklist resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
    .registers 6

    .line 712
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_25

    .line 722
    const-string v0, "resetMemory"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p0, -0x2

    .line 727
    :try_start_f
    invoke-interface {p4, p0}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback;->onComplete(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 729
    const-string p1, "resetMemory callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 734
    :cond_1a
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccCardController$8;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$8;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IResetMemoryCallback;)V

    .line 758
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, v0, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->resetMemory(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_25
    const/4 p0, -0x3

    .line 715
    :try_start_26
    invoke-interface {p4, p0}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback;->onComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception p0

    .line 717
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method public blacklist retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
    .registers 7

    const/4 v0, 0x0

    .line 1425
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 1435
    const-string v1, "retrieveNotification"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 1440
    :try_start_10
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;->onComplete(ILandroid/telephony/euicc/EuiccNotification;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1442
    const-string p1, "retrieveNotification callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 1447
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$22;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$22;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V

    .line 1469
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->retrieveNotification(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 1428
    :try_start_27
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;->onComplete(ILandroid/telephony/euicc/EuiccNotification;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 1430
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V
    .registers 7

    const/4 v0, 0x0

    .line 1374
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_26

    .line 1384
    const-string v1, "retrieveNotificationList"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p0, -0x2

    .line 1389
    :try_start_10
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1391
    const-string p1, "retrieveNotificationList callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 1396
    :cond_1b
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$21;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$21;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V

    .line 1418
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->retrieveNotificationList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_26
    const/4 p0, -0x3

    .line 1377
    :try_start_27
    invoke-interface {p4, p0, v0}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;->onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    .line 1379
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public blacklist setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V
    .registers 6

    .line 865
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_25

    .line 875
    const-string v0, "setDefaultSmdpAddress"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p0, -0x2

    .line 880
    :try_start_f
    invoke-interface {p4, p0}, Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;->onComplete(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 882
    const-string p1, "setDefaultSmdpAddress callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 887
    :cond_1a
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$11;

    invoke-direct {p2, p0, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController$11;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V

    .line 908
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->setDefaultSmdpAddress(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_25
    const/4 p0, -0x3

    .line 868
    :try_start_26
    invoke-interface {p4, p0}, Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;->onComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception p0

    .line 870
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method public blacklist setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V
    .registers 7

    .line 609
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_25

    .line 619
    const-string v0, "setNickname"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getFirstActiveEuiccPort(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p0, -0x2

    .line 624
    :try_start_f
    invoke-interface {p5, p0}, Lcom/android/internal/telephony/euicc/ISetNicknameCallback;->onComplete(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 626
    const-string p1, "setNickname callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 631
    :cond_1a
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccCardController$6;

    invoke-direct {p2, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccCardController$6;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V

    .line 652
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, p4, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->setNickname(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_25
    const/4 p0, -0x3

    .line 612
    :try_start_26
    invoke-interface {p5, p0}, Lcom/android/internal/telephony/euicc/ISetNicknameCallback;->onComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception p0

    .line 614
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method public blacklist switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
    .registers 9

    const/4 v0, 0x0

    .line 541
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->checkCallingPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_3a

    .line 551
    const-string v1, "switchToProfile"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-direct {p0, p2, p4}, Lcom/android/internal/telephony/euicc/EuiccCardController;->getEuiccPort(Ljava/lang/String;I)Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    move-result-object p1

    if-nez p1, :cond_2b

    const/4 p0, -0x2

    .line 556
    :try_start_10
    invoke-interface {p6, p0, v0}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    move-object p0, v0

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "switchToProfile callback failure for portIndex :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    :cond_2b
    move-object p4, p3

    move-object p3, p1

    move-object p1, p0

    .line 563
    new-instance p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;

    move-object p2, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/euicc/EuiccCardController$5;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;Z)V

    .line 602
    iget-object p1, p1, Lcom/android/internal/telephony/euicc/EuiccCardController;->mEuiccMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p3, p4, p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catch_3a
    move-object p2, p6

    const/4 p0, -0x3

    .line 544
    :try_start_3c
    invoke-interface {p2, p0, v0}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_47

    :catch_40
    move-exception v0

    move-object p0, v0

    .line 546
    const-string p1, "callback onComplete failure after checkCallingPackage."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_47
    return-void
.end method

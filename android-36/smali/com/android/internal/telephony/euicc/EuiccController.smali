.class public Lcom/android/internal/telephony/euicc/EuiccController;
.super Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
.source "EuiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;
    }
.end annotation


# static fields
.field static final blacklist EXTRA_OPERATION:Ljava/lang/String; = "operation"

.field private static blacklist sInstance:Lcom/android/internal/telephony/euicc/EuiccController;


# instance fields
.field private final blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private blacklist mPsimConversionSupportedCarrierIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private blacklist mSupportedCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mUnsupportedCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVendorApiLevel:I


# direct methods
.method public static synthetic blacklist $r8$lambda$OCX8naQrMDGWkMET-bVcRig-zrc(IZILandroid/telephony/SubscriptionInfo;)Z
    .registers 5

    .line 2125
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v0

    if-ne v0, p0, :cond_16

    if-eqz p1, :cond_14

    .line 2126
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p0

    if-ne p0, p2, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$wD78xg3eBWQ4X-Tx-24iyfh0Ars(Lcom/android/internal/telephony/euicc/EuiccController;ZLjava/lang/String;ILjava/util/Set;Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/euicc/EuiccController;->lambda$refreshSubscriptionsAndSendResult$0(ZLjava/lang/String;ILjava/util/Set;Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/euicc/EuiccController;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddExtrasToResultIntent(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/content/Intent;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->addExtrasToResultIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckCarrierPrivilegeInMetadata(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->checkCarrierPrivilegeInMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrefreshSubscriptionsOwnership(Lcom/android/internal/telephony/euicc/EuiccController;ZLjava/lang/String;ILjava/util/Set;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/EuiccController;->refreshSubscriptionsOwnership(ZLjava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 4

    .line 163
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 165
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/TelephonyServiceManager;->getEuiccControllerService()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->register(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 4

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 172
    const-string p2, "telephony_subscription_service"

    .line 173
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 174
    const-string p2, "phone"

    .line 175
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 176
    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 178
    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 179
    const-string p1, "ro.vendor.api_level"

    sget p2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mVendorApiLevel:I

    return-void
.end method

.method private static blacklist addCallingPackageToBundle(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    if-nez p0, :cond_7

    .line 939
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 940
    :cond_7
    const-string v0, "android.service.euicc.extra.PACKAGE_NAME"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist addExtrasToResultIntent(Landroid/content/Intent;I)V
    .registers 5

    ushr-int/lit8 v0, p2, 0x18

    .line 598
    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 601
    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_OPERATION_CODE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xa

    if-ne v0, v1, :cond_27

    .line 608
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->decodeSmdxSubjectAndReasonCode(I)Landroid/util/Pair;

    move-result-object p0

    .line 610
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 611
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 612
    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string p2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_27
    const p0, 0xffffff

    and-int/2addr p0, p2

    .line 617
    const-string p2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_ERROR_CODE"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private static blacklist awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1990
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    .line 1992
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 1994
    :goto_b
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist awaitResultOrException(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Exception;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2003
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    .line 2005
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2008
    :goto_b
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_16

    .line 2012
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2009
    :cond_16
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    throw p0
.end method

.method private blacklist blockingGetAvailableMemoryInBytesFromEuiccService(I)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1916
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1917
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/16 v2, -0x1

    .line 1918
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1919
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1920
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccController$12;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/android/internal/telephony/euicc/EuiccController$12;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getAvailableMemoryInBytes(ILcom/android/internal/telephony/euicc/EuiccConnector$GetAvailableMemoryInBytesCommandCallback;)V

    .line 1941
    :try_start_20
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResultOrException(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_2a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_20 .. :try_end_2a} :catch_32
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b

    return-wide p0

    :catch_2b
    move-exception p0

    .line 1946
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_32
    move-exception p0

    .line 1943
    throw p0
.end method

.method private blacklist blockingGetEidFromEuiccService(I)Ljava/lang/String;
    .registers 6

    .line 1897
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1898
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1899
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$11;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEid(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;)V

    .line 1911
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private blacklist blockingGetEuiccInfoFromEuiccService(I)Landroid/telephony/euicc/EuiccInfo;
    .registers 6

    .line 1971
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1972
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1973
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$14;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$14;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEuiccInfo(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccInfoCommandCallback;)V

    .line 1985
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccInfo;

    return-object p0
.end method

.method private blacklist blockingGetOtaStatusFromEuiccService(I)I
    .registers 6

    .line 1951
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1952
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x5

    .line 1953
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1954
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$13;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$13;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getOtaStatus(ILcom/android/internal/telephony/euicc/EuiccConnector$GetOtaStatusCommandCallback;)V

    .line 1966
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private blacklist callerCanManageDevicePolicyManagedSubscriptions(Ljava/lang/String;)Z
    .registers 4

    .line 2201
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2203
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2205
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1d

    .line 2206
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_DEVICE_POLICY_MANAGED_SUBSCRIPTIONS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1f

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist callerCanReadPhoneState()Z
    .registers 2

    .line 2175
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist callerCanReadPhoneStatePrivileged()Z
    .registers 2

    .line 2169
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist callerCanWriteEmbeddedSubscriptions()Z
    .registers 2

    .line 2180
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist canManageActiveSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z
    .registers 9

    .line 2058
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 2059
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 2060
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_3f

    .line 2064
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    const/4 v3, -0x1

    if-eq p1, v3, :cond_29

    .line 2069
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v3

    if-ne v3, p1, :cond_14

    .line 2070
    :cond_29
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz p3, :cond_37

    .line 2071
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result v3

    if-ne v3, p4, :cond_14

    .line 2072
    :cond_37
    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_3f
    :goto_3f
    return v1
.end method

.method private blacklist canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z
    .registers 4

    .line 2396
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2397
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 2398
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2397
    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscriptionAsUser(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 2400
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist canManageSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z
    .registers 12

    .line 2093
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 2094
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 2096
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_c1

    .line 2103
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->supportMultiActiveSlots()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a4

    .line 2105
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 2106
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_28

    goto/16 :goto_a3

    .line 2110
    :cond_28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "EuiccController"

    if-eqz v4, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccCardInfo;

    if-eqz v4, :cond_2c

    .line 2111
    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v6

    if-ne v6, p1, :cond_2c

    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2124
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, p3, p4}, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda1;-><init>(IZI)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 2136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 2138
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2139
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v4

    if-ne v4, p1, :cond_5b

    if-eqz p3, :cond_7b

    .line 2140
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result v4

    if-ne v4, p4, :cond_5b

    .line 2141
    :cond_7b
    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    return v3

    .line 2145
    :cond_82
    const-string p0, "canManageSubscriptionOnTargetSim cannot manage embedded subscription"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2150
    :cond_88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 2152
    :try_start_8c
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result p0
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_99

    if-ne p0, v3, :cond_95

    move v1, v3

    .line 2155
    :cond_95
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_99
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2156
    throw p0

    .line 2117
    :cond_9e
    const-string p0, "The target SIM is not an eUICC."

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    :goto_a3
    return v1

    .line 2158
    :cond_a4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionInfo;

    .line 2159
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p4

    if-eqz p4, :cond_a8

    .line 2160
    invoke-direct {p0, p3, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a8

    return v3

    :cond_c1
    :goto_c1
    return v1
.end method

.method private blacklist checkCarrierPrivilegeInMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z
    .registers 7

    .line 2019
    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getAccessRules()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2021
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/UiccAccessRule;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/UiccAccessRule;

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    const/4 v0, 0x0

    .line 2023
    const-string v1, "EuiccController"

    if-nez p1, :cond_1f

    .line 2024
    const-string p0, "No access rules but caller is unprivileged"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2030
    :cond_1f
    :try_start_1f
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x8000000

    invoke-virtual {p0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_27} :catch_43

    move p2, v0

    .line 2037
    :goto_28
    array-length v2, p1

    if-ge p2, v2, :cond_3d

    .line 2038
    aget-object v2, p1, p2

    invoke-virtual {v2, p0}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 2040
    const-string p0, "Calling package has carrier privilege to this profile"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3a
    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    .line 2044
    :cond_3d
    const-string p0, "Calling package doesn\'t have carrier privilege to this profile"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2033
    :catch_43
    const-string p0, "Calling package valid but gone"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private blacklist enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_40

    .line 2376
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_7

    goto :goto_40

    :cond_7
    const-wide/32 v0, 0x11c2f5c6

    .line 2381
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 2380
    invoke-static {v0, v1, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mVendorApiLevel:I

    const/16 v0, 0x23

    if-ge p1, v0, :cond_1b

    goto :goto_40

    .line 2389
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "android.hardware.telephony.euicc"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_40

    .line 2390
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

.method public static blacklist get()Lcom/android/internal/telephony/euicc/EuiccController;
    .registers 3

    .line 152
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-nez v0, :cond_19

    .line 153
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccController;

    monitor-enter v0

    .line 154
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-eqz v1, :cond_f

    .line 157
    monitor-exit v0

    goto :goto_19

    :catchall_d
    move-exception v1

    goto :goto_17

    .line 155
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "get() called before init()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_d

    throw v1

    .line 159
    :cond_19
    :goto_19
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object v0
.end method

.method private blacklist getCurrentEmbeddedSubscriptionIds(I)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1882
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1883
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 1884
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_f

    :cond_e
    move v1, v0

    .line 1885
    :goto_f
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    :goto_14
    if-ge v0, v1, :cond_36

    .line 1887
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1888
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v4

    if-ne v4, p1, :cond_33

    .line 1889
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_36
    return-object v2
.end method

.method private blacklist getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 3

    .line 2221
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->retrieveDevicePolicyManagerFromUserContext(Landroid/os/UserHandle;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    if-nez p0, :cond_11

    .line 2223
    const-string v0, "EuiccController"

    const-string v1, "Unable to get device policy manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-object p0
.end method

.method private blacklist getNextAvailableInActivePortIndex(Lcom/android/internal/telephony/uicc/UiccSlot;)I
    .registers 6

    if-eqz p1, :cond_16

    .line 1426
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_16

    aget v2, p0, v1

    .line 1427
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getRemovableNonEuiccSlot()Lcom/android/internal/telephony/uicc/UiccSlot;
    .registers 3

    .line 1476
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_26

    const/4 v0, 0x0

    .line 1478
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_26

    .line 1479
    aget-object v1, p0, v0

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_23

    aget-object v1, p0, v0

    .line 1480
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1481
    aget-object p0, p0, v0

    return-object p0

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSlotIndexFromCardId(I)I
    .registers 8

    .line 1439
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    const/4 v0, -0x1

    .line 1440
    const-string v1, "EuiccController"

    if-eqz p0, :cond_53

    array-length v2, p0

    if-nez v2, :cond_f

    goto :goto_53

    .line 1444
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToCardString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1445
    :goto_18
    array-length v4, p0

    if-ge v3, v4, :cond_3e

    .line 1446
    aget-object v4, p0, v3

    if-nez v4, :cond_2a

    .line 1447
    const-string v4, "e9517acf-e1a1-455f-9231-1b5515a0d0eb"

    .line 1448
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    const-string v5, "EuiccController: Found UiccSlotInfo Null object."

    .line 1447
    invoke-static {v4, v5}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 1451
    :cond_2a
    aget-object v4, p0, v3

    if-eqz v4, :cond_33

    .line 1452
    invoke-virtual {v4}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v4

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    .line 1453
    :goto_34
    invoke-static {v2, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    return v3

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1457
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No UiccSlotInfo found for cardId: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1441
    :cond_53
    :goto_53
    const-string p0, "UiccSlotInfo is null or empty"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private blacklist getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;
    .registers 6

    .line 1870
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 1871
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    if-ge v0, v1, :cond_21

    .line 1873
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1874
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_1e

    return-object v2

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/euicc/EuiccController;
    .registers 4

    .line 140
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccController;

    monitor-enter v0

    .line 141
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-nez v1, :cond_11

    .line 142
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    goto :goto_29

    :catchall_f
    move-exception p0

    goto :goto_2d

    .line 144
    :cond_11
    const-string p0, "EuiccController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() called multiple times! sInstance = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_f

    .line 147
    sget-object p0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object p0

    .line 146
    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_f

    throw p0
.end method

.method private blacklist isEsimSupportedCountry(Ljava/lang/String;)Z
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_12

    .line 440
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isEsimUnsupportedCountry(Ljava/lang/String;)Z
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mUnsupportedCountries:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_12

    .line 447
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mUnsupportedCountries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isRemovalNonEuiccSlotHasActiveSubscription()Z
    .registers 8

    .line 1462
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->getRemovableNonEuiccSlot()Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1464
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_d
    if-ge v4, v3, :cond_28

    aget v5, v2, v4

    .line 1465
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1467
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPhoneIdFromPortIndex(I)I

    move-result v5

    .line 1466
    invoke-virtual {v6, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    if-eqz v5, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_28
    return v1
.end method

.method private blacklist isTargetPortIndexValid(II)Z
    .registers 13

    .line 1378
    const-string v0, "EuiccController"

    const/4 v1, 0x0

    if-gez p2, :cond_1a

    .line 1379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid portIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1382
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getSlotIndexFromCardId(I)I

    move-result p1

    .line 1383
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    if-eqz p1, :cond_be

    .line 1384
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_be

    .line 1385
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v2

    array-length v2, v2

    if-lt p2, v2, :cond_38

    goto/16 :goto_be

    .line 1390
    :cond_38
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    const-string v3, " , reject the switch request to portIndex "

    const/4 v4, 0x1

    if-ne v2, v4, :cond_73

    .line 1392
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object p0

    array-length v2, p0

    move v5, v1

    :goto_49
    if-ge v5, v2, :cond_bd

    aget v6, p0, v5

    .line 1393
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v7

    if-eqz v7, :cond_70

    if-eq v6, p2, :cond_70

    .line 1396
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "In SS Mode, slot already has active port on portIndex "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 1401
    :cond_73
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-le v2, v4, :cond_bd

    .line 1405
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->isRemovalNonEuiccSlotHasActiveSubscription()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 1407
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v2

    array-length v5, v2

    move v6, v1

    :goto_87
    if-ge v6, v5, :cond_bd

    aget v7, v2, v6

    .line 1408
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v8

    if-eqz v8, :cond_ba

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1411
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPhoneIdFromPortIndex(I)I

    move-result v9

    .line 1410
    invoke-virtual {v8, v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v8

    if-nez v8, :cond_ba

    if-eq v7, p2, :cond_ba

    .line 1413
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "In DSDS Mode, pSim has active subscription, eSim has empty active port on portIndex "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_ba
    add-int/lit8 v6, v6, 0x1

    goto :goto_87

    :cond_bd
    return v4

    .line 1386
    :cond_be
    :goto_be
    const-string p0, "Invalid portIndex"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private synthetic blacklist lambda$refreshSubscriptionsAndSendResult$0(ZLjava/lang/String;ILjava/util/Set;Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .registers 8

    .line 1742
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/EuiccController;->refreshSubscriptionsOwnership(ZLjava/lang/String;ILjava/util/Set;)V

    .line 1744
    invoke-virtual {p0, p5, p6, p7}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method private blacklist refreshSubscriptionsOwnership(ZLjava/lang/String;ILjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_25

    .line 1755
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->getCurrentEmbeddedSubscriptionIds(I)Ljava/util/Set;

    move-result-object p0

    .line 1756
    invoke-interface {p0, p4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1757
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1758
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setGroupOwner(ILjava/lang/String;)V

    goto :goto_d

    :cond_25
    return-void
.end method

.method private blacklist retrieveDevicePolicyManagerFromUserContext(Landroid/os/UserHandle;)Landroid/app/admin/DevicePolicyManager;
    .registers 6

    .line 2187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2189
    :try_start_4
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    .line 2190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2189
    invoke-virtual {p0, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_f} :catch_1d
    .catchall {:try_start_4 .. :try_end_f} :catchall_1b

    .line 2195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2197
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0

    :catchall_1b
    move-exception p0

    goto :goto_29

    .line 2192
    :catch_1d
    :try_start_1d
    const-string p0, "EuiccController"

    const-string p1, "Unknown package name"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1b

    .line 2195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2196
    throw p0
.end method

.method private blacklist shouldAllowSwitchAfterDownload(Ljava/lang/String;)Z
    .registers 3

    .line 2212
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 2213
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2214
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2215
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist supportMultiActiveSlots()Z
    .registers 2

    .line 2049
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZI)V
    .registers 15

    .line 1789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.RESOLVE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1790
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1791
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone.euicc.EuiccResolutionUiDispatcherActivity"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1793
    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1795
    const-string p2, "android.service.euicc.extra.RESOLUTION_CALLING_PACKAGE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    const-string p2, "android.service.euicc.extra.RESOLVABLE_ERRORS"

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1797
    const-string p2, "android.service.euicc.extra.RESOLUTION_CARD_ID"

    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1798
    const-string p2, "android.service.euicc.extra.RESOLUTION_SUBSCRIPTION_ID"

    invoke-virtual {v0, p2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1799
    const-string p2, "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

    invoke-virtual {v0, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1800
    const-string p2, "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX"

    invoke-virtual {v0, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1801
    const-string p2, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE_RETRIED"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1803
    const-string p2, "operation"

    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1804
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p0, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 1809
    const-string p2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method public blacklist addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V
    .registers 21

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 1778
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZI)V

    return-void
.end method

.method public blacklist blockingGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;
    .registers 6

    .line 952
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 953
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 954
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$3;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEuiccProfileInfoList(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;)V

    .line 969
    :try_start_15
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_37

    :catch_19
    move-exception p0

    .line 971
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "blockingGetEuiccInfoFromEuiccService got InterruptedException e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EuiccController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 974
    :goto_37
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;

    return-object p0
.end method

.method public blacklist continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .registers 11

    .line 198
    const-string v0, "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX"

    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result p0

    if-eqz p0, :cond_79

    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 204
    :try_start_c
    const-string p0, "operation"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    if-eqz p0, :cond_6d

    .line 209
    const-string v3, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    .line 210
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    .line 212
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 214
    invoke-virtual {p3, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    const-string v0, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_3b

    const-string v6, "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

    if-eqz v0, :cond_3d

    .line 217
    :try_start_34
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_75

    .line 225
    :cond_3d
    :goto_3d
    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 224
    invoke-virtual {p3, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    :cond_44
    const-string p2, "EuiccController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " continueOperation portIndex: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " usePortIndex: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->continueOperation(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_69
    .catchall {:try_start_34 .. :try_end_69} :catchall_3b

    .line 232
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 206
    :cond_6d
    :try_start_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid resolution intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_3b

    .line 232
    :goto_75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    throw p0

    .line 199
    :cond_79
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to continue operation"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist decodeSmdxSubjectAndReasonCode(I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 557
    new-instance p0, Ljava/util/Stack;

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x6

    if-ge v0, v1, :cond_17

    and-int/lit8 v1, p1, 0xf

    .line 562
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    ushr-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 566
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 570
    const-string v0, "^(0\\.)*"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 571
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 573
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public blacklist deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 13

    .line 1077
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    .line 1078
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanManageDevicePolicyManagedSubscriptions(Ljava/lang/String;)Z

    move-result v1

    .line 1079
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1081
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1083
    :try_start_15
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_3a

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 1084
    const-string v7, "EuiccController"

    if-nez v4, :cond_3c

    .line 1085
    :try_start_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot delete nonexistent subscription: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {p0, p4, v6, v5}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_3a

    .line 1103
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3a
    move-exception p0

    goto :goto_83

    :cond_3c
    if-eqz v1, :cond_4a

    .line 1089
    :try_start_3e
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    if-nez v0, :cond_78

    .line 1094
    invoke-direct {p0, v4, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_78

    if-nez v1, :cond_78

    .line 1096
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permissions: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " adminOwned="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {p0, p4, v6, v5}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_74
    .catchall {:try_start_3e .. :try_end_74} :catchall_3a

    .line 1103
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1101
    :cond_78
    :try_start_78
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/euicc/EuiccController;->deleteSubscriptionPrivileged(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_3a

    .line 1103
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_83
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1104
    throw p0
.end method

.method blacklist deleteSubscriptionPrivileged(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6

    .line 1109
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController$4;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController$4;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->deleteSubscription(ILjava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;)V

    return-void
.end method

.method blacklist downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v9, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p8

    .line 624
    const-string v2, "EuiccController"

    iget-object v3, v0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 627
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanManageDevicePolicyManagedSubscriptions(Ljava/lang/String;)Z

    move-result v11

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v11, :cond_29

    if-eqz v9, :cond_29

    .line 628
    invoke-direct {v0, v8}, Lcom/android/internal/telephony/euicc/EuiccController;->shouldAllowSwitchAfterDownload(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 632
    invoke-virtual {v0, v10, v4, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    .line 635
    :cond_29
    iget-object v5, v0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    const-string v6, "no_sim_globally"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    if-nez v11, :cond_41

    .line 639
    invoke-virtual {v0, v10, v4, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    :cond_41
    const-wide/32 v3, 0xd628eb8

    .line 644
    invoke-virtual {v0, v8, v3, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v3

    .line 646
    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v4

    .line 648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v7, 0x0

    if-eqz v9, :cond_68

    const/4 v13, -0x1

    move/from16 v14, p2

    if-ne v14, v13, :cond_6a

    if-eqz v3, :cond_63

    .line 654
    :try_start_5a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getResolvedPortIndexForSubscriptionSwitch(I)I

    move-result v14

    goto :goto_64

    :catchall_5f
    move-exception v0

    move-wide v13, v5

    goto/16 :goto_139

    :cond_63
    move v14, v7

    :goto_64
    if-ne v14, v13, :cond_6a

    const/4 v7, 0x1

    goto :goto_6a

    :cond_68
    move/from16 v14, p2

    .line 659
    :cond_6a
    :goto_6a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " downloadSubscription cardId: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " switchAfterDownload: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " portIndex: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " forceDeactivateSim: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p6

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " callingPackage: "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " isConsentNeededToResolvePortIndex: "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " shouldResolvePortIndex:"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " callerHasAdminPrivileges:"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_5a .. :try_end_b8} :catchall_5f

    if-nez v7, :cond_bf

    if-nez v4, :cond_c3

    if-eqz v11, :cond_bf

    goto :goto_c3

    :cond_bf
    move v11, v1

    move-wide v3, v5

    move v10, v14

    goto :goto_dd

    .line 672
    :cond_c3
    :goto_c3
    :try_start_c3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getCurrentEmbeddedSubscriptionIds(I)Ljava/util/Set;

    move-result-object v12
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_da

    move-wide v3, v5

    move v6, v9

    move v2, v14

    move v7, v15

    move-object/from16 v5, p3

    move-object/from16 v9, p7

    .line 669
    :try_start_cf
    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;ZLjava/util/Set;)V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d6

    .line 710
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d6
    move-exception v0

    :goto_d7
    move-wide v13, v3

    goto/16 :goto_139

    :catchall_da
    move-exception v0

    move-wide v3, v5

    goto :goto_d7

    :goto_dd
    if-nez v7, :cond_10e

    const/4 v1, 0x1

    .line 687
    :try_start_e0
    invoke-direct {v0, v11, v8, v1, v10}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 689
    iget-object v12, v0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v6, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;
    :try_end_ea
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_d6

    const/4 v9, 0x0

    move/from16 v5, p4

    move/from16 v7, p6

    move-object v1, v0

    move-wide v2, v3

    move-object v0, v6

    move-object v6, v8

    move-object/from16 v4, p3

    move-object/from16 v8, p8

    :try_start_f7
    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;ZI)V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_10b

    move-wide v13, v2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move-object v6, v0

    move v2, v10

    move v1, v11

    move-object v0, v12

    :try_start_105
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;ZZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V

    goto :goto_135

    :catchall_109
    move-exception v0

    goto :goto_139

    :catchall_10b
    move-exception v0

    move-wide v13, v2

    goto :goto_139

    :cond_10e
    move/from16 v9, p4

    move-wide v13, v3

    move v0, v10

    move-object/from16 v10, p8

    .line 695
    const-string v1, "Caller can\'t manage subscription on target SIM or  User consent is required for resolving port index. Ask user\'s consent first"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 699
    const-string v2, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

    move-object/from16 v3, p3

    .line 704
    invoke-static {v13, v14, v3, v9, v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadNoPrivilegesOrDeactivateSimCheckMetadata(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v7, p1

    move-object v3, v8

    move v8, v0

    move-object/from16 v0, p0

    .line 699
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    const/4 v2, 0x1

    .line 707
    invoke-virtual {v0, v10, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_135
    .catchall {:try_start_105 .. :try_end_135} :catchall_109

    .line 710
    :goto_135
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_139
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 711
    throw v0
.end method

.method public blacklist downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 17

    if-eqz p3, :cond_5

    const/4 v0, -0x1

    :goto_3
    move v3, v0

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :goto_7
    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v8, p5

    move-object/from16 v9, p6

    .line 537
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method blacklist downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 24

    .line 812
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;ZLjava/util/Set;)V

    return-void
.end method

.method blacklist downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;ZLjava/util/Set;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/telephony/euicc/DownloadableSubscription;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/PendingIntent;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    move-object/from16 v7, p8

    move-object/from16 v1, p9

    .line 838
    invoke-static {v1, v7}, Lcom/android/internal/telephony/euicc/EuiccController;->addCallingPackageToBundle(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController$2;

    move-object v2, p0

    move v8, p1

    move/from16 v12, p2

    move-wide/from16 v10, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p10

    move/from16 v6, p11

    move-object/from16 v9, p12

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/telephony/euicc/EuiccController$2;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;ZLjava/lang/String;ILjava/util/Set;JI)V

    move/from16 v5, p7

    move-object v7, v1

    move v1, v8

    move v2, v12

    move-object v6, v13

    .line 832
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccConnector;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;)V

    return-void
.end method

.method blacklist downloadSubscriptionPrivilegedCheckMetadata(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 26

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " downloadSubscriptionPrivilegedCheckMetadata cardId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " switchAfterDownload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " portIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " forceDeactivateSim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EuiccController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v8, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;

    const/4 v13, 0x1

    move-object v5, p0

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    move v9, v6

    move v11, v7

    move-object v4, v8

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v14}, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;ZI)V

    move-object v5, v8

    move v6, v9

    move v7, v11

    move-object v8, v4

    move v4, v14

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;ZZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V

    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 1815
    const-string v0, "===== END EUICC CLINIC ====="

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    const-string v3, "Requires DUMP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1817
    const-string v3, "===== BEGIN EUICC CLINIC ====="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1819
    :try_start_14
    const-string v3, "===== EUICC CONNECTOR ====="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1820
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1821
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1822
    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$10;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/internal/telephony/euicc/EuiccController$10;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->dumpEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector$DumpEuiccServiceCommandCallback;)V

    .line 1838
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {p1, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_40

    .line 1839
    const-string p0, "===== EUICC SERVICE TIMEOUT ====="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_3d} :catch_47
    .catchall {:try_start_14 .. :try_end_3d} :catchall_3e

    goto :goto_40

    :catchall_3e
    move-exception p0

    goto :goto_53

    .line 1844
    :cond_40
    :goto_40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1842
    :catch_47
    :try_start_47
    const-string p0, "===== EUICC SERVICE INTERRUPTED ====="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_3e

    .line 1844
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1844
    :goto_53
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1846
    throw p0
.end method

.method public blacklist eraseSubscriptions(ILandroid/app/PendingIntent;)V
    .registers 7

    .line 1603
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1609
    :try_start_a
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$7;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController$7;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->eraseSubscriptions(ILcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 1636
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1637
    throw p0

    .line 1604
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to erase subscriptions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist eraseSubscriptionsWithOptions(IILandroid/app/PendingIntent;)V
    .registers 8

    .line 1643
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1649
    :try_start_a
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$8;

    invoke-direct {v3, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController$8;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->eraseSubscriptionsWithOptions(IILcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 1676
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1677
    throw p0

    .line 1644
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to erase subscriptions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAvailableMemoryInBytes(ILjava/lang/String;)J
    .registers 7

    .line 277
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanReadPhoneStatePrivileged()Z

    move-result v0

    .line 278
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanReadPhoneState()Z

    move-result v1

    .line 279
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-nez v0, :cond_3b

    if-nez v1, :cond_3b

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 284
    :try_start_1b
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z

    move-result p2

    if-eqz p2, :cond_22

    goto :goto_3b

    .line 286
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must have READ_PHONE_STATE permission or READ_PRIVILEGED_PHONE_STATE permission or carrier privileges to read the available memory forcardId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_39
    move-exception p0

    goto :goto_43

    .line 292
    :cond_3b
    :goto_3b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetAvailableMemoryInBytesFromEuiccService(I)J

    move-result-wide p0
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_39

    .line 294
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :goto_43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    throw p0
.end method

.method public blacklist getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5

    const/4 v0, 0x0

    .line 980
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->getDefaultDownloadableSubscriptionList(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method blacklist getDefaultDownloadableSubscriptionList(IZLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 13

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getDefaultDownloadableSubscriptionList callingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EuiccController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 992
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 994
    :try_start_29
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v2, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDefaultDownloadableSubscriptionList(IZLcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;)V
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_3a

    .line 998
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3a
    move-exception v0

    move-object p0, v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    throw p0

    .line 988
    :cond_40
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get default list"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method blacklist getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 17

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getDownloadableSubscriptionMetadata callingPackage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EuiccController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 459
    :try_start_29
    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v10, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    move-object v10, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, p1

    move v9, p3

    move-object v4, v7

    move-object v7, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;ZZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_44

    .line 465
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw v0

    .line 454
    :cond_49
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get metadata"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getEid(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 245
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanReadPhoneStatePrivileged()Z

    move-result v0

    const/4 v1, -0x1

    .line 247
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_e} :catch_41

    .line 252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-nez v0, :cond_35

    const/4 v0, 0x0

    .line 255
    :try_start_15
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_35

    .line 257
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must have carrier privileges on subscription to read EID for cardId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_33
    move-exception p0

    goto :goto_3d

    .line 262
    :cond_35
    :goto_35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEidFromEuiccService(I)Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_33

    .line 264
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    throw p0

    :catch_41
    move-exception p0

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Missing UID checking"

    const-string v0, "159062405"

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x534e4554

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 250
    throw p0
.end method

.method public blacklist getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;
    .registers 4

    .line 1066
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1068
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEuiccInfoFromEuiccService(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    throw p0
.end method

.method public blacklist getOtaStatus(I)I
    .registers 4

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 311
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetOtaStatusFromEuiccService(I)I

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw p0

    .line 307
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get OTA status"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getResolvedPortIndexForDisableSubscription(ILjava/lang/String;Z)I
    .registers 8

    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 1278
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3c

    .line 1279
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_3c

    .line 1284
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    if-eq p1, v1, :cond_29

    .line 1289
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v3

    if-ne v3, p1, :cond_15

    .line 1290
    :cond_29
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez p3, :cond_37

    .line 1292
    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1293
    :cond_37
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p0

    return p0

    :cond_3c
    :goto_3c
    return v1
.end method

.method public blacklist getResolvedPortIndexForSubscriptionSwitch(I)I
    .registers 10

    .line 1305
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getSlotIndexFromCardId(I)I

    move-result p1

    .line 1307
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    .line 1308
    const-string v1, "EuiccController"

    const/4 v2, 0x0

    if-nez v0, :cond_26

    .line 1310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Switch to inactive slot, return default port index. slotIndex: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1314
    :cond_26
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result p1

    if-nez p1, :cond_32

    .line 1315
    const-string p0, "Multiple enabled profiles is not supported, return default port index"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1318
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->getRemovableNonEuiccSlot()Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_45

    .line 1319
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->getRemovableNonEuiccSlot()Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result p1

    if-eqz p1, :cond_45

    move p1, v1

    goto :goto_46

    :cond_45
    move p1, v2

    .line 1320
    :goto_46
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-ne v3, v1, :cond_64

    if-eqz p1, :cond_51

    return v2

    .line 1333
    :cond_51
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object p0

    array-length p1, p0

    :goto_56
    if-ge v2, p1, :cond_9c

    aget v1, p0, v2

    .line 1334
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v3

    if-eqz v3, :cond_61

    return v1

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1340
    :cond_64
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v3

    array-length v4, v3

    :goto_69
    if-ge v2, v4, :cond_8f

    aget v5, v3, v2

    .line 1341
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 1342
    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1344
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPhoneIdFromPortIndex(I)I

    move-result v7

    .line 1343
    invoke-virtual {v6, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    if-eqz v6, :cond_8b

    .line 1346
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v7

    if-nez v7, :cond_8b

    .line 1348
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getProfileClass()I

    move-result v6

    if-ne v6, v1, :cond_8c

    :cond_8b
    return v5

    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_8f
    if-eqz p1, :cond_9c

    .line 1357
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->isRemovalNonEuiccSlotHasActiveSubscription()Z

    move-result p1

    if-nez p1, :cond_9c

    .line 1363
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->getNextAvailableInActivePortIndex(Lcom/android/internal/telephony/uicc/UiccSlot;)I

    move-result p0

    return p0

    :cond_9c
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSupportedCountries(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 393
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p1, :cond_d

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    if-nez p1, :cond_14

    .line 399
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mUnsupportedCountries:Ljava/util/List;

    if-eqz p0, :cond_14

    return-object p0

    .line 402
    :cond_14
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 394
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get supported countries"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist hasCarrierPrivilegesForPackageOnAnyPhone(Ljava/lang/String;)Z
    .registers 4

    .line 2317
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2322
    :try_start_d
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1c

    const/4 p1, 0x1

    if-ne p0, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 2325
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2326
    throw p0
.end method

.method public blacklist isCompatChangeEnabled(Ljava/lang/String;J)Z
    .registers 5

    .line 2331
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2335
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    .line 2334
    invoke-static {p2, p3, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    .line 2336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCompatChangeEnabled changeId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " changeEnabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EuiccController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public blacklist isPsimConversionSupported(I)Z
    .registers 3

    .line 2357
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2362
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPsimConversionSupportedCarrierIds:Ljava/util/List;

    if-eqz v0, :cond_1c

    .line 2363
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1c

    .line 2366
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPsimConversionSupportedCarrierIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0

    .line 2358
    :cond_1e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to check if the carrier is supported pSIM conversion"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist isSimPortAvailable(IILjava/lang/String;)Z
    .registers 14

    .line 2230
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2232
    const-string v0, "isSimPortAvailable"

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0xe524809

    .line 2236
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v0

    .line 2241
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v1

    .line 2242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2244
    :try_start_1d
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v4

    .line 2245
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_12c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/UiccCardInfo;

    if-eqz v5, :cond_27

    .line 2246
    invoke-virtual {v5}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v7

    if-eq v7, p1, :cond_3d

    goto :goto_27

    .line 2251
    :cond_3d
    invoke-virtual {v5}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v7

    if-eqz v7, :cond_128

    const/4 v7, -0x1

    if-eq p2, v7, :cond_128

    .line 2252
    invoke-virtual {v5}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    if-lt p2, v7, :cond_52

    goto/16 :goto_128

    .line 2255
    :cond_52
    invoke-virtual {v5}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5a
    :goto_5a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/UiccPortInfo;

    if-eqz v8, :cond_5a

    .line 2256
    invoke-virtual {v8}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v9

    if-eq v9, p2, :cond_6f

    goto :goto_5a

    .line 2259
    :cond_6f
    invoke-virtual {v8}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p1
    :try_end_73
    .catchall {:try_start_1d .. :try_end_73} :catchall_8e

    const/4 v4, 0x1

    if-nez p1, :cond_b6

    if-nez v0, :cond_7c

    .line 2310
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 2270
    :cond_7c
    :try_start_7c
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->getRemovableNonEuiccSlot()Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    if-eqz p1, :cond_91

    .line 2271
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->getRemovableNonEuiccSlot()Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result p1

    if-eqz p1, :cond_91

    move p1, v4

    goto :goto_92

    :catchall_8e
    move-exception p0

    goto/16 :goto_130

    :cond_91
    move p1, v6

    .line 2272
    :goto_92
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2273
    invoke-virtual {p2, p3}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v4, :cond_9c

    move p2, v4

    goto :goto_9d

    :cond_9c
    move p2, v6

    .line 2275
    :goto_9d
    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p3

    if-eqz p3, :cond_b2

    if-eqz p1, :cond_b2

    .line 2277
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->isRemovalNonEuiccSlotHasActiveSubscription()Z

    move-result p0
    :try_end_ab
    .catchall {:try_start_7c .. :try_end_ab} :catchall_8e

    if-nez p0, :cond_b2

    if-nez p2, :cond_b1

    if-eqz v1, :cond_b2

    :cond_b1
    move v6, v4

    .line 2310
    :cond_b2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 2282
    :cond_b6
    :try_start_b6
    invoke-virtual {v8}, Landroid/telephony/UiccPortInfo;->getIccId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_8e

    if-eqz p0, :cond_c4

    .line 2310
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 2286
    :cond_c4
    :try_start_c4
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    .line 2287
    invoke-virtual {v5}, Landroid/telephony/UiccCardInfo;->getPhysicalSlotIndex()I

    move-result p1

    .line 2286
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPortForSlot(II)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    if-eqz p0, :cond_e6

    .line 2291
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p1

    if-eqz p1, :cond_e6

    .line 2292
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isEmptyProfile()Z

    move-result p0
    :try_end_e0
    .catchall {:try_start_c4 .. :try_end_e0} :catchall_8e

    if-eqz p0, :cond_e6

    .line 2310
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 2295
    :cond_e6
    :try_start_e6
    invoke-virtual {v8}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0
    :try_end_ee
    .catchall {:try_start_e6 .. :try_end_ee} :catchall_8e

    .line 2296
    const-string p1, "EuiccController"

    if-nez p0, :cond_10e

    .line 2297
    :try_start_f2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid logical slot: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catchall {:try_start_f2 .. :try_end_10a} :catchall_8e

    .line 2310
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 2300
    :cond_10e
    :try_start_10e
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object p0

    if-nez p0, :cond_11d

    .line 2302
    const-string p0, "No CarrierPrivilegesTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catchall {:try_start_10e .. :try_end_119} :catchall_8e

    .line 2310
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 2305
    :cond_11d
    :try_start_11d
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierPrivilegeStatusForPackage(Ljava/lang/String;)I

    move-result p0
    :try_end_121
    .catchall {:try_start_11d .. :try_end_121} :catchall_8e

    if-ne p0, v4, :cond_124

    move v6, v4

    .line 2310
    :cond_124
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_128
    :goto_128
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_12c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :goto_130
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2311
    throw p0
.end method

.method public blacklist isSupportedCountry(Ljava/lang/String;)Z
    .registers 5

    .line 423
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    const-string v1, "EuiccController"

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2e

    .line 431
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using allow list supportedCountries="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->isEsimSupportedCountry(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 428
    :cond_2e
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using deny list unsupportedCountries="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mUnsupportedCountries:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->isEsimUnsupportedCountry(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 424
    :cond_4b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to check if the country is supported"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .registers 12

    .line 1719
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;ZLjava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method public blacklist refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;ZLjava/lang/String;ILjava/util/Set;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "I",
            "Landroid/content/Intent;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1739
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1740
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v8, p1

    move v9, p2

    move-object v10, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;ZLjava/lang/String;ILjava/util/Set;Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 1739
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V
    .registers 7

    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MASTER_CLEAR"

    const-string v2, "Must have MASTER_CLEAR to retain subscriptions for factory reset"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1686
    :try_start_d
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$9;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController$9;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->retainSubscriptions(ILcom/android/internal/telephony/euicc/EuiccConnector$RetainSubscriptionsCommandCallback;)V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1b

    .line 1711
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1712
    throw p0
.end method

.method public blacklist sendOtaStatusChangedBroadcast()V
    .registers 4

    .line 1855
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.OTA_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1856
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1858
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1861
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .registers 4

    .line 1767
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2, p3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public blacklist setPsimConversionSupportedCarriers([I)V
    .registers 3

    .line 2344
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2349
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    .line 2350
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPsimConversionSupportedCarrierIds:Ljava/util/List;

    return-void

    .line 2345
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to set pSIM conversion supported carriers"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setSupportedCountries(ZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_b

    .line 374
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSupportedCountries:Ljava/util/List;

    return-void

    .line 376
    :cond_b
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mUnsupportedCountries:Ljava/util/List;

    return-void

    .line 370
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to set supported countries"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist startOtaUpdatingIfNecessary()V
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->startOtaUpdatingIfNecessary(I)V

    return-void
.end method

.method public blacklist startOtaUpdatingIfNecessary(I)V
    .registers 4

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccController$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->startOtaIfNecessary(ILcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;)V

    return-void
.end method

.method blacklist switchToSubscription(IIIZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    move/from16 v2, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v3, p7

    .line 1157
    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v4

    .line 1158
    iget-object v5, v0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const-wide/32 v5, 0xd628eb8

    .line 1161
    invoke-virtual {v0, v8, v5, v6}, Lcom/android/internal/telephony/euicc/EuiccController;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v5

    .line 1163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " portIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " forceDeactivateSim: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " usePortIndex: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " callingPackage: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " shouldResolvePortIndex: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "EuiccController"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    if-eqz v4, :cond_69

    const/4 v7, 0x1

    :cond_69
    const/4 v6, -0x1

    const/4 v15, 0x0

    const/4 v14, 0x2

    if-ne v10, v6, :cond_a2

    if-nez v3, :cond_87

    .line 1183
    :try_start_70
    invoke-virtual {v0, v1, v8, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->getResolvedPortIndexForDisableSubscription(ILjava/lang/String;Z)I

    move-result v2

    if-ne v2, v6, :cond_86

    .line 1186
    const-string v1, "Disable is not permitted: no active subscription or cannot manage subscription"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {v0, v9, v14, v15}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_7e
    .catchall {:try_start_70 .. :try_end_7e} :catchall_82

    .line 1266
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_82
    move-exception v0

    move-wide v11, v12

    goto/16 :goto_175

    :cond_86
    const/4 v3, 0x1

    :cond_87
    if-nez v4, :cond_9c

    .line 1194
    :try_start_89
    invoke-direct {v0, v1, v8, v3, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageActiveSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_90

    goto :goto_9c

    .line 1198
    :cond_90
    const-string v1, "Not permitted to switch to empty subscription"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-virtual {v0, v9, v14, v15}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_98
    .catchall {:try_start_89 .. :try_end_98} :catchall_82

    .line 1266
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_9c
    :goto_9c
    move v10, v3

    move-object v6, v15

    const/4 v4, 0x1

    :goto_9f
    const/4 v15, 0x0

    goto/16 :goto_13d

    .line 1204
    :cond_a2
    :try_start_a2
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    if-nez v6, :cond_c3

    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot switch to nonexistent sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-virtual {v0, v9, v14, v15}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_bf
    .catchall {:try_start_a2 .. :try_end_bf} :catchall_82

    .line 1266
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_c3
    if-eqz v4, :cond_c7

    :goto_c5
    const/4 v4, 0x1

    goto :goto_f0

    .line 1213
    :cond_c7
    :try_start_c7
    invoke-direct {v0, v6, v8}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e8

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not permitted to switch to sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-virtual {v0, v9, v14, v15}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_e4
    .catchall {:try_start_c7 .. :try_end_e4} :catchall_82

    .line 1266
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1219
    :cond_e8
    :try_start_e8
    invoke-direct {v0, v1, v8, v3, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscriptionOnTargetSim(ILjava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_ef

    goto :goto_c5

    :cond_ef
    const/4 v4, 0x0

    .line 1224
    :goto_f0
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v15

    if-eqz v3, :cond_117

    .line 1226
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->isTargetPortIndexValid(II)Z

    move-result v5

    if-nez v5, :cond_114

    .line 1229
    const-string v1, "Not permitted to switch to invalid portIndex"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1231
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_ERROR_CODE"

    const/16 v3, 0x2721

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1233
    invoke-virtual {v0, v9, v14, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_110
    .catchall {:try_start_e8 .. :try_end_110} :catchall_82

    .line 1266
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_114
    move v10, v3

    move-object v6, v15

    goto :goto_9f

    :cond_117
    if-eqz v5, :cond_11f

    .line 1240
    :try_start_119
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getResolvedPortIndexForSubscriptionSwitch(I)I

    move-result v2

    :goto_11d
    const/4 v3, -0x1

    goto :goto_121

    :cond_11f
    const/4 v2, 0x0

    goto :goto_11d

    :goto_121
    if-ne v2, v3, :cond_125

    const/4 v3, 0x1

    goto :goto_126

    :cond_125
    const/4 v3, 0x0

    .line 1245
    :goto_126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Resolved portIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catchall {:try_start_119 .. :try_end_13a} :catchall_82

    move-object v6, v15

    const/4 v10, 0x1

    move v15, v3

    :goto_13d
    if-eqz v4, :cond_141

    if-eqz v15, :cond_147

    :cond_141
    move-wide v11, v12

    move-object v13, v9

    move v9, v10

    move/from16 v10, p2

    goto :goto_155

    :cond_147
    move/from16 v5, p2

    move-wide v3, v12

    .line 1263
    :try_start_14a
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IIJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_152

    move-wide v11, v3

    .line 1266
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_152
    move-exception v0

    move-wide v11, v3

    goto :goto_175

    .line 1250
    :goto_155
    :try_start_155
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move v0, v2

    .line 1251
    const-string v2, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

    .line 1256
    invoke-static {v11, v12, v10, v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forSwitchNoPrivileges(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v7, p1

    move-object v3, v8

    move v8, v0

    move-object/from16 v0, p0

    .line 1251
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZI)V

    const/4 v2, 0x1

    .line 1259
    invoke-virtual {v0, v13, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_170
    .catchall {:try_start_155 .. :try_end_170} :catchall_174

    .line 1266
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_174
    move-exception v0

    :goto_175
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1267
    throw v0
.end method

.method public blacklist switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 13

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 1143
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IIIZLjava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method blacklist switchToSubscriptionPrivileged(IIJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    .registers 22

    .line 1503
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v5, Lcom/android/internal/telephony/euicc/EuiccController$5;

    move-object v2, p0

    move v7, p1

    move v8, p2

    move/from16 v6, p5

    move-object/from16 v3, p8

    move-object/from16 v10, p9

    move/from16 v9, p10

    move-object v1, v5

    move-wide v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController$5;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/lang/String;JIIIZLandroid/app/PendingIntent;)V

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object v5, v1

    move v1, v7

    move v2, v8

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/EuiccConnector;->switchToSubscription(IILjava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;Z)V

    return-void
.end method

.method blacklist switchToSubscriptionPrivileged(IIJIZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    .registers 21

    move/from16 v5, p5

    .line 1492
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1494
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    :goto_c
    move v1, p1

    move v2, p2

    move-wide v3, p3

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object v6, v0

    move-object v0, p0

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_c

    .line 1496
    :goto_1c
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IIJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public blacklist switchToSubscriptionWithPort(IIILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 14

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 1150
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IIIZLjava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public blacklist updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 13

    .line 1547
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    .line 1548
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1552
    :try_start_11
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_36

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 1553
    const-string v6, "EuiccController"

    if-nez v3, :cond_38

    .line 1554
    :try_start_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot update nickname to nonexistent sub: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    invoke-virtual {p0, p5, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_36

    .line 1597
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception p0

    goto :goto_6d

    :cond_38
    if-nez v0, :cond_5b

    .line 1563
    :try_start_3a
    invoke-direct {p0, v3, p4}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5b

    .line 1564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permissions: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-virtual {p0, p5, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_57
    .catchall {:try_start_3a .. :try_end_57} :catchall_36

    .line 1597
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1569
    :cond_5b
    :try_start_5b
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 1570
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccController$6;

    invoke-direct {v0, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccController$6;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    .line 1569
    invoke-virtual {p2, p1, p4, p3, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;)V
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_36

    .line 1597
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_6d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1598
    throw p0
.end method

.class public Lcom/android/internal/telephony/data/DataServiceManager;
.super Landroid/os/Handler;
.source "DataServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;,
        Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;,
        Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;
    }
.end annotation


# instance fields
.field private final blacklist mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private blacklist mBound:Z

.field private final blacklist mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mIDataService:Landroid/telephony/data/IDataService;

.field private blacklist mLastBoundPackageName:Ljava/lang/String;

.field private blacklist mLastDataCallResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionManager:Landroid/permission/LegacyPermissionManager;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTargetBindingPackageName:Ljava/lang/String;

.field private final blacklist mTransportType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$6MtnSvEv6492BtZzyKfF_S8ZEmU(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataServiceManager;->lambda$grantPermissionsToService$0(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JvjZDmxGX_bMDpTYf8_VN7ow8WA(Lcom/android/internal/telephony/data/DataServiceManager;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataServiceManager;->lambda$new$2(IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mNuDEw_UBXt735KU1YqEWyHzgyk(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataServiceManager;->lambda$revokePermissionsFromUnusedDataServices$1(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApnUnthrottledRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataCallListChangedRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIDataService(Lcom/android/internal/telephony/data/DataServiceManager;)Landroid/telephony/data/IDataService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastBoundPackageName(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mLastBoundPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastDataCallResponseList(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mLastDataCallResponseList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceBindingChangedRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransportType(Lcom/android/internal/telephony/data/DataServiceManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBound(Lcom/android/internal/telephony/data/DataServiceManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIDataService(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/telephony/data/IDataService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastBoundPackageName(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mLastBoundPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastDataCallResponseList(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/List;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mLastDataCallResponseList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;I)V
    .registers 6

    .line 366
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 102
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    .line 104
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 106
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 114
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mLastDataCallResponseList:Ljava/util/List;

    .line 367
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 368
    iput p3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DSM-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3a

    const-string p3, "C-"

    goto :goto_3c

    .line 370
    :cond_3a
    const-string p3, "I-"

    :goto_3c
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTag:Ljava/lang/String;

    const/4 p2, 0x0

    .line 371
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    .line 372
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    .line 377
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "legacy_permission"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/permission/LegacyPermissionManager;

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 379
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "appops"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz p2, :cond_86

    .line 383
    new-instance p1, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;)V

    new-instance p3, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;)V

    invoke-virtual {p2, p1, p3}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_86
    const/4 p1, 0x0

    .line 394
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 397
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->rebindDataService()V

    return-void
.end method

.method private blacklist bindDataService(Ljava/lang/String;)V
    .registers 6

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_78

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_78

    .line 442
    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 443
    const-string p1, "Can\'t find the binding package"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void

    .line 448
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServiceClassName()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.telephony.data.DataService"

    if-eqz v1, :cond_30

    .line 450
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3e

    .line 453
    :cond_30
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 458
    :goto_3e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->grantPermissionsToService(Ljava/lang/String;)V

    .line 461
    :try_start_41
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Lcom/android/internal/telephony/data/DataServiceManager-IA;)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_60

    .line 464
    const-string p1, "Cannot bind to the data service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void

    :catch_5e
    move-exception p1

    goto :goto_63

    .line 467
    :cond_60
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_62} :catch_5e

    return-void

    .line 469
    :goto_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot bind to the data service. Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void

    .line 438
    :cond_78
    :goto_78
    const-string p1, "can\'t bindDataService with invalid phone or phoneId."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getAllDataServicePackageNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.data.DataService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x100000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 496
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 497
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 498
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_31

    goto :goto_20

    .line 499
    :cond_31
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_37
    return-object v0
.end method

.method private blacklist getDataServiceClassName()Ljava/lang/String;
    .registers 2

    .line 562
    iget v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServiceClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getDataServiceClassName(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    const p1, 0x10402fb

    .line 586
    const-string v0, "carrier_data_service_wlan_class_override_string"

    goto :goto_28

    .line 587
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport type not WWAN or WLAN. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    const p1, 0x1040300

    .line 581
    const-string v0, "carrier_data_service_wwan_class_override_string"

    .line 592
    :goto_28
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 594
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 596
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {v1, p0, v2}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 597
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 599
    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5f
    return-object p1
.end method

.method private blacklist getDataServicePackageName(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    const p1, 0x10402fc

    .line 537
    const-string v0, "carrier_data_service_wlan_package_override_string"

    goto :goto_2e

    .line 538
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport type not WWAN or WLAN. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    .line 539
    invoke-static {p0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    const p1, 0x1040301

    .line 532
    const-string v0, "carrier_data_service_wwan_package_override_string"

    .line 543
    :goto_2e
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 545
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 547
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-static {v1, p0, v2}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 548
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 550
    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    return-object p1
.end method

.method private blacklist grantPermissionsToService(Ljava/lang/String;)V
    .registers 7

    .line 140
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 141
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 143
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 144
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/concurrent/CountDownLatch;)V

    .line 143
    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v1, 0x3a98

    .line 152
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->waitUntilReady(Ljava/util/concurrent/CountDownLatch;J)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "android:manage_ipsec_tunnels"

    .line 154
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    aget-object v4, p1, v3

    .line 153
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "android:fine_location"

    .line 156
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    aget-object p1, p1, v3

    .line 155
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception p1

    .line 158
    const-string v0, "Binder to package manager died, permission grant for DataService failed."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 159
    throw p1
.end method

.method private synthetic blacklist lambda$grantPermissionsToService$0(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 3

    .line 146
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 147
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 149
    :cond_a
    const-string p1, "Failed to grant permissions to service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$new$2(IIII)V
    .registers 5

    .line 385
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_10

    .line 389
    const-string p1, "Carrier config changed. Try to bind data service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->rebindDataService()V

    :cond_10
    return-void
.end method

.method private synthetic blacklist lambda$revokePermissionsFromUnusedDataServices$1(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 3

    .line 181
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 182
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 184
    :cond_a
    const-string p1, "Failed to revoke permissions from data services."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 951
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 955
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist rebindDataService()V
    .registers 4

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;

    .line 477
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already bound or being bound."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    return-void

    .line 482
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->unbindDataService()V

    .line 483
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->bindDataService(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist revokePermissionsFromUnusedDataServices()V
    .registers 8

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->getAllDataServicePackageNames()Ljava/util/Set;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1e

    aget v4, v1, v3

    .line 171
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServicePackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 174
    :cond_1e
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 176
    :try_start_24
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 177
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 179
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v1}, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/concurrent/CountDownLatch;)V

    .line 178
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/permission/LegacyPermissionManager;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v2, 0x3a98

    .line 187
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/util/TelephonyUtils;->waitUntilReady(Ljava/util/concurrent/CountDownLatch;J)V

    .line 188
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v3, "android:manage_ipsec_tunnels"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v3, "android:fine_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_70} :catch_71

    goto :goto_4d

    :catch_71
    move-exception v0

    goto :goto_74

    :cond_73
    return-void

    .line 195
    :goto_74
    const-string v1, "Binder to package manager died; failed to revoke DataService permissions."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 196
    throw v0
.end method

.method private blacklist sendCompleteMessage(Landroid/os/Message;I)V
    .registers 3

    if-eqz p1, :cond_7

    .line 607
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 608
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    return-void
.end method

.method private blacklist unbindDataService()V
    .registers 4

    .line 416
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->revokePermissionsFromUnusedDataServices()V

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    if-eqz v0, :cond_37

    invoke-interface {v0}, Landroid/telephony/data/IDataService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 418
    const-string v0, "unbinding service"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 421
    :try_start_16
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/telephony/data/IDataService;->removeDataServiceProvider(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_37

    :catch_22
    move-exception v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove data service provider. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 427
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    if-eqz v0, :cond_46

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_46
    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    .line 431
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;

    .line 432
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    return-void
.end method


# virtual methods
.method public blacklist cancelHandover(ILandroid/os/Message;)V
    .registers 7

    .line 746
    const-string v0, "cancelHandover"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 747
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v2, 0x4

    if-nez v1, :cond_13

    .line 748
    const-string p1, "Data service not bound."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 753
    :cond_13
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :try_start_21
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3, p1, v1}, Landroid/telephony/data/IDataService;->cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2c} :catch_2d

    return-void

    .line 760
    :catch_2d
    const-string p1, "Cannot invoke cancelHandover on data service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 761
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist deactivateDataCall(IILandroid/os/Message;)V
    .registers 8

    .line 677
    const-string v0, "deactivateDataCall"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 678
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v2, 0x4

    if-nez v1, :cond_13

    .line 679
    const-string p1, "Data service not bound."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 680
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 684
    :cond_13
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz p3, :cond_23

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3, p1, p2, v1}, Landroid/telephony/data/IDataService;->deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    return-void

    .line 692
    :catch_2f
    const-string p1, "Cannot invoke deactivateDataCall on data service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 693
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist getDataServicePackageName()Ljava/lang/String;
    .registers 2

    .line 510
    iget v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServicePackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 407
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 408
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->rebindDataService()V

    return-void

    .line 410
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerForApnUnthrottled(Landroid/os/Handler;I)V
    .registers 4

    if-eqz p1, :cond_d

    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public blacklist registerForDataCallListChanged(Landroid/os/Handler;I)V
    .registers 4

    if-eqz p1, :cond_d

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public blacklist registerForServiceBindingChanged(Landroid/os/Handler;I)V
    .registers 5

    if-eqz p1, :cond_20

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 942
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    iget v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 943
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mServiceBindingChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 944
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    if-eqz p0, :cond_20

    .line 945
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method public blacklist requestDataCallList(Landroid/os/Message;)V
    .registers 6

    .line 838
    const-string v0, "requestDataCallList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 839
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v2, 0x4

    if-nez v1, :cond_13

    .line 840
    const-string v0, "Data service not bound."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 841
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 845
    :cond_13
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz p1, :cond_23

    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3, v1}, Landroid/telephony/data/IDataService;->requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    return-void

    .line 853
    :catch_2f
    const-string v0, "Cannot invoke requestDataCallList on data service."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist requestNetworkValidation(ILandroid/os/Message;)V
    .registers 7

    .line 907
    const-string v0, "requestNetworkValidation"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 908
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v1, 0x4

    if-nez v0, :cond_13

    .line 909
    const-string p1, "DataService is not bound."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 910
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 914
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/data/DataServiceManager$1;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/data/DataServiceManager$1;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;)V

    if-eqz p2, :cond_23

    .line 922
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/android/internal/telephony/IIntegerConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :cond_23
    :try_start_23
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, v0}, Landroid/telephony/data/IDataService;->requestNetworkValidation(IILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    return-void

    .line 927
    :catch_2f
    const-string p1, "Cannot invoke requestNetworkValidation on data service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 928
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/android/internal/telephony/IIntegerConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist setDataProfile(Ljava/util/List;ZLandroid/os/Message;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 811
    const-string v0, "setDataProfile"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 812
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v2, 0x4

    if-nez v1, :cond_13

    .line 813
    const-string p1, "Data service not bound."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 814
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 818
    :cond_13
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz p3, :cond_23

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3, p1, p2, v1}, Landroid/telephony/data/IDataService;->setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    return-void

    .line 825
    :catch_2f
    const-string p1, "Cannot invoke setDataProfile on data service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 826
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .registers 8

    .line 777
    const-string v0, "setInitialAttachApn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 778
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v2, 0x4

    if-nez v1, :cond_13

    .line 779
    const-string p1, "Data service not bound."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 780
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 784
    :cond_13
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz p3, :cond_23

    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3, p1, p2, v1}, Landroid/telephony/data/IDataService;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    return-void

    .line 793
    :catch_2f
    const-string p1, "Cannot invoke setInitialAttachApn on data service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 794
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    .line 640
    const-string v2, "setupDataCall"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 641
    iget-boolean v3, v0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v4, 0x4

    if-nez v3, :cond_17

    .line 642
    const-string v2, "setupDataCall: Data service not bound."

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 643
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 647
    :cond_17
    new-instance v3, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    if-eqz v1, :cond_27

    .line 649
    iget-object v2, v0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_27
    :try_start_27
    iget-object v5, v0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v2, v0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2f} :catch_49

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v17, v3

    :try_start_45
    invoke-interface/range {v5 .. v17}, Landroid/telephony/data/IDataService;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_4b

    return-void

    :catch_49
    move-object/from16 v17, v3

    .line 656
    :catch_4b
    const-string v2, "setupDataCall: Cannot invoke setupDataCall on data service."

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 657
    iget-object v2, v0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist startHandover(ILandroid/os/Message;)V
    .registers 7

    .line 715
    const-string v0, "startHandover"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->log(Ljava/lang/String;)V

    .line 716
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mBound:Z

    const/4 v2, 0x4

    if-nez v1, :cond_13

    .line 717
    const-string p1, "Data service not bound."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 718
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 722
    :cond_13
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :try_start_21
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3, p1, v1}, Landroid/telephony/data/IDataService;->startHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2c} :catch_2d

    return-void

    .line 729
    :catch_2d
    const-string p1, "Cannot invoke startHandover on data service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 730
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 878
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_7
    return-void
.end method

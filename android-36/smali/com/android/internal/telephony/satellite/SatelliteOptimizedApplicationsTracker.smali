.class public Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;
.super Ljava/lang/Object;
.source "SatelliteOptimizedApplicationsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;
    }
.end annotation


# instance fields
.field private final blacklist mBootCompleted:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mCurrentHandler:Landroid/os/Handler;

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mSatelliteApplications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mCurrentHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleInitializeTracker(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->handleInitializeTracker()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePackageMonitor(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->handlePackageMonitor(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePackageRemoved(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->handlePackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mSatelliteApplications:Ljava/util/Map;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$2;-><init>(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mBootCompleted:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 74
    const-string v1, "user"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mUserManager:Landroid/os/UserManager;

    .line 75
    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mCurrentHandler:Landroid/os/Handler;

    .line 97
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mCurrentHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mCurrentHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v1, 0x80

    .line 99
    invoke-virtual {p2, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 100
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_ADDED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker$SatelliteApplicationPackageMonitor;-><init>(Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker-IA;)V

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mCurrentHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {v0, p2, p0, p1}, Lcom/android/internal/telephony/PackageChangeReceiver;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist addCacheOptimizedSatelliteApplication(Ljava/lang/String;)V
    .registers 7

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 209
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 211
    :try_start_1e
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 213
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mSatelliteApplications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mSatelliteApplications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_42} :catch_a

    goto :goto_a

    :cond_43
    return-void
.end method

.method private blacklist getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 121
    :try_start_b
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_19

    .line 123
    const-string v0, "packageInfo is NULL"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->loge(Ljava/lang/String;)V

    return-object v2

    :catch_17
    move-exception v0

    goto :goto_1c

    .line 126
    :cond_19
    iget-object p0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_1b} :catch_17

    return-object p0

    .line 128
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while reading packageInfo [ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ] exp = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->loge(Ljava/lang/String;)V

    return-object v2
.end method

.method private blacklist handleInitializeTracker()V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 181
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 182
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mSatelliteApplications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 185
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 189
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_39

    .line 190
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->isOptimizedSatelliteApplication(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 191
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->addCacheOptimizedSatelliteApplication(Ljava/lang/String;)V

    goto :goto_39

    :cond_55
    return-void
.end method

.method private blacklist handlePackageMonitor(Ljava/lang/String;)V
    .registers 3

    .line 168
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 170
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->isOptimizedSatelliteApplication(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->addCacheOptimizedSatelliteApplication(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->removeCacheOptimizedSatelliteApplication(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private blacklist handlePackageRemoved(Ljava/lang/String;)V
    .registers 2

    .line 164
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->removeCacheOptimizedSatelliteApplication(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist isOptimizedSatelliteApplication(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 198
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_b

    .line 201
    const-string p1, "android.telephony.PROPERTY_SATELLITE_DATA_OPTIMIZED"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 250
    const-string p0, "SatelliteAppTracker"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 254
    const-string p0, "SatelliteAppTracker"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist removeCacheOptimizedSatelliteApplication(Ljava/lang/String;)V
    .registers 6

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 224
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 226
    :try_start_1e
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_a

    .line 230
    :catch_26
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mSatelliteApplications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mSatelliteApplications:Ljava/util/Map;

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 232
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mSatelliteApplications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_54
    return-void
.end method


# virtual methods
.method public blacklist getSatelliteOptimizedApplications(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteOptimizedApplicationsTracker;->mSatelliteApplications:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

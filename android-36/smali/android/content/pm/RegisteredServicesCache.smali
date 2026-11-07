.class public abstract Landroid/content/pm/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/RegisteredServicesCache$UserServices;,
        Landroid/content/pm/RegisteredServicesCache$Injector;,
        Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,
        Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field protected static final greylist-max-o REGISTERED_SERVICES_DIR:Ljava/lang/String; = "registered_services"

.field static final blacklist SERVICE_INFO_CACHES_TIMEOUT_MILLIS:J = 0x7530L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private final greylist-max-o mAttributesName:Ljava/lang/String;

.field private final blacklist mBackgroundHandler:Landroid/os/Handler;

.field public final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mExternalReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mInterfaceName:Ljava/lang/String;

.field private greylist-max-o mListener:Landroid/content/pm/RegisteredServicesCacheListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMetaDataName:Ljava/lang/String;

.field private final greylist-max-o mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final greylist-max-o mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/XmlSerializerAndParser<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final greylist-max-o mServicesLock:Ljava/lang/Object;

.field private final blacklist mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final greylist-max-o mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUserIdToServiceInfoCaches(Landroid/content/pm/RegisteredServicesCache;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePackageEvent(Landroid/content/pm/RegisteredServicesCache;Landroid/content/Intent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/pm/RegisteredServicesCache;->handlePackageEvent(Landroid/content/Intent;I)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "metaDataName"    # Ljava/lang/String;
    .param p4, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/XmlSerializerAndParser<",
            "TV;>;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p5, "serializerAndParser":Landroid/content/pm/XmlSerializerAndParser;, "Landroid/content/pm/XmlSerializerAndParser<TV;>;"
    new-instance v1, Landroid/content/pm/RegisteredServicesCache$Injector;

    invoke-direct {v1, p1}, Landroid/content/pm/RegisteredServicesCache$Injector;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "interfaceName":Ljava/lang/String;
    .end local p3    # "metaDataName":Ljava/lang/String;
    .end local p4    # "attributeName":Ljava/lang/String;
    .end local p5    # "serializerAndParser":Landroid/content/pm/XmlSerializerAndParser;, "Landroid/content/pm/XmlSerializerAndParser<TV;>;"
    .local v2, "interfaceName":Ljava/lang/String;
    .local v3, "metaDataName":Ljava/lang/String;
    .local v4, "attributeName":Ljava/lang/String;
    .local v5, "serializerAndParser":Landroid/content/pm/XmlSerializerAndParser;, "Landroid/content/pm/XmlSerializerAndParser<TV;>;"
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/pm/RegisteredServicesCache$Injector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    .line 164
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/RegisteredServicesCache$Injector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V
    .registers 14
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "metaDataName"    # Ljava/lang/String;
    .param p4, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$Injector<",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/XmlSerializerAndParser<",
            "TV;>;)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "injector":Landroid/content/pm/RegisteredServicesCache$Injector;, "Landroid/content/pm/RegisteredServicesCache$Injector<TV;>;"
    .local p5, "serializerAndParser":Landroid/content/pm/XmlSerializerAndParser;, "Landroid/content/pm/XmlSerializerAndParser<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    .line 241
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$1;

    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$1;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$2;

    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$2;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$3;

    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$3;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    invoke-virtual {p1}, Landroid/content/pm/RegisteredServicesCache$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    .line 174
    iput-object p5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    .line 176
    invoke-direct {p0}, Landroid/content/pm/RegisteredServicesCache;->migrateIfNecessaryLocked()V

    .line 178
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    .line 180
    .local v0, "isCore":Z
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v1

    .line 181
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, "package"

    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 185
    const/16 v1, 0x3e8

    if-eqz v0, :cond_69

    .line 186
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 188
    :cond_69
    invoke-virtual {p1}, Landroid/content/pm/RegisteredServicesCache$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    .line 189
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 193
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v2, "sdFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    if-eqz v0, :cond_8f

    .line 197
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 199
    :cond_8f
    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v2, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 202
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v3, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    if-eqz v0, :cond_a8

    .line 205
    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 207
    :cond_a8
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v3, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method private greylist-max-o containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;TV;)Z"
        }
    .end annotation

    .line 686
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .local p2, "type":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "N":I
    :goto_5
    if-ge v0, v1, :cond_1a

    .line 687
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 688
    const/4 v2, 0x1

    return v2

    .line 686
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 692
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z
    .registers 8
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;TV;I)Z"
        }
    .end annotation

    .line 696
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .local p2, "type":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "N":I
    :goto_5
    if-ge v0, v1, :cond_1e

    .line 697
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 698
    .local v2, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v3, p3, :cond_1b

    .line 699
    const/4 v3, 0x1

    return v3

    .line 696
    .end local v2    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 703
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o containsUid([II)Z
    .registers 4
    .param p1, "changedUids"    # [I
    .param p2, "uid"    # I

    .line 682
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    if-eqz p1, :cond_b

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private greylist-max-o createFileForUser(I)Landroid/util/AtomicFile;
    .registers 6
    .param p1, "userId"    # I

    .line 889
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 890
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registered_services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 891
    .local v1, "userFile":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method private greylist-max-o findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;"
        }
    .end annotation

    .line 120
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "loadFromFileIfNew"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 126
    .local v0, "services":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    if-nez v0, :cond_63

    .line 127
    new-instance v1, Landroid/content/pm/RegisteredServicesCache$UserServices;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/pm/RegisteredServicesCache$UserServices;-><init>(Landroid/content/pm/RegisteredServicesCache-IA;)V

    move-object v0, v1

    .line 128
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    if-eqz p2, :cond_63

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-eqz v1, :cond_63

    .line 132
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUser(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 133
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_63

    .line 134
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v2

    .line 135
    .local v2, "file":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 139
    const/4 v3, 0x0

    .line 141
    .local v3, "is":Ljava/io/InputStream;
    :try_start_33
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v3, v4

    .line 142
    invoke-direct {p0, v3}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_42
    .catchall {:try_start_33 .. :try_end_3b} :catchall_40

    .line 146
    nop

    :goto_3c
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 147
    goto :goto_63

    .line 146
    :catchall_40
    move-exception v4

    goto :goto_5f

    .line 143
    :catch_42
    move-exception v4

    .line 144
    .local v4, "e":Ljava/lang/Exception;
    :try_start_43
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading persistent services for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_40

    .line 146
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_3c

    :goto_5f
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 147
    throw v4

    .line 152
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_63
    :goto_63
    return-object v0
.end method

.method private greylist-max-o generateServicesMap([II)V
    .registers 19
    .param p1, "changedUids"    # [I
    .param p2, "userId"    # I

    .line 515
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 516
    .local v3, "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    invoke-virtual {v1, v2}, Landroid/content/pm/RegisteredServicesCache;->queryIntentServices(I)Ljava/util/List;

    move-result-object v4

    .line 517
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, v1, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 518
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 520
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-wide/16 v8, -0x1

    .line 521
    .local v8, "lastUpdateTime":J
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 522
    .local v10, "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual {v10}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    .line 523
    .local v11, "componentName":Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->optimizeParsingInRegisteredServicesCache()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 525
    :try_start_33
    iget-object v0, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/high16 v12, 0xc0000

    invoke-virtual {v5, v0, v12, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 528
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_3d} :catch_3f

    move-wide v8, v12

    .line 531
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_58

    .line 529
    :catch_3f
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fail to get the PackageInfo in generateServicesMap: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_58
    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-ltz v0, :cond_68

    .line 533
    invoke-direct {v1, v2, v11, v8, v9}, Landroid/content/pm/RegisteredServicesCache;->getServiceInfoFromServiceCache(ILandroid/content/ComponentName;J)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    .line 535
    .local v0, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    if-eqz v0, :cond_68

    .line 536
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    goto :goto_18

    .line 542
    .end local v0    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :cond_68
    :try_start_68
    invoke-virtual {v1, v7, v8, v9}, Landroid/content/pm/RegisteredServicesCache;->parseServiceInfo(Landroid/content/pm/ResolveInfo;J)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    move-object v12, v0

    .line 543
    .local v12, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    if-nez v12, :cond_8c

    .line 544
    const-string v0, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to load service info "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    goto :goto_18

    .line 547
    :cond_8c
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->optimizeParsingInRegisteredServicesCache()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 549
    iget-object v13, v1, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    monitor-enter v13
    :try_end_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_68 .. :try_end_98} :catch_a3
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_98} :catch_a3

    .line 550
    :try_start_98
    iget-object v0, v1, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v2, v11, v12}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    monitor-exit v13

    goto :goto_a2

    :catchall_9f
    move-exception v0

    monitor-exit v13
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_9f

    .end local v3    # "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "lastUpdateTime":J
    .end local v10    # "si":Landroid/content/pm/ServiceInfo;
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .end local p1    # "changedUids":[I
    .end local p2    # "userId":I
    :try_start_a1
    throw v0
    :try_end_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a1 .. :try_end_a2} :catch_a3
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a2} :catch_a3

    .line 555
    .end local v12    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .restart local v3    # "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .restart local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "lastUpdateTime":J
    .restart local v10    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .restart local p1    # "changedUids":[I
    .restart local p2    # "userId":I
    :cond_a2
    :goto_a2
    goto :goto_c0

    .line 553
    :catch_a3
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to load service info "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "lastUpdateTime":J
    .end local v10    # "si":Landroid/content/pm/ServiceInfo;
    .end local v11    # "componentName":Landroid/content/ComponentName;
    :goto_c0
    goto/16 :goto_18

    .line 558
    :cond_c2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->optimizeParsingInRegisteredServicesCache()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 559
    iget-object v6, v1, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    monitor-enter v6

    .line 560
    :try_start_cb
    iget-object v0, v1, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    if-lez v0, :cond_e8

    .line 561
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 562
    .local v0, "token":Ljava/lang/Integer;
    iget-object v7, v1, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v7, v0}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 563
    iget-object v7, v1, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v8, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;

    invoke-direct {v8, v1, v2}, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;-><init>(Landroid/content/pm/RegisteredServicesCache;I)V

    const-wide/16 v9, 0x7530

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 567
    .end local v0    # "token":Ljava/lang/Integer;
    :cond_e8
    monitor-exit v6

    goto :goto_ed

    :catchall_ea
    move-exception v0

    monitor-exit v6
    :try_end_ec
    .catchall {:try_start_cb .. :try_end_ec} :catchall_ea

    throw v0

    .line 570
    :cond_ed
    :goto_ed
    iget-object v6, v1, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 571
    :try_start_f0
    invoke-direct {v1, v2}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v0

    .line 572
    .local v0, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v7, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v7, :cond_fa

    const/4 v7, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v7, 0x0

    .line 573
    .local v7, "firstScan":Z
    :goto_fb
    if-eqz v7, :cond_103

    .line 574
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 577
    :cond_103
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .local v10, "changes":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 579
    .local v11, "changed":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_10d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 589
    .local v13, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    iget-object v14, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    iget-object v15, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 590
    .local v14, "previousUid":Ljava/lang/Integer;
    if-nez v14, :cond_147

    .line 594
    const/4 v11, 0x1

    .line 595
    iget-object v15, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    iget-object v8, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v15, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v8, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    iget-object v15, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    iget v9, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-boolean v8, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->mPersistentServicesFileDidNotExist:Z

    if-eqz v8, :cond_140

    if-nez v7, :cond_16c

    .line 598
    :cond_140
    iget-object v8, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-direct {v1, v8, v2, v9}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    goto :goto_16c

    .line 600
    :cond_147
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v8, v9, :cond_157

    .line 604
    iget-object v8, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    iget-object v9, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v8, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16c

    .line 605
    :cond_157
    iget v8, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v1, v8}, Landroid/content/pm/RegisteredServicesCache;->inSystemImage(I)Z

    move-result v8

    if-nez v8, :cond_16f

    iget-object v8, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 606
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v1, v3, v8, v9}, Landroid/content/pm/RegisteredServicesCache;->containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z

    move-result v8

    if-nez v8, :cond_16c

    goto :goto_16f

    .line 627
    .end local v13    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v14    # "previousUid":Ljava/lang/Integer;
    :cond_16c
    :goto_16c
    move v8, v11

    const/4 v11, 0x0

    goto :goto_18a

    .line 616
    .restart local v13    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .restart local v14    # "previousUid":Ljava/lang/Integer;
    :cond_16f
    :goto_16f
    const/4 v8, 0x1

    .line 617
    .end local v11    # "changed":Z
    .local v8, "changed":Z
    iget-object v9, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    iget-object v11, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v9, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v9, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    iget-object v11, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    iget v15, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v9, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {v1, v9, v2, v11}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    .line 627
    .end local v13    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v14    # "previousUid":Ljava/lang/Integer;
    :goto_18a
    move v11, v8

    goto :goto_10d

    .line 629
    .end local v8    # "changed":Z
    .restart local v11    # "changed":Z
    :cond_18c
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 630
    .local v8, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    iget-object v9, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_19a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 633
    .local v12, "v1":Ljava/lang/Object;, "TV;"
    invoke-direct {v1, v3, v12}, Landroid/content/pm/RegisteredServicesCache;->containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c2

    iget-object v13, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 634
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_1b6
    .catchall {:try_start_f0 .. :try_end_1b6} :catchall_1ef

    move-object/from16 v14, p1

    :try_start_1b8
    invoke-direct {v1, v14, v13}, Landroid/content/pm/RegisteredServicesCache;->containsUid([II)Z

    move-result v13

    if-eqz v13, :cond_1c4

    .line 635
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c4

    .line 633
    :cond_1c2
    move-object/from16 v14, p1

    .line 637
    .end local v12    # "v1":Ljava/lang/Object;, "TV;"
    :cond_1c4
    :goto_1c4
    goto :goto_19a

    .line 638
    :cond_1c5
    move-object/from16 v14, p1

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1cb
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 642
    .restart local v12    # "v1":Ljava/lang/Object;, "TV;"
    const/4 v11, 0x1

    .line 643
    iget-object v13, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v13, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const/4 v13, 0x1

    invoke-direct {v1, v12, v2, v13}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    .line 646
    .end local v12    # "v1":Ljava/lang/Object;, "TV;"
    goto :goto_1cb

    .line 666
    :cond_1e5
    if-eqz v11, :cond_1ed

    .line 667
    invoke-virtual {v1, v2}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    .line 668
    invoke-direct {v1, v0, v2}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V

    .line 670
    .end local v0    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    .end local v7    # "firstScan":Z
    .end local v8    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    .end local v10    # "changes":Ljava/lang/StringBuilder;
    .end local v11    # "changed":Z
    :cond_1ed
    monitor-exit v6

    .line 671
    return-void

    .line 670
    :catchall_1ef
    move-exception v0

    move-object/from16 v14, p1

    :goto_1f2
    monitor-exit v6
    :try_end_1f3
    .catchall {:try_start_1b8 .. :try_end_1f3} :catchall_1f4

    throw v0

    :catchall_1f4
    move-exception v0

    goto :goto_1f2
.end method

.method private blacklist getServiceInfoFromServiceCache(ILandroid/content/ComponentName;J)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "lastUpdateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ComponentName;",
            "J)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;"
        }
    .end annotation

    .line 921
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 922
    :try_start_3
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 923
    .local v1, "serviceCache":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    if-eqz v1, :cond_15

    iget-wide v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->lastUpdateTime:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_15

    .line 924
    monitor-exit v0

    return-object v1

    .line 926
    :cond_15
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 927
    .end local v1    # "serviceCache":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private greylist-max-o handlePackageEvent(Landroid/content/Intent;I)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 214
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    if-nez v1, :cond_18

    .line 217
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    move v1, v2

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    .line 219
    .local v1, "isRemoval":Z
    :goto_19
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 221
    .local v2, "replacing":Z
    if-eqz v1, :cond_24

    if-eqz v2, :cond_24

    goto :goto_4c

    .line 225
    :cond_24
    const/4 v4, 0x0

    .line 228
    .local v4, "uids":[I
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 229
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_43

    .line 232
    :cond_34
    const-string v3, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 233
    .local v3, "uid":I
    if-lez v3, :cond_49

    .line 234
    filled-new-array {v3}, [I

    move-result-object v5

    move-object v4, v5

    goto :goto_49

    .line 230
    .end local v3    # "uid":I
    :cond_43
    :goto_43
    const-string v3, "android.intent.extra.changed_uid_list"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 237
    :cond_49
    :goto_49
    invoke-direct {p0, v4, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 239
    .end local v4    # "uids":[I
    :goto_4c
    return-void
.end method

.method static synthetic blacklist lambda$notifyListener$0(Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V
    .registers 7
    .param p0, "listener2"    # Landroid/content/pm/RegisteredServicesCacheListener;
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .line 325
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/pm/RegisteredServicesCacheListener;->onServiceChanged(Ljava/lang/Object;IZ)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 328
    goto :goto_c

    .line 326
    :catchall_4
    move-exception v0

    .line 327
    .local v0, "th":Ljava/lang/Throwable;
    const-string v1, "PackageManager"

    const-string v2, "Exception from onServiceChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_c
    return-void
.end method

.method private greylist-max-o migrateIfNecessaryLocked()V
    .registers 12

    .line 787
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const-string v0, "PackageManager"

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-nez v1, :cond_7

    .line 788
    return-void

    .line 790
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 791
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "registered_services"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 792
    .local v2, "syncDir":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 793
    .local v3, "oldFile":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    .line 795
    .local v4, "oldFileExists":Z
    if-eqz v4, :cond_bb

    .line 796
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml.migrated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 798
    .local v5, "marker":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_bb

    .line 802
    const/4 v6, 0x0

    .line 804
    .local v6, "is":Ljava/io/InputStream;
    :try_start_65
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    move-object v6, v7

    .line 805
    iget-object v7, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 806
    invoke-direct {p0, v6}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_72} :catch_79
    .catchall {:try_start_65 .. :try_end_72} :catchall_77

    .line 810
    nop

    :goto_73
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 811
    goto :goto_81

    .line 810
    :catchall_77
    move-exception v0

    goto :goto_b7

    .line 807
    :catch_79
    move-exception v7

    .line 808
    .local v7, "e":Ljava/lang/Exception;
    :try_start_7a
    const-string v8, "Error reading persistent services, starting from scratch"

    invoke-static {v0, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_77

    .line 810
    nop

    .end local v7    # "e":Ljava/lang/Exception;
    goto :goto_73

    .line 813
    :goto_81
    :try_start_81
    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->getUsers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_89
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 814
    .local v8, "user":Landroid/content/pm/UserInfo;
    iget-object v9, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 815
    .local v9, "userServices":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    if-eqz v9, :cond_a6

    .line 820
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9, v10}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V

    .line 822
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userServices":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_a6
    goto :goto_89

    .line 823
    :cond_a7
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_aa} :catch_ab

    .line 826
    goto :goto_b1

    .line 824
    :catch_ab
    move-exception v7

    .line 825
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v8, "Migration failed"

    invoke-static {v0, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_b1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_bb

    .line 810
    :goto_b7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 811
    throw v0

    .line 832
    .end local v5    # "marker":Ljava/io/File;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_bb
    :goto_bb
    return-void
.end method

.method private greylist-max-o notifyListener(Ljava/lang/Object;IZ)V
    .registers 8
    .param p2, "userId"    # I
    .param p3, "removed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IZ)V"
        }
    .end annotation

    .line 314
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "type":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 315
    :try_start_1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    .line 316
    .local v0, "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    .line 317
    .local v1, "handler":Landroid/os/Handler;
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13

    .line 318
    if-nez v0, :cond_9

    .line 319
    return-void

    .line 322
    :cond_9
    move-object v2, v0

    .line 323
    .local v2, "listener2":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    new-instance v3, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p1, p2, p3}, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void

    .line 317
    .end local v0    # "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "listener2":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private greylist-max-o readPersistentServicesLocked(Ljava/io/InputStream;)V
    .registers 13
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 758
    .local v0, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 759
    .local v1, "eventType":I
    :goto_8
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_13

    if-eq v1, v2, :cond_13

    .line 761
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    goto :goto_8

    .line 763
    :cond_13
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 764
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "services"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 765
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    .line 767
    :cond_24
    if-ne v1, v3, :cond_5c

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v3, :cond_5c

    .line 768
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 769
    const-string/jumbo v5, "service"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 770
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    invoke-interface {v5, v0}, Landroid/content/pm/XmlSerializerAndParser;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/Object;

    move-result-object v5

    .line 771
    .local v5, "service":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_42

    .line 772
    goto :goto_62

    .line 774
    :cond_42
    const/4 v6, 0x0

    const-string/jumbo v7, "uid"

    invoke-interface {v0, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 775
    .local v6, "uid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 776
    .local v7, "userId":I
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v8

    .line 778
    .local v8, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .end local v5    # "service":Ljava/lang/Object;, "TV;"
    .end local v6    # "uid":I
    .end local v7    # "userId":I
    .end local v8    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_5c
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    .line 782
    if-ne v1, v2, :cond_24

    .line 784
    :cond_62
    :goto_62
    return-void
.end method

.method private greylist-max-o writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V
    .registers 13
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;I)V"
        }
    .end annotation

    .line 838
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    const-string/jumbo v0, "service"

    const-string/jumbo v1, "services"

    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-nez v2, :cond_b

    .line 839
    return-void

    .line 841
    :cond_b
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v2

    .line 842
    .local v2, "atomicFile":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 844
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_10
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 845
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    .line 846
    .local v4, "out":Lcom/android/modules/utils/TypedXmlSerializer;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 847
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 848
    invoke-interface {v4, v7, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 849
    iget-object v5, p1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 850
    .local v6, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;Ljava/lang/Integer;>;"
    invoke-interface {v4, v7, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 851
    const-string/jumbo v8, "uid"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v4, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Landroid/content/pm/XmlSerializerAndParser;->writeAsXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 853
    invoke-interface {v4, v7, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    nop

    .end local v6    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;Ljava/lang/Integer;>;"
    goto :goto_35

    .line 855
    :cond_62
    invoke-interface {v4, v7, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 856
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 857
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_6b} :catch_6c

    .line 863
    .end local v4    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    goto :goto_79

    .line 858
    :catch_6c
    move-exception v0

    .line 859
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "PackageManager"

    const-string v4, "Error writing accounts"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 860
    if-eqz v3, :cond_79

    .line 861
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 864
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_79
    :goto_79
    return-void
.end method


# virtual methods
.method public greylist-max-o dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "userId"    # I

    .line 279
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    invoke-direct {p0, p4}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 281
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-eqz v2, :cond_5b

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisteredServicesCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " services"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 284
    .local v3, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    .end local v3    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    goto :goto_37

    :cond_5a
    goto :goto_60

    .line 287
    :cond_5b
    const-string v2, "RegisteredServicesCache: services not loaded"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :goto_60
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public greylist-max-o getAllServices(I)Ljava/util/Collection;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;"
        }
    .end annotation

    .line 388
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_3
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 391
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v2, :cond_f

    .line 392
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 394
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 395
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 394
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 396
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public greylist-max-o getBindInstantServiceAllowed(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 444
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string v2, "getBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_c
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 450
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-boolean v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->mBindInstantServiceAllowed:Z

    monitor-exit v0

    return v2

    .line 451
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v1
.end method

.method protected greylist-max-o getDataDirectory()Ljava/io/File;
    .registers 2

    .line 901
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getListener()Landroid/content/pm/RegisteredServicesCacheListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    monitor-enter p0

    .line 294
    :try_start_1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    monitor-exit p0

    return-object v0

    .line 295
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method protected greylist-max-o getPersistentServices(I)Ljava/util/Map;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 906
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    return-object v0
.end method

.method public greylist-max-o getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;"
        }
    .end annotation

    .line 373
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "type":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 376
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v2, :cond_f

    .line 377
    const/4 v2, 0x0

    invoke-direct {p0, v2, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 379
    :cond_f
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    monitor-exit v0

    return-object v2

    .line 380
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method protected greylist-max-o getUser(I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"    # I

    .line 885
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o getUserSystemDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 896
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o getUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 880
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o inSystemImage(I)Z
    .registers 10
    .param p1, "callerUid"    # I

    .line 470
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "packages":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 472
    array-length v2, v0

    move v3, v1

    :goto_f
    if-ge v3, v2, :cond_2c

    aget-object v4, v0, v3

    .line 474
    .local v4, "name":Ljava/lang/String;
    :try_start_13
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 475
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 476
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_21} :catch_2a

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_26

    .line 477
    return v7

    .line 481
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_26
    nop

    .line 472
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 479
    .restart local v4    # "name":Ljava/lang/String;
    :catch_2a
    move-exception v2

    .line 480
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1

    .line 484
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2c
    return v1
.end method

.method public greylist-max-o invalidateCache(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 271
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 273
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 274
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    .line 275
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method protected greylist-max-o onServicesChangedLocked(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 675
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    return-void
.end method

.method protected greylist-max-o onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 868
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 869
    :try_start_3
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 870
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    .line 871
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->optimizeParsingInRegisteredServicesCache()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 872
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 873
    :try_start_12
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 874
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v1

    .line 876
    :cond_1c
    :goto_1c
    return-void

    .line 870
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public abstract greylist-max-o parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TV;"
        }
    .end annotation
.end method

.method protected blacklist parseServiceInfo(Landroid/content/pm/ResolveInfo;J)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .registers 15
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "lastUpdateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "J)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 714
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .local v3, "componentName":Landroid/content/ComponentName;
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 718
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 720
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_12
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_18} :catch_b5
    .catchall {:try_start_12 .. :try_end_18} :catchall_b1

    move-object v7, v0

    .line 721
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v7, :cond_87

    .line 725
    :try_start_1b
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v8, v0

    .line 728
    .local v8, "attrs":Landroid/util/AttributeSet;
    :goto_20
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v9, v0

    .local v9, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v0, 0x2

    if-eq v9, v0, :cond_2c

    goto :goto_20

    .line 732
    :cond_2c
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 733
    .local v10, "nodeName":Ljava/lang/String;
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 738
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v8}, Landroid/content/pm/RegisteredServicesCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_45} :catch_82
    .catchall {:try_start_1b .. :try_end_45} :catchall_7d

    .line 740
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_4f

    .line 741
    nop

    .line 748
    if-eqz v7, :cond_4d

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 741
    :cond_4d
    const/4 v0, 0x0

    return-object v0

    .line 743
    :cond_4f
    :try_start_4f
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :try_end_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_51} :catch_82
    .catchall {:try_start_4f .. :try_end_51} :catchall_7d

    move-wide v4, p2

    .end local p2    # "lastUpdateTime":J
    .local v4, "lastUpdateTime":J
    :try_start_52
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/pm/ComponentInfo;Landroid/content/ComponentName;J)V
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_55} :catch_ad
    .catchall {:try_start_52 .. :try_end_55} :catchall_a9

    .line 748
    if-eqz v7, :cond_5a

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 743
    :cond_5a
    return-object v0

    .line 734
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "lastUpdateTime":J
    .restart local p2    # "lastUpdateTime":J
    :cond_5b
    move-wide v4, p2

    .end local p2    # "lastUpdateTime":J
    .restart local v4    # "lastUpdateTime":J
    :try_start_5c
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Meta-data does not start with "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " tag"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v2    # "si":Landroid/content/pm/ServiceInfo;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "lastUpdateTime":J
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .end local p1    # "service":Landroid/content/pm/ResolveInfo;
    throw p2

    .line 748
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "type":I
    .end local v10    # "nodeName":Ljava/lang/String;
    .restart local v2    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .restart local p1    # "service":Landroid/content/pm/ResolveInfo;
    .restart local p2    # "lastUpdateTime":J
    :catchall_7d
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    move-object v1, v7

    .end local p2    # "lastUpdateTime":J
    .restart local v4    # "lastUpdateTime":J
    goto :goto_d5

    .line 744
    .end local v4    # "lastUpdateTime":J
    .restart local p2    # "lastUpdateTime":J
    :catch_82
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    move-object v1, v7

    .end local p2    # "lastUpdateTime":J
    .restart local v4    # "lastUpdateTime":J
    goto :goto_b8

    .line 722
    .end local v4    # "lastUpdateTime":J
    .restart local p2    # "lastUpdateTime":J
    :cond_87
    move-wide v4, p2

    .end local p2    # "lastUpdateTime":J
    .restart local v4    # "lastUpdateTime":J
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " meta-data"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v2    # "si":Landroid/content/pm/ServiceInfo;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "lastUpdateTime":J
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .end local p1    # "service":Landroid/content/pm/ResolveInfo;
    throw p2
    :try_end_a9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_a9} :catch_ad
    .catchall {:try_start_5c .. :try_end_a9} :catchall_a9

    .line 748
    .restart local v2    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "lastUpdateTime":J
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .restart local p1    # "service":Landroid/content/pm/ResolveInfo;
    :catchall_a9
    move-exception v0

    move-object p2, v0

    move-object v1, v7

    goto :goto_d5

    .line 744
    :catch_ad
    move-exception v0

    move-object p2, v0

    move-object v1, v7

    goto :goto_b8

    .line 748
    .end local v4    # "lastUpdateTime":J
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    .restart local p2    # "lastUpdateTime":J
    :catchall_b1
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    .end local p2    # "lastUpdateTime":J
    .restart local v4    # "lastUpdateTime":J
    goto :goto_d5

    .line 744
    .end local v4    # "lastUpdateTime":J
    .restart local p2    # "lastUpdateTime":J
    :catch_b5
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    .line 745
    .restart local v4    # "lastUpdateTime":J
    .local p2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_b8
    :try_start_b8
    new-instance p3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load resources for pacakge "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "si":Landroid/content/pm/ServiceInfo;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "lastUpdateTime":J
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .end local p1    # "service":Landroid/content/pm/ResolveInfo;
    throw p3
    :try_end_d3
    .catchall {:try_start_b8 .. :try_end_d3} :catchall_d3

    .line 748
    .end local p2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "lastUpdateTime":J
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .restart local p1    # "service":Landroid/content/pm/ResolveInfo;
    :catchall_d3
    move-exception v0

    move-object p2, v0

    :goto_d5
    if-eqz v1, :cond_da

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 749
    :cond_da
    throw p2
.end method

.method protected greylist-max-o queryIntentServices(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 489
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 490
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const v1, 0xc0080

    .line 493
    .local v1, "flags":I
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 494
    :try_start_c
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v3

    .line 495
    .local v3, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-boolean v4, v3, Landroid/content/pm/RegisteredServicesCache$UserServices;->mBindInstantServiceAllowed:Z

    if-eqz v4, :cond_17

    .line 496
    const/high16 v4, 0x800000

    or-int/2addr v1, v4

    .line 498
    .end local v3    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_24

    .line 499
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 498
    :catchall_24
    move-exception v3

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v3
.end method

.method public greylist-max-o setBindInstantServiceAllowed(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "allowed"    # Z

    .line 458
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v2, "setBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_d
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 464
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iput-boolean p2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->mBindInstantServiceAllowed:Z

    .line 465
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    monitor-exit v0

    .line 466
    return-void

    .line 465
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v1
.end method

.method public greylist-max-o setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 299
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    if-nez p2, :cond_6

    .line 300
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    .line 302
    :cond_6
    monitor-enter p0

    .line 303
    :try_start_7
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    .line 304
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    .line 305
    monitor-exit p0

    .line 306
    return-void

    .line 305
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public blacklist unregisterReceivers()V
    .registers 3

    .line 914
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 915
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 916
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 917
    return-void
.end method

.method public greylist-max-o updateServices(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 404
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 407
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v2, :cond_d

    .line 408
    monitor-exit v0

    return-void

    .line 410
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 411
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    .local v2, "allServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_6b

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "updatedUids":Landroid/util/IntArray;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 414
    .local v3, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    int-to-long v4, v4

    .line 415
    .local v4, "versionCode":J
    iget-object v6, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 416
    .local v6, "pkg":Ljava/lang/String;
    const/4 v7, 0x0

    .line 418
    .local v7, "newAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_36
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_36 .. :try_end_41} :catch_43

    move-object v7, v8

    .line 421
    goto :goto_44

    .line 419
    :catch_43
    move-exception v8

    .line 423
    :goto_44
    if-eqz v7, :cond_4d

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->versionCode:I

    int-to-long v8, v8

    cmp-long v8, v8, v4

    if-eqz v8, :cond_5a

    .line 428
    :cond_4d
    if-nez v0, :cond_55

    .line 429
    new-instance v8, Landroid/util/IntArray;

    invoke-direct {v8}, Landroid/util/IntArray;-><init>()V

    move-object v0, v8

    .line 431
    :cond_55
    iget v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v0, v8}, Landroid/util/IntArray;->add(I)V

    .line 433
    .end local v3    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v4    # "versionCode":J
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "newAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5a
    goto :goto_1e

    .line 434
    :cond_5b
    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_6a

    .line 435
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    .line 436
    .local v1, "updatedUidsArray":[I
    invoke-direct {p0, v1, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 438
    .end local v1    # "updatedUidsArray":[I
    :cond_6a
    return-void

    .line 411
    .end local v0    # "updatedUids":Landroid/util/IntArray;
    .end local v2    # "allServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    :catchall_6b
    move-exception v1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v1
.end method

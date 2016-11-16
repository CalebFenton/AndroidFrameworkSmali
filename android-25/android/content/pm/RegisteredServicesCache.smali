.class public abstract Landroid/content/pm/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/RegisteredServicesCache$1;,
        Landroid/content/pm/RegisteredServicesCache$2;,
        Landroid/content/pm/RegisteredServicesCache$3;,
        Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,
        Landroid/content/pm/RegisteredServicesCache$UserServices;
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
.field private static final DEBUG:Z = false

.field protected static final REGISTERED_SERVICES_DIR:Ljava/lang/String; = "registered_services"

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private final mAttributesName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field private final mExternalReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private final mInterfaceName:Ljava/lang/String;

.field private mListener:Landroid/content/pm/RegisteredServicesCacheListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/RegisteredServicesCacheListener",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mMetaDataName:Ljava/lang/String;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/XmlSerializerAndParser",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected final mServicesLock:Ljava/lang/Object;

.field private final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/RegisteredServicesCache$UserServices",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/RegisteredServicesCache;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/pm/RegisteredServicesCache;->handlePackageEvent(Landroid/content/Intent;I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V
    .locals 8
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
            "Landroid/content/pm/XmlSerializerAndParser",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p5, "serializerAndParser":Landroid/content/pm/XmlSerializerAndParser;, "Landroid/content/pm/XmlSerializerAndParser<TV;>;"
    const/4 v4, 0x0

    #@1
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 89
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@b
    .line 92
    new-instance v0, Landroid/util/SparseArray;

    #@d
    const/4 v1, 0x2

    #@e
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@11
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@13
    .line 204
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$1;

    #@15
    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$1;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    #@18
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    .line 214
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$2;

    #@1c
    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$2;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    #@1f
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    #@21
    .line 222
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$3;

    #@23
    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$3;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    #@26
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@28
    .line 146
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@2a
    .line 147
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    #@2c
    .line 148
    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    #@2e
    .line 149
    iput-object p4, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    #@30
    .line 150
    iput-object p5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@32
    .line 152
    invoke-direct {p0}, Landroid/content/pm/RegisteredServicesCache;->migrateIfNecessaryLocked()V

    #@35
    .line 154
    new-instance v3, Landroid/content/IntentFilter;

    #@37
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@3a
    .line 155
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    #@3d
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@40
    .line 156
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    #@43
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@46
    .line 157
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@49
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@4c
    .line 158
    const-string/jumbo v0, "package"

    #@4f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@52
    .line 159
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@54
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    #@56
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@58
    move-object v5, v4

    #@59
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@5c
    .line 162
    new-instance v6, Landroid/content/IntentFilter;

    #@5e
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@61
    .line 163
    .local v6, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@64
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@67
    .line 164
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@6a
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@6d
    .line 165
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@6f
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    #@71
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@74
    .line 168
    new-instance v7, Landroid/content/IntentFilter;

    #@76
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@79
    .line 169
    .local v7, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@7c
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7f
    .line 170
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@81
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@83
    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@86
    .line 145
    return-void
.end method

.method private containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;>;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 560
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .local p2, "type":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v0

    #@5
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 561
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@d
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@f
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 562
    const/4 v2, 0x1

    #@16
    return v2

    #@17
    .line 560
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 566
    :cond_1
    const/4 v2, 0x0

    #@1b
    return v2
.end method

.method private containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z
    .locals 4
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;>;TV;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 570
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .local p2, "type":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v0

    #@5
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 571
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@d
    .line 572
    .local v2, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@f
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    iget v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@17
    if-ne v3, p3, :cond_0

    #@19
    .line 573
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 570
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 577
    .end local v2    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :cond_1
    const/4 v3, 0x0

    #@1f
    return v3
.end method

.method private containsUid([II)Z
    .locals 1
    .param p1, "changedUids"    # [I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 556
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method private createFileForUser(I)Landroid/util/AtomicFile;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 758
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUserSystemDirectory(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 759
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "registered_services/"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, ".xml"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@26
    .line 760
    .local v1, "userFile":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    #@28
    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@2b
    return-object v2
.end method

.method private findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/RegisteredServicesCache$UserServices",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 105
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "loadFromFileIfNew"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/RegisteredServicesCache$UserServices",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const/4 v6, 0x0

    #@1
    .line 110
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@9
    .line 111
    .local v3, "services":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    if-nez v3, :cond_0

    #@b
    .line 112
    new-instance v3, Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@d
    .end local v3    # "services":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    invoke-direct {v3, v6}, Landroid/content/pm/RegisteredServicesCache$UserServices;-><init>(Landroid/content/pm/RegisteredServicesCache$UserServices;)V

    #@10
    .line 113
    .restart local v3    # "services":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v5, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@15
    .line 114
    if-eqz p2, :cond_0

    #@17
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@19
    if-eqz v5, :cond_0

    #@1b
    .line 117
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUser(I)Landroid/content/pm/UserInfo;

    #@1e
    move-result-object v4

    #@1f
    .line 118
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_0

    #@21
    .line 119
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    #@23
    invoke-direct {p0, v5}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    #@26
    move-result-object v1

    #@27
    .line 120
    .local v1, "file":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_0

    #@31
    .line 124
    const/4 v2, 0x0

    #@32
    .line 126
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@35
    move-result-object v2

    #@36
    .line 127
    .local v2, "is":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 131
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3c
    .line 137
    .end local v1    # "file":Landroid/util/AtomicFile;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    return-object v3

    #@3d
    .line 128
    .restart local v1    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    #@3e
    .line 129
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "PackageManager"

    #@41
    new-instance v6, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v7, "Error reading persistent services for user "

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .line 131
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5d
    goto :goto_0

    #@5e
    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@5f
    .line 131
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@62
    .line 130
    throw v5
.end method

.method private generateServicesMap([II)V
    .locals 23
    .param p1, "changedUids"    # [I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 429
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    new-instance v14, Ljava/util/ArrayList;

    #@2
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 430
    .local v14, "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    move-object/from16 v0, p0

    #@7
    move/from16 v1, p2

    #@9
    invoke-virtual {v0, v1}, Landroid/content/pm/RegisteredServicesCache;->queryIntentServices(I)Ljava/util/List;

    #@c
    move-result-object v13

    #@d
    .line 431
    .local v13, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v12

    #@11
    .local v12, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v19

    #@15
    if-eqz v19, :cond_1

    #@17
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v11

    #@1b
    check-cast v11, Landroid/content/pm/ResolveInfo;

    #@1d
    .line 433
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v11}, Landroid/content/pm/RegisteredServicesCache;->parseServiceInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@22
    move-result-object v8

    #@23
    .line 434
    .local v8, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    if-nez v8, :cond_0

    #@25
    .line 435
    const-string/jumbo v19, "PackageManager"

    #@28
    new-instance v20, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v21, "Unable to load service info "

    #@30
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v20

    #@34
    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    #@37
    move-result-object v21

    #@38
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v20

    #@3c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v20

    #@40
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    goto :goto_0

    #@44
    .line 439
    .end local v8    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :catch_0
    move-exception v6

    #@45
    .line 440
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "PackageManager"

    #@48
    new-instance v20, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v21, "Unable to load service info "

    #@50
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v20

    #@54
    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    #@57
    move-result-object v21

    #@58
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v20

    #@5c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v20

    #@60
    move-object/from16 v0, v19

    #@62
    move-object/from16 v1, v20

    #@64
    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    goto :goto_0

    #@68
    .line 438
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@6b
    goto :goto_0

    #@6c
    .line 444
    .end local v8    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@70
    move-object/from16 v20, v0

    #@72
    monitor-enter v20

    #@73
    .line 445
    :try_start_2
    move-object/from16 v0, p0

    #@75
    move/from16 v1, p2

    #@77
    invoke-direct {v0, v1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@7a
    move-result-object v16

    #@7b
    .line 446
    .local v16, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    move-object/from16 v0, v16

    #@7d
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@7f
    move-object/from16 v19, v0

    #@81
    if-nez v19, :cond_4

    #@83
    const/4 v7, 0x1

    #@84
    .line 447
    .local v7, "firstScan":Z
    :goto_1
    if-eqz v7, :cond_2

    #@86
    .line 448
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@89
    move-result-object v19

    #@8a
    move-object/from16 v0, v19

    #@8c
    move-object/from16 v1, v16

    #@8e
    iput-object v0, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@90
    .line 451
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    .line 452
    .local v5, "changes":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@96
    .line 453
    .local v4, "changed":Z
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@99
    move-result-object v9

    #@9a
    .local v9, "info$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@9d
    move-result v19

    #@9e
    if-eqz v19, :cond_9

    #@a0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a3
    move-result-object v8

    #@a4
    check-cast v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@a6
    .line 463
    .restart local v8    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    move-object/from16 v0, v16

    #@a8
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    #@aa
    move-object/from16 v19, v0

    #@ac
    iget-object v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@ae
    move-object/from16 v21, v0

    #@b0
    move-object/from16 v0, v19

    #@b2
    move-object/from16 v1, v21

    #@b4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    move-result-object v10

    #@b8
    check-cast v10, Ljava/lang/Integer;

    #@ba
    .line 464
    .local v10, "previousUid":Ljava/lang/Integer;
    if-nez v10, :cond_6

    #@bc
    .line 468
    const/4 v4, 0x1

    #@bd
    .line 469
    move-object/from16 v0, v16

    #@bf
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@c1
    move-object/from16 v19, v0

    #@c3
    iget-object v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@c5
    move-object/from16 v21, v0

    #@c7
    move-object/from16 v0, v19

    #@c9
    move-object/from16 v1, v21

    #@cb
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    .line 470
    move-object/from16 v0, v16

    #@d0
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    #@d2
    move-object/from16 v19, v0

    #@d4
    iget-object v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@d6
    move-object/from16 v21, v0

    #@d8
    iget v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@da
    move/from16 v22, v0

    #@dc
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@df
    move-result-object v22

    #@e0
    move-object/from16 v0, v19

    #@e2
    move-object/from16 v1, v21

    #@e4
    move-object/from16 v2, v22

    #@e6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e9
    .line 471
    move-object/from16 v0, v16

    #@eb
    iget-boolean v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->mPersistentServicesFileDidNotExist:Z

    #@ed
    move/from16 v19, v0

    #@ef
    if-eqz v19, :cond_5

    #@f1
    move/from16 v19, v7

    #@f3
    :goto_3
    if-nez v19, :cond_3

    #@f5
    .line 472
    iget-object v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@f7
    move-object/from16 v19, v0

    #@f9
    const/16 v21, 0x0

    #@fb
    move-object/from16 v0, p0

    #@fd
    move-object/from16 v1, v19

    #@ff
    move/from16 v2, p2

    #@101
    move/from16 v3, v21

    #@103
    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@106
    goto :goto_2

    #@107
    .line 444
    .end local v4    # "changed":Z
    .end local v5    # "changes":Ljava/lang/StringBuilder;
    .end local v7    # "firstScan":Z
    .end local v8    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v9    # "info$iterator":Ljava/util/Iterator;
    .end local v10    # "previousUid":Ljava/lang/Integer;
    .end local v16    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_0
    move-exception v19

    #@108
    monitor-exit v20

    #@109
    throw v19

    #@10a
    .line 446
    .restart local v16    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_4
    const/4 v7, 0x0

    #@10b
    .restart local v7    # "firstScan":Z
    goto/16 :goto_1

    #@10d
    .line 471
    .restart local v4    # "changed":Z
    .restart local v5    # "changes":Ljava/lang/StringBuilder;
    .restart local v8    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .restart local v9    # "info$iterator":Ljava/util/Iterator;
    .restart local v10    # "previousUid":Ljava/lang/Integer;
    :cond_5
    const/16 v19, 0x0

    #@10f
    goto :goto_3

    #@110
    .line 474
    :cond_6
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@113
    move-result v19

    #@114
    iget v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@116
    move/from16 v21, v0

    #@118
    move/from16 v0, v19

    #@11a
    move/from16 v1, v21

    #@11c
    if-ne v0, v1, :cond_7

    #@11e
    .line 478
    move-object/from16 v0, v16

    #@120
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@122
    move-object/from16 v19, v0

    #@124
    iget-object v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@126
    move-object/from16 v21, v0

    #@128
    move-object/from16 v0, v19

    #@12a
    move-object/from16 v1, v21

    #@12c
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12f
    goto/16 :goto_2

    #@131
    .line 479
    :cond_7
    iget v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@133
    move/from16 v19, v0

    #@135
    move-object/from16 v0, p0

    #@137
    move/from16 v1, v19

    #@139
    invoke-virtual {v0, v1}, Landroid/content/pm/RegisteredServicesCache;->inSystemImage(I)Z

    #@13c
    move-result v19

    #@13d
    if-nez v19, :cond_8

    #@13f
    .line 480
    iget-object v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@141
    move-object/from16 v19, v0

    #@143
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@146
    move-result v21

    #@147
    move-object/from16 v0, p0

    #@149
    move-object/from16 v1, v19

    #@14b
    move/from16 v2, v21

    #@14d
    invoke-direct {v0, v14, v1, v2}, Landroid/content/pm/RegisteredServicesCache;->containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z

    #@150
    move-result v19

    #@151
    if-nez v19, :cond_3

    #@153
    .line 490
    :cond_8
    const/4 v4, 0x1

    #@154
    .line 491
    move-object/from16 v0, v16

    #@156
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@158
    move-object/from16 v19, v0

    #@15a
    iget-object v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@15c
    move-object/from16 v21, v0

    #@15e
    move-object/from16 v0, v19

    #@160
    move-object/from16 v1, v21

    #@162
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@165
    .line 492
    move-object/from16 v0, v16

    #@167
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    #@169
    move-object/from16 v19, v0

    #@16b
    iget-object v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@16d
    move-object/from16 v21, v0

    #@16f
    iget v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@171
    move/from16 v22, v0

    #@173
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@176
    move-result-object v22

    #@177
    move-object/from16 v0, v19

    #@179
    move-object/from16 v1, v21

    #@17b
    move-object/from16 v2, v22

    #@17d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@180
    .line 493
    iget-object v0, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@182
    move-object/from16 v19, v0

    #@184
    const/16 v21, 0x0

    #@186
    move-object/from16 v0, p0

    #@188
    move-object/from16 v1, v19

    #@18a
    move/from16 v2, p2

    #@18c
    move/from16 v3, v21

    #@18e
    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    #@191
    goto/16 :goto_2

    #@193
    .line 503
    .end local v8    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v10    # "previousUid":Ljava/lang/Integer;
    :cond_9
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@196
    move-result-object v15

    #@197
    .line 504
    .local v15, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    move-object/from16 v0, v16

    #@199
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    #@19b
    move-object/from16 v19, v0

    #@19d
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1a0
    move-result-object v19

    #@1a1
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a4
    move-result-object v18

    #@1a5
    .local v18, "v1$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@1a8
    move-result v19

    #@1a9
    if-eqz v19, :cond_b

    #@1ab
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ae
    move-result-object v17

    #@1af
    .line 507
    .local v17, "v1":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    #@1b1
    move-object/from16 v1, v17

    #@1b3
    invoke-direct {v0, v14, v1}, Landroid/content/pm/RegisteredServicesCache;->containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    #@1b6
    move-result v19

    #@1b7
    if-nez v19, :cond_a

    #@1b9
    .line 508
    move-object/from16 v0, v16

    #@1bb
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    #@1bd
    move-object/from16 v19, v0

    #@1bf
    move-object/from16 v0, v19

    #@1c1
    move-object/from16 v1, v17

    #@1c3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c6
    move-result-object v19

    #@1c7
    check-cast v19, Ljava/lang/Integer;

    #@1c9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    #@1cc
    move-result v19

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    move-object/from16 v1, p1

    #@1d1
    move/from16 v2, v19

    #@1d3
    invoke-direct {v0, v1, v2}, Landroid/content/pm/RegisteredServicesCache;->containsUid([II)Z

    #@1d6
    move-result v19

    #@1d7
    .line 507
    if-eqz v19, :cond_a

    #@1d9
    .line 509
    move-object/from16 v0, v17

    #@1db
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1de
    goto :goto_4

    #@1df
    .line 512
    .end local v17    # "v1":Ljava/lang/Object;, "TV;"
    :cond_b
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e2
    move-result-object v18

    #@1e3
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@1e6
    move-result v19

    #@1e7
    if-eqz v19, :cond_c

    #@1e9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ec
    move-result-object v17

    #@1ed
    .line 516
    .restart local v17    # "v1":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x1

    #@1ee
    .line 517
    move-object/from16 v0, v16

    #@1f0
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    #@1f2
    move-object/from16 v19, v0

    #@1f4
    move-object/from16 v0, v19

    #@1f6
    move-object/from16 v1, v17

    #@1f8
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1fb
    .line 518
    move-object/from16 v0, v16

    #@1fd
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@1ff
    move-object/from16 v19, v0

    #@201
    move-object/from16 v0, v19

    #@203
    move-object/from16 v1, v17

    #@205
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@208
    .line 519
    const/16 v19, 0x1

    #@20a
    move-object/from16 v0, p0

    #@20c
    move-object/from16 v1, v17

    #@20e
    move/from16 v2, p2

    #@210
    move/from16 v3, v19

    #@212
    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    #@215
    goto :goto_5

    #@216
    .line 540
    .end local v17    # "v1":Ljava/lang/Object;, "TV;"
    :cond_c
    if-eqz v4, :cond_d

    #@218
    .line 541
    move-object/from16 v0, p0

    #@21a
    move/from16 v1, p2

    #@21c
    invoke-virtual {v0, v1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    #@21f
    .line 542
    move-object/from16 v0, p0

    #@221
    move-object/from16 v1, v16

    #@223
    move/from16 v2, p2

    #@225
    invoke-direct {v0, v1, v2}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@228
    :cond_d
    monitor-exit v20

    #@229
    .line 423
    return-void
.end method

.method private final handlePackageEvent(Landroid/content/Intent;I)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const/4 v7, 0x0

    #@1
    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 179
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    #@8
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    .line 180
    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@11
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    .line 182
    :goto_0
    const-string/jumbo v5, "android.intent.extra.REPLACING"

    #@18
    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@1b
    move-result v2

    #@1c
    .line 184
    .local v2, "replacing":Z
    if-eqz v1, :cond_1

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 173
    :goto_1
    return-void

    #@21
    .line 179
    .end local v2    # "replacing":Z
    :cond_0
    const/4 v1, 0x1

    #@22
    .local v1, "isRemoval":Z
    goto :goto_0

    #@23
    .line 188
    .end local v1    # "isRemoval":Z
    .restart local v2    # "replacing":Z
    :cond_1
    const/4 v4, 0x0

    #@24
    .line 191
    .local v4, "uids":[I
    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@27
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_2

    #@2d
    .line 192
    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@30
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v5

    #@34
    .line 191
    if-eqz v5, :cond_4

    #@36
    .line 193
    :cond_2
    const-string/jumbo v5, "android.intent.extra.changed_uid_list"

    #@39
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    #@3c
    move-result-object v4

    #@3d
    .line 200
    .end local v4    # "uids":[I
    :cond_3
    :goto_2
    invoke-direct {p0, v4, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    #@40
    goto :goto_1

    #@41
    .line 195
    .restart local v4    # "uids":[I
    :cond_4
    const-string/jumbo v5, "android.intent.extra.UID"

    #@44
    const/4 v6, -0x1

    #@45
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@48
    move-result v3

    #@49
    .line 196
    .local v3, "uid":I
    if-lez v3, :cond_3

    #@4b
    .line 197
    const/4 v5, 0x1

    #@4c
    new-array v4, v5, [I

    #@4e
    .end local v4    # "uids":[I
    aput v3, v4, v7

    #@50
    .local v4, "uids":[I
    goto :goto_2
.end method

.method private migrateIfNecessaryLocked()V
    .locals 13

    #@0
    .prologue
    .line 660
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@2
    if-nez v10, :cond_0

    #@4
    .line 661
    return-void

    #@5
    .line 663
    :cond_0
    new-instance v6, Ljava/io/File;

    #@7
    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->getDataDirectory()Ljava/io/File;

    #@a
    move-result-object v10

    #@b
    const-string/jumbo v11, "system"

    #@e
    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@11
    .line 664
    .local v6, "systemDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    #@13
    const-string/jumbo v10, "registered_services"

    #@16
    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@19
    .line 665
    .local v5, "syncDir":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    #@1b
    new-instance v10, Ljava/io/File;

    #@1d
    new-instance v11, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    #@24
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v11

    #@28
    const-string/jumbo v12, ".xml"

    #@2b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v11

    #@2f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v11

    #@33
    invoke-direct {v10, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@36
    invoke-direct {v3, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@39
    .line 666
    .local v3, "oldFile":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@3c
    move-result-object v10

    #@3d
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    #@40
    move-result v4

    #@41
    .line 668
    .local v4, "oldFileExists":Z
    if-eqz v4, :cond_2

    #@43
    .line 669
    new-instance v2, Ljava/io/File;

    #@45
    new-instance v10, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    iget-object v11, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    #@4c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v10

    #@50
    const-string/jumbo v11, ".xml.migrated"

    #@53
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v10

    #@5b
    invoke-direct {v2, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5e
    .line 671
    .local v2, "marker":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@61
    move-result v10

    #@62
    if-nez v10, :cond_2

    #@64
    .line 675
    const/4 v1, 0x0

    #@65
    .line 677
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@68
    move-result-object v1

    #@69
    .line 678
    .local v1, "is":Ljava/io/InputStream;
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@6b
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    #@6e
    .line 679
    invoke-direct {p0, v1}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    .line 683
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@74
    .line 686
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->getUsers()Ljava/util/List;

    #@77
    move-result-object v10

    #@78
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7b
    move-result-object v8

    #@7c
    .local v8, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@7f
    move-result v10

    #@80
    if-eqz v10, :cond_3

    #@82
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@85
    move-result-object v7

    #@86
    check-cast v7, Landroid/content/pm/UserInfo;

    #@88
    .line 687
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@8a
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    #@8c
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8f
    move-result-object v9

    #@90
    check-cast v9, Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@92
    .line 688
    .local v9, "userServices":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    if-eqz v9, :cond_1

    #@94
    .line 693
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    #@96
    invoke-direct {p0, v9, v10}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@99
    goto :goto_1

    #@9a
    .line 697
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "user$iterator":Ljava/util/Iterator;
    .end local v9    # "userServices":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catch_0
    move-exception v0

    #@9b
    .line 698
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PackageManager"

    #@9e
    const-string/jumbo v11, "Migration failed"

    #@a1
    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a4
    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@a6
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    #@a9
    .line 659
    .end local v2    # "marker":Ljava/io/File;
    :cond_2
    return-void

    #@aa
    .line 680
    .restart local v2    # "marker":Ljava/io/File;
    :catch_1
    move-exception v0

    #@ab
    .line 681
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v10, "PackageManager"

    #@ae
    const-string/jumbo v11, "Error reading persistent services, starting from scratch"

    #@b1
    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b4
    .line 683
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b7
    goto :goto_0

    #@b8
    .line 682
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    #@b9
    .line 683
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@bc
    .line 682
    throw v10

    #@bd
    .line 696
    .restart local v8    # "user$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@c0
    goto :goto_2
.end method

.method private notifyListener(Ljava/lang/Object;IZ)V
    .locals 8
    .param p2, "userId"    # I
    .param p3, "removed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 277
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "type":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    #@1
    .line 278
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    #@3
    .line 279
    .local v2, "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v6, "handler":Landroid/os/Handler;
    monitor-exit p0

    #@6
    .line 281
    if-nez v2, :cond_0

    #@8
    .line 282
    return-void

    #@9
    .line 277
    .end local v2    # "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    .end local v6    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0

    #@c
    .line 285
    .restart local v2    # "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    .restart local v6    # "handler":Landroid/os/Handler;
    :cond_0
    move-object v7, v2

    #@d
    .line 286
    .local v7, "listener2":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$4;

    #@f
    move-object v1, p0

    #@10
    move-object v3, p1

    #@11
    move v4, p2

    #@12
    move v5, p3

    #@13
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache$4;-><init>(Landroid/content/pm/RegisteredServicesCache;Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V

    #@16
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@19
    .line 271
    return-void
.end method

.method private readPersistentServicesLocked(Ljava/io/InputStream;)V
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x2

    #@3
    .line 628
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@6
    move-result-object v1

    #@7
    .line 629
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@c
    move-result-object v8

    #@d
    invoke-interface {v1, p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@10
    .line 630
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@13
    move-result v0

    #@14
    .line 631
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v10, :cond_0

    #@16
    .line 632
    if-eq v0, v11, :cond_0

    #@18
    .line 633
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1b
    move-result v0

    #@1c
    goto :goto_0

    #@1d
    .line 635
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 636
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "services"

    #@24
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_1

    #@2a
    .line 637
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2d
    move-result v0

    #@2e
    .line 639
    :goto_1
    if-ne v0, v10, :cond_3

    #@30
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@33
    move-result v8

    #@34
    if-ne v8, v10, :cond_3

    #@36
    .line 640
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 641
    const-string/jumbo v8, "service"

    #@3d
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v8

    #@41
    if-eqz v8, :cond_3

    #@43
    .line 642
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@45
    invoke-interface {v8, v1}, Landroid/content/pm/XmlSerializerAndParser;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    #@48
    move-result-object v2

    #@49
    .line 643
    .local v2, "service":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_2

    #@4b
    .line 627
    .end local v2    # "service":Ljava/lang/Object;, "TV;"
    :cond_1
    return-void

    #@4c
    .line 646
    .restart local v2    # "service":Ljava/lang/Object;, "TV;"
    :cond_2
    const-string/jumbo v8, "uid"

    #@4f
    invoke-interface {v1, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    .line 647
    .local v5, "uidString":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@56
    move-result v4

    #@57
    .line 648
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    #@5a
    move-result v7

    #@5b
    .line 650
    .local v7, "userId":I
    const/4 v8, 0x0

    #@5c
    .line 649
    invoke-direct {p0, v7, v8}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@5f
    move-result-object v6

    #@60
    .line 651
    .local v6, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v8, v6, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    #@62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v9

    #@66
    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 654
    .end local v2    # "service":Ljava/lang/Object;, "TV;"
    .end local v4    # "uid":I
    .end local v5    # "uidString":Ljava/lang/String;
    .end local v6    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    .end local v7    # "userId":I
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6c
    move-result v0

    #@6d
    .line 655
    if-eq v0, v11, :cond_1

    #@6f
    goto :goto_1
.end method

.method private writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V
    .locals 9
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$UserServices",
            "<TV;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 711
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 712
    return-void

    #@5
    .line 714
    :cond_0
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    #@8
    move-result-object v0

    #@9
    .line 715
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    #@a
    .line 717
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@d
    move-result-object v2

    #@e
    .line 718
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@10
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@13
    .line 719
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@15
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-interface {v3, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1c
    .line 720
    const/4 v6, 0x1

    #@1d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@20
    move-result-object v6

    #@21
    const/4 v7, 0x0

    #@22
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@25
    .line 721
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@28
    const/4 v7, 0x1

    #@29
    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@2c
    .line 722
    const-string/jumbo v6, "services"

    #@2f
    const/4 v7, 0x0

    #@30
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 723
    iget-object v6, p1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    #@35
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@38
    move-result-object v6

    #@39
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v5

    #@3d
    .local v5, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_2

    #@43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Ljava/util/Map$Entry;

    #@49
    .line 724
    .local v4, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;Ljava/lang/Integer;>;"
    const-string/jumbo v6, "service"

    #@4c
    const/4 v7, 0x0

    #@4d
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@50
    .line 725
    const-string/jumbo v7, "uid"

    #@53
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@56
    move-result-object v6

    #@57
    check-cast v6, Ljava/lang/Integer;

    #@59
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@5c
    move-result v6

    #@5d
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    const/4 v8, 0x0

    #@62
    invoke-interface {v3, v8, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@65
    .line 726
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@67
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@6a
    move-result-object v7

    #@6b
    invoke-interface {v6, v7, v3}, Landroid/content/pm/XmlSerializerAndParser;->writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    #@6e
    .line 727
    const-string/jumbo v6, "service"

    #@71
    const/4 v7, 0x0

    #@72
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    goto :goto_0

    #@76
    .line 732
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;Ljava/lang/Integer;>;"
    .end local v5    # "service$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@77
    .line 733
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "PackageManager"

    #@7a
    const-string/jumbo v7, "Error writing accounts"

    #@7d
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@80
    .line 734
    if-eqz v2, :cond_1

    #@82
    .line 735
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@85
    .line 710
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    #@86
    .line 729
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "service$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "services"

    #@89
    const/4 v7, 0x0

    #@8a
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8d
    .line 730
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@90
    .line 731
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@93
    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 242
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 243
    :try_start_0
    invoke-direct {p0, p4}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@6
    move-result-object v2

    #@7
    .line 244
    .local v2, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "RegisteredServicesCache: "

    #@13
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    iget-object v5, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@19
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@1c
    move-result v5

    #@1d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v5, " services"

    #@24
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f
    .line 246
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@31
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@34
    move-result-object v3

    #@35
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v1

    #@39
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_1

    #@3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@45
    .line 247
    .local v0, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "  "

    #@4d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    goto :goto_0

    #@5d
    .line 242
    .end local v0    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    .end local v2    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_0
    move-exception v3

    #@5e
    monitor-exit v4

    #@5f
    throw v3

    #@60
    .line 250
    .restart local v2    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_0
    :try_start_1
    const-string/jumbo v3, "RegisteredServicesCache: services not loaded"

    #@63
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    :cond_1
    monitor-exit v4

    #@67
    .line 241
    return-void
.end method

.method public getAllServices(I)Ljava/util/Collection;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 338
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 340
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@6
    move-result-object v0

    #@7
    .line 341
    .local v0, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v1, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 342
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v1, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    #@f
    .line 345
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@11
    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@13
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1a
    .line 344
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v1

    #@1e
    monitor-exit v2

    #@1f
    return-object v1

    #@20
    .line 338
    .end local v0    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method protected getDataDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 770
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getListener()Landroid/content/pm/RegisteredServicesCacheListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/RegisteredServicesCacheListener",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 256
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    monitor-enter p0

    #@1
    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 256
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method protected getPersistentServices(I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 775
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    #@6
    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 323
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "type":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 325
    :try_start_0
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@6
    move-result-object v0

    #@7
    .line 326
    .local v0, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v1, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 327
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v1, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    #@f
    .line 329
    :cond_0
    iget-object v1, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@11
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    return-object v1

    #@19
    .line 323
    .end local v0    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method protected getUser(I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 754
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected getUserSystemDirectory(I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 765
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected getUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 749
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method protected inSystemImage(I)Z
    .locals 9
    .param p1, "callerUid"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const/4 v5, 0x0

    #@1
    .line 392
    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 393
    .local v3, "packages":[Ljava/lang/String;
    array-length v6, v3

    #@c
    move v4, v5

    #@d
    :goto_0
    if-ge v4, v6, :cond_1

    #@f
    aget-object v1, v3, v4

    #@11
    .line 396
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v7

    #@17
    const/4 v8, 0x0

    #@18
    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@1b
    move-result-object v2

    #@1c
    .line 397
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1e
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    and-int/lit8 v7, v7, 0x1

    #@22
    if-eqz v7, :cond_0

    #@24
    .line 398
    const/4 v4, 0x1

    #@25
    return v4

    #@26
    .line 400
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@27
    .line 401
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5

    #@28
    .line 393
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 404
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return v5
.end method

.method public invalidateCache(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 234
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 235
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@6
    move-result-object v0

    #@7
    .line 236
    .local v0, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    const/4 v1, 0x0

    #@8
    iput-object v1, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@a
    .line 237
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 233
    return-void

    #@f
    .line 234
    .end local v0    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method protected onServicesChangedLocked(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 547
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    return-void
.end method

.method protected onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 742
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 743
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 741
    return-void

    #@a
    .line 742
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public abstract parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
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

.method protected parseServiceInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 13
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const/4 v12, 0x0

    #@1
    .line 583
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@3
    .line 584
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    #@5
    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@7
    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@9
    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 586
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v5

    #@12
    .line 588
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    #@13
    .line 590
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    #@15
    invoke-virtual {v7, v5, v10}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@18
    move-result-object v4

    #@19
    .line 591
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_1

    #@1b
    .line 592
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    #@1d
    new-instance v11, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v12, "No "

    #@25
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v11

    #@29
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    #@2b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v11

    #@2f
    const-string/jumbo v12, " meta-data"

    #@32
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v11

    #@36
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v11

    #@3a
    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 615
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v2

    #@3f
    .line 616
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    #@41
    .line 617
    new-instance v11, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v12, "Unable to load resources for pacakge "

    #@49
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v11

    #@4d
    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@4f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v11

    #@53
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v11

    #@57
    .line 616
    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    .line 618
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v10

    #@5c
    .line 619
    if-eqz v4, :cond_0

    #@5e
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@61
    .line 618
    :cond_0
    throw v10

    #@62
    .line 595
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@65
    move-result-object v0

    #@66
    .line 598
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    #@69
    move-result v8

    #@6a
    .local v8, "type":I
    const/4 v10, 0x1

    #@6b
    if-eq v8, v10, :cond_3

    #@6d
    .line 599
    const/4 v10, 0x2

    #@6e
    if-ne v8, v10, :cond_2

    #@70
    .line 602
    :cond_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    .line 603
    .local v3, "nodeName":Ljava/lang/String;
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    #@76
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v10

    #@7a
    if-nez v10, :cond_4

    #@7c
    .line 604
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    #@7e
    .line 605
    new-instance v11, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v12, "Meta-data does not start with "

    #@86
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v11

    #@8a
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    #@8c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v11

    #@90
    const-string/jumbo v12, " tag"

    #@93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v11

    #@97
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v11

    #@9b
    .line 604
    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v10

    #@9f
    .line 608
    :cond_4
    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a1
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@a4
    move-result-object v10

    #@a5
    .line 609
    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@a7
    .line 608
    invoke-virtual {p0, v10, v11, v0}, Landroid/content/pm/RegisteredServicesCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@aa
    move-result-object v9

    #@ab
    .line 610
    .local v9, "v":Ljava/lang/Object;, "TV;"
    if-nez v9, :cond_6

    #@ad
    .line 619
    if-eqz v4, :cond_5

    #@af
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@b2
    .line 611
    :cond_5
    return-object v12

    #@b3
    .line 613
    :cond_6
    :try_start_3
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@b5
    .line 614
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v10, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@b7
    invoke-direct {v10, v9, v6, v1}, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/pm/ComponentInfo;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ba
    .line 619
    if-eqz v4, :cond_7

    #@bc
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@bf
    .line 614
    :cond_7
    return-object v10
.end method

.method protected queryIntentServices(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 409
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    .line 410
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    #@8
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    #@a
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 411
    const v2, 0xc0080

    #@10
    .line 410
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCacheListener",
            "<TV;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 262
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    if-nez p2, :cond_0

    #@2
    .line 263
    new-instance p2, Landroid/os/Handler;

    #@4
    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@d
    .line 265
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_0
    monitor-enter p0

    #@e
    .line 266
    :try_start_0
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    #@10
    .line 267
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 261
    return-void

    #@14
    .line 265
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public updateServices(I)V
    .locals 12
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 354
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v11, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v11

    #@3
    .line 355
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@6
    move-result-object v8

    #@7
    .line 357
    .local v8, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v10, v8, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-nez v10, :cond_0

    #@b
    monitor-exit v11

    #@c
    .line 358
    return-void

    #@d
    .line 360
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    #@f
    iget-object v10, v8, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@11
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@14
    move-result-object v10

    #@15
    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .local v0, "allServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    monitor-exit v11

    #@19
    .line 362
    const/4 v6, 0x0

    #@1a
    .line 363
    .local v6, "updatedUids":Landroid/util/IntArray;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v5

    #@1e
    .end local v6    # "updatedUids":Landroid/util/IntArray;
    .local v5, "service$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v10

    #@22
    if-eqz v10, :cond_4

    #@24
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@2a
    .line 364
    .local v4, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    iget-object v10, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    #@2c
    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2e
    iget v9, v10, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@30
    .line 365
    .local v9, "versionCode":I
    iget-object v10, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    #@32
    iget-object v3, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@34
    .line 366
    .local v3, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    #@35
    .line 368
    .local v2, "newAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@37
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3a
    move-result-object v10

    #@3b
    const/4 v11, 0x0

    #@3c
    invoke-virtual {v10, v3, v11, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@3f
    move-result-object v2

    #@40
    .line 373
    .end local v2    # "newAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v2, :cond_2

    #@42
    iget v10, v2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@44
    if-eq v10, v9, :cond_1

    #@46
    .line 378
    :cond_2
    if-nez v6, :cond_3

    #@48
    .line 379
    new-instance v6, Landroid/util/IntArray;

    #@4a
    invoke-direct {v6}, Landroid/util/IntArray;-><init>()V

    #@4d
    .line 381
    :cond_3
    iget v10, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    #@4f
    invoke-virtual {v6, v10}, Landroid/util/IntArray;->add(I)V

    #@52
    goto :goto_0

    #@53
    .line 354
    .end local v0    # "allServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v5    # "service$iterator":Ljava/util/Iterator;
    .end local v8    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    .end local v9    # "versionCode":I
    :catchall_0
    move-exception v10

    #@54
    monitor-exit v11

    #@55
    throw v10

    #@56
    .line 384
    .restart local v0    # "allServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .restart local v5    # "service$iterator":Ljava/util/Iterator;
    .restart local v8    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_4
    if-eqz v6, :cond_5

    #@58
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    #@5b
    move-result v10

    #@5c
    if-lez v10, :cond_5

    #@5e
    .line 385
    invoke-virtual {v6}, Landroid/util/IntArray;->toArray()[I

    #@61
    move-result-object v7

    #@62
    .line 386
    .local v7, "updatedUidsArray":[I
    invoke-direct {p0, v7, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    #@65
    .line 349
    .end local v7    # "updatedUidsArray":[I
    :cond_5
    return-void

    #@66
    .line 369
    .restart local v2    # "newAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .restart local v9    # "versionCode":I
    :catch_0
    move-exception v1

    #@67
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

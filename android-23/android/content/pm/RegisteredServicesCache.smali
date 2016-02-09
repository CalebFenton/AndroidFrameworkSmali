.class public abstract Landroid/content/pm/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/RegisteredServicesCache$UserServices;,
        Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,
        Landroid/content/pm/RegisteredServicesCache$1;,
        Landroid/content/pm/RegisteredServicesCache$2;,
        Landroid/content/pm/RegisteredServicesCache$3;
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
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 87
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@b
    .line 90
    new-instance v0, Landroid/util/SparseArray;

    #@d
    const/4 v1, 0x2

    #@e
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@11
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@13
    .line 202
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$1;

    #@15
    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$1;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    #@18
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    .line 212
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$2;

    #@1c
    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$2;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    #@1f
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    #@21
    .line 220
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$3;

    #@23
    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$3;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    #@26
    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@28
    .line 144
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@2a
    .line 145
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    #@2c
    .line 146
    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    #@2e
    .line 147
    iput-object p4, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    #@30
    .line 148
    iput-object p5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@32
    .line 150
    invoke-direct {p0}, Landroid/content/pm/RegisteredServicesCache;->migrateIfNecessaryLocked()V

    #@35
    .line 152
    new-instance v3, Landroid/content/IntentFilter;

    #@37
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@3a
    .line 153
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    #@3d
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@40
    .line 154
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    #@43
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@46
    .line 155
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@49
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@4c
    .line 156
    const-string/jumbo v0, "package"

    #@4f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@52
    .line 157
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
    .line 160
    new-instance v6, Landroid/content/IntentFilter;

    #@5e
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@61
    .line 161
    .local v6, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@64
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@67
    .line 162
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@6a
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@6d
    .line 163
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@6f
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    #@71
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@74
    .line 166
    new-instance v7, Landroid/content/IntentFilter;

    #@76
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@79
    .line 167
    .local v7, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@7c
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7f
    .line 168
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@81
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@83
    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@86
    .line 143
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
    .line 512
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
    .line 513
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
    .line 514
    const/4 v2, 0x1

    #@16
    return v2

    #@17
    .line 512
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 518
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
    .line 522
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
    .line 523
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@d
    .line 524
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
    .line 525
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 522
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 529
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
    .line 508
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
    .line 712
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUserSystemDirectory(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 713
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
    .line 714
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
    .line 103
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
    .line 108
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@9
    .line 109
    .local v3, "services":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    if-nez v3, :cond_0

    #@b
    .line 110
    new-instance v3, Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@d
    .end local v3    # "services":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    invoke-direct {v3, v6}, Landroid/content/pm/RegisteredServicesCache$UserServices;-><init>(Landroid/content/pm/RegisteredServicesCache$UserServices;)V

    #@10
    .line 111
    .restart local v3    # "services":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v5, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@15
    .line 112
    if-eqz p2, :cond_0

    #@17
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@19
    if-eqz v5, :cond_0

    #@1b
    .line 115
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUser(I)Landroid/content/pm/UserInfo;

    #@1e
    move-result-object v4

    #@1f
    .line 116
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_0

    #@21
    .line 117
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    #@23
    invoke-direct {p0, v5}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    #@26
    move-result-object v1

    #@27
    .line 118
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
    .line 122
    const/4 v2, 0x0

    #@32
    .line 124
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@35
    move-result-object v2

    #@36
    .line 125
    .local v2, "is":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 129
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3c
    .line 135
    .end local v1    # "file":Landroid/util/AtomicFile;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    return-object v3

    #@3d
    .line 126
    .restart local v1    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    #@3e
    .line 127
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
    .line 129
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5d
    goto :goto_0

    #@5e
    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@5f
    .line 129
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@62
    .line 128
    throw v5
.end method

.method private generateServicesMap([II)V
    .locals 23
    .param p1, "changedUids"    # [I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 381
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    new-instance v14, Ljava/util/ArrayList;

    #@2
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 382
    .local v14, "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    move-object/from16 v0, p0

    #@7
    move/from16 v1, p2

    #@9
    invoke-virtual {v0, v1}, Landroid/content/pm/RegisteredServicesCache;->queryIntentServices(I)Ljava/util/List;

    #@c
    move-result-object v13

    #@d
    .line 383
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
    .line 385
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v11}, Landroid/content/pm/RegisteredServicesCache;->parseServiceInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@22
    move-result-object v8

    #@23
    .line 386
    .local v8, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    if-nez v8, :cond_0

    #@25
    .line 387
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
    .line 391
    .end local v8    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :catch_0
    move-exception v6

    #@45
    .line 392
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
    .line 390
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
    .line 396
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
    .line 397
    :try_start_2
    move-object/from16 v0, p0

    #@75
    move/from16 v1, p2

    #@77
    invoke-direct {v0, v1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@7a
    move-result-object v16

    #@7b
    .line 398
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
    .line 399
    .local v7, "firstScan":Z
    :goto_1
    if-eqz v7, :cond_2

    #@86
    .line 400
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
    .line 403
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    .line 404
    .local v5, "changes":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@96
    .line 405
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
    .line 415
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
    .line 416
    .local v10, "previousUid":Ljava/lang/Integer;
    if-nez v10, :cond_6

    #@bc
    .line 420
    const/4 v4, 0x1

    #@bd
    .line 421
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
    .line 422
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
    .line 423
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
    .line 424
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
    .line 396
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
    .line 398
    .restart local v16    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_4
    const/4 v7, 0x0

    #@10b
    .restart local v7    # "firstScan":Z
    goto/16 :goto_1

    #@10d
    .line 423
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
    .line 426
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
    .line 430
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
    .line 431
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
    .line 432
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
    .line 442
    :cond_8
    const/4 v4, 0x1

    #@154
    .line 443
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
    .line 444
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
    .line 445
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
    .line 455
    .end local v8    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v10    # "previousUid":Ljava/lang/Integer;
    :cond_9
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@196
    move-result-object v15

    #@197
    .line 456
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
    .line 459
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
    .line 460
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
    .line 459
    if-eqz v19, :cond_a

    #@1d9
    .line 461
    move-object/from16 v0, v17

    #@1db
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1de
    goto :goto_4

    #@1df
    .line 464
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
    .line 468
    .restart local v17    # "v1":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x1

    #@1ee
    .line 469
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
    .line 470
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
    .line 471
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
    .line 492
    .end local v17    # "v1":Ljava/lang/Object;, "TV;"
    :cond_c
    if-eqz v4, :cond_d

    #@218
    .line 493
    move-object/from16 v0, p0

    #@21a
    move/from16 v1, p2

    #@21c
    invoke-virtual {v0, v1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    #@21f
    .line 494
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
    .line 376
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
    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 177
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    #@8
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    .line 178
    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@11
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    .line 180
    :goto_0
    const-string/jumbo v5, "android.intent.extra.REPLACING"

    #@18
    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@1b
    move-result v2

    #@1c
    .line 182
    .local v2, "replacing":Z
    if-eqz v1, :cond_1

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 171
    :goto_1
    return-void

    #@21
    .line 177
    .end local v2    # "replacing":Z
    :cond_0
    const/4 v1, 0x1

    #@22
    .local v1, "isRemoval":Z
    goto :goto_0

    #@23
    .line 186
    .end local v1    # "isRemoval":Z
    .restart local v2    # "replacing":Z
    :cond_1
    const/4 v4, 0x0

    #@24
    .line 189
    .local v4, "uids":[I
    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@27
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_2

    #@2d
    .line 190
    const-string/jumbo v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@30
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v5

    #@34
    .line 189
    if-eqz v5, :cond_4

    #@36
    .line 191
    :cond_2
    const-string/jumbo v5, "android.intent.extra.changed_uid_list"

    #@39
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    #@3c
    move-result-object v4

    #@3d
    .line 198
    .end local v4    # "uids":[I
    :cond_3
    :goto_2
    invoke-direct {p0, v4, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    #@40
    goto :goto_1

    #@41
    .line 193
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
    .line 194
    .local v3, "uid":I
    if-lez v3, :cond_3

    #@4b
    .line 195
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
    .line 614
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@2
    if-nez v10, :cond_0

    #@4
    .line 615
    return-void

    #@5
    .line 617
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
    .line 618
    .local v6, "systemDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    #@13
    const-string/jumbo v10, "registered_services"

    #@16
    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@19
    .line 619
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
    .line 620
    .local v3, "oldFile":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@3c
    move-result-object v10

    #@3d
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    #@40
    move-result v4

    #@41
    .line 622
    .local v4, "oldFileExists":Z
    if-eqz v4, :cond_2

    #@43
    .line 623
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
    .line 625
    .local v2, "marker":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@61
    move-result v10

    #@62
    if-nez v10, :cond_2

    #@64
    .line 629
    const/4 v1, 0x0

    #@65
    .line 631
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@68
    move-result-object v1

    #@69
    .line 632
    .local v1, "is":Ljava/io/InputStream;
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@6b
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    #@6e
    .line 633
    invoke-direct {p0, v1}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    .line 637
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@74
    .line 640
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
    .line 641
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
    .line 642
    .local v9, "userServices":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    if-eqz v9, :cond_1

    #@94
    .line 647
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    #@96
    invoke-direct {p0, v9, v10}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@99
    goto :goto_1

    #@9a
    .line 651
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "user$iterator":Ljava/util/Iterator;
    .end local v9    # "userServices":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catch_0
    move-exception v0

    #@9b
    .line 652
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PackageManager"

    #@9e
    const-string/jumbo v11, "Migration failed"

    #@a1
    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a4
    .line 656
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v10, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@a6
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    #@a9
    .line 613
    .end local v2    # "marker":Ljava/io/File;
    :cond_2
    return-void

    #@aa
    .line 634
    .restart local v2    # "marker":Ljava/io/File;
    :catch_1
    move-exception v0

    #@ab
    .line 635
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
    .line 637
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b7
    goto :goto_0

    #@b8
    .line 636
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    #@b9
    .line 637
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@bc
    .line 636
    throw v10

    #@bd
    .line 650
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
    .line 275
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "type":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    #@1
    .line 276
    :try_start_0
    iget-object v7, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    #@3
    .line 277
    .local v7, "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v6, "handler":Landroid/os/Handler;
    monitor-exit p0

    #@6
    .line 279
    if-nez v7, :cond_0

    #@8
    .line 280
    return-void

    #@9
    .line 275
    .end local v6    # "handler":Landroid/os/Handler;
    .end local v7    # "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0

    #@c
    .line 283
    .restart local v6    # "handler":Landroid/os/Handler;
    .restart local v7    # "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    :cond_0
    move-object v2, v7

    #@d
    .line 284
    .local v2, "listener2":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
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
    .line 269
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
    .line 582
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@6
    move-result-object v1

    #@7
    .line 583
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@c
    move-result-object v8

    #@d
    invoke-interface {v1, p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@10
    .line 584
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@13
    move-result v0

    #@14
    .line 585
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v10, :cond_0

    #@16
    .line 586
    if-eq v0, v11, :cond_0

    #@18
    .line 587
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1b
    move-result v0

    #@1c
    goto :goto_0

    #@1d
    .line 589
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 590
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "services"

    #@24
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_1

    #@2a
    .line 591
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2d
    move-result v0

    #@2e
    .line 593
    :goto_1
    if-ne v0, v10, :cond_3

    #@30
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@33
    move-result v8

    #@34
    if-ne v8, v10, :cond_3

    #@36
    .line 594
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 595
    const-string/jumbo v8, "service"

    #@3d
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v8

    #@41
    if-eqz v8, :cond_3

    #@43
    .line 596
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@45
    invoke-interface {v8, v1}, Landroid/content/pm/XmlSerializerAndParser;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    #@48
    move-result-object v2

    #@49
    .line 597
    .local v2, "service":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_2

    #@4b
    .line 581
    .end local v2    # "service":Ljava/lang/Object;, "TV;"
    :cond_1
    return-void

    #@4c
    .line 600
    .restart local v2    # "service":Ljava/lang/Object;, "TV;"
    :cond_2
    const-string/jumbo v8, "uid"

    #@4f
    invoke-interface {v1, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    .line 601
    .local v5, "uidString":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@56
    move-result v4

    #@57
    .line 602
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    #@5a
    move-result v7

    #@5b
    .line 604
    .local v7, "userId":I
    const/4 v8, 0x0

    #@5c
    .line 603
    invoke-direct {p0, v7, v8}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@5f
    move-result-object v6

    #@60
    .line 605
    .local v6, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v8, v6, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    #@62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v9

    #@66
    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 608
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
    .line 609
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
    .line 665
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 666
    return-void

    #@5
    .line 668
    :cond_0
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    #@8
    move-result-object v0

    #@9
    .line 669
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    #@a
    .line 671
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@d
    move-result-object v2

    #@e
    .line 672
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@10
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@13
    .line 673
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@15
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-interface {v3, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1c
    .line 674
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
    .line 675
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@28
    const/4 v7, 0x1

    #@29
    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@2c
    .line 676
    const-string/jumbo v6, "services"

    #@2f
    const/4 v7, 0x0

    #@30
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 677
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
    .line 678
    .local v4, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;Ljava/lang/Integer;>;"
    const-string/jumbo v6, "service"

    #@4c
    const/4 v7, 0x0

    #@4d
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@50
    .line 679
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
    .line 680
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    #@67
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@6a
    move-result-object v7

    #@6b
    invoke-interface {v6, v7, v3}, Landroid/content/pm/XmlSerializerAndParser;->writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    #@6e
    .line 681
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
    .line 686
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;Ljava/lang/Integer;>;"
    .end local v5    # "service$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@77
    .line 687
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "PackageManager"

    #@7a
    const-string/jumbo v7, "Error writing accounts"

    #@7d
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@80
    .line 688
    if-eqz v2, :cond_1

    #@82
    .line 689
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@85
    .line 664
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    #@86
    .line 683
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
    .line 684
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@90
    .line 685
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
    .line 240
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 241
    :try_start_0
    invoke-direct {p0, p4}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@6
    move-result-object v2

    #@7
    .line 242
    .local v2, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 243
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
    .line 244
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
    .line 245
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
    .line 240
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
    .line 248
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
    .line 239
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
    .line 334
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 336
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@6
    move-result-object v0

    #@7
    .line 337
    .local v0, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v1, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 338
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v1, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    #@f
    .line 341
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
    .line 340
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
    .line 334
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
    .line 724
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
    .line 254
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    monitor-enter p0

    #@1
    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 254
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
    .line 729
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
    .line 319
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "type":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 321
    :try_start_0
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@6
    move-result-object v0

    #@7
    .line 322
    .local v0, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v1, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 323
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v1, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    #@f
    .line 325
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
    .line 319
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
    .line 708
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
    .line 719
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
    .line 703
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
    .line 347
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
    .line 348
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
    .line 351
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
    .line 352
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
    .line 353
    const/4 v4, 0x1

    #@25
    return v4

    #@26
    .line 355
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@27
    .line 356
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5

    #@28
    .line 348
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 359
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
    .line 232
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 233
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    #@6
    move-result-object v0

    #@7
    .line 234
    .local v0, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    const/4 v1, 0x0

    #@8
    iput-object v1, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    #@a
    .line 235
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 231
    return-void

    #@f
    .line 232
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
    .line 499
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    return-void
.end method

.method protected onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 696
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 697
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 695
    return-void

    #@a
    .line 696
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
    .locals 16
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
    .line 535
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    move-object/from16 v0, p1

    #@2
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    .line 536
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    new-instance v3, Landroid/content/ComponentName;

    #@6
    iget-object v13, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8
    iget-object v14, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@a
    invoke-direct {v3, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 538
    .local v3, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@f
    iget-object v13, v0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v7

    #@15
    .line 540
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    #@16
    .line 542
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    #@18
    iget-object v13, v0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    #@1a
    invoke-virtual {v9, v7, v13}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1d
    move-result-object v6

    #@1e
    .line 543
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v6, :cond_1

    #@20
    .line 544
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    #@22
    new-instance v14, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v15, "No "

    #@2a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v14

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v15, v0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    #@32
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v14

    #@36
    const-string/jumbo v15, " meta-data"

    #@39
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v14

    #@3d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v14

    #@41
    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@44
    throw v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 569
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    #@46
    .line 570
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    #@48
    .line 571
    new-instance v14, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v15, "Unable to load resources for pacakge "

    #@50
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v14

    #@54
    iget-object v15, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@56
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v14

    #@5a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v14

    #@5e
    .line 570
    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@61
    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    .line 572
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v13

    #@63
    .line 573
    if-eqz v6, :cond_0

    #@65
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@68
    .line 572
    :cond_0
    throw v13

    #@69
    .line 547
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@6c
    move-result-object v2

    #@6d
    .line 550
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    #@70
    move-result v10

    #@71
    .local v10, "type":I
    const/4 v13, 0x1

    #@72
    if-eq v10, v13, :cond_3

    #@74
    .line 551
    const/4 v13, 0x2

    #@75
    if-ne v10, v13, :cond_2

    #@77
    .line 554
    :cond_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    .line 555
    .local v5, "nodeName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7d
    iget-object v13, v0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    #@7f
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v13

    #@83
    if-nez v13, :cond_4

    #@85
    .line 556
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    #@87
    .line 557
    new-instance v14, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v15, "Meta-data does not start with "

    #@8f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v14

    #@93
    move-object/from16 v0, p0

    #@95
    iget-object v15, v0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    #@97
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v14

    #@9b
    const-string/jumbo v15, " tag"

    #@9e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v14

    #@a2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v14

    #@a6
    .line 556
    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v13

    #@aa
    .line 560
    :cond_4
    iget-object v13, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@ac
    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@af
    move-result-object v13

    #@b0
    .line 561
    iget-object v14, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@b2
    .line 560
    move-object/from16 v0, p0

    #@b4
    invoke-virtual {v0, v13, v14, v2}, Landroid/content/pm/RegisteredServicesCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b7
    move-result-object v12

    #@b8
    .line 562
    .local v12, "v":Ljava/lang/Object;, "TV;"
    if-nez v12, :cond_6

    #@ba
    .line 563
    const/4 v13, 0x0

    #@bb
    .line 573
    if-eqz v6, :cond_5

    #@bd
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@c0
    .line 563
    :cond_5
    return-object v13

    #@c1
    .line 565
    :cond_6
    :try_start_3
    move-object/from16 v0, p1

    #@c3
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c5
    .line 566
    .local v8, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v1, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c7
    .line 567
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@c9
    .line 568
    .local v11, "uid":I
    new-instance v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@cb
    invoke-direct {v13, v12, v3, v11}, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;I)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ce
    .line 573
    if-eqz v6, :cond_7

    #@d0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@d3
    .line 568
    :cond_7
    return-object v13
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
    .line 364
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    .line 366
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    #@8
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    #@a
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    const/16 v2, 0x80

    #@f
    .line 365
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
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
    .line 260
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    if-nez p2, :cond_0

    #@2
    .line 261
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
    .line 263
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_0
    monitor-enter p0

    #@e
    .line 264
    :try_start_0
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    #@10
    .line 265
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 259
    return-void

    #@14
    .line 263
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

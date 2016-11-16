.class public Lcom/android/server/pm/PackageInstallerService;
.super Landroid/content/pm/IPackageInstaller$Stub;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerService$1;,
        Lcom/android/server/pm/PackageInstallerService$Callbacks;,
        Lcom/android/server/pm/PackageInstallerService$InternalCallback;,
        Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;,
        Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    }
.end annotation


# static fields
.field private static final ATTR_ABI_OVERRIDE:Ljava/lang/String; = "abiOverride"

.field private static final ATTR_APP_ICON:Ljava/lang/String; = "appIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_APP_LABEL:Ljava/lang/String; = "appLabel"

.field private static final ATTR_APP_PACKAGE_NAME:Ljava/lang/String; = "appPackageName"

.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "installerPackageName"

.field private static final ATTR_INSTALLER_UID:Ljava/lang/String; = "installerUid"

.field private static final ATTR_INSTALL_FLAGS:Ljava/lang/String; = "installFlags"

.field private static final ATTR_INSTALL_LOCATION:Ljava/lang/String; = "installLocation"

.field private static final ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_ORIGINATING_UID:Ljava/lang/String; = "originatingUid"

.field private static final ATTR_ORIGINATING_URI:Ljava/lang/String; = "originatingUri"

.field private static final ATTR_PREPARED:Ljava/lang/String; = "prepared"

.field private static final ATTR_REFERRER_URI:Ljava/lang/String; = "referrerUri"

.field private static final ATTR_SEALED:Ljava/lang/String; = "sealed"

.field private static final ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final ATTR_SESSION_STAGE_CID:Ljava/lang/String; = "sessionStageCid"

.field private static final ATTR_SESSION_STAGE_DIR:Ljava/lang/String; = "sessionStageDir"

.field private static final ATTR_SIZE_BYTES:Ljava/lang/String; = "sizeBytes"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field private static final LOGD:Z = false

.field private static final MAX_ACTIVE_SESSIONS:J = 0x400L

.field private static final MAX_AGE_MILLIS:J = 0xf731400L

.field private static final MAX_HISTORICAL_SESSIONS:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final TAG_GRANTED_RUNTIME_PERMISSION:Ljava/lang/String; = "granted-runtime-permission"

.field private static final TAG_SESSION:Ljava/lang/String; = "session"

.field private static final TAG_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final sStageFilter:Ljava/io/FilenameFilter;


# instance fields
.field private final mAllocatedSessions:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSessions"
    .end annotation
.end field

.field private mAppOps:Landroid/app/AppOpsManager;

.field private final mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSessions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallHandler:Landroid/os/Handler;

.field private final mInstallThread:Landroid/os/HandlerThread;

.field private final mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private final mLegacySessions:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSessions"
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRandom:Ljava/util/Random;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSessions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionsDir:Ljava/io/File;

.field private final mSessionsFile:Landroid/util/AtomicFile;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "basePackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;
    .locals 1
    .param p1, "sessionId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 200
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$1;

    #@2
    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerService$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    #@7
    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>()V

    #@3
    .line 177
    new-instance v5, Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@5
    invoke-direct {v5, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    #@8
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@a
    .line 183
    new-instance v5, Ljava/security/SecureRandom;

    #@c
    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    #@f
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    #@11
    .line 187
    new-instance v5, Landroid/util/SparseBooleanArray;

    #@13
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    #@16
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    #@18
    .line 190
    new-instance v5, Landroid/util/SparseArray;

    #@1a
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    #@1d
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@1f
    .line 194
    new-instance v5, Landroid/util/SparseArray;

    #@21
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    #@24
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    #@26
    .line 198
    new-instance v5, Landroid/util/SparseBooleanArray;

    #@28
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    #@2b
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    #@2d
    .line 208
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@2f
    .line 209
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@31
    .line 211
    new-instance v5, Landroid/os/HandlerThread;

    #@33
    const-string/jumbo v6, "PackageInstaller"

    #@36
    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@39
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    #@3b
    .line 212
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    #@3d
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    #@40
    .line 214
    new-instance v5, Landroid/os/Handler;

    #@42
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    #@44
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@47
    move-result-object v6

    #@48
    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@4b
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    #@4d
    .line 216
    new-instance v5, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    #@4f
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    #@51
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@54
    move-result-object v6

    #@55
    invoke-direct {v5, v6}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Landroid/os/Looper;)V

    #@58
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    #@5a
    .line 218
    new-instance v5, Landroid/util/AtomicFile;

    #@5c
    .line 219
    new-instance v6, Ljava/io/File;

    #@5e
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@61
    move-result-object v7

    #@62
    const-string/jumbo v8, "install_sessions.xml"

    #@65
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@68
    .line 218
    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@6b
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    #@6d
    .line 220
    new-instance v5, Ljava/io/File;

    #@6f
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@72
    move-result-object v6

    #@73
    const-string/jumbo v7, "install_sessions"

    #@76
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@79
    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    #@7b
    .line 221
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    #@7d
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    #@80
    .line 223
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@82
    monitor-enter v6

    #@83
    .line 224
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->readSessionsLocked()V

    #@86
    .line 226
    sget-object v5, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@88
    const/4 v7, 0x0

    #@89
    invoke-direct {p0, v5, v7}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;Z)V

    #@8c
    .line 227
    sget-object v5, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@8e
    const/4 v7, 0x1

    #@8f
    invoke-direct {p0, v5, v7}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;Z)V

    #@92
    .line 230
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    #@94
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@97
    move-result-object v5

    #@98
    .line 229
    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@9b
    move-result-object v4

    #@9c
    .line 233
    .local v4, "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    const/4 v0, 0x0

    #@9d
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@9f
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@a2
    move-result v5

    #@a3
    if-ge v0, v5, :cond_0

    #@a5
    .line 234
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@a7
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@aa
    move-result-object v3

    #@ab
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    #@ad
    .line 235
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v5, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@af
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    #@b2
    move-result-object v5

    #@b3
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@b6
    .line 233
    add-int/lit8 v0, v0, 0x1

    #@b8
    goto :goto_0

    #@b9
    .line 239
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@bc
    move-result-object v2

    #@bd
    .local v2, "icon$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c0
    move-result v5

    #@c1
    if-eqz v5, :cond_1

    #@c3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c6
    move-result-object v1

    #@c7
    check-cast v1, Ljava/io/File;

    #@c9
    .line 240
    .local v1, "icon":Ljava/io/File;
    const-string/jumbo v5, "PackageInstaller"

    #@cc
    new-instance v7, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v8, "Deleting orphan icon "

    #@d4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v7

    #@d8
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v7

    #@dc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v7

    #@e0
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e3
    .line 241
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e6
    goto :goto_1

    #@e7
    .line 223
    .end local v0    # "i":I
    .end local v1    # "icon":Ljava/io/File;
    .end local v2    # "icon$iterator":Ljava/util/Iterator;
    .end local v4    # "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    :catchall_0
    move-exception v5

    #@e8
    monitor-exit v6

    #@e9
    throw v5

    #@ea
    .restart local v0    # "i":I
    .restart local v2    # "icon$iterator":Ljava/util/Iterator;
    .restart local v4    # "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    :cond_1
    monitor-exit v6

    #@eb
    .line 207
    return-void
.end method

.method private allocateSessionIdLocked()I
    .locals 5

    #@0
    .prologue
    .line 772
    const/4 v0, 0x0

    #@1
    .line 775
    .local v0, "n":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    #@3
    const v4, 0x7ffffffe

    #@6
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    #@9
    move-result v3

    #@a
    add-int/lit8 v2, v3, 0x1

    #@c
    .line 776
    .local v2, "sessionId":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    #@e
    const/4 v4, 0x0

    #@f
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_0

    #@15
    .line 777
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    #@17
    const/4 v4, 0x1

    #@18
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1b
    .line 778
    return v2

    #@1c
    .line 780
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@1e
    .end local v0    # "n":I
    .local v1, "n":I
    const/16 v3, 0x20

    #@20
    if-ge v0, v3, :cond_1

    #@22
    move v0, v1

    #@23
    .end local v1    # "n":I
    .restart local v0    # "n":I
    goto :goto_0

    #@24
    .line 782
    .end local v0    # "n":I
    .restart local v1    # "n":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    #@26
    const-string/jumbo v4, "Failed to allocate session ID"

    #@29
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3
.end method

.method private buildAppIconFile(I)Ljava/io/File;
    .locals 4
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 554
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "app_icon."

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, ".png"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@22
    return-object v0
.end method

.method private buildExternalStageCid(I)Ljava/lang/String;
    .locals 2
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "smdl"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ".tmp"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method private buildStageDir(Ljava/lang/String;IZ)Ljava/io/File;
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "isEphemeral"    # Z

    #@0
    .prologue
    .line 793
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/PackageInstallerService;->buildStagingDir(Ljava/lang/String;Z)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 794
    .local v0, "stagingDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "vmdl"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, ".tmp"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@24
    return-object v1
.end method

.method private buildStagingDir(Ljava/lang/String;Z)Ljava/io/File;
    .locals 1
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "isEphemeral"    # Z

    #@0
    .prologue
    .line 786
    if-eqz p2, :cond_0

    #@2
    .line 787
    invoke-static {p1}, Landroid/os/Environment;->getDataAppEphemeralDirectory(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 789
    :cond_0
    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private static buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "basePackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1081
    const/4 v2, 0x0

    #@2
    .line 1083
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@5
    move-result-object v5

    #@6
    .line 1084
    const/4 v6, 0x0

    #@7
    .line 1083
    invoke-interface {v5, p2, v6, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    .line 1087
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v2, :cond_0

    #@d
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    if-nez v5, :cond_1

    #@11
    .line 1088
    :cond_0
    const-string/jumbo v5, "PackageInstaller"

    #@14
    new-instance v6, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v7, "Notification not built for package: "

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 1089
    return-object v8

    #@2c
    .line 1091
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2f
    move-result-object v4

    #@30
    .line 1093
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@32
    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@35
    move-result-object v5

    #@36
    .line 1094
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@39
    move-result-object v6

    #@3a
    .line 1095
    const v7, 0x1050005

    #@3d
    .line 1094
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@40
    move-result v6

    #@41
    .line 1096
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@44
    move-result-object v7

    #@45
    .line 1097
    const v8, 0x1050006

    #@48
    .line 1096
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@4b
    move-result v7

    #@4c
    .line 1092
    invoke-static {v5, v6, v7}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    #@4f
    move-result-object v1

    #@50
    .line 1098
    .local v1, "packageIcon":Landroid/graphics/Bitmap;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@52
    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@55
    move-result-object v3

    #@56
    .line 1099
    .local v3, "packageLabel":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/Notification$Builder;

    #@58
    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@5b
    .line 1100
    const v6, 0x1080306

    #@5e
    .line 1099
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@61
    move-result-object v5

    #@62
    .line 1101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@65
    move-result-object v6

    #@66
    .line 1102
    const v7, 0x106005b

    #@69
    .line 1101
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    #@6c
    move-result v6

    #@6d
    .line 1099
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@78
    move-result-object v5

    #@79
    .line 1105
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    #@7b
    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    #@7e
    invoke-virtual {v6, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    #@81
    move-result-object v6

    #@82
    .line 1099
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@8d
    move-result-object v5

    #@8e
    return-object v5

    #@8f
    .line 1085
    .end local v1    # "packageIcon":Landroid/graphics/Bitmap;
    .end local v3    # "packageLabel":Ljava/lang/CharSequence;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@90
    .local v0, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 27
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 579
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 580
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@8
    const-string/jumbo v7, "createSession"

    #@b
    const/4 v5, 0x1

    #@c
    const/4 v6, 0x1

    #@d
    move/from16 v4, p3

    #@f
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    #@12
    .line 582
    move-object/from16 v0, p0

    #@14
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@16
    const-string/jumbo v5, "no_install_apps"

    #@19
    move/from16 v0, p3

    #@1b
    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 583
    new-instance v2, Ljava/lang/SecurityException;

    #@23
    const-string/jumbo v5, "User restriction prevents installing"

    #@26
    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 586
    :cond_0
    const/16 v2, 0x7d0

    #@2c
    if-eq v3, v2, :cond_1

    #@2e
    if-nez v3, :cond_2

    #@30
    .line 587
    :cond_1
    move-object/from16 v0, p1

    #@32
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@34
    or-int/lit8 v2, v2, 0x20

    #@36
    move-object/from16 v0, p1

    #@38
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@3a
    .line 598
    :goto_0
    move-object/from16 v0, p1

    #@3c
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@3e
    and-int/lit16 v2, v2, 0x100

    #@40
    if-eqz v2, :cond_3

    #@42
    .line 599
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@46
    const-string/jumbo v5, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    #@49
    invoke-virtual {v2, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@4c
    move-result v2

    #@4d
    .line 600
    const/4 v5, -0x1

    #@4e
    .line 599
    if-ne v2, v5, :cond_3

    #@50
    .line 601
    new-instance v2, Ljava/lang/SecurityException;

    #@52
    const-string/jumbo v5, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to use the PackageManager.INSTALL_GRANT_RUNTIME_PERMISSIONS flag"

    #@55
    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@58
    throw v2

    #@59
    .line 590
    :cond_2
    move-object/from16 v0, p0

    #@5b
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    #@5d
    move-object/from16 v0, p2

    #@5f
    invoke-virtual {v2, v3, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    #@62
    .line 592
    move-object/from16 v0, p1

    #@64
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@66
    and-int/lit8 v2, v2, -0x21

    #@68
    move-object/from16 v0, p1

    #@6a
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6c
    .line 593
    move-object/from16 v0, p1

    #@6e
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@70
    and-int/lit8 v2, v2, -0x41

    #@72
    move-object/from16 v0, p1

    #@74
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@76
    .line 594
    move-object/from16 v0, p1

    #@78
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@7a
    or-int/lit8 v2, v2, 0x2

    #@7c
    move-object/from16 v0, p1

    #@7e
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@80
    goto :goto_0

    #@81
    .line 607
    :cond_3
    move-object/from16 v0, p1

    #@83
    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@85
    if-eqz v2, :cond_5

    #@87
    .line 608
    move-object/from16 v0, p0

    #@89
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@8b
    .line 609
    const-string/jumbo v5, "activity"

    #@8e
    .line 608
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@91
    move-result-object v21

    #@92
    check-cast v21, Landroid/app/ActivityManager;

    #@94
    .line 610
    .local v21, "am":Landroid/app/ActivityManager;
    invoke-virtual/range {v21 .. v21}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    #@97
    move-result v23

    #@98
    .line 611
    .local v23, "iconSize":I
    move-object/from16 v0, p1

    #@9a
    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@9c
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    #@9f
    move-result v2

    #@a0
    mul-int/lit8 v5, v23, 0x2

    #@a2
    if-gt v2, v5, :cond_4

    #@a4
    .line 612
    move-object/from16 v0, p1

    #@a6
    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@a8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    #@ab
    move-result v2

    #@ac
    mul-int/lit8 v5, v23, 0x2

    #@ae
    if-le v2, v5, :cond_5

    #@b0
    .line 613
    :cond_4
    move-object/from16 v0, p1

    #@b2
    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@b4
    .line 614
    const/4 v5, 0x1

    #@b5
    .line 613
    move/from16 v0, v23

    #@b7
    move/from16 v1, v23

    #@b9
    invoke-static {v2, v0, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@bc
    move-result-object v2

    #@bd
    move-object/from16 v0, p1

    #@bf
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@c1
    .line 618
    .end local v21    # "am":Landroid/app/ActivityManager;
    .end local v23    # "iconSize":I
    :cond_5
    move-object/from16 v0, p1

    #@c3
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@c5
    packed-switch v2, :pswitch_data_0

    #@c8
    .line 623
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@ca
    new-instance v5, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v6, "Invalid install mode: "

    #@d2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v5

    #@d6
    move-object/from16 v0, p1

    #@d8
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@da
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v5

    #@de
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v5

    #@e2
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e5
    throw v2

    #@e6
    .line 628
    :pswitch_0
    move-object/from16 v0, p1

    #@e8
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@ea
    and-int/lit8 v2, v2, 0x10

    #@ec
    if-eqz v2, :cond_6

    #@ee
    .line 629
    move-object/from16 v0, p0

    #@f0
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@f2
    move-object/from16 v0, p1

    #@f4
    iget-wide v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@f6
    invoke-static {v2, v6, v7}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;J)Z

    #@f9
    move-result v2

    #@fa
    if-nez v2, :cond_8

    #@fc
    .line 630
    new-instance v2, Ljava/io/IOException;

    #@fe
    const-string/jumbo v5, "No suitable internal storage available"

    #@101
    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@104
    throw v2

    #@105
    .line 633
    :cond_6
    move-object/from16 v0, p1

    #@107
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@109
    and-int/lit8 v2, v2, 0x8

    #@10b
    if-eqz v2, :cond_7

    #@10d
    .line 634
    move-object/from16 v0, p0

    #@10f
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@111
    move-object/from16 v0, p1

    #@113
    iget-wide v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@115
    invoke-static {v2, v6, v7}, Lcom/android/internal/content/PackageHelper;->fitsOnExternal(Landroid/content/Context;J)Z

    #@118
    move-result v2

    #@119
    if-nez v2, :cond_8

    #@11b
    .line 635
    new-instance v2, Ljava/io/IOException;

    #@11d
    const-string/jumbo v5, "No suitable external storage available"

    #@120
    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@123
    throw v2

    #@124
    .line 638
    :cond_7
    move-object/from16 v0, p1

    #@126
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@128
    and-int/lit16 v2, v2, 0x200

    #@12a
    if-eqz v2, :cond_9

    #@12c
    .line 641
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallFlagsInternal()V

    #@12f
    .line 661
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    #@131
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@133
    monitor-enter v5

    #@134
    .line 663
    :try_start_0
    move-object/from16 v0, p0

    #@136
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@138
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    #@13b
    move-result v20

    #@13c
    .line 664
    .local v20, "activeCount":I
    move/from16 v0, v20

    #@13e
    int-to-long v6, v0

    #@13f
    const-wide/16 v10, 0x400

    #@141
    cmp-long v2, v6, v10

    #@143
    if-ltz v2, :cond_a

    #@145
    .line 665
    new-instance v2, Ljava/lang/IllegalStateException;

    #@147
    .line 666
    new-instance v6, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v7, "Too many active sessions for UID "

    #@14f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v6

    #@153
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@156
    move-result-object v6

    #@157
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15a
    move-result-object v6

    #@15b
    .line 665
    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15e
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15f
    .line 661
    .end local v20    # "activeCount":I
    :catchall_0
    move-exception v2

    #@160
    monitor-exit v5

    #@161
    throw v2

    #@162
    .line 646
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallFlagsInternal()V

    #@165
    .line 650
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@168
    move-result-wide v24

    #@169
    .line 652
    .local v24, "ident":J
    :try_start_1
    move-object/from16 v0, p0

    #@16b
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@16d
    .line 653
    move-object/from16 v0, p1

    #@16f
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@171
    move-object/from16 v0, p1

    #@173
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@175
    move-object/from16 v0, p1

    #@177
    iget-wide v10, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@179
    .line 652
    invoke-static {v2, v5, v6, v10, v11}, Lcom/android/internal/content/PackageHelper;->resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/lang/String;

    #@17c
    move-result-object v2

    #@17d
    move-object/from16 v0, p1

    #@17f
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@181
    .line 655
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@184
    goto :goto_1

    #@185
    .line 654
    :catchall_1
    move-exception v2

    #@186
    .line 655
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@189
    .line 654
    throw v2

    #@18a
    .line 668
    .end local v24    # "ident":J
    .restart local v20    # "activeCount":I
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    #@18c
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    #@18e
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    #@191
    move-result v22

    #@192
    .line 669
    .local v22, "historicalCount":I
    move/from16 v0, v22

    #@194
    int-to-long v6, v0

    #@195
    const-wide/32 v10, 0x100000

    #@198
    cmp-long v2, v6, v10

    #@19a
    if-ltz v2, :cond_b

    #@19c
    .line 670
    new-instance v2, Ljava/lang/IllegalStateException;

    #@19e
    .line 671
    new-instance v6, Ljava/lang/StringBuilder;

    #@1a0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1a3
    const-string/jumbo v7, "Too many historical sessions for UID "

    #@1a6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v6

    #@1aa
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v6

    #@1ae
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b1
    move-result-object v6

    #@1b2
    .line 670
    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b5
    throw v2

    #@1b6
    .line 674
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b9
    move-result v9

    #@1ba
    .local v9, "sessionId":I
    monitor-exit v5

    #@1bb
    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1be
    move-result-wide v14

    #@1bf
    .line 679
    .local v14, "createdMillis":J
    const/16 v16, 0x0

    #@1c1
    .line 680
    .local v16, "stageDir":Ljava/io/File;
    const/16 v17, 0x0

    #@1c3
    .line 681
    .local v17, "stageCid":Ljava/lang/String;
    move-object/from16 v0, p1

    #@1c5
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@1c7
    and-int/lit8 v2, v2, 0x10

    #@1c9
    if-eqz v2, :cond_d

    #@1cb
    .line 683
    move-object/from16 v0, p1

    #@1cd
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@1cf
    and-int/lit16 v2, v2, 0x800

    #@1d1
    if-eqz v2, :cond_c

    #@1d3
    const/16 v26, 0x1

    #@1d5
    .line 684
    .local v26, "isEphemeral":Z
    :goto_2
    move-object/from16 v0, p1

    #@1d7
    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@1d9
    move-object/from16 v0, p0

    #@1db
    move/from16 v1, v26

    #@1dd
    invoke-direct {v0, v2, v9, v1}, Lcom/android/server/pm/PackageInstallerService;->buildStageDir(Ljava/lang/String;IZ)Ljava/io/File;

    #@1e0
    move-result-object v16

    #@1e1
    .line 689
    .end local v16    # "stageDir":Ljava/io/File;
    .end local v17    # "stageCid":Ljava/lang/String;
    .end local v26    # "isEphemeral":Z
    :goto_3
    new-instance v4, Lcom/android/server/pm/PackageInstallerSession;

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@1eb
    move-object/from16 v0, p0

    #@1ed
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@1ef
    .line 690
    move-object/from16 v0, p0

    #@1f1
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    #@1f3
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1f6
    move-result-object v8

    #@1f7
    .line 691
    const/16 v18, 0x0

    #@1f9
    const/16 v19, 0x0

    #@1fb
    move/from16 v10, p3

    #@1fd
    move-object/from16 v11, p2

    #@1ff
    move v12, v3

    #@200
    move-object/from16 v13, p1

    #@202
    .line 689
    invoke-direct/range {v4 .. v19}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V

    #@205
    .line 693
    .local v4, "session":Lcom/android/server/pm/PackageInstallerSession;
    move-object/from16 v0, p0

    #@207
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@209
    monitor-enter v5

    #@20a
    .line 694
    :try_start_3
    move-object/from16 v0, p0

    #@20c
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@20e
    invoke-virtual {v2, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@211
    monitor-exit v5

    #@212
    .line 697
    move-object/from16 v0, p0

    #@214
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    #@216
    iget v5, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@218
    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@21a
    invoke-static {v2, v5, v6}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->-wrap2(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    #@21d
    .line 698
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V

    #@220
    .line 699
    return v9

    #@221
    .line 683
    .end local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local v16    # "stageDir":Ljava/io/File;
    .restart local v17    # "stageCid":Ljava/lang/String;
    :cond_c
    const/16 v26, 0x0

    #@223
    .restart local v26    # "isEphemeral":Z
    goto :goto_2

    #@224
    .line 686
    .end local v26    # "isEphemeral":Z
    :cond_d
    move-object/from16 v0, p0

    #@226
    invoke-direct {v0, v9}, Lcom/android/server/pm/PackageInstallerService;->buildExternalStageCid(I)Ljava/lang/String;

    #@229
    move-result-object v17

    #@22a
    .local v17, "stageCid":Ljava/lang/String;
    goto :goto_3

    #@22b
    .line 693
    .end local v16    # "stageDir":Ljava/io/File;
    .end local v17    # "stageCid":Ljava/lang/String;
    .restart local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_2
    move-exception v2

    #@22c
    monitor-exit v5

    #@22d
    throw v2

    #@22e
    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getSessionCount(Landroid/util/SparseArray;I)I
    .locals 5
    .param p1, "installerUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 932
    .local p0, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/PackageInstallerSession;>;"
    const/4 v0, 0x0

    #@1
    .line 933
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@4
    move-result v3

    #@5
    .line 934
    .local v3, "size":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    .line 935
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    #@e
    .line 936
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@10
    if-ne v4, p1, :cond_0

    #@12
    .line 937
    add-int/lit8 v0, v0, 0x1

    #@14
    .line 934
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 940
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    return v0
.end method

.method private isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 4
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 944
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 945
    .local v0, "callingUid":I
    if-nez v0, :cond_0

    #@8
    .line 946
    return v1

    #@9
    .line 948
    :cond_0
    if-eqz p1, :cond_1

    #@b
    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@d
    if-ne v0, v3, :cond_1

    #@f
    :goto_0
    return v1

    #@10
    :cond_1
    move v1, v2

    #@11
    goto :goto_0
.end method

.method public static isStageName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 306
    const-string/jumbo v3, "vmdl"

    #@3
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    const-string/jumbo v3, ".tmp"

    #@c
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    .line 307
    :goto_0
    const-string/jumbo v3, "smdl"

    #@13
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    const-string/jumbo v3, ".tmp"

    #@1c
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    .line 308
    :goto_1
    const-string/jumbo v3, "smdl2tmp"

    #@23
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v2

    #@27
    .line 309
    .local v2, "isLegacyContainer":Z
    if-nez v1, :cond_2

    #@29
    if-nez v0, :cond_2

    #@2b
    .end local v2    # "isLegacyContainer":Z
    :goto_2
    return v2

    #@2c
    .line 306
    :cond_0
    const/4 v1, 0x0

    #@2d
    .local v1, "isFile":Z
    goto :goto_0

    #@2e
    .line 307
    .end local v1    # "isFile":Z
    :cond_1
    const/4 v0, 0x0

    #@2f
    .local v0, "isContainer":Z
    goto :goto_1

    #@30
    .line 309
    .end local v0    # "isContainer":Z
    .restart local v2    # "isLegacyContainer":Z
    :cond_2
    const/4 v2, 0x1

    #@31
    goto :goto_2
.end method

.method public static varargs newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroid/util/ArraySet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1111
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 1112
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    if-eqz p0, :cond_0

    #@7
    .line 1113
    array-length v1, p0

    #@8
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    #@b
    .line 1114
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@e
    .line 1116
    :cond_0
    return-object v0
.end method

.method private openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 761
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    #@b
    .line 763
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_0

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 766
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v2

    #@17
    .line 767
    return-object v0

    #@18
    .line 764
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Caller has no access to session "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 761
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    #@33
    monitor-exit v2

    #@34
    throw v1
.end method

.method static prepareExternalStageCid(Ljava/lang/String;J)V
    .locals 7
    .param p0, "stageCid"    # Ljava/lang/String;
    .param p1, "sizeBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 820
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 821
    const/16 v4, 0x3e8

    #@6
    const/4 v5, 0x1

    #@7
    move-wide v0, p1

    #@8
    move-object v2, p0

    #@9
    .line 820
    invoke-static/range {v0 .. v5}, Lcom/android/internal/content/PackageHelper;->createSdDir(JLjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 822
    new-instance v0, Ljava/io/IOException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Failed to create session cid: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 819
    :cond_0
    return-void
.end method

.method static prepareStageDir(Ljava/io/File;)V
    .locals 4
    .param p0, "stageDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 798
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 799
    new-instance v1, Ljava/io/IOException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Session dir already exists: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 803
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    const/16 v2, 0x1ed

    #@26
    invoke-static {v1, v2}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    #@29
    .line 804
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    const/16 v2, 0x1ed

    #@2f
    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 810
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@35
    move-result v1

    #@36
    if-nez v1, :cond_1

    #@38
    .line 811
    new-instance v1, Ljava/io/IOException;

    #@3a
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "Failed to restorecon session dir: "

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@51
    throw v1

    #@52
    .line 805
    :catch_0
    move-exception v0

    #@53
    .line 807
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    #@55
    new-instance v2, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v3, "Failed to prepare session dir: "

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6c
    throw v1

    #@6d
    .line 797
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    return-void
.end method

.method private static readGrantedRuntimePermissions(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/String;
    .locals 9
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x0

    #@2
    .line 526
    const/4 v2, 0x0

    #@3
    .line 528
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v0

    #@7
    .line 530
    .end local v2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a
    move-result v4

    #@b
    .local v4, "type":I
    const/4 v5, 0x1

    #@c
    if-eq v4, v5, :cond_3

    #@e
    .line 531
    if-ne v4, v8, :cond_1

    #@10
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v5

    #@14
    if-le v5, v0, :cond_3

    #@16
    .line 532
    :cond_1
    if-eq v4, v8, :cond_0

    #@18
    const/4 v5, 0x4

    #@19
    if-eq v4, v5, :cond_0

    #@1b
    .line 535
    const-string/jumbo v5, "granted-runtime-permission"

    #@1e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_0

    #@28
    .line 536
    const-string/jumbo v5, "name"

    #@2b
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 537
    .local v1, "permission":Ljava/lang/String;
    if-nez v2, :cond_2

    #@31
    .line 538
    new-instance v2, Ljava/util/ArrayList;

    #@33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@36
    .line 540
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 544
    .end local v1    # "permission":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_4

    #@3c
    .line 545
    return-object v7

    #@3d
    .line 548
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@40
    move-result v5

    #@41
    new-array v3, v5, [Ljava/lang/String;

    #@43
    .line 549
    .local v3, "permissionsArray":[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@46
    .line 550
    return-object v3
.end method

.method private readSessionLocked(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/PackageInstallerSession;
    .locals 20
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 387
    const-string/jumbo v2, "sessionId"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@8
    move-result v7

    #@9
    .line 388
    .local v7, "sessionId":I
    const-string/jumbo v2, "userId"

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@11
    move-result v8

    #@12
    .line 389
    .local v8, "userId":I
    const-string/jumbo v2, "installerPackageName"

    #@15
    move-object/from16 v0, p1

    #@17
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v9

    #@1b
    .line 390
    .local v9, "installerPackageName":Ljava/lang/String;
    const-string/jumbo v2, "installerUid"

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@22
    .line 391
    const/16 v4, 0x2000

    #@24
    .line 390
    invoke-virtual {v3, v9, v4, v8}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    #@27
    move-result v3

    #@28
    move-object/from16 v0, p1

    #@2a
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@2d
    move-result v10

    #@2e
    .line 392
    .local v10, "installerUid":I
    const-string/jumbo v2, "createdMillis"

    #@31
    move-object/from16 v0, p1

    #@33
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@36
    move-result-wide v12

    #@37
    .line 393
    .local v12, "createdMillis":J
    const-string/jumbo v2, "sessionStageDir"

    #@3a
    move-object/from16 v0, p1

    #@3c
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v19

    #@40
    .line 394
    .local v19, "stageDirRaw":Ljava/lang/String;
    if-eqz v19, :cond_1

    #@42
    new-instance v14, Ljava/io/File;

    #@44
    move-object/from16 v0, v19

    #@46
    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@49
    .line 395
    :goto_0
    const-string/jumbo v2, "sessionStageCid"

    #@4c
    move-object/from16 v0, p1

    #@4e
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object v15

    #@52
    .line 396
    .local v15, "stageCid":Ljava/lang/String;
    const-string/jumbo v2, "prepared"

    #@55
    const/4 v3, 0x1

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@5b
    move-result v16

    #@5c
    .line 397
    .local v16, "prepared":Z
    const-string/jumbo v2, "sealed"

    #@5f
    move-object/from16 v0, p1

    #@61
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@64
    move-result v17

    #@65
    .line 399
    .local v17, "sealed":Z
    new-instance v11, Landroid/content/pm/PackageInstaller$SessionParams;

    #@67
    .line 400
    const/4 v2, -0x1

    #@68
    .line 399
    invoke-direct {v11, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    #@6b
    .line 401
    .local v11, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const-string/jumbo v2, "mode"

    #@6e
    move-object/from16 v0, p1

    #@70
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@73
    move-result v2

    #@74
    iput v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@76
    .line 402
    const-string/jumbo v2, "installFlags"

    #@79
    move-object/from16 v0, p1

    #@7b
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@7e
    move-result v2

    #@7f
    iput v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@81
    .line 403
    const-string/jumbo v2, "installLocation"

    #@84
    move-object/from16 v0, p1

    #@86
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@89
    move-result v2

    #@8a
    iput v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@8c
    .line 404
    const-string/jumbo v2, "sizeBytes"

    #@8f
    move-object/from16 v0, p1

    #@91
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@94
    move-result-wide v2

    #@95
    iput-wide v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@97
    .line 405
    const-string/jumbo v2, "appPackageName"

    #@9a
    move-object/from16 v0, p1

    #@9c
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@a2
    .line 406
    const-string/jumbo v2, "appIcon"

    #@a5
    move-object/from16 v0, p1

    #@a7
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@aa
    move-result-object v2

    #@ab
    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@ad
    .line 407
    const-string/jumbo v2, "appLabel"

    #@b0
    move-object/from16 v0, p1

    #@b2
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@b8
    .line 408
    const-string/jumbo v2, "originatingUri"

    #@bb
    move-object/from16 v0, p1

    #@bd
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    #@c0
    move-result-object v2

    #@c1
    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@c3
    .line 410
    const-string/jumbo v2, "originatingUid"

    #@c6
    const/4 v3, -0x1

    #@c7
    move-object/from16 v0, p1

    #@c9
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@cc
    move-result v2

    #@cd
    .line 409
    iput v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    #@cf
    .line 411
    const-string/jumbo v2, "referrerUri"

    #@d2
    move-object/from16 v0, p1

    #@d4
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    #@d7
    move-result-object v2

    #@d8
    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@da
    .line 412
    const-string/jumbo v2, "abiOverride"

    #@dd
    move-object/from16 v0, p1

    #@df
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@e2
    move-result-object v2

    #@e3
    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@e5
    .line 413
    const-string/jumbo v2, "volumeUuid"

    #@e8
    move-object/from16 v0, p1

    #@ea
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@ed
    move-result-object v2

    #@ee
    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@f0
    .line 414
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerService;->readGrantedRuntimePermissions(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/String;

    #@f3
    move-result-object v2

    #@f4
    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@f6
    .line 416
    move-object/from16 v0, p0

    #@f8
    invoke-direct {v0, v7}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    #@fb
    move-result-object v18

    #@fc
    .line 417
    .local v18, "appIconFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    #@ff
    move-result v2

    #@100
    if-eqz v2, :cond_0

    #@102
    .line 418
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@105
    move-result-object v2

    #@106
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@109
    move-result-object v2

    #@10a
    iput-object v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@10c
    .line 419
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->lastModified()J

    #@10f
    move-result-wide v2

    #@110
    iput-wide v2, v11, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    #@112
    .line 422
    :cond_0
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession;

    #@114
    move-object/from16 v0, p0

    #@116
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@118
    move-object/from16 v0, p0

    #@11a
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@11c
    move-object/from16 v0, p0

    #@11e
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@120
    .line 423
    move-object/from16 v0, p0

    #@122
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    #@124
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@127
    move-result-object v6

    #@128
    .line 422
    invoke-direct/range {v2 .. v17}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V

    #@12b
    return-object v2

    #@12c
    .line 394
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v15    # "stageCid":Ljava/lang/String;
    .end local v16    # "prepared":Z
    .end local v17    # "sealed":Z
    .end local v18    # "appIconFile":Ljava/io/File;
    :cond_1
    const/4 v14, 0x0

    #@12d
    .local v14, "stageDir":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private readSessionsLocked()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x1

    #@1
    .line 339
    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    #@6
    .line 341
    const/4 v4, 0x0

    #@7
    .line 343
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    #@9
    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@c
    move-result-object v4

    #@d
    .line 344
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@10
    move-result-object v5

    #@11
    .line 345
    .local v5, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@13
    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@16
    move-result-object v10

    #@17
    invoke-interface {v5, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1a
    .line 348
    :cond_0
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1d
    move-result v8

    #@1e
    .local v8, "type":I
    if-eq v8, v14, :cond_3

    #@20
    .line 349
    const/4 v10, 0x2

    #@21
    if-ne v8, v10, :cond_0

    #@23
    .line 350
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    .line 351
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v10, "session"

    #@2a
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v10

    #@2e
    if-eqz v10, :cond_0

    #@30
    .line 352
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageInstallerService;->readSessionLocked(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/PackageInstallerSession;

    #@33
    move-result-object v6

    #@34
    .line 353
    .local v6, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@37
    move-result-wide v10

    #@38
    iget-wide v12, v6, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    #@3a
    sub-long v0, v10, v12

    #@3c
    .line 356
    .local v0, "age":J
    const-wide/32 v10, 0xf731400

    #@3f
    cmp-long v10, v0, v10

    #@41
    if-ltz v10, :cond_1

    #@43
    .line 357
    const-string/jumbo v10, "PackageInstaller"

    #@46
    new-instance v11, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v12, "Abandoning old session first created at "

    #@4e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v11

    #@52
    .line 358
    iget-wide v12, v6, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    #@54
    .line 357
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@57
    move-result-object v11

    #@58
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v11

    #@5c
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 359
    const/4 v9, 0x0

    #@60
    .line 364
    .local v9, "valid":Z
    :goto_1
    if-eqz v9, :cond_2

    #@62
    .line 365
    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@64
    iget v11, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@66
    invoke-virtual {v10, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@69
    .line 372
    :goto_2
    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    #@6b
    iget v11, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@6d
    const/4 v12, 0x1

    #@6e
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    goto :goto_0

    #@72
    .line 376
    .end local v0    # "age":J
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "valid":Z
    :catch_0
    move-exception v2

    #@73
    .line 381
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@76
    .line 336
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    #@77
    .line 361
    .restart local v0    # "age":J
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_1
    const/4 v9, 0x1

    #@78
    .restart local v9    # "valid":Z
    goto :goto_1

    #@79
    .line 370
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    #@7b
    iget v11, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@7d
    invoke-virtual {v10, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@80
    goto :goto_2

    #@81
    .line 378
    .end local v0    # "age":J
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "valid":Z
    :catch_1
    move-exception v3

    #@82
    .line 379
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v10, "PackageInstaller"

    #@85
    const-string/jumbo v11, "Failed reading install sessions"

    #@88
    invoke-static {v10, v11, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8b
    .line 381
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8e
    goto :goto_3

    #@8f
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@92
    goto :goto_3

    #@93
    .line 380
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catchall_0
    move-exception v10

    #@94
    .line 381
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@97
    .line 380
    throw v10
.end method

.method private reconcileStagesLocked(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "isEphemeral"    # Z

    #@0
    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->buildStagingDir(Ljava/lang/String;Z)Ljava/io/File;

    #@3
    move-result-object v4

    #@4
    .line 253
    .local v4, "stagingDir":Ljava/io/File;
    sget-object v6, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    #@6
    invoke-virtual {v4, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@9
    move-result-object v6

    #@a
    .line 252
    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@d
    move-result-object v5

    #@e
    .line 256
    .local v5, "unclaimedStages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@14
    move-result v6

    #@15
    if-ge v0, v6, :cond_0

    #@17
    .line 257
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    #@1f
    .line 258
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@21
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@24
    .line 256
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 262
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v3

    #@2b
    .local v3, "stage$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_1

    #@31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Ljava/io/File;

    #@37
    .line 263
    .local v2, "stage":Ljava/io/File;
    const-string/jumbo v6, "PackageInstaller"

    #@3a
    new-instance v7, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "Deleting orphan stage "

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 264
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@53
    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@55
    monitor-enter v7

    #@56
    .line 265
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@58
    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5b
    monitor-exit v7

    #@5c
    goto :goto_1

    #@5d
    .line 264
    :catchall_0
    move-exception v6

    #@5e
    monitor-exit v7

    #@5f
    throw v6

    #@60
    .line 250
    .end local v2    # "stage":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static writeGrantedRuntimePermissions(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V
    .locals 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "grantedRuntimePermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 515
    if-eqz p1, :cond_0

    #@3
    .line 516
    const/4 v1, 0x0

    #@4
    array-length v2, p1

    #@5
    :goto_0
    if-ge v1, v2, :cond_0

    #@7
    aget-object v0, p1, v1

    #@9
    .line 517
    .local v0, "permission":Ljava/lang/String;
    const-string/jumbo v3, "granted-runtime-permission"

    #@c
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 518
    const-string/jumbo v3, "name"

    #@12
    invoke-static {p0, v3, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 519
    const-string/jumbo v3, "granted-runtime-permission"

    #@18
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 516
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 514
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private writeSessionLocked(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 11
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 456
    iget-object v4, p2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@3
    .line 458
    .local v4, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const-string/jumbo v5, "session"

    #@6
    invoke-interface {p1, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 460
    const-string/jumbo v5, "sessionId"

    #@c
    iget v6, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@e
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@11
    .line 461
    const-string/jumbo v5, "userId"

    #@14
    iget v6, p2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@16
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@19
    .line 462
    const-string/jumbo v5, "installerPackageName"

    #@1c
    .line 463
    iget-object v6, p2, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@1e
    .line 462
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 464
    const-string/jumbo v5, "installerUid"

    #@24
    iget v6, p2, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@26
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@29
    .line 465
    const-string/jumbo v5, "createdMillis"

    #@2c
    iget-wide v6, p2, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    #@2e
    invoke-static {p1, v5, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@31
    .line 466
    iget-object v5, p2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 467
    const-string/jumbo v5, "sessionStageDir"

    #@38
    .line 468
    iget-object v6, p2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@3a
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    .line 467
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 470
    :cond_0
    iget-object v5, p2, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@43
    if-eqz v5, :cond_1

    #@45
    .line 471
    const-string/jumbo v5, "sessionStageCid"

    #@48
    iget-object v6, p2, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@4a
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 473
    :cond_1
    const-string/jumbo v5, "prepared"

    #@50
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->isPrepared()Z

    #@53
    move-result v6

    #@54
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@57
    .line 474
    const-string/jumbo v5, "sealed"

    #@5a
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    #@5d
    move-result v6

    #@5e
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@61
    .line 476
    const-string/jumbo v5, "mode"

    #@64
    iget v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@66
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@69
    .line 477
    const-string/jumbo v5, "installFlags"

    #@6c
    iget v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6e
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@71
    .line 478
    const-string/jumbo v5, "installLocation"

    #@74
    iget v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@76
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@79
    .line 479
    const-string/jumbo v5, "sizeBytes"

    #@7c
    iget-wide v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@7e
    invoke-static {p1, v5, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@81
    .line 480
    const-string/jumbo v5, "appPackageName"

    #@84
    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@86
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@89
    .line 481
    const-string/jumbo v5, "appLabel"

    #@8c
    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@8e
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@91
    .line 482
    const-string/jumbo v5, "originatingUri"

    #@94
    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@96
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    #@99
    .line 483
    const-string/jumbo v5, "originatingUid"

    #@9c
    iget v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    #@9e
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@a1
    .line 484
    const-string/jumbo v5, "referrerUri"

    #@a4
    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@a6
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    #@a9
    .line 485
    const-string/jumbo v5, "abiOverride"

    #@ac
    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@ae
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@b1
    .line 486
    const-string/jumbo v5, "volumeUuid"

    #@b4
    iget-object v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@b6
    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@b9
    .line 489
    iget v5, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@bb
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    #@be
    move-result-object v0

    #@bf
    .line 490
    .local v0, "appIconFile":Ljava/io/File;
    iget-object v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@c1
    if-nez v5, :cond_3

    #@c3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@c6
    move-result v5

    #@c7
    if-eqz v5, :cond_3

    #@c9
    .line 491
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@cc
    .line 508
    :cond_2
    :goto_0
    iget-object v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    #@ce
    invoke-static {p1, v5}, Lcom/android/server/pm/PackageInstallerService;->writeGrantedRuntimePermissions(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V

    #@d1
    .line 510
    const-string/jumbo v5, "session"

    #@d4
    invoke-interface {p1, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d7
    .line 455
    return-void

    #@d8
    .line 492
    :cond_3
    iget-object v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@da
    if-eqz v5, :cond_2

    #@dc
    .line 493
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@df
    move-result-wide v6

    #@e0
    iget-wide v8, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    #@e2
    cmp-long v5, v6, v8

    #@e4
    if-eqz v5, :cond_2

    #@e6
    .line 495
    const/4 v2, 0x0

    #@e7
    .line 497
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    #@e9
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ec
    .line 498
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@ee
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@f0
    const/16 v7, 0x5a

    #@f2
    invoke-virtual {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@f5
    .line 502
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f8
    move-object v2, v3

    #@f9
    .line 505
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@fc
    move-result-wide v6

    #@fd
    iput-wide v6, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    #@ff
    goto :goto_0

    #@100
    .line 499
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    #@101
    .line 500
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    const-string/jumbo v5, "PackageInstaller"

    #@104
    new-instance v6, Ljava/lang/StringBuilder;

    #@106
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@109
    const-string/jumbo v7, "Failed to write icon "

    #@10c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v6

    #@110
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v6

    #@114
    const-string/jumbo v7, ": "

    #@117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v6

    #@11b
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@11e
    move-result-object v7

    #@11f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v6

    #@123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v6

    #@127
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12a
    .line 502
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@12d
    goto :goto_1

    #@12e
    .line 501
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@12f
    .line 502
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@132
    .line 501
    throw v5

    #@133
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    #@134
    move-object v2, v3

    #@135
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    goto :goto_3

    #@136
    .line 499
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    #@137
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@138
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private writeSessionsAsync()V
    .locals 2

    #@0
    .prologue
    .line 558
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$2;

    #@6
    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerService$2;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 557
    return-void
.end method

.method private writeSessionsLocked()V
    .locals 8

    #@0
    .prologue
    .line 430
    const/4 v1, 0x0

    #@1
    .line 432
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    #@3
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@6
    move-result-object v1

    #@7
    .line 434
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 435
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@e
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@15
    .line 436
    const/4 v6, 0x1

    #@16
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@19
    move-result-object v6

    #@1a
    const/4 v7, 0x0

    #@1b
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@1e
    .line 437
    const-string/jumbo v6, "sessions"

    #@21
    const/4 v7, 0x0

    #@22
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 438
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@2a
    move-result v5

    #@2b
    .line 439
    .local v5, "size":I
    const/4 v2, 0x0

    #@2c
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    #@2e
    .line 440
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    #@36
    .line 441
    .local v4, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/PackageInstallerService;->writeSessionLocked(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageInstallerSession;)V

    #@39
    .line 439
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 443
    .end local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    const-string/jumbo v6, "sessions"

    #@3f
    const/4 v7, 0x0

    #@40
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43
    .line 444
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@46
    .line 446
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    #@48
    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 427
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "size":I
    :cond_1
    :goto_1
    return-void

    #@4c
    .line 447
    :catch_0
    move-exception v0

    #@4d
    .line 448
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    #@4f
    .line 449
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    #@51
    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@54
    goto :goto_1
.end method


# virtual methods
.method public abandonSession(I)V
    .locals 5
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 742
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    #@b
    .line 744
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_0

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 747
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v2

    #@17
    .line 741
    return-void

    #@18
    .line 745
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Caller has no access to session "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 742
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    #@33
    monitor-exit v2

    #@34
    throw v1
.end method

.method public allocateExternalStageCidLegacy()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 330
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    #@6
    move-result v0

    #@7
    .line 331
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    #@9
    const/4 v3, 0x1

    #@a
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@d
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "smdl"

    #@15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v3, ".tmp"

    #@20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result-object v1

    #@28
    monitor-exit v2

    #@29
    return-object v1

    #@2a
    .line 329
    .end local v0    # "sessionId":I
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method

.method public allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;
    .locals 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "isEphemeral"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 314
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    #@6
    move-result v1

    #@7
    .line 317
    .local v1, "sessionId":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    #@9
    const/4 v5, 0x1

    #@a
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@d
    .line 318
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/PackageInstallerService;->buildStageDir(Ljava/lang/String;IZ)Ljava/io/File;

    #@10
    move-result-object v2

    #@11
    .line 319
    .local v2, "stageDir":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v4

    #@15
    .line 320
    return-object v2

    #@16
    .line 321
    .end local v1    # "sessionId":I
    .end local v2    # "stageDir":Ljava/io/File;
    :catch_0
    move-exception v0

    #@17
    .line 322
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    #@19
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@1c
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 314
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v4

    #@1f
    throw v3
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 2
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 571
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 572
    :catch_0
    move-exception v0

    #@6
    .line 573
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@9
    move-result-object v1

    #@a
    throw v1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1203
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 1204
    :try_start_0
    const-string/jumbo v3, "Active install sessions:"

    #@6
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 1205
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@c
    .line 1206
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@11
    move-result v0

    #@12
    .line 1207
    .local v0, "N":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@15
    .line 1208
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    #@1d
    .line 1209
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@20
    .line 1210
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@23
    .line 1207
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1212
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@29
    .line 1213
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@2c
    .line 1215
    const-string/jumbo v3, "Historical install sessions:"

    #@2f
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 1216
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@35
    .line 1217
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@3a
    move-result v0

    #@3b
    .line 1218
    const/4 v1, 0x0

    #@3c
    :goto_1
    if-ge v1, v0, :cond_1

    #@3e
    .line 1219
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;

    #@40
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    #@46
    .line 1220
    .restart local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@49
    .line 1221
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@4c
    .line 1218
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 1223
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@52
    .line 1224
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@55
    .line 1226
    const-string/jumbo v3, "Legacy install sessions:"

    #@58
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@5b
    .line 1227
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@5e
    .line 1228
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    #@60
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 1229
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6a
    monitor-exit v4

    #@6b
    .line 1202
    return-void

    #@6c
    .line 1203
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@6d
    monitor-exit v4

    #@6e
    throw v3
.end method

.method public getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    const-string/jumbo v5, "getAllSessions"

    #@9
    const/4 v3, 0x1

    #@a
    const/4 v4, 0x0

    #@b
    move v2, p1

    #@c
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    #@f
    .line 838
    new-instance v7, Ljava/util/ArrayList;

    #@11
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 839
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@16
    monitor-enter v1

    #@17
    .line 840
    const/4 v6, 0x0

    #@18
    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@1d
    move-result v0

    #@1e
    if-ge v6, v0, :cond_1

    #@20
    .line 841
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v8

    #@26
    check-cast v8, Lcom/android/server/pm/PackageInstallerSession;

    #@28
    .line 842
    .local v8, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v0, v8, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@2a
    if-ne v0, p1, :cond_0

    #@2c
    .line 843
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;

    #@2f
    move-result-object v0

    #@30
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 840
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@35
    goto :goto_0

    #@36
    .end local v8    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    monitor-exit v1

    #@37
    .line 847
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    #@39
    invoke-direct {v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@3c
    return-object v0

    #@3d
    .line 839
    :catchall_0
    move-exception v0

    #@3e
    monitor-exit v1

    #@3f
    throw v0
.end method

.method public getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 9
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    const-string/jumbo v5, "getMySessions"

    #@9
    const/4 v3, 0x1

    #@a
    const/4 v4, 0x0

    #@b
    move v2, p2

    #@c
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    #@f
    .line 853
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    #@11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@14
    move-result v1

    #@15
    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    #@18
    .line 855
    new-instance v7, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 856
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@1f
    monitor-enter v1

    #@20
    .line 857
    const/4 v6, 0x0

    #@21
    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@26
    move-result v0

    #@27
    if-ge v6, v0, :cond_1

    #@29
    .line 858
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2e
    move-result-object v8

    #@2f
    check-cast v8, Lcom/android/server/pm/PackageInstallerSession;

    #@31
    .line 859
    .local v8, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@33
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_0

    #@39
    .line 860
    iget v0, v8, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@3b
    if-ne v0, p2, :cond_0

    #@3d
    .line 861
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;

    #@40
    move-result-object v0

    #@41
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 857
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@46
    goto :goto_0

    #@47
    .end local v8    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1
    monitor-exit v1

    #@48
    .line 865
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    #@4a
    invoke-direct {v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@4d
    return-object v0

    #@4e
    .line 856
    :catchall_0
    move-exception v0

    #@4f
    monitor-exit v1

    #@50
    throw v0
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 4
    .param p1, "sessionId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 828
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@3
    monitor-enter v2

    #@4
    .line 829
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    #@c
    .line 830
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v1

    #@12
    :cond_0
    monitor-exit v2

    #@13
    return-object v1

    #@14
    .line 828
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public onPrivateVolumeMounted(Ljava/lang/String;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2
    monitor-enter v0

    #@3
    .line 272
    const/4 v1, 0x0

    #@4
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    .line 270
    return-void

    #@9
    .line 271
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public onSecureContainersAvailable()V
    .locals 10

    #@0
    .prologue
    .line 277
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2
    monitor-enter v6

    #@3
    .line 278
    :try_start_0
    new-instance v4, Landroid/util/ArraySet;

    #@5
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    #@8
    .line 279
    .local v4, "unclaimed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    #@b
    move-result-object v7

    #@c
    const/4 v5, 0x0

    #@d
    array-length v8, v7

    #@e
    :goto_0
    if-ge v5, v8, :cond_1

    #@10
    aget-object v0, v7, v5

    #@12
    .line 280
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    #@15
    move-result v9

    #@16
    if-eqz v9, :cond_0

    #@18
    .line 281
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1b
    .line 279
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 286
    .end local v0    # "cid":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@1f
    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@24
    move-result v5

    #@25
    if-ge v2, v5, :cond_3

    #@27
    .line 287
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    #@2f
    .line 288
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v0, v3, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@31
    .line 290
    .restart local v0    # "cid":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_2

    #@37
    .line 292
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    .line 293
    const/16 v7, 0x3e8

    #@3d
    .line 292
    invoke-static {v0, v5, v7}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@40
    .line 286
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_1

    #@43
    .line 298
    .end local v0    # "cid":Ljava/lang/String;
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v1

    #@47
    .local v1, "cid$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_4

    #@4d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Ljava/lang/String;

    #@53
    .line 299
    .restart local v0    # "cid":Ljava/lang/String;
    const-string/jumbo v5, "PackageInstaller"

    #@56
    new-instance v7, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v8, "Deleting orphan container "

    #@5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 300
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    goto :goto_2

    #@71
    .line 277
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "cid$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v4    # "unclaimed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    #@72
    monitor-exit v6

    #@73
    throw v5

    #@74
    .restart local v1    # "cid$iterator":Ljava/util/Iterator;
    .restart local v2    # "i":I
    .restart local v4    # "unclaimed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4
    monitor-exit v6

    #@75
    .line 276
    return-void
.end method

.method public openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 2
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 754
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 755
    :catch_0
    move-exception v0

    #@6
    .line 756
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@9
    move-result-object v1

    #@a
    throw v1
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .locals 6
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v1

    #@6
    const-string/jumbo v5, "registerCallback"

    #@9
    const/4 v3, 0x1

    #@a
    const/4 v4, 0x0

    #@b
    move v2, p2

    #@c
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    #@f
    .line 922
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    #@11
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->register(Landroid/content/pm/IPackageInstallerCallback;I)V

    #@14
    .line 920
    return-void
.end method

.method public setPermissionsResult(IZ)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z

    #@0
    .prologue
    .line 909
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.INSTALL_PACKAGES"

    #@5
    const-string/jumbo v3, "PackageInstaller"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 911
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@d
    monitor-enter v2

    #@e
    .line 912
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    #@16
    .line 913
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_0

    #@18
    .line 914
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v2

    #@1c
    .line 908
    return-void

    #@1d
    .line 911
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public systemReady()V
    .locals 2

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@2
    const-class v1, Landroid/app/AppOpsManager;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/AppOpsManager;

    #@a
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    #@c
    .line 246
    return-void
.end method

.method public uninstall(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 871
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    .line 872
    .local v3, "callingUid":I
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@6
    const-string/jumbo v7, "uninstall"

    #@9
    const/4 v5, 0x1

    #@a
    const/4 v6, 0x1

    #@b
    move/from16 v4, p5

    #@d
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    #@10
    .line 873
    const/16 v2, 0x7d0

    #@12
    if-eq v3, v2, :cond_0

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 874
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    #@18
    move-object/from16 v0, p2

    #@1a
    invoke-virtual {v2, v3, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    #@1d
    .line 878
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@1f
    .line 879
    const-string/jumbo v5, "device_policy"

    #@22
    .line 878
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v10

    #@26
    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    #@28
    .line 880
    .local v10, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v10, :cond_1

    #@2a
    move-object/from16 v0, p2

    #@2c
    invoke-virtual {v10, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    #@2f
    move-result v8

    #@30
    .line 883
    :goto_0
    new-instance v4, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    #@32
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@34
    move-object/from16 v6, p4

    #@36
    move-object v7, p1

    #@37
    move/from16 v9, p5

    #@39
    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    #@3c
    .line 885
    .local v4, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@3e
    const-string/jumbo v5, "android.permission.DELETE_PACKAGES"

    #@41
    invoke-virtual {v2, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_2

    #@47
    .line 888
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@49
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    #@4c
    move-result-object v5

    #@4d
    move/from16 v0, p5

    #@4f
    move/from16 v1, p3

    #@51
    invoke-virtual {v2, p1, v5, v0, v1}, Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    #@54
    .line 870
    :goto_1
    return-void

    #@55
    .line 880
    .end local v4    # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    :cond_1
    const/4 v8, 0x0

    #@56
    .local v8, "isDeviceOwner":Z
    goto :goto_0

    #@57
    .line 889
    .end local v8    # "isDeviceOwner":Z
    .restart local v4    # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    :cond_2
    if-eqz v8, :cond_3

    #@59
    .line 892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5c
    move-result-wide v12

    #@5d
    .line 894
    .local v12, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@5f
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    #@62
    move-result-object v5

    #@63
    move/from16 v0, p5

    #@65
    move/from16 v1, p3

    #@67
    invoke-virtual {v2, p1, v5, v0, v1}, Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6a
    .line 896
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6d
    goto :goto_1

    #@6e
    .line 895
    :catchall_0
    move-exception v2

    #@6f
    .line 896
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@72
    .line 895
    throw v2

    #@73
    .line 900
    .end local v12    # "ident":J
    :cond_3
    new-instance v11, Landroid/content/Intent;

    #@75
    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    #@78
    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7b
    .line 901
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "package"

    #@7e
    const/4 v5, 0x0

    #@7f
    invoke-static {v2, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v11, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@86
    .line 902
    const-string/jumbo v2, "android.content.pm.extra.CALLBACK"

    #@89
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    #@8c
    move-result-object v5

    #@8d
    invoke-interface {v5}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v11, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    #@94
    .line 903
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    #@97
    goto :goto_1
.end method

.method public unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;

    #@0
    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->unregister(Landroid/content/pm/IPackageInstallerCallback;)V

    #@5
    .line 926
    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "appIcon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 704
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 705
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    #@b
    .line 706
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v2, :cond_2

    #@d
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 711
    if-eqz p2, :cond_1

    #@15
    .line 712
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    #@17
    .line 713
    const-string/jumbo v5, "activity"

    #@1a
    .line 712
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/app/ActivityManager;

    #@20
    .line 714
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    #@23
    move-result v1

    #@24
    .line 715
    .local v1, "iconSize":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    #@27
    move-result v3

    #@28
    mul-int/lit8 v5, v1, 0x2

    #@2a
    if-gt v3, v5, :cond_0

    #@2c
    .line 716
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    #@2f
    move-result v3

    #@30
    mul-int/lit8 v5, v1, 0x2

    #@32
    if-le v3, v5, :cond_1

    #@34
    .line 717
    :cond_0
    const/4 v3, 0x1

    #@35
    invoke-static {p2, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@38
    move-result-object p2

    #@39
    .line 721
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "iconSize":I
    :cond_1
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@3b
    iput-object p2, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@3d
    .line 722
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@3f
    const-wide/16 v6, -0x1

    #@41
    iput-wide v6, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    #@43
    .line 724
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@45
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    monitor-exit v4

    #@49
    .line 703
    return-void

    #@4a
    .line 707
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/SecurityException;

    #@4c
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v6, "Caller has no access to session "

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@63
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    .line 704
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v3

    #@65
    monitor-exit v4

    #@66
    throw v3
.end method

.method public updateSessionAppLabel(ILjava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "appLabel"    # Ljava/lang/String;

    #@0
    .prologue
    .line 730
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    #@b
    .line 732
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_0

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 735
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@15
    iput-object p2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@17
    .line 736
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@19
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 729
    return-void

    #@1e
    .line 733
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "Caller has no access to session "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 730
    .end local v0    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_0
    move-exception v1

    #@39
    monitor-exit v2

    #@3a
    throw v1
.end method

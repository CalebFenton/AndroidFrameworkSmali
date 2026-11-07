.class public abstract Landroid/app/backup/BackupAgent;
.super Landroid/content/ContextWrapper;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;,
        Landroid/app/backup/BackupAgent$BackupServiceBinder;,
        Landroid/app/backup/BackupAgent$IncludeExcludeRules;,
        Landroid/app/backup/BackupAgent$FailRunnable;,
        Landroid/app/backup/BackupAgent$BackupTransportFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEFAULT_BACKUP_DESTINATION:I = 0x0

.field public static final whitelist FLAG_CLIENT_SIDE_ENCRYPTION_ENABLED:I = 0x1

.field public static final whitelist FLAG_DEVICE_TO_DEVICE_TRANSFER:I = 0x2

.field public static final greylist-max-o FLAG_FAKE_CLIENT_SIDE_ENCRYPTION_ENABLED:I = -0x80000000

.field public static final blacklist FLAG_SKIP_RESTORE_FOR_LAUNCHED_APPS:I = 0x4

.field public static final blacklist RESULT_ERROR:I = -0x1

.field public static final blacklist RESULT_SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupAgent"

.field public static final whitelist TYPE_DIRECTORY:I = 0x2

.field public static final greylist-max-o TYPE_EOF:I = 0x0

.field public static final whitelist TYPE_FILE:I = 0x1

.field public static final greylist-max-o TYPE_SYMLINK:I = 0x3


# instance fields
.field private volatile blacklist mBackupDestination:I

.field private final greylist-max-o mBinder:Landroid/os/IBinder;

.field greylist-max-o mHandler:Landroid/os/Handler;

.field private volatile blacklist mLogger:Landroid/app/backup/BackupRestoreEventLogger;

.field private blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;
    .registers 1

    iget-object p0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgent;->getBackupUserId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 215
    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    .line 217
    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 221
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    .line 1082
    new-instance v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;

    invoke-direct {v1, p0, v0}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent-IA;)V

    invoke-virtual {v1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    .line 267
    return-void
.end method

.method private blacklist applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domainToken"    # Ljava/lang/String;
    .param p6, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    .local p3, "includeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local p4, "filterSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p5, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p3, :cond_42

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_42

    .line 664
    :cond_9
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 667
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 668
    .local v8, "includeFile":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    invoke-virtual {v8}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getRequiredFlags()I

    move-result v1

    .line 669
    invoke-virtual {p6}, Landroid/app/backup/FullBackupDataOutput;->getTransportFlags()I

    move-result v3

    .line 668
    invoke-direct {p0, v1, v3}, Landroid/app/backup/BackupAgent;->areIncludeRequiredTransportFlagsSatisfied(II)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 670
    invoke-virtual {v8}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 673
    .end local v8    # "includeFile":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    :cond_41
    goto :goto_19

    .line 660
    :cond_42
    :goto_42
    iget v1, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    .line 661
    invoke-static {p0, v1}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v1

    .line 662
    invoke-virtual {v1, p2}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 660
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 675
    :cond_55
    return-void
.end method

.method private greylist-max-o areIncludeRequiredTransportFlagsSatisfied(II)Z
    .registers 4
    .param p1, "includeFlags"    # I
    .param p2, "transportFlags"    # I

    .line 680
    and-int v0, p2, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist getBackupUserId()I
    .registers 2

    .line 645
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mUser:Landroid/os/UserHandle;

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/content/ContextWrapper;->getUserId()I

    move-result v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :goto_f
    return v0
.end method

.method private blacklist getExtraExcludeDirsIfAny(Landroid/content/Context;)Ljava/util/Set;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 594
    .local v0, "excludedDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o isFileEligibleForRestore(Ljava/io/File;)Z
    .registers 13
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    iget v0, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    invoke-static {p0, v0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    .line 946
    .local v0, "bs":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullRestoreEnabled()Z

    move-result v1

    const-string/jumbo v2, "onRestoreFile \""

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "BackupXmlParserLogging"

    if-nez v1, :cond_40

    .line 947
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 949
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" : fullBackupContent not enabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 950
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 948
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_3f
    return v3

    .line 955
    :cond_40
    const/4 v1, 0x0

    .line 956
    .local v1, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const/4 v6, 0x0

    .line 957
    .local v6, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 959
    .local v7, "destinationCanonicalPath":Ljava/lang/String;
    :try_start_46
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v8

    move-object v1, v8

    .line 960
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;

    move-result-object v2
    :try_end_4f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_4f} :catch_cb

    .line 969
    .end local v6    # "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local v2, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    nop

    .line 971
    if-eqz v2, :cond_7c

    .line 972
    invoke-static {p1, v2}, Landroid/app/backup/BackupUtils;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 973
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestoreFile: \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\": listed in excludes; skipping."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_7b
    return v3

    .line 981
    :cond_7c
    if-eqz v1, :cond_c9

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c9

    .line 984
    const/4 v6, 0x0

    .line 985
    .local v6, "explicitlyIncluded":Z
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 986
    .local v9, "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    nop

    .line 987
    invoke-static {p1, v9}, Landroid/app/backup/BackupUtils;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v10

    or-int/2addr v6, v10

    .line 988
    if-eqz v6, :cond_a2

    .line 989
    goto :goto_a3

    .line 991
    .end local v9    # "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    :cond_a2
    goto :goto_8d

    .line 992
    :cond_a3
    :goto_a3
    if-nez v6, :cond_c9

    .line 993
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onRestoreFile: Trying to restore \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\" but it isn\'t specified in the included files; skipping."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_c8
    return v3

    .line 1002
    .end local v6    # "explicitlyIncluded":Z
    :cond_c9
    const/4 v3, 0x1

    return v3

    .line 961
    .end local v2    # "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local v6, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    :catch_cb
    move-exception v8

    .line 962
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 963
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" : Exception trying to parse fullBackupContent xml file! Aborting onRestoreFile."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    :cond_ec
    return v3
.end method

.method private blacklist manifestExcludesContainFilePath(Ljava/util/Set;Ljava/lang/String;)Z
    .registers 7
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 900
    .local p1, "manifestExcludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 901
    .local v1, "exclude":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    invoke-virtual {v1}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, "excludePath":Ljava/lang/String;
    if-eqz v2, :cond_1e

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 903
    const/4 v0, 0x1

    return v0

    .line 905
    .end local v1    # "exclude":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    .end local v2    # "excludePath":Ljava/lang/String;
    :cond_1e
    goto :goto_4

    .line 906
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o waitForSharedPrefs()V
    .registers 4

    .line 242
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 243
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;

    invoke-direct {v1, p0}, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;-><init>(Landroid/app/backup/BackupAgent;)V

    .line 244
    .local v1, "s":Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 246
    :try_start_c
    iget-object v2, v1, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_13

    .line 247
    :catch_12
    move-exception v2

    :goto_13
    nop

    .line 248
    return-void
.end method


# virtual methods
.method public greylist-max-o attach(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1086
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->attachBaseContext(Landroid/content/Context;)V

    .line 1087
    return-void
.end method

.method public final blacklist clearBackupRestoreEventLogger()V
    .registers 2

    .line 1070
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    if-eqz v0, :cond_9

    .line 1071
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger;->clearData()V

    .line 1073
    :cond_9
    return-void
.end method

.method public final whitelist fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 32
    .param p1, "file"    # Ljava/io/File;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .line 717
    const-string v1, "BackupAgent"

    const-string v0, "foo"

    const/4 v2, 0x0

    .line 720
    .local v2, "efDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 725
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 726
    .local v4, "ceContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 727
    .local v5, "rootDir":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 728
    .local v6, "filesDir":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 729
    .local v7, "nbFilesDir":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 730
    .local v8, "dbDir":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 731
    .local v9, "spDir":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    .line 732
    .local v10, "cacheDir":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 734
    .local v11, "codeCacheDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v12

    .line 735
    .local v12, "deContext":Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 736
    .local v13, "deviceRootDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    .line 737
    .local v14, "deviceFilesDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .line 738
    .local v15, "deviceNbFilesDir":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 739
    .local v17, "deviceDbDir":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "deviceSpDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 742
    .local v18, "deviceCacheDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_95} :catch_22e

    move-object/from16 v19, v16

    .line 744
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    move-object/from16 v16, v2

    .end local v2    # "efDir":Ljava/lang/String;
    .local v16, "efDir":Ljava/lang/String;
    :try_start_99
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v20, v2

    if-nez v20, :cond_a3

    .line 745
    move-object/from16 v21, v4

    const/4 v2, 0x0

    goto :goto_b0

    .line 746
    :cond_a3
    new-instance v2, Ljava/io/File;

    move-object/from16 v21, v4

    .end local v4    # "ceContext":Landroid/content/Context;
    .local v21, "ceContext":Landroid/content/Context;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    :goto_b0
    nop

    .line 749
    .local v2, "libDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_b5} :catch_228

    move-object/from16 v22, v3

    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v22, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x3e8

    if-eq v4, v3, :cond_d0

    .line 750
    const/4 v4, 0x0

    move-object/from16 v3, p0

    :try_start_be
    invoke-virtual {v3, v4}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 751
    .local v4, "efLocation":Ljava/io/File;
    if-eqz v4, :cond_d2

    .line 752
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v20
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c8} :catch_cb

    move-object/from16 v4, v20

    .end local v16    # "efDir":Ljava/lang/String;
    .local v20, "efDir":Ljava/lang/String;
    goto :goto_d4

    .line 760
    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .end local v4    # "efLocation":Ljava/io/File;
    .end local v5    # "rootDir":Ljava/lang/String;
    .end local v6    # "filesDir":Ljava/lang/String;
    .end local v7    # "nbFilesDir":Ljava/lang/String;
    .end local v8    # "dbDir":Ljava/lang/String;
    .end local v9    # "spDir":Ljava/lang/String;
    .end local v10    # "cacheDir":Ljava/lang/String;
    .end local v11    # "codeCacheDir":Ljava/lang/String;
    .end local v12    # "deContext":Landroid/content/Context;
    .end local v13    # "deviceRootDir":Ljava/lang/String;
    .end local v14    # "deviceFilesDir":Ljava/lang/String;
    .end local v15    # "deviceNbFilesDir":Ljava/lang/String;
    .end local v17    # "deviceDbDir":Ljava/lang/String;
    .end local v18    # "deviceCacheDir":Ljava/lang/String;
    .end local v19    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v20    # "efDir":Ljava/lang/String;
    .end local v21    # "ceContext":Landroid/content/Context;
    .restart local v16    # "efDir":Ljava/lang/String;
    :catch_cb
    move-exception v0

    move-object/from16 v2, v16

    goto/16 :goto_233

    .line 749
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .restart local v5    # "rootDir":Ljava/lang/String;
    .restart local v6    # "filesDir":Ljava/lang/String;
    .restart local v7    # "nbFilesDir":Ljava/lang/String;
    .restart local v8    # "dbDir":Ljava/lang/String;
    .restart local v9    # "spDir":Ljava/lang/String;
    .restart local v10    # "cacheDir":Ljava/lang/String;
    .restart local v11    # "codeCacheDir":Ljava/lang/String;
    .restart local v12    # "deContext":Landroid/content/Context;
    .restart local v13    # "deviceRootDir":Ljava/lang/String;
    .restart local v14    # "deviceFilesDir":Ljava/lang/String;
    .restart local v15    # "deviceNbFilesDir":Ljava/lang/String;
    .restart local v17    # "deviceDbDir":Ljava/lang/String;
    .restart local v18    # "deviceCacheDir":Ljava/lang/String;
    .restart local v19    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v21    # "ceContext":Landroid/content/Context;
    :cond_d0
    move-object/from16 v3, p0

    .line 759
    :cond_d2
    move-object/from16 v4, v16

    .end local v16    # "efDir":Ljava/lang/String;
    .local v4, "efDir":Ljava/lang/String;
    :goto_d4
    :try_start_d4
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d8} :catch_225

    move-object/from16 v12, v16

    .line 763
    .end local v21    # "ceContext":Landroid/content/Context;
    .local v12, "filePath":Ljava/lang/String;
    nop

    .line 765
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_214

    .line 766
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_209

    .line 767
    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1fe

    .line 768
    move-object/from16 v3, v18

    .end local v18    # "deviceCacheDir":Ljava/lang/String;
    .local v3, "deviceCacheDir":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1f3

    .line 769
    move-object/from16 v16, v3

    move-object/from16 v3, v19

    .end local v19    # "deviceCodeCacheDir":Ljava/lang/String;
    .local v3, "deviceCodeCacheDir":Ljava/lang/String;
    .local v16, "deviceCacheDir":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1ec

    .line 770
    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1e5

    .line 771
    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_113

    move-object/from16 v19, v2

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    goto/16 :goto_21e

    .line 777
    :cond_113
    const/16 v18, 0x0

    .line 778
    .local v18, "rootpath":Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_129

    .line 779
    const-string v1, "db"

    .line 780
    .local v1, "domain":Ljava/lang/String;
    move-object/from16 v18, v8

    move-object/from16 v24, v1

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    move-object/from16 v26, v18

    goto/16 :goto_1b6

    .line 781
    .end local v1    # "domain":Ljava/lang/String;
    :cond_129
    invoke-virtual {v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13e

    .line 782
    const-string/jumbo v1, "sp"

    .line 783
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v9

    move-object/from16 v24, v1

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    move-object/from16 v26, v18

    goto/16 :goto_1b6

    .line 784
    .end local v1    # "domain":Ljava/lang/String;
    :cond_13e
    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_152

    .line 785
    const-string v1, "f"

    .line 786
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v6

    move-object/from16 v24, v1

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    move-object/from16 v26, v18

    goto/16 :goto_1b6

    .line 787
    .end local v1    # "domain":Ljava/lang/String;
    :cond_152
    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_166

    .line 788
    const-string/jumbo v1, "r"

    .line 789
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v5

    move-object/from16 v24, v1

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    move-object/from16 v26, v18

    goto :goto_1b6

    .line 790
    .end local v1    # "domain":Ljava/lang/String;
    :cond_166
    move-object/from16 v19, v2

    move-object/from16 v2, v17

    .end local v17    # "deviceDbDir":Ljava/lang/String;
    .local v2, "deviceDbDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_179

    .line 791
    const-string v1, "d_db"

    .line 792
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v24, v1

    move-object/from16 v26, v18

    goto :goto_1b6

    .line 793
    .end local v1    # "domain":Ljava/lang/String;
    :cond_179
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_188

    .line 794
    const-string v1, "d_sp"

    .line 795
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v0

    move-object/from16 v24, v1

    move-object/from16 v26, v18

    goto :goto_1b6

    .line 796
    .end local v1    # "domain":Ljava/lang/String;
    :cond_188
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_197

    .line 797
    const-string v1, "d_f"

    .line 798
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v14

    move-object/from16 v24, v1

    move-object/from16 v26, v18

    goto :goto_1b6

    .line 799
    .end local v1    # "domain":Ljava/lang/String;
    :cond_197
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a6

    .line 800
    const-string v1, "d_r"

    .line 801
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v13

    move-object/from16 v24, v1

    move-object/from16 v26, v18

    goto :goto_1b6

    .line 802
    .end local v1    # "domain":Ljava/lang/String;
    :cond_1a6
    if-eqz v4, :cond_1c4

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c4

    .line 803
    const-string v1, "ef"

    .line 804
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v4

    move-object/from16 v24, v1

    move-object/from16 v26, v18

    .line 816
    .end local v1    # "domain":Ljava/lang/String;
    .end local v18    # "rootpath":Ljava/lang/String;
    .local v24, "domain":Ljava/lang/String;
    .local v26, "rootpath":Ljava/lang/String;
    :goto_1b6
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v28, p2

    move-object/from16 v27, v12

    .end local v12    # "filePath":Ljava/lang/String;
    .local v27, "filePath":Ljava/lang/String;
    invoke-static/range {v23 .. v28}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 817
    .end local v27    # "filePath":Ljava/lang/String;
    .restart local v12    # "filePath":Ljava/lang/String;
    return-void

    .line 806
    .end local v24    # "domain":Ljava/lang/String;
    .end local v26    # "rootpath":Ljava/lang/String;
    .restart local v18    # "rootpath":Ljava/lang/String;
    :cond_1c4
    move-object/from16 v17, v0

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    .end local v2    # "deviceDbDir":Ljava/lang/String;
    .local v20, "deviceDbDir":Ljava/lang/String;
    const-string v2, "File "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is in an unsupported location; skipping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void

    .line 770
    .end local v18    # "rootpath":Ljava/lang/String;
    .end local v19    # "libDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .local v2, "libDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    :cond_1e5
    move-object/from16 v19, v2

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .restart local v19    # "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    goto :goto_21e

    .line 769
    .end local v19    # "libDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    :cond_1ec
    move-object/from16 v19, v2

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .restart local v19    # "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    goto :goto_21e

    .line 768
    .end local v16    # "deviceCacheDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .local v3, "deviceCacheDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    :cond_1f3
    move-object/from16 v16, v3

    move-object/from16 v20, v17

    move-object/from16 v3, v19

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .local v3, "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v16    # "deviceCacheDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    goto :goto_21e

    .line 767
    .end local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v16    # "deviceCacheDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    .local v18, "deviceCacheDir":Ljava/lang/String;
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    :cond_1fe
    move-object/from16 v20, v17

    move-object/from16 v16, v18

    move-object/from16 v3, v19

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .end local v18    # "deviceCacheDir":Ljava/lang/String;
    .restart local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v16    # "deviceCacheDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    goto :goto_21e

    .line 766
    .end local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v16    # "deviceCacheDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    .restart local v18    # "deviceCacheDir":Ljava/lang/String;
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    :cond_209
    move-object/from16 v20, v17

    move-object/from16 v16, v18

    move-object/from16 v3, v19

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .end local v18    # "deviceCacheDir":Ljava/lang/String;
    .restart local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v16    # "deviceCacheDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    goto :goto_21e

    .line 765
    .end local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v16    # "deviceCacheDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    .restart local v18    # "deviceCacheDir":Ljava/lang/String;
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    :cond_214
    move-object/from16 v20, v17

    move-object/from16 v16, v18

    move-object/from16 v3, v19

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    .line 772
    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .end local v18    # "deviceCacheDir":Ljava/lang/String;
    .restart local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v16    # "deviceCacheDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    :goto_21e
    const-string/jumbo v0, "lib, cache, code_cache, and no_backup files are not backed up"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-void

    .line 760
    .end local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v5    # "rootDir":Ljava/lang/String;
    .end local v6    # "filesDir":Ljava/lang/String;
    .end local v7    # "nbFilesDir":Ljava/lang/String;
    .end local v8    # "dbDir":Ljava/lang/String;
    .end local v9    # "spDir":Ljava/lang/String;
    .end local v10    # "cacheDir":Ljava/lang/String;
    .end local v11    # "codeCacheDir":Ljava/lang/String;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "deviceRootDir":Ljava/lang/String;
    .end local v14    # "deviceFilesDir":Ljava/lang/String;
    .end local v15    # "deviceNbFilesDir":Ljava/lang/String;
    .end local v16    # "deviceCacheDir":Ljava/lang/String;
    .end local v17    # "deviceSpDir":Ljava/lang/String;
    .end local v19    # "libDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    :catch_225
    move-exception v0

    move-object v2, v4

    goto :goto_233

    .end local v4    # "efDir":Ljava/lang/String;
    .end local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v16, "efDir":Ljava/lang/String;
    :catch_228
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v2, v16

    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_233

    .end local v16    # "efDir":Ljava/lang/String;
    .end local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "efDir":Ljava/lang/String;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_22e
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v22, v3

    .line 761
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "e":Ljava/io/IOException;
    .restart local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_233
    const-string v3, "Unable to obtain canonical paths"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void
.end method

.method protected final blacklist fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "startingPath"    # Ljava/lang/String;
    .param p6, "output"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .line 833
    .local p4, "manifestExcludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p5, "systemExcludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "BackupXmlParserLogging"

    iget v0, v1, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    invoke-static {v1, v0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    .line 834
    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 835
    .local v8, "domainPath":Ljava/lang/String;
    if-nez v8, :cond_17

    .line 837
    return-void

    .line 840
    :cond_17
    new-instance v0, Ljava/io/File;

    move-object/from16 v11, p3

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 841
    .local v12, "rootFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 842
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v13, v0

    .line 843
    .local v13, "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 845
    :goto_2e
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_eb

    .line 846
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Ljava/io/File;

    .line 850
    .local v14, "file":Ljava/io/File;
    :try_start_3c
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v7

    .line 851
    .local v7, "stat":Landroid/system/StructStat;
    iget v9, v7, Landroid/system/StructStat;->st_mode:I

    invoke-static {v9}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v9

    if-nez v9, :cond_55

    iget v9, v7, Landroid/system/StructStat;->st_mode:I

    .line 852
    invoke-static {v9}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v9

    if-nez v9, :cond_55

    .line 854
    goto :goto_2e

    .line 858
    :cond_55
    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 861
    .local v9, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_62

    .line 862
    invoke-direct {v1, v2, v9}, Landroid/app/backup/BackupAgent;->manifestExcludesContainFilePath(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 863
    goto :goto_2e

    .line 865
    :cond_62
    if-eqz v3, :cond_6b

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 866
    goto :goto_2e

    .line 870
    :cond_6b
    iget v10, v7, Landroid/system/StructStat;->st_mode:I

    invoke-static {v10}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 871
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 872
    .local v10, "contents":[Ljava/io/File;
    if-eqz v10, :cond_8b

    .line 873
    array-length v15, v10

    move v5, v0

    :goto_7b
    if-ge v5, v15, :cond_8b

    aget-object v16, v10, v5

    move-object/from16 v17, v16

    .line 874
    .local v17, "entry":Ljava/io/File;
    move-object/from16 v1, v17

    .end local v17    # "entry":Ljava/io/File;
    .local v1, "entry":Ljava/io/File;
    invoke-virtual {v13, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_86} :catch_c7
    .catch Landroid/system/ErrnoException; {:try_start_3c .. :try_end_86} :catch_99

    .line 873
    .end local v1    # "entry":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto :goto_7b

    .line 890
    .end local v7    # "stat":Landroid/system/StructStat;
    .end local v10    # "contents":[Ljava/io/File;
    :cond_8b
    nop

    .line 893
    const/4 v7, 0x0

    move-object/from16 v5, p1

    move-object/from16 v10, p6

    invoke-static/range {v5 .. v10}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 894
    .end local v9    # "filePath":Ljava/lang/String;
    .end local v14    # "file":Ljava/io/File;
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    goto :goto_2e

    .line 884
    .restart local v14    # "file":Ljava/io/File;
    :catch_99
    move-exception v0

    .line 886
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x2

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error scanning file "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_c1
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    goto/16 :goto_2e

    .line 878
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_c7
    move-exception v0

    .line 880
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x2

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error canonicalizing path of "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_e5
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    goto/16 :goto_2e

    .line 896
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    .end local v14    # "file":Ljava/io/File;
    :cond_eb
    return-void
.end method

.method public blacklist getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;
    .registers 2

    .line 262
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    return-object v0
.end method

.method greylist-max-o getHandler()Landroid/os/Handler;
    .registers 3

    .line 224
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    .line 227
    :cond_f
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist getIncludeExcludeRules(Landroid/app/backup/FullBackup$BackupScheme;)Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    .registers 5
    .param p1, "backupScheme"    # Landroid/app/backup/FullBackup$BackupScheme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 607
    nop

    .line 608
    invoke-virtual {p1}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v0

    .line 609
    .local v0, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    invoke-virtual {p1}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;

    move-result-object v1

    .line 611
    .local v1, "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    new-instance v2, Landroid/app/backup/BackupAgent$IncludeExcludeRules;

    invoke-direct {v2, v0, v1}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object v2
.end method

.method public abstract whitelist onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final greylist-max-o onBind()Landroid/os/IBinder;
    .registers 2

    .line 1079
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 1

    .line 276
    return-void
.end method

.method public blacklist onCreate(Landroid/os/UserHandle;)V
    .registers 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 280
    iput-object p1, p0, Landroid/app/backup/BackupAgent;->mUser:Landroid/os/UserHandle;

    .line 281
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 282
    return-void
.end method

.method public blacklist onCreate(Landroid/os/UserHandle;I)V
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "backupDestination"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    iput p2, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    .line 293
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 294
    return-void
.end method

.method public blacklist onCreate(Landroid/os/UserHandle;II)V
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "backupDestination"    # I
    .param p3, "operationType"    # I

    .line 301
    iput p2, p0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    .line 302
    new-instance v0, Landroid/app/backup/BackupRestoreEventLogger;

    invoke-direct {v0, p3}, Landroid/app/backup/BackupRestoreEventLogger;-><init>(I)V

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 304
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;I)V

    .line 305
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 314
    return-void
.end method

.method public whitelist onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 27
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    move-object/from16 v1, p0

    iget v0, v1, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    invoke-static {v1, v0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v8

    .line 452
    .local v8, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/FullBackupDataOutput;->getTransportFlags()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupEnabled(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 453
    return-void

    .line 458
    :cond_13
    :try_start_13
    invoke-virtual {v1, v8}, Landroid/app/backup/BackupAgent;->getIncludeExcludeRules(Landroid/app/backup/FullBackup$BackupScheme;)Landroid/app/backup/BackupAgent$IncludeExcludeRules;

    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_153
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_17} :catch_153

    .line 466
    .local v0, "includeExcludeRules":Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    nop

    .line 467
    nop

    .line 468
    invoke-static {v0}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->-$$Nest$mgetIncludeMap(Landroid/app/backup/BackupAgent$IncludeExcludeRules;)Ljava/util/Map;

    move-result-object v4

    .line 469
    .local v4, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    nop

    .line 470
    invoke-static {v0}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->-$$Nest$mgetExcludeSet(Landroid/app/backup/BackupAgent$IncludeExcludeRules;)Ljava/util/Set;

    move-result-object v5

    .line 472
    .local v5, "manifestExcludeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 477
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v10

    .line 478
    .local v10, "ceContext":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 479
    .local v11, "rootDir":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    .line 480
    .local v12, "filesDir":Ljava/lang/String;
    const-string v3, "foo"

    invoke-virtual {v10, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 481
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 482
    .local v13, "databaseDir":Ljava/lang/String;
    invoke-virtual {v10, v3}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 483
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    .line 485
    .local v14, "sharedPrefsDir":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v15

    .line 486
    .local v15, "deContext":Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, "deviceRootDir":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 488
    .local v7, "deviceFilesDir":Ljava/lang/String;
    invoke-virtual {v15, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    .line 489
    move-object/from16 v17, v0

    .end local v0    # "includeExcludeRules":Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    .local v17, "includeExcludeRules":Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "deviceDatabaseDir":Ljava/lang/String;
    invoke-virtual {v15, v3}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 491
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "deviceSharedPrefsDir":Ljava/lang/String;
    move-object/from16 v16, v2

    .end local v2    # "packageName":Ljava/lang/String;
    .local v16, "packageName":Ljava/lang/String;
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v18, v8

    .end local v8    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    .local v18, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    if-eqz v2, :cond_9a

    .line 494
    new-instance v2, Ljava/io/File;

    iget-object v8, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_9b

    .line 495
    :cond_9a
    const/4 v2, 0x0

    :goto_9b
    move-object v8, v2

    .line 500
    .local v8, "libDir":Ljava/lang/String;
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 503
    .local v2, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-virtual {v2, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {v2, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 511
    if-eqz v8, :cond_b8

    .line 512
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_b8
    move-object/from16 v20, v8

    .end local v8    # "libDir":Ljava/lang/String;
    .local v20, "libDir":Ljava/lang/String;
    invoke-direct {v1, v10}, Landroid/app/backup/BackupAgent;->getExtraExcludeDirsIfAny(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    .line 516
    .local v8, "extraExcludedDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v21, v9

    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {v1, v15}, Landroid/app/backup/BackupAgent;->getExtraExcludeDirsIfAny(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 517
    .local v9, "extraExcludedDeviceDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 518
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 521
    move-object/from16 v22, v3

    .end local v3    # "deviceSharedPrefsDir":Ljava/lang/String;
    .local v22, "deviceSharedPrefsDir":Ljava/lang/String;
    const-string/jumbo v3, "r"

    move-object/from16 v23, v10

    move-object/from16 v24, v22

    move-object v10, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v15

    move-object v15, v7

    move-object/from16 v7, p1

    .end local v7    # "deviceFilesDir":Ljava/lang/String;
    .end local v22    # "deviceSharedPrefsDir":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .local v6, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v10, "deviceRootDir":Ljava/lang/String;
    .local v15, "deviceFilesDir":Ljava/lang/String;
    .local v16, "deContext":Landroid/content/Context;
    .local v23, "ceContext":Landroid/content/Context;
    .local v24, "deviceSharedPrefsDir":Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 524
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 528
    const-string v3, "d_r"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 531
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 536
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 537
    const-string v3, "f"

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 540
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 543
    const-string v3, "d_f"

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 546
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 550
    const-string v3, "db"

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 553
    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 556
    const-string v3, "d_db"

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 559
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {v6, v14}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 563
    const-string/jumbo v3, "sp"

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 566
    invoke-virtual {v6, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 568
    move-object/from16 v1, v24

    .end local v24    # "deviceSharedPrefsDir":Ljava/lang/String;
    .local v1, "deviceSharedPrefsDir":Ljava/lang/String;
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 569
    const-string v3, "d_sp"

    move-object/from16 v22, v0

    move-object v0, v1

    move-object/from16 v1, p0

    .end local v1    # "deviceSharedPrefsDir":Ljava/lang/String;
    .local v0, "deviceSharedPrefsDir":Ljava/lang/String;
    .local v22, "deviceDatabaseDir":Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 572
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v7, 0x3e8

    if-eq v3, v7, :cond_152

    .line 582
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 583
    .local v19, "efLocation":Ljava/io/File;
    if-eqz v19, :cond_152

    .line 584
    const-string v3, "ef"

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 590
    .end local v19    # "efLocation":Ljava/io/File;
    :cond_152
    return-void

    .line 459
    .end local v0    # "deviceSharedPrefsDir":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .end local v5    # "manifestExcludeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .end local v6    # "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "extraExcludedDeviceDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "deviceRootDir":Ljava/lang/String;
    .end local v11    # "rootDir":Ljava/lang/String;
    .end local v12    # "filesDir":Ljava/lang/String;
    .end local v13    # "databaseDir":Ljava/lang/String;
    .end local v14    # "sharedPrefsDir":Ljava/lang/String;
    .end local v15    # "deviceFilesDir":Ljava/lang/String;
    .end local v16    # "deContext":Landroid/content/Context;
    .end local v17    # "includeExcludeRules":Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    .end local v18    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    .end local v20    # "libDir":Ljava/lang/String;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "deviceDatabaseDir":Ljava/lang/String;
    .end local v23    # "ceContext":Landroid/content/Context;
    .local v8, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    :catch_153
    move-exception v0

    move-object/from16 v18, v8

    .line 460
    .end local v8    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    const/4 v1, 0x2

    const-string v2, "BackupXmlParserLogging"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_164

    .line 461
    const-string v1, "Exception trying to parse fullBackupContent xml file! Aborting full backup."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    :cond_164
    return-void
.end method

.method public whitelist onQuotaExceeded(JJ)V
    .registers 5
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    .line 642
    return-void
.end method

.method public abstract whitelist onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    long-to-int v0, p2

    invoke-virtual {p0, p1, v0, p4}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 392
    return-void
.end method

.method public blacklist onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;Ljava/util/Set;)V
    .registers 6
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    .local p5, "excludedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;)V

    .line 414
    return-void
.end method

.method protected greylist-max-o onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 32
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1013
    move-object/from16 v0, p0

    move-object/from16 v10, p5

    const/4 v1, 0x0

    .line 1019
    .local v1, "basePath":Ljava/lang/String;
    iget v2, v0, Landroid/app/backup/BackupAgent;->mBackupDestination:I

    invoke-static {v0, v2}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1021
    .end local v1    # "basePath":Ljava/lang/String;
    .local v11, "basePath":Ljava/lang/String;
    const-string v1, "ef"

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1022
    const-wide/16 v1, -0x1

    move-wide v6, v1

    .end local p7    # "mode":J
    .local v1, "mode":J
    goto :goto_1d

    .line 1021
    .end local v1    # "mode":J
    .restart local p7    # "mode":J
    :cond_1b
    move-wide/from16 v6, p7

    .line 1026
    .end local p7    # "mode":J
    .local v6, "mode":J
    :goto_1d
    if-eqz v11, :cond_4f

    .line 1028
    new-instance v4, Ljava/io/File;

    move-object/from16 v12, p6

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    .local v4, "outFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 1030
    .local v13, "outPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1032
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v5, p4

    move-wide/from16 v8, p9

    invoke-virtual/range {v0 .. v9}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .line 1033
    return-void

    .line 1026
    .end local v4    # "outFile":Ljava/io/File;
    .end local v13    # "outPath":Ljava/lang/String;
    :cond_4f
    move-object/from16 v12, p6

    .line 1046
    :cond_51
    const/16 v20, 0x0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    move/from16 v15, p4

    move-wide/from16 v18, p9

    move-wide/from16 v16, v6

    .end local v6    # "mode":J
    .local v16, "mode":J
    invoke-static/range {v12 .. v20}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 1047
    .end local v16    # "mode":J
    .restart local v6    # "mode":J
    return-void
.end method

.method public whitelist onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .registers 22
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "type"    # I
    .param p6, "mode"    # J
    .param p8, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/app/backup/BackupAgent;->isFileEligibleForRestore(Ljava/io/File;)Z

    move-result v1

    .line 941
    .local v1, "accept":Z
    if-eqz v1, :cond_a

    move-object v11, v0

    goto :goto_c

    :cond_a
    const/4 v2, 0x0

    move-object v11, v2

    :goto_c
    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v3 .. v11}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 942
    return-void
.end method

.method public whitelist onRestoreFinished()V
    .registers 1

    .line 1061
    return-void
.end method

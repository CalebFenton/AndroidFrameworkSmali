.class public abstract Landroid/app/backup/BackupAgent;
.super Landroid/content/ContextWrapper;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupAgent$BackupServiceBinder;,
        Landroid/app/backup/BackupAgent$FailRunnable;,
        Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BackupAgent"

.field public static final TYPE_DIRECTORY:I = 0x2

.field public static final TYPE_EOF:I = 0x0

.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_SYMLINK:I = 0x3


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Landroid/app/backup/BackupAgent;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 163
    invoke-direct {p0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@4
    .line 132
    iput-object v1, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    #@6
    .line 882
    new-instance v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;

    #@8
    invoke-direct {v0, p0, v1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$BackupServiceBinder;)V

    #@b
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->asBinder()Landroid/os/IBinder;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    #@11
    .line 162
    return-void
.end method

.method private applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domainToken"    # Ljava/lang/String;
    .param p6, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
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

    #@0
    .prologue
    .line 470
    .local p3, "includeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local p4, "filterSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p5, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    #@2
    invoke-interface {p3}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2

    #@8
    .line 473
    :cond_0
    invoke-static {p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p2}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    move-object v0, p0

    #@11
    move-object v1, p1

    #@12
    move-object v2, p2

    #@13
    move-object v4, p4

    #@14
    move-object v5, p5

    #@15
    move-object v6, p6

    #@16
    .line 472
    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@19
    .line 469
    :cond_1
    return-void

    #@1a
    .line 475
    :cond_2
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 478
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/util/Set;

    #@26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v7

    #@2a
    .local v7, "includeFile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_1

    #@30
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Ljava/lang/String;

    #@36
    .local v3, "includeFile":Ljava/lang/String;
    move-object v0, p0

    #@37
    move-object v1, p1

    #@38
    move-object v2, p2

    #@39
    move-object v4, p4

    #@3a
    move-object v5, p5

    #@3b
    move-object v6, p6

    #@3c
    .line 479
    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@3f
    goto :goto_0
.end method

.method private isFileEligibleForRestore(Ljava/io/File;)Z
    .locals 12
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v11, 0x0

    #@2
    .line 733
    invoke-static {p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    #@5
    move-result-object v0

    #@6
    .line 734
    .local v0, "bs":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    #@9
    move-result v8

    #@a
    if-nez v8, :cond_1

    #@c
    .line 735
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@f
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_0

    #@15
    .line 736
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@18
    .line 737
    new-instance v9, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v10, "onRestoreFile \""

    #@20
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v9

    #@24
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@27
    move-result-object v10

    #@28
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v9

    #@2c
    .line 738
    const-string/jumbo v10, "\" : fullBackupContent not enabled for "

    #@2f
    .line 737
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v9

    #@33
    .line 738
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    #@36
    move-result-object v10

    #@37
    .line 737
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    .line 736
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 740
    :cond_0
    return v11

    #@43
    .line 743
    :cond_1
    const/4 v7, 0x0

    #@44
    .line 744
    .local v7, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    #@45
    .line 745
    .local v5, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 747
    .local v1, "destinationCanonicalPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    #@4c
    move-result-object v7

    #@4d
    .line 748
    .local v7, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    move-result-object v5

    #@51
    .line 759
    .local v5, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    #@53
    .line 760
    invoke-direct {p0, p1, v5}, Landroid/app/backup/BackupAgent;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    #@56
    move-result v8

    #@57
    .line 759
    if-eqz v8, :cond_4

    #@59
    .line 761
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@5c
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5f
    move-result v8

    #@60
    if-eqz v8, :cond_2

    #@62
    .line 762
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@65
    .line 763
    new-instance v9, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v10, "onRestoreFile: \""

    #@6d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v9

    #@71
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    const-string/jumbo v10, "\": listed in"

    #@78
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    .line 764
    const-string/jumbo v10, " excludes; skipping."

    #@7f
    .line 763
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v9

    #@83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    .line 762
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 766
    :cond_2
    return v11

    #@8b
    .line 749
    .end local v7    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v5, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    #@8c
    .line 750
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@8f
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@92
    move-result v8

    #@93
    if-eqz v8, :cond_3

    #@95
    .line 751
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@98
    .line 752
    new-instance v9, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v10, "onRestoreFile \""

    #@a0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v9

    #@a4
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v9

    #@a8
    .line 753
    const-string/jumbo v10, "\" : Exception trying to parse fullBackupContent xml file!"

    #@ab
    .line 752
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v9

    #@af
    .line 754
    const-string/jumbo v10, " Aborting onRestoreFile."

    #@b2
    .line 752
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v9

    #@b6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v9

    #@ba
    .line 751
    invoke-static {v8, v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@bd
    .line 756
    :cond_3
    return v11

    #@be
    .line 769
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v5, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_4
    if-eqz v7, :cond_5

    #@c0
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    #@c3
    move-result v8

    #@c4
    if-eqz v8, :cond_6

    #@c6
    .line 789
    :cond_5
    const/4 v8, 0x1

    #@c7
    return v8

    #@c8
    .line 772
    :cond_6
    const/4 v6, 0x0

    #@c9
    .line 773
    .local v6, "explicitlyIncluded":Z
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@cc
    move-result-object v8

    #@cd
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d0
    move-result-object v3

    #@d1
    .end local v6    # "explicitlyIncluded":Z
    .local v3, "domainIncludes$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d4
    move-result v8

    #@d5
    if-eqz v8, :cond_8

    #@d7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@da
    move-result-object v2

    #@db
    check-cast v2, Ljava/util/Set;

    #@dd
    .line 774
    .local v2, "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v2}, Landroid/app/backup/BackupAgent;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    #@e0
    move-result v8

    #@e1
    or-int/2addr v6, v8

    #@e2
    .line 775
    .local v6, "explicitlyIncluded":Z
    if-eqz v6, :cond_7

    #@e4
    .line 779
    .end local v2    # "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "explicitlyIncluded":Z
    :cond_8
    if-nez v6, :cond_5

    #@e6
    .line 780
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@e9
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@ec
    move-result v8

    #@ed
    if-eqz v8, :cond_9

    #@ef
    .line 781
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@f2
    .line 782
    new-instance v9, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v10, "onRestoreFile: Trying to restore \""

    #@fa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v9

    #@fe
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v9

    #@102
    .line 783
    const-string/jumbo v10, "\" but it isn\'t specified"

    #@105
    .line 782
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v9

    #@109
    .line 784
    const-string/jumbo v10, " in the included files; skipping."

    #@10c
    .line 782
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v9

    #@110
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v9

    #@114
    .line 781
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@117
    .line 786
    :cond_9
    return v11
.end method

.method private isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 798
    .local p2, "canonicalPathList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "canonicalPath$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_3

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    .line 799
    .local v0, "canonicalPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@12
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@15
    .line 800
    .local v2, "fileFromList":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 801
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 803
    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    return v3

    #@26
    .line 806
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2d
    move-result v3

    #@2e
    return v3

    #@2f
    .line 809
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_0

    #@35
    .line 811
    const/4 v3, 0x1

    #@36
    return v3

    #@37
    .line 815
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v2    # "fileFromList":Ljava/io/File;
    :cond_3
    const/4 v3, 0x0

    #@38
    return v3
.end method

.method private waitForSharedPrefs()V
    .locals 4

    #@0
    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v1

    #@4
    .line 154
    .local v1, "h":Landroid/os/Handler;
    new-instance v2, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;

    #@6
    invoke-direct {v2, p0}, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;-><init>(Landroid/app/backup/BackupAgent;)V

    #@9
    .line 155
    .local v2, "s":Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@c
    .line 157
    :try_start_0
    iget-object v3, v2, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@e
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 152
    :goto_0
    return-void

    #@12
    .line 158
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 886
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 885
    return-void
.end method

.method public final fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 28
    .param p1, "file"    # Ljava/io/File;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    #@0
    .prologue
    .line 519
    const/16 v21, 0x0

    #@2
    .line 522
    .local v21, "efDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v7

    #@6
    .line 527
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createCredentialProtectedStorageContext()Landroid/content/Context;

    #@9
    move-result-object v9

    #@a
    .line 528
    .local v9, "ceContext":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@11
    move-result-object v26

    #@12
    .line 529
    .local v26, "rootDir":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@19
    move-result-object v23

    #@1a
    .line 530
    .local v23, "filesDir":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@21
    move-result-object v25

    #@22
    .line 531
    .local v25, "nbFilesDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@25
    invoke-virtual {v9, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@30
    move-result-object v11

    #@31
    .line 532
    .local v11, "dbDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@34
    invoke-virtual {v9, v1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@3f
    move-result-object v27

    #@40
    .line 533
    .local v27, "spDir":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    .line 534
    .local v8, "cacheDir":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@4f
    move-result-object v10

    #@50
    .line 536
    .local v10, "codeCacheDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    #@53
    move-result-object v12

    #@54
    .line 537
    .local v12, "deContext":Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@5b
    move-result-object v18

    #@5c
    .line 538
    .local v18, "deviceRootDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@63
    move-result-object v16

    #@64
    .line 539
    .local v16, "deviceFilesDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@6b
    move-result-object v17

    #@6c
    .line 540
    .local v17, "deviceNbFilesDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@6f
    invoke-virtual {v12, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@7a
    move-result-object v15

    #@7b
    .line 541
    .local v15, "deviceDbDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@7e
    invoke-virtual {v12, v1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@89
    move-result-object v19

    #@8a
    .line 543
    .local v19, "deviceSpDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@91
    move-result-object v13

    #@92
    .line 544
    .local v13, "deviceCacheDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@99
    move-result-object v14

    #@9a
    .line 546
    .local v14, "deviceCodeCacheDir":Ljava/lang/String;
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@9c
    if-nez v1, :cond_2

    #@9e
    .line 547
    const/16 v24, 0x0

    #@a0
    .line 551
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@a3
    move-result v1

    #@a4
    const/16 v3, 0x3e8

    #@a6
    if-eq v1, v3, :cond_0

    #@a8
    .line 552
    const/4 v1, 0x0

    #@a9
    move-object/from16 v0, p0

    #@ab
    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@ae
    move-result-object v22

    #@af
    .line 553
    .local v22, "efLocation":Ljava/io/File;
    if-eqz v22, :cond_0

    #@b1
    .line 554
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@b4
    move-result-object v21

    #@b5
    .line 561
    .end local v21    # "efDir":Ljava/lang/String;
    .end local v22    # "efLocation":Ljava/io/File;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b8
    move-result-object v5

    #@b9
    .line 567
    .local v5, "filePath":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@bc
    move-result v1

    #@bd
    if-nez v1, :cond_1

    #@bf
    .line 568
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c2
    move-result v1

    #@c3
    .line 567
    if-nez v1, :cond_1

    #@c5
    .line 569
    move-object/from16 v0, v25

    #@c7
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ca
    move-result v1

    #@cb
    .line 567
    if-nez v1, :cond_1

    #@cd
    .line 570
    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d0
    move-result v1

    #@d1
    .line 567
    if-nez v1, :cond_1

    #@d3
    .line 571
    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d6
    move-result v1

    #@d7
    .line 567
    if-nez v1, :cond_1

    #@d9
    .line 572
    move-object/from16 v0, v17

    #@db
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@de
    move-result v1

    #@df
    .line 567
    if-nez v1, :cond_1

    #@e1
    .line 573
    move-object/from16 v0, v24

    #@e3
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e6
    move-result v1

    #@e7
    .line 567
    if-eqz v1, :cond_3

    #@e9
    .line 574
    :cond_1
    const-string/jumbo v1, "BackupAgent"

    #@ec
    const-string/jumbo v3, "lib, cache, code_cache, and no_backup files are not backed up"

    #@ef
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f2
    .line 575
    return-void

    #@f3
    .line 548
    .end local v5    # "filePath":Ljava/lang/String;
    .restart local v21    # "efDir":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@f5
    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@f7
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@fa
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@fd
    move-result-object v24

    #@fe
    .local v24, "libDir":Ljava/lang/String;
    goto :goto_0

    #@ff
    .line 562
    .end local v8    # "cacheDir":Ljava/lang/String;
    .end local v9    # "ceContext":Landroid/content/Context;
    .end local v10    # "codeCacheDir":Ljava/lang/String;
    .end local v11    # "dbDir":Ljava/lang/String;
    .end local v12    # "deContext":Landroid/content/Context;
    .end local v13    # "deviceCacheDir":Ljava/lang/String;
    .end local v14    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v15    # "deviceDbDir":Ljava/lang/String;
    .end local v16    # "deviceFilesDir":Ljava/lang/String;
    .end local v17    # "deviceNbFilesDir":Ljava/lang/String;
    .end local v18    # "deviceRootDir":Ljava/lang/String;
    .end local v19    # "deviceSpDir":Ljava/lang/String;
    .end local v21    # "efDir":Ljava/lang/String;
    .end local v23    # "filesDir":Ljava/lang/String;
    .end local v24    # "libDir":Ljava/lang/String;
    .end local v25    # "nbFilesDir":Ljava/lang/String;
    .end local v26    # "rootDir":Ljava/lang/String;
    .end local v27    # "spDir":Ljava/lang/String;
    :catch_0
    move-exception v20

    #@100
    .line 563
    .local v20, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupAgent"

    #@103
    const-string/jumbo v3, "Unable to obtain canonical paths"

    #@106
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@109
    .line 564
    return-void

    #@10a
    .line 579
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v8    # "cacheDir":Ljava/lang/String;
    .restart local v9    # "ceContext":Landroid/content/Context;
    .restart local v10    # "codeCacheDir":Ljava/lang/String;
    .restart local v11    # "dbDir":Ljava/lang/String;
    .restart local v12    # "deContext":Landroid/content/Context;
    .restart local v13    # "deviceCacheDir":Ljava/lang/String;
    .restart local v14    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v15    # "deviceDbDir":Ljava/lang/String;
    .restart local v16    # "deviceFilesDir":Ljava/lang/String;
    .restart local v17    # "deviceNbFilesDir":Ljava/lang/String;
    .restart local v18    # "deviceRootDir":Ljava/lang/String;
    .restart local v19    # "deviceSpDir":Ljava/lang/String;
    .restart local v23    # "filesDir":Ljava/lang/String;
    .restart local v25    # "nbFilesDir":Ljava/lang/String;
    .restart local v26    # "rootDir":Ljava/lang/String;
    .restart local v27    # "spDir":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    #@10b
    .line 580
    .local v4, "rootpath":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10e
    move-result v1

    #@10f
    if-eqz v1, :cond_4

    #@111
    .line 581
    const-string/jumbo v2, "db"

    #@114
    .line 582
    .local v2, "domain":Ljava/lang/String;
    move-object v4, v11

    #@115
    .line 618
    .local v4, "rootpath":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    #@118
    move-result-object v1

    #@119
    const/4 v3, 0x0

    #@11a
    move-object/from16 v6, p2

    #@11c
    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@11f
    .line 501
    return-void

    #@120
    .line 583
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v27

    #@122
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@125
    move-result v1

    #@126
    if-eqz v1, :cond_5

    #@128
    .line 584
    const-string/jumbo v2, "sp"

    #@12b
    .line 585
    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v27

    #@12d
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@12e
    .line 586
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v23

    #@130
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@133
    move-result v1

    #@134
    if-eqz v1, :cond_6

    #@136
    .line 587
    const-string/jumbo v2, "f"

    #@139
    .line 588
    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v23

    #@13b
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@13c
    .line 589
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v26

    #@13e
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@141
    move-result v1

    #@142
    if-eqz v1, :cond_7

    #@144
    .line 590
    const-string/jumbo v2, "r"

    #@147
    .line 591
    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v26

    #@149
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@14a
    .line 592
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_7
    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14d
    move-result v1

    #@14e
    if-eqz v1, :cond_8

    #@150
    .line 593
    const-string/jumbo v2, "d_db"

    #@153
    .line 594
    .restart local v2    # "domain":Ljava/lang/String;
    move-object v4, v15

    #@154
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@155
    .line 595
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v19

    #@157
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@15a
    move-result v1

    #@15b
    if-eqz v1, :cond_9

    #@15d
    .line 596
    const-string/jumbo v2, "d_sp"

    #@160
    .line 597
    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v19

    #@162
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@163
    .line 598
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v16

    #@165
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@168
    move-result v1

    #@169
    if-eqz v1, :cond_a

    #@16b
    .line 599
    const-string/jumbo v2, "d_f"

    #@16e
    .line 600
    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v16

    #@170
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@171
    .line 601
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v18

    #@173
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@176
    move-result v1

    #@177
    if-eqz v1, :cond_b

    #@179
    .line 602
    const-string/jumbo v2, "d_r"

    #@17c
    .line 603
    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v18

    #@17e
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@17f
    .line 604
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_b
    if-eqz v21, :cond_c

    #@181
    move-object/from16 v0, v21

    #@183
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@186
    move-result v1

    #@187
    if-eqz v1, :cond_c

    #@189
    .line 605
    const-string/jumbo v2, "ef"

    #@18c
    .line 606
    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v21

    #@18e
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@18f
    .line 608
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_c
    const-string/jumbo v1, "BackupAgent"

    #@192
    new-instance v3, Ljava/lang/StringBuilder;

    #@194
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    const-string/jumbo v6, "File "

    #@19a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v3

    #@19e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v3

    #@1a2
    const-string/jumbo v6, " is in an unsupported location; skipping"

    #@1a5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v3

    #@1a9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v3

    #@1ad
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1b0
    .line 609
    return-void
.end method

.method protected final fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 15
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
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 635
    .local p4, "manifestExcludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p5, "systemExcludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    #@3
    move-result-object v1

    #@4
    move-object/from16 v0, p2

    #@6
    invoke-virtual {v1, v0}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 636
    .local v4, "domainPath":Ljava/lang/String;
    if-nez v4, :cond_0

    #@c
    .line 638
    return-void

    #@d
    .line 641
    :cond_0
    new-instance v12, Ljava/io/File;

    #@f
    move-object/from16 v0, p3

    #@11
    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@14
    .line 642
    .local v12, "rootFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_5

    #@1a
    .line 643
    new-instance v13, Ljava/util/LinkedList;

    #@1c
    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    #@1f
    .line 644
    .local v13, "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@22
    .line 646
    :cond_1
    :goto_0
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    #@25
    move-result v1

    #@26
    if-lez v1, :cond_5

    #@28
    .line 647
    const/4 v1, 0x0

    #@29
    invoke-virtual {v13, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    #@2c
    move-result-object v11

    #@2d
    check-cast v11, Ljava/io/File;

    #@2f
    .line 651
    .local v11, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-static {v1}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    #@36
    move-result-object v14

    #@37
    .line 652
    .local v14, "stat":Landroid/system/StructStat;
    iget v1, v14, Landroid/system/StructStat;->st_mode:I

    #@39
    invoke-static {v1}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_1

    #@3f
    .line 658
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 661
    .local v5, "filePath":Ljava/lang/String;
    if-eqz p4, :cond_2

    #@45
    move-object/from16 v0, p4

    #@47
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-nez v1, :cond_1

    #@4d
    .line 664
    :cond_2
    if-eqz p5, :cond_3

    #@4f
    move-object/from16 v0, p5

    #@51
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@54
    move-result v1

    #@55
    if-nez v1, :cond_1

    #@57
    .line 669
    :cond_3
    iget v1, v14, Landroid/system/StructStat;->st_mode:I

    #@59
    invoke-static {v1}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_4

    #@5f
    .line 670
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@62
    move-result-object v7

    #@63
    .line 671
    .local v7, "contents":[Ljava/io/File;
    if-eqz v7, :cond_4

    #@65
    .line 672
    const/4 v1, 0x0

    #@66
    array-length v2, v7

    #@67
    :goto_1
    if-ge v1, v2, :cond_4

    #@69
    aget-object v10, v7, v1

    #@6b
    .line 673
    .local v10, "entry":Ljava/io/File;
    const/4 v3, 0x0

    #@6c
    invoke-virtual {v13, v3, v10}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 672
    add-int/lit8 v1, v1, 0x1

    #@71
    goto :goto_1

    #@72
    .line 683
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v7    # "contents":[Ljava/io/File;
    .end local v10    # "entry":Ljava/io/File;
    .end local v14    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v8

    #@73
    .line 685
    .local v8, "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@76
    const/4 v2, 0x2

    #@77
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_1

    #@7d
    .line 686
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@80
    new-instance v2, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v3, "Error scanning file "

    #@88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    const-string/jumbo v3, " : "

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    goto :goto_0

    #@a3
    .line 677
    .end local v8    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v9

    #@a4
    .line 679
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@a7
    const/4 v2, 0x2

    #@a8
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@ab
    move-result v1

    #@ac
    if-eqz v1, :cond_1

    #@ae
    .line 680
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@b1
    new-instance v2, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v3, "Error canonicalizing path of "

    #@b9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v2

    #@c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v2

    #@c5
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    goto/16 :goto_0

    #@ca
    .line 692
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v14    # "stat":Landroid/system/StructStat;
    :cond_4
    const/4 v3, 0x0

    #@cb
    move-object/from16 v1, p1

    #@cd
    move-object/from16 v2, p2

    #@cf
    move-object/from16 v6, p6

    #@d1
    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@d4
    goto/16 :goto_0

    #@d6
    .line 633
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    .end local v14    # "stat":Landroid/system/StructStat;
    :cond_5
    return-void
.end method

.method getHandler()Landroid/os/Handler;
    .locals 2

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 136
    new-instance v0, Landroid/os/Handler;

    #@6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@d
    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    #@f
    .line 138
    :cond_0
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    #@11
    return-object v0
.end method

.method public abstract onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onBind()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 879
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public onCreate()V
    .locals 0

    #@0
    .prologue
    .line 172
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 181
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 29
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    invoke-static/range {p0 .. p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    #@3
    move-result-object v9

    #@4
    .line 287
    .local v9, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v9}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 288
    return-void

    #@b
    .line 295
    :cond_0
    :try_start_0
    invoke-virtual {v9}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    #@e
    move-result-object v4

    #@f
    .line 296
    .local v4, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v9}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v5

    #@13
    .line 306
    .local v5, "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 307
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@1a
    move-result-object v8

    #@1b
    .line 311
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createCredentialProtectedStorageContext()Landroid/content/Context;

    #@1e
    move-result-object v11

    #@1f
    .line 312
    .local v11, "ceContext":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@26
    move-result-object v27

    #@27
    .line 313
    .local v27, "rootDir":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@2e
    move-result-object v24

    #@2f
    .line 314
    .local v24, "filesDir":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@36
    move-result-object v26

    #@37
    .line 315
    .local v26, "noBackupDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@3a
    invoke-virtual {v11, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@45
    move-result-object v13

    #@46
    .line 317
    .local v13, "databaseDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@49
    invoke-virtual {v11, v1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@54
    move-result-object v28

    #@55
    .line 319
    .local v28, "sharedPrefsDir":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@5c
    move-result-object v10

    #@5d
    .line 320
    .local v10, "cacheDir":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@64
    move-result-object v12

    #@65
    .line 322
    .local v12, "codeCacheDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    #@68
    move-result-object v14

    #@69
    .line 323
    .local v14, "deContext":Landroid/content/Context;
    invoke-virtual {v14}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@70
    move-result-object v20

    #@71
    .line 324
    .local v20, "deviceRootDir":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@78
    move-result-object v18

    #@79
    .line 325
    .local v18, "deviceFilesDir":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@80
    move-result-object v19

    #@81
    .line 326
    .local v19, "deviceNoBackupDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@84
    invoke-virtual {v14, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@8f
    move-result-object v17

    #@90
    .line 328
    .local v17, "deviceDatabaseDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@93
    invoke-virtual {v14, v1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@9e
    move-result-object v21

    #@9f
    .line 330
    .local v21, "deviceSharedPrefsDir":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@a6
    move-result-object v15

    #@a7
    .line 331
    .local v15, "deviceCacheDir":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@ae
    move-result-object v16

    #@af
    .line 333
    .local v16, "deviceCodeCacheDir":Ljava/lang/String;
    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@b1
    if-eqz v1, :cond_4

    #@b3
    .line 334
    new-instance v1, Ljava/io/File;

    #@b5
    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@b7
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@ba
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@bd
    move-result-object v25

    #@be
    .line 340
    :goto_0
    new-instance v6, Landroid/util/ArraySet;

    #@c0
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@c3
    .line 343
    .local v6, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v24

    #@c5
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@c8
    .line 344
    move-object/from16 v0, v26

    #@ca
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@cd
    .line 345
    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@d0
    .line 346
    move-object/from16 v0, v28

    #@d2
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@d5
    .line 347
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@d8
    .line 348
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@db
    .line 350
    move-object/from16 v0, v18

    #@dd
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@e0
    .line 351
    move-object/from16 v0, v19

    #@e2
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@e5
    .line 352
    move-object/from16 v0, v17

    #@e7
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@ea
    .line 353
    move-object/from16 v0, v21

    #@ec
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@ef
    .line 354
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@f2
    .line 355
    move-object/from16 v0, v16

    #@f4
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@f7
    .line 357
    if-eqz v25, :cond_1

    #@f9
    .line 358
    move-object/from16 v0, v25

    #@fb
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@fe
    .line 363
    :cond_1
    const-string/jumbo v3, "r"

    #@101
    move-object/from16 v1, p0

    #@103
    move-object/from16 v7, p1

    #@105
    .line 362
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@108
    .line 365
    move-object/from16 v0, v27

    #@10a
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@10d
    .line 368
    const-string/jumbo v3, "d_r"

    #@110
    move-object/from16 v1, p0

    #@112
    move-object/from16 v7, p1

    #@114
    .line 367
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@117
    .line 370
    move-object/from16 v0, v20

    #@119
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@11c
    .line 373
    move-object/from16 v0, v24

    #@11e
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@121
    .line 375
    const-string/jumbo v3, "f"

    #@124
    move-object/from16 v1, p0

    #@126
    move-object/from16 v7, p1

    #@128
    .line 374
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@12b
    .line 377
    move-object/from16 v0, v24

    #@12d
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@130
    .line 379
    move-object/from16 v0, v18

    #@132
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@135
    .line 381
    const-string/jumbo v3, "d_f"

    #@138
    move-object/from16 v1, p0

    #@13a
    move-object/from16 v7, p1

    #@13c
    .line 380
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@13f
    .line 383
    move-object/from16 v0, v18

    #@141
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@144
    .line 386
    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@147
    .line 388
    const-string/jumbo v3, "db"

    #@14a
    move-object/from16 v1, p0

    #@14c
    move-object/from16 v7, p1

    #@14e
    .line 387
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@151
    .line 390
    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@154
    .line 392
    move-object/from16 v0, v17

    #@156
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@159
    .line 394
    const-string/jumbo v3, "d_db"

    #@15c
    move-object/from16 v1, p0

    #@15e
    move-object/from16 v7, p1

    #@160
    .line 393
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@163
    .line 396
    move-object/from16 v0, v17

    #@165
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@168
    .line 399
    move-object/from16 v0, v28

    #@16a
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@16d
    .line 401
    const-string/jumbo v3, "sp"

    #@170
    move-object/from16 v1, p0

    #@172
    move-object/from16 v7, p1

    #@174
    .line 400
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@177
    .line 403
    move-object/from16 v0, v28

    #@179
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@17c
    .line 405
    move-object/from16 v0, v21

    #@17e
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@181
    .line 407
    const-string/jumbo v3, "d_sp"

    #@184
    move-object/from16 v1, p0

    #@186
    move-object/from16 v7, p1

    #@188
    .line 406
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@18b
    .line 409
    move-object/from16 v0, v21

    #@18d
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@190
    .line 418
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@193
    move-result v1

    #@194
    const/16 v3, 0x3e8

    #@196
    if-eq v1, v3, :cond_2

    #@198
    .line 419
    const/4 v1, 0x0

    #@199
    move-object/from16 v0, p0

    #@19b
    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@19e
    move-result-object v23

    #@19f
    .line 420
    .local v23, "efLocation":Ljava/io/File;
    if-eqz v23, :cond_2

    #@1a1
    .line 422
    const-string/jumbo v3, "ef"

    #@1a4
    move-object/from16 v1, p0

    #@1a6
    move-object/from16 v7, p1

    #@1a8
    .line 421
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@1ab
    .line 285
    .end local v23    # "efLocation":Ljava/io/File;
    :cond_2
    return-void

    #@1ac
    .line 297
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "cacheDir":Ljava/lang/String;
    .end local v11    # "ceContext":Landroid/content/Context;
    .end local v12    # "codeCacheDir":Ljava/lang/String;
    .end local v13    # "databaseDir":Ljava/lang/String;
    .end local v14    # "deContext":Landroid/content/Context;
    .end local v15    # "deviceCacheDir":Ljava/lang/String;
    .end local v16    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v17    # "deviceDatabaseDir":Ljava/lang/String;
    .end local v18    # "deviceFilesDir":Ljava/lang/String;
    .end local v19    # "deviceNoBackupDir":Ljava/lang/String;
    .end local v20    # "deviceRootDir":Ljava/lang/String;
    .end local v21    # "deviceSharedPrefsDir":Ljava/lang/String;
    .end local v24    # "filesDir":Ljava/lang/String;
    .end local v26    # "noBackupDir":Ljava/lang/String;
    .end local v27    # "rootDir":Ljava/lang/String;
    .end local v28    # "sharedPrefsDir":Ljava/lang/String;
    :catch_0
    move-exception v22

    #@1ad
    .line 298
    .local v22, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@1b0
    const/4 v3, 0x2

    #@1b1
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1b4
    move-result v1

    #@1b5
    if-eqz v1, :cond_3

    #@1b7
    .line 299
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@1ba
    .line 300
    const-string/jumbo v3, "Exception trying to parse fullBackupContent xml file! Aborting full backup."

    #@1bd
    .line 299
    move-object/from16 v0, v22

    #@1bf
    invoke-static {v1, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c2
    .line 303
    :cond_3
    return-void

    #@1c3
    .line 335
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v5    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "cacheDir":Ljava/lang/String;
    .restart local v11    # "ceContext":Landroid/content/Context;
    .restart local v12    # "codeCacheDir":Ljava/lang/String;
    .restart local v13    # "databaseDir":Ljava/lang/String;
    .restart local v14    # "deContext":Landroid/content/Context;
    .restart local v15    # "deviceCacheDir":Ljava/lang/String;
    .restart local v16    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v17    # "deviceDatabaseDir":Ljava/lang/String;
    .restart local v18    # "deviceFilesDir":Ljava/lang/String;
    .restart local v19    # "deviceNoBackupDir":Ljava/lang/String;
    .restart local v20    # "deviceRootDir":Ljava/lang/String;
    .restart local v21    # "deviceSharedPrefsDir":Ljava/lang/String;
    .restart local v24    # "filesDir":Ljava/lang/String;
    .restart local v26    # "noBackupDir":Ljava/lang/String;
    .restart local v27    # "rootDir":Ljava/lang/String;
    .restart local v28    # "sharedPrefsDir":Ljava/lang/String;
    :cond_4
    const/16 v25, 0x0

    #@1c5
    .local v25, "libDir":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public onQuotaExceeded(JJ)V
    .locals 0
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    #@0
    .prologue
    .line 456
    return-void
.end method

.method public abstract onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 19
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

    #@0
    .prologue
    .line 826
    const/16 v17, 0x0

    #@2
    .line 832
    .local v17, "basePath":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    #@5
    move-result-object v2

    #@6
    move-object/from16 v0, p5

    #@8
    invoke-virtual {v2, v0}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v17

    #@c
    .line 833
    .local v17, "basePath":Ljava/lang/String;
    const-string/jumbo v2, "ef"

    #@f
    move-object/from16 v0, p5

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 834
    const-wide/16 p7, -0x1

    #@19
    .line 838
    :cond_0
    if-eqz v17, :cond_1

    #@1b
    .line 840
    new-instance v6, Ljava/io/File;

    #@1d
    move-object/from16 v0, v17

    #@1f
    move-object/from16 v1, p6

    #@21
    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 841
    .local v6, "outFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@27
    move-result-object v18

    #@28
    .line 842
    .local v18, "outPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    move-object/from16 v0, v17

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    move-object/from16 v0, v18

    #@3f
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_1

    #@45
    move-object/from16 v2, p0

    #@47
    move-object/from16 v3, p1

    #@49
    move-wide/from16 v4, p2

    #@4b
    move/from16 v7, p4

    #@4d
    move-wide/from16 v8, p7

    #@4f
    move-wide/from16 v10, p9

    #@51
    .line 844
    invoke-virtual/range {v2 .. v11}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    #@54
    .line 845
    return-void

    #@55
    .line 858
    .end local v6    # "outFile":Ljava/io/File;
    .end local v18    # "outPath":Ljava/lang/String;
    :cond_1
    const/16 v16, 0x0

    #@57
    move-object/from16 v8, p1

    #@59
    move-wide/from16 v9, p2

    #@5b
    move/from16 v11, p4

    #@5d
    move-wide/from16 v12, p7

    #@5f
    move-wide/from16 v14, p9

    #@61
    invoke-static/range {v8 .. v16}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    #@64
    .line 825
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 10
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

    #@0
    .prologue
    .line 727
    invoke-direct {p0, p4}, Landroid/app/backup/BackupAgent;->isFileEligibleForRestore(Ljava/io/File;)Z

    #@3
    move-result v9

    #@4
    .line 729
    .local v9, "accept":Z
    if-eqz v9, :cond_0

    #@6
    move-object v8, p4

    #@7
    :goto_0
    move-object v0, p1

    #@8
    move-wide v1, p2

    #@9
    move v3, p5

    #@a
    move-wide/from16 v4, p6

    #@c
    move-wide/from16 v6, p8

    #@e
    invoke-static/range {v0 .. v8}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    #@11
    .line 725
    return-void

    #@12
    .line 729
    :cond_0
    const/4 v8, 0x0

    #@13
    goto :goto_0
.end method

.method public onRestoreFinished()V
    .locals 0

    #@0
    .prologue
    .line 872
    return-void
.end method

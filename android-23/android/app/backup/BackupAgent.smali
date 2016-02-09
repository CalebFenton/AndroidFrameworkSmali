.class public abstract Landroid/app/backup/BackupAgent;
.super Landroid/content/ContextWrapper;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;,
        Landroid/app/backup/BackupAgent$BackupServiceBinder;,
        Landroid/app/backup/BackupAgent$FailRunnable;
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
    .line 165
    invoke-direct {p0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@4
    .line 134
    iput-object v1, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    #@6
    .line 764
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
    .line 164
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
    .line 395
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
    .line 398
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
    .line 397
    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@19
    .line 394
    :cond_1
    return-void

    #@1a
    .line 400
    :cond_2
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 403
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
    .line 404
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
    .line 615
    invoke-static {p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    #@5
    move-result-object v0

    #@6
    .line 616
    .local v0, "bs":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    #@9
    move-result v8

    #@a
    if-nez v8, :cond_1

    #@c
    .line 617
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@f
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_0

    #@15
    .line 618
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@18
    .line 619
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
    .line 620
    const-string/jumbo v10, "\" : fullBackupContent not enabled for "

    #@2f
    .line 619
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v9

    #@33
    .line 620
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    #@36
    move-result-object v10

    #@37
    .line 619
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    .line 618
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 622
    :cond_0
    return v11

    #@43
    .line 625
    :cond_1
    const/4 v7, 0x0

    #@44
    .line 626
    .local v7, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    #@45
    .line 627
    .local v5, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 629
    .local v1, "destinationCanonicalPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    #@4c
    move-result-object v7

    #@4d
    .line 630
    .local v7, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    move-result-object v5

    #@51
    .line 641
    .local v5, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    #@53
    .line 642
    invoke-direct {p0, p1, v5}, Landroid/app/backup/BackupAgent;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    #@56
    move-result v8

    #@57
    .line 641
    if-eqz v8, :cond_4

    #@59
    .line 643
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@5c
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5f
    move-result v8

    #@60
    if-eqz v8, :cond_2

    #@62
    .line 644
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@65
    .line 645
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
    .line 646
    const-string/jumbo v10, " excludes; skipping."

    #@7f
    .line 645
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v9

    #@83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    .line 644
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 648
    :cond_2
    return v11

    #@8b
    .line 631
    .end local v7    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v5, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    #@8c
    .line 632
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@8f
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@92
    move-result v8

    #@93
    if-eqz v8, :cond_3

    #@95
    .line 633
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@98
    .line 634
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
    .line 635
    const-string/jumbo v10, "\" : Exception trying to parse fullBackupContent xml file!"

    #@ab
    .line 634
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v9

    #@af
    .line 636
    const-string/jumbo v10, " Aborting onRestoreFile."

    #@b2
    .line 634
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v9

    #@b6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v9

    #@ba
    .line 633
    invoke-static {v8, v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@bd
    .line 638
    :cond_3
    return v11

    #@be
    .line 651
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
    .line 671
    :cond_5
    const/4 v8, 0x1

    #@c7
    return v8

    #@c8
    .line 654
    :cond_6
    const/4 v6, 0x0

    #@c9
    .line 655
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
    .line 656
    .local v2, "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v2}, Landroid/app/backup/BackupAgent;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    #@e0
    move-result v8

    #@e1
    or-int/2addr v6, v8

    #@e2
    .line 657
    .local v6, "explicitlyIncluded":Z
    if-eqz v6, :cond_7

    #@e4
    .line 661
    .end local v2    # "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "explicitlyIncluded":Z
    :cond_8
    if-nez v6, :cond_5

    #@e6
    .line 662
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@e9
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@ec
    move-result v8

    #@ed
    if-eqz v8, :cond_9

    #@ef
    .line 663
    const-string/jumbo v8, "BackupXmlParserLogging"

    #@f2
    .line 664
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
    .line 665
    const-string/jumbo v10, "\" but it isn\'t specified"

    #@105
    .line 664
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v9

    #@109
    .line 666
    const-string/jumbo v10, " in the included files; skipping."

    #@10c
    .line 664
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v9

    #@110
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v9

    #@114
    .line 663
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@117
    .line 668
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
    .line 680
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
    .line 681
    .local v0, "canonicalPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@12
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@15
    .line 682
    .local v2, "fileFromList":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 683
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 685
    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    return v3

    #@26
    .line 688
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
    .line 691
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_0

    #@35
    .line 693
    const/4 v3, 0x1

    #@36
    return v3

    #@37
    .line 697
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
    .line 155
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v1

    #@4
    .line 156
    .local v1, "h":Landroid/os/Handler;
    new-instance v2, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;

    #@6
    invoke-direct {v2, p0}, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;-><init>(Landroid/app/backup/BackupAgent;)V

    #@9
    .line 157
    .local v2, "s":Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@c
    .line 159
    :try_start_0
    iget-object v3, v2, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@e
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 154
    :goto_0
    return-void

    #@12
    .line 160
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
    .line 768
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 767
    return-void
.end method

.method public final fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 19
    .param p1, "file"    # Ljava/io/File;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    #@0
    .prologue
    .line 434
    const/4 v12, 0x0

    #@1
    .line 437
    .local v12, "efDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@4
    move-result-object v7

    #@5
    .line 440
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@7
    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@9
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@f
    move-result-object v16

    #@10
    .line 441
    .local v16, "mainDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@17
    move-result-object v14

    #@18
    .line 442
    .local v14, "filesDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getNoBackupFilesDir()Ljava/io/File;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@1f
    move-result-object v17

    #@20
    .line 443
    .local v17, "nbFilesDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@23
    move-object/from16 v0, p0

    #@25
    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@30
    move-result-object v10

    #@31
    .line 444
    .local v10, "dbDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@34
    move-object/from16 v0, p0

    #@36
    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@41
    move-result-object v18

    #@42
    .line 445
    .local v18, "spDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCacheDir()Ljava/io/File;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    .line 446
    .local v8, "cacheDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCodeCacheDir()Ljava/io/File;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    .line 447
    .local v9, "codeCacheDir":Ljava/lang/String;
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@54
    if-nez v1, :cond_2

    #@56
    .line 448
    const/4 v15, 0x0

    #@57
    .line 452
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@5a
    move-result v1

    #@5b
    const/16 v3, 0x3e8

    #@5d
    if-eq v1, v3, :cond_0

    #@5f
    .line 453
    const/4 v1, 0x0

    #@60
    move-object/from16 v0, p0

    #@62
    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@65
    move-result-object v13

    #@66
    .line 454
    .local v13, "efLocation":Ljava/io/File;
    if-eqz v13, :cond_0

    #@68
    .line 455
    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@6b
    move-result-object v12

    #@6c
    .line 462
    .end local v12    # "efDir":Ljava/lang/String;
    .end local v13    # "efLocation":Ljava/io/File;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    move-result-object v5

    #@70
    .line 468
    .local v5, "filePath":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@73
    move-result v1

    #@74
    if-nez v1, :cond_1

    #@76
    .line 469
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@79
    move-result v1

    #@7a
    .line 468
    if-nez v1, :cond_1

    #@7c
    .line 470
    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7f
    move-result v1

    #@80
    .line 468
    if-nez v1, :cond_1

    #@82
    .line 471
    move-object/from16 v0, v17

    #@84
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@87
    move-result v1

    #@88
    .line 468
    if-eqz v1, :cond_3

    #@8a
    .line 472
    :cond_1
    const-string/jumbo v1, "BackupAgent"

    #@8d
    const-string/jumbo v3, "lib, cache, code_cache, and no_backup files are not backed up"

    #@90
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 473
    return-void

    #@94
    .line 449
    .end local v5    # "filePath":Ljava/lang/String;
    .restart local v12    # "efDir":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@96
    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@98
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9b
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@9e
    move-result-object v15

    #@9f
    .local v15, "libDir":Ljava/lang/String;
    goto :goto_0

    #@a0
    .line 463
    .end local v8    # "cacheDir":Ljava/lang/String;
    .end local v9    # "codeCacheDir":Ljava/lang/String;
    .end local v10    # "dbDir":Ljava/lang/String;
    .end local v12    # "efDir":Ljava/lang/String;
    .end local v14    # "filesDir":Ljava/lang/String;
    .end local v15    # "libDir":Ljava/lang/String;
    .end local v16    # "mainDir":Ljava/lang/String;
    .end local v17    # "nbFilesDir":Ljava/lang/String;
    .end local v18    # "spDir":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@a1
    .line 464
    .local v11, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupAgent"

    #@a4
    const-string/jumbo v3, "Unable to obtain canonical paths"

    #@a7
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 465
    return-void

    #@ab
    .line 477
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v8    # "cacheDir":Ljava/lang/String;
    .restart local v9    # "codeCacheDir":Ljava/lang/String;
    .restart local v10    # "dbDir":Ljava/lang/String;
    .restart local v14    # "filesDir":Ljava/lang/String;
    .restart local v16    # "mainDir":Ljava/lang/String;
    .restart local v17    # "nbFilesDir":Ljava/lang/String;
    .restart local v18    # "spDir":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    #@ac
    .line 478
    .local v4, "rootpath":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@af
    move-result v1

    #@b0
    if-eqz v1, :cond_4

    #@b2
    .line 479
    const-string/jumbo v2, "db"

    #@b5
    .line 480
    .local v2, "domain":Ljava/lang/String;
    move-object v4, v10

    #@b6
    .line 504
    .local v4, "rootpath":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    const/4 v3, 0x0

    #@bb
    move-object/from16 v6, p2

    #@bd
    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@c0
    .line 424
    return-void

    #@c1
    .line 481
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v18

    #@c3
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c6
    move-result v1

    #@c7
    if-eqz v1, :cond_5

    #@c9
    .line 482
    const-string/jumbo v2, "sp"

    #@cc
    .line 483
    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v18

    #@ce
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@cf
    .line 484
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d2
    move-result v1

    #@d3
    if-eqz v1, :cond_6

    #@d5
    .line 485
    const-string/jumbo v2, "f"

    #@d8
    .line 486
    .restart local v2    # "domain":Ljava/lang/String;
    move-object v4, v14

    #@d9
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@da
    .line 487
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v16

    #@dc
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@df
    move-result v1

    #@e0
    if-eqz v1, :cond_7

    #@e2
    .line 488
    const-string/jumbo v2, "r"

    #@e5
    .line 489
    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v16

    #@e7
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@e8
    .line 490
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_7
    if-eqz v12, :cond_8

    #@ea
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ed
    move-result v1

    #@ee
    if-eqz v1, :cond_8

    #@f0
    .line 491
    const-string/jumbo v2, "ef"

    #@f3
    .line 492
    .restart local v2    # "domain":Ljava/lang/String;
    move-object v4, v12

    #@f4
    .local v4, "rootpath":Ljava/lang/String;
    goto :goto_1

    #@f5
    .line 494
    .end local v2    # "domain":Ljava/lang/String;
    .local v4, "rootpath":Ljava/lang/String;
    :cond_8
    const-string/jumbo v1, "BackupAgent"

    #@f8
    new-instance v3, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v6, "File "

    #@100
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v3

    #@104
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v3

    #@108
    const-string/jumbo v6, " is in an unsupported location; skipping"

    #@10b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v3

    #@10f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v3

    #@113
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@116
    .line 495
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
    .line 521
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
    .line 522
    .local v4, "domainPath":Ljava/lang/String;
    if-nez v4, :cond_0

    #@c
    .line 524
    return-void

    #@d
    .line 527
    :cond_0
    new-instance v12, Ljava/io/File;

    #@f
    move-object/from16 v0, p3

    #@11
    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@14
    .line 528
    .local v12, "rootFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_5

    #@1a
    .line 529
    new-instance v13, Ljava/util/LinkedList;

    #@1c
    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    #@1f
    .line 530
    .local v13, "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@22
    .line 532
    :cond_1
    :goto_0
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    #@25
    move-result v1

    #@26
    if-lez v1, :cond_5

    #@28
    .line 533
    const/4 v1, 0x0

    #@29
    invoke-virtual {v13, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    #@2c
    move-result-object v11

    #@2d
    check-cast v11, Ljava/io/File;

    #@2f
    .line 536
    .local v11, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 539
    .local v5, "filePath":Ljava/lang/String;
    if-eqz p4, :cond_2

    #@35
    move-object/from16 v0, p4

    #@37
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    if-nez v1, :cond_1

    #@3d
    .line 542
    :cond_2
    if-eqz p5, :cond_3

    #@3f
    move-object/from16 v0, p5

    #@41
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@44
    move-result v1

    #@45
    if-nez v1, :cond_1

    #@47
    .line 547
    :cond_3
    invoke-static {v5}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    #@4a
    move-result-object v14

    #@4b
    .line 548
    .local v14, "stat":Landroid/system/StructStat;
    iget v1, v14, Landroid/system/StructStat;->st_mode:I

    #@4d
    invoke-static {v1}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    #@50
    move-result v1

    #@51
    if-nez v1, :cond_1

    #@53
    .line 551
    iget v1, v14, Landroid/system/StructStat;->st_mode:I

    #@55
    invoke-static {v1}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_4

    #@5b
    .line 552
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@5e
    move-result-object v7

    #@5f
    .line 553
    .local v7, "contents":[Ljava/io/File;
    if-eqz v7, :cond_4

    #@61
    .line 554
    const/4 v1, 0x0

    #@62
    array-length v2, v7

    #@63
    :goto_1
    if-ge v1, v2, :cond_4

    #@65
    aget-object v10, v7, v1

    #@67
    .line 555
    .local v10, "entry":Ljava/io/File;
    const/4 v3, 0x0

    #@68
    invoke-virtual {v13, v3, v10}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    .line 554
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 565
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v7    # "contents":[Ljava/io/File;
    .end local v10    # "entry":Ljava/io/File;
    .end local v14    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v8

    #@6f
    .line 567
    .local v8, "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@72
    const/4 v2, 0x2

    #@73
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@76
    move-result v1

    #@77
    if-eqz v1, :cond_1

    #@79
    .line 568
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@7c
    new-instance v2, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v3, "Error scanning file "

    #@84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    const-string/jumbo v3, " : "

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    goto :goto_0

    #@9f
    .line 559
    .end local v8    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v9

    #@a0
    .line 561
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@a3
    const/4 v2, 0x2

    #@a4
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a7
    move-result v1

    #@a8
    if-eqz v1, :cond_1

    #@aa
    .line 562
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@ad
    new-instance v2, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v3, "Error canonicalizing path of "

    #@b5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v2

    #@b9
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v2

    #@c1
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    goto/16 :goto_0

    #@c6
    .line 574
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v14    # "stat":Landroid/system/StructStat;
    :cond_4
    const/4 v3, 0x0

    #@c7
    move-object/from16 v1, p1

    #@c9
    move-object/from16 v2, p2

    #@cb
    move-object/from16 v6, p6

    #@cd
    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@d0
    goto/16 :goto_0

    #@d2
    .line 519
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
    .line 137
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 138
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
    .line 140
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
    .line 761
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public onCreate()V
    .locals 0

    #@0
    .prologue
    .line 174
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 183
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 20
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static/range {p0 .. p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    #@3
    move-result-object v9

    #@4
    .line 289
    .local v9, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v9}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 290
    return-void

    #@b
    .line 297
    :cond_0
    :try_start_0
    invoke-virtual {v9}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    #@e
    move-result-object v4

    #@f
    .line 298
    .local v4, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v9}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v5

    #@13
    .line 308
    .local v5, "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 309
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@1a
    move-result-object v8

    #@1b
    .line 311
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    #@1d
    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@1f
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@22
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@25
    move-result-object v18

    #@26
    .line 312
    .local v18, "rootDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@2d
    move-result-object v15

    #@2e
    .line 313
    .local v15, "filesDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getNoBackupFilesDir()Ljava/io/File;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@35
    move-result-object v17

    #@36
    .line 314
    .local v17, "nobackupDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@39
    move-object/from16 v0, p0

    #@3b
    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@46
    move-result-object v12

    #@47
    .line 315
    .local v12, "databaseDir":Ljava/lang/String;
    const-string/jumbo v1, "foo"

    #@4a
    move-object/from16 v0, p0

    #@4c
    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@57
    move-result-object v19

    #@58
    .line 316
    .local v19, "sharedPrefsDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCacheDir()Ljava/io/File;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@5f
    move-result-object v10

    #@60
    .line 317
    .local v10, "cacheDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCodeCacheDir()Ljava/io/File;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@67
    move-result-object v11

    #@68
    .line 318
    .local v11, "codeCacheDir":Ljava/lang/String;
    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@6a
    if-eqz v1, :cond_4

    #@6c
    .line 319
    new-instance v1, Ljava/io/File;

    #@6e
    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@70
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@73
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@76
    move-result-object v16

    #@77
    .line 325
    :goto_0
    new-instance v6, Landroid/util/ArraySet;

    #@79
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@7c
    .line 328
    .local v6, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@7f
    .line 329
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@82
    .line 330
    move-object/from16 v0, v17

    #@84
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@87
    .line 331
    if-eqz v16, :cond_1

    #@89
    .line 332
    move-object/from16 v0, v16

    #@8b
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@8e
    .line 335
    :cond_1
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@91
    .line 336
    move-object/from16 v0, v19

    #@93
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@96
    .line 337
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@99
    .line 341
    const-string/jumbo v3, "r"

    #@9c
    move-object/from16 v1, p0

    #@9e
    move-object/from16 v7, p1

    #@a0
    .line 340
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@a3
    .line 343
    move-object/from16 v0, v18

    #@a5
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@a8
    .line 346
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@ab
    .line 348
    const-string/jumbo v3, "f"

    #@ae
    move-object/from16 v1, p0

    #@b0
    move-object/from16 v7, p1

    #@b2
    .line 347
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@b5
    .line 350
    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@b8
    .line 353
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@bb
    .line 355
    const-string/jumbo v3, "db"

    #@be
    move-object/from16 v1, p0

    #@c0
    move-object/from16 v7, p1

    #@c2
    .line 354
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@c5
    .line 357
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@c8
    .line 360
    move-object/from16 v0, v19

    #@ca
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@cd
    .line 362
    const-string/jumbo v3, "sp"

    #@d0
    move-object/from16 v1, p0

    #@d2
    move-object/from16 v7, p1

    #@d4
    .line 361
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@d7
    .line 364
    move-object/from16 v0, v19

    #@d9
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@dc
    .line 373
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@df
    move-result v1

    #@e0
    const/16 v3, 0x3e8

    #@e2
    if-eq v1, v3, :cond_2

    #@e4
    .line 374
    const/4 v1, 0x0

    #@e5
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@ea
    move-result-object v14

    #@eb
    .line 375
    .local v14, "efLocation":Ljava/io/File;
    if-eqz v14, :cond_2

    #@ed
    .line 377
    const-string/jumbo v3, "ef"

    #@f0
    move-object/from16 v1, p0

    #@f2
    move-object/from16 v7, p1

    #@f4
    .line 376
    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    #@f7
    .line 287
    .end local v14    # "efLocation":Ljava/io/File;
    :cond_2
    return-void

    #@f8
    .line 299
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "cacheDir":Ljava/lang/String;
    .end local v11    # "codeCacheDir":Ljava/lang/String;
    .end local v12    # "databaseDir":Ljava/lang/String;
    .end local v15    # "filesDir":Ljava/lang/String;
    .end local v17    # "nobackupDir":Ljava/lang/String;
    .end local v18    # "rootDir":Ljava/lang/String;
    .end local v19    # "sharedPrefsDir":Ljava/lang/String;
    :catch_0
    move-exception v13

    #@f9
    .line 300
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@fc
    const/4 v3, 0x2

    #@fd
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@100
    move-result v1

    #@101
    if-eqz v1, :cond_3

    #@103
    .line 301
    const-string/jumbo v1, "BackupXmlParserLogging"

    #@106
    .line 302
    const-string/jumbo v3, "Exception trying to parse fullBackupContent xml file! Aborting full backup."

    #@109
    .line 301
    invoke-static {v1, v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10c
    .line 305
    :cond_3
    return-void

    #@10d
    .line 320
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v5    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "cacheDir":Ljava/lang/String;
    .restart local v11    # "codeCacheDir":Ljava/lang/String;
    .restart local v12    # "databaseDir":Ljava/lang/String;
    .restart local v15    # "filesDir":Ljava/lang/String;
    .restart local v17    # "nobackupDir":Ljava/lang/String;
    .restart local v18    # "rootDir":Ljava/lang/String;
    .restart local v19    # "sharedPrefsDir":Ljava/lang/String;
    :cond_4
    const/16 v16, 0x0

    #@10f
    .local v16, "libDir":Ljava/lang/String;
    goto/16 :goto_0
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
    .line 708
    const/16 v17, 0x0

    #@2
    .line 714
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
    .line 715
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
    .line 716
    const-wide/16 p7, -0x1

    #@19
    .line 720
    :cond_0
    if-eqz v17, :cond_1

    #@1b
    .line 722
    new-instance v6, Ljava/io/File;

    #@1d
    move-object/from16 v0, v17

    #@1f
    move-object/from16 v1, p6

    #@21
    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 723
    .local v6, "outFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@27
    move-result-object v18

    #@28
    .line 724
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
    .line 726
    invoke-virtual/range {v2 .. v11}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    #@54
    .line 727
    return-void

    #@55
    .line 740
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
    .line 707
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
    .line 609
    invoke-direct {p0, p4}, Landroid/app/backup/BackupAgent;->isFileEligibleForRestore(Ljava/io/File;)Z

    #@3
    move-result v9

    #@4
    .line 611
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
    .line 607
    return-void

    #@12
    .line 611
    :cond_0
    const/4 v8, 0x0

    #@13
    goto :goto_0
.end method

.method public onRestoreFinished()V
    .locals 0

    #@0
    .prologue
    .line 754
    return-void
.end method

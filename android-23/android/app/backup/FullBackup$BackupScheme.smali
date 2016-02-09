.class public Landroid/app/backup/FullBackup$BackupScheme;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupScheme"
.end annotation


# instance fields
.field private final CACHE_DIR:Ljava/io/File;

.field private final DATABASE_DIR:Ljava/io/File;

.field private final EXTERNAL_DIR:Ljava/io/File;

.field private final FILES_DIR:Ljava/io/File;

.field private final NOBACKUP_DIR:Ljava/io/File;

.field private final ROOT_DIR:Ljava/io/File;

.field private final SHAREDPREF_DIR:Ljava/io/File;

.field mExcludes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFullBackupContent:I

.field mIncludes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackageManager:Landroid/content/pm/PackageManager;

.field final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@a
    iput v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    #@c
    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageManager:Landroid/content/pm/PackageManager;

    #@12
    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageName:Ljava/lang/String;

    #@18
    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    #@1e
    .line 261
    const-string/jumbo v0, "foo"

    #@21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    #@2b
    .line 262
    new-instance v0, Ljava/io/File;

    #@2d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@30
    move-result-object v1

    #@31
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@33
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@36
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    #@38
    .line 263
    const-string/jumbo v0, "foo"

    #@3b
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    #@45
    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->CACHE_DIR:Ljava/io/File;

    #@4b
    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->NOBACKUP_DIR:Ljava/io/File;

    #@51
    .line 266
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@54
    move-result v0

    #@55
    const/16 v1, 0x3e8

    #@57
    if-eq v0, v1, :cond_0

    #@59
    .line 267
    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@5c
    move-result-object v0

    #@5d
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    #@5f
    .line 256
    :goto_0
    return-void

    #@60
    .line 269
    :cond_0
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    #@62
    goto :goto_0
.end method

.method private extractCanonicalFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "domain"    # Ljava/io/File;
    .param p2, "filePathFromXml"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 496
    if-nez p2, :cond_0

    #@4
    .line 498
    const-string/jumbo p2, ""

    #@7
    .line 500
    :cond_0
    const-string/jumbo v0, ".."

    #@a
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 501
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@13
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 502
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "...resolved \""

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, " "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 503
    const-string/jumbo v2, "\", but the \"..\" path is not permitted; skipping."

    #@3e
    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 505
    :cond_1
    return-object v3

    #@4a
    .line 507
    :cond_2
    const-string/jumbo v0, "//"

    #@4d
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_4

    #@53
    .line 508
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@56
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_3

    #@5c
    .line 509
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v2, "...resolved \""

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    const-string/jumbo v2, " "

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    .line 510
    const-string/jumbo v2, "\", which contains the invalid \"//\" sequence; skipping."

    #@81
    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    .line 512
    :cond_3
    return-object v3

    #@8d
    .line 514
    :cond_4
    new-instance v0, Ljava/io/File;

    #@8f
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@92
    return-object v0
.end method

.method private getDirectoryForCriteriaDomain(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 523
    return-object v1

    #@8
    .line 525
    :cond_0
    const-string/jumbo v0, "file"

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 526
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    #@13
    return-object v0

    #@14
    .line 527
    :cond_1
    const-string/jumbo v0, "database"

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 528
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    #@1f
    return-object v0

    #@20
    .line 529
    :cond_2
    const-string/jumbo v0, "root"

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 530
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    #@2b
    return-object v0

    #@2c
    .line 531
    :cond_3
    const-string/jumbo v0, "sharedpref"

    #@2f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 532
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    #@37
    return-object v0

    #@38
    .line 533
    :cond_4
    const-string/jumbo v0, "external"

    #@3b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_5

    #@41
    .line 534
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    #@43
    return-object v0

    #@44
    .line 536
    :cond_5
    return-object v1
.end method

.method private getTokenForXmlDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "xmlDomain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 473
    const-string/jumbo v0, "root"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 474
    const-string/jumbo v0, "r"

    #@c
    return-object v0

    #@d
    .line 475
    :cond_0
    const-string/jumbo v0, "file"

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 476
    const-string/jumbo v0, "f"

    #@19
    return-object v0

    #@1a
    .line 477
    :cond_1
    const-string/jumbo v0, "database"

    #@1d
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 478
    const-string/jumbo v0, "db"

    #@26
    return-object v0

    #@27
    .line 479
    :cond_2
    const-string/jumbo v0, "sharedpref"

    #@2a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 480
    const-string/jumbo v0, "sp"

    #@33
    return-object v0

    #@34
    .line 481
    :cond_3
    const-string/jumbo v0, "external"

    #@37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_4

    #@3d
    .line 482
    const-string/jumbo v0, "ef"

    #@40
    return-object v0

    #@41
    .line 484
    :cond_4
    const/4 v0, 0x0

    #@42
    return-object v0
.end method

.method private maybeParseBackupSchemeLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 311
    new-instance v2, Landroid/util/ArrayMap;

    #@3
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@6
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    #@8
    .line 312
    new-instance v2, Landroid/util/ArraySet;

    #@a
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@d
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    #@f
    .line 314
    iget v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    #@11
    if-nez v2, :cond_1

    #@13
    .line 316
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 317
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@1f
    const-string/jumbo v3, "android:fullBackupContent - \"true\""

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 309
    :cond_0
    :goto_0
    return-void

    #@26
    .line 321
    :cond_1
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@29
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 322
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@32
    .line 323
    const-string/jumbo v3, "android:fullBackupContent - found xml resource"

    #@35
    .line 322
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 325
    :cond_2
    const/4 v1, 0x0

    #@39
    .line 327
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageManager:Landroid/content/pm/PackageManager;

    #@3b
    .line 328
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageName:Ljava/lang/String;

    #@3d
    .line 327
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    #@40
    move-result-object v2

    #@41
    .line 329
    iget v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    #@43
    .line 327
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@46
    move-result-object v1

    #@47
    .line 330
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    #@49
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    #@4b
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/FullBackup$BackupScheme;->parseBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 335
    if-eqz v1, :cond_0

    #@50
    .line 336
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    #@53
    goto :goto_0

    #@54
    .line 331
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    #@55
    .line 333
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    #@57
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@5a
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    .line 334
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    #@5c
    .line 335
    if-eqz v1, :cond_3

    #@5e
    .line 336
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    #@61
    .line 334
    :cond_3
    throw v2
.end method

.method private parseCurrentTagForDomain(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 446
    .local p2, "excludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string/jumbo v2, "include"

    #@3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 447
    invoke-direct {p0, p4}, Landroid/app/backup/FullBackup$BackupScheme;->getTokenForXmlDomain(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 448
    .local v0, "domainToken":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/util/Set;

    #@17
    .line 449
    .local v1, "includeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@19
    .line 450
    new-instance v1, Landroid/util/ArraySet;

    #@1b
    .end local v1    # "includeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@1e
    .line 451
    .restart local v1    # "includeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 453
    :cond_0
    return-object v1

    #@22
    .line 454
    .end local v0    # "domainToken":Ljava/lang/String;
    .end local v1    # "includeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v2, "exclude"

    #@25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 455
    return-object p2

    #@30
    .line 458
    :cond_2
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@33
    const/4 v3, 0x2

    #@34
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_3

    #@3a
    .line 459
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "Invalid tag found in xml \""

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    .line 460
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    .line 460
    const-string/jumbo v4, "\"; aborting operation."

    #@54
    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 462
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@61
    new-instance v3, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v4, "Unrecognised tag in backup criteria xml ("

    #@69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    .line 463
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 462
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    .line 463
    const-string/jumbo v4, ")"

    #@78
    .line 462
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@83
    throw v2
.end method

.method private validateInnerTagContents(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 546
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-le v0, v1, :cond_0

    #@7
    .line 547
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "At most 2 tag attributes allowed for \""

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 548
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 548
    const-string/jumbo v2, "\" tag (\"domain\" & \"path\"."

    #@20
    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 550
    :cond_0
    const-string/jumbo v0, "include"

    #@2f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_1

    #@39
    const-string/jumbo v0, "exclude"

    #@3c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_2

    #@46
    .line 545
    :cond_1
    return-void

    #@47
    .line 551
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@49
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "A valid tag is one of \"<include/>\" or \"<exclude/>. You provided \""

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 552
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    .line 552
    const-string/jumbo v2, "\""

    #@60
    .line 551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v0
.end method


# virtual methods
.method isFullBackupContentEnabled()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 274
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    #@3
    if-gez v0, :cond_1

    #@5
    .line 276
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@8
    const/4 v1, 0x2

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 277
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@12
    const-string/jumbo v1, "android:fullBackupContent - \"false\""

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 279
    :cond_0
    return v2

    #@19
    .line 281
    :cond_1
    const/4 v0, 0x1

    #@1a
    return v0
.end method

.method public declared-synchronized maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 303
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 304
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    #@8
    .line 306
    :cond_0
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 292
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 293
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    #@8
    .line 295
    :cond_0
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public parseBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;)V
    .locals 19
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    .local p2, "excludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v11

    #@4
    .line 348
    .local v11, "event":I
    :goto_0
    const/16 v16, 0x2

    #@6
    move/from16 v0, v16

    #@8
    if-eq v11, v0, :cond_0

    #@a
    .line 349
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@d
    move-result v11

    #@e
    goto :goto_0

    #@f
    .line 352
    :cond_0
    const-string/jumbo v16, "full-backup-content"

    #@12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@15
    move-result-object v17

    #@16
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v16

    #@1a
    if-nez v16, :cond_1

    #@1c
    .line 353
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    #@1e
    new-instance v17, Ljava/lang/StringBuilder;

    #@20
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v18, "Xml file didn\'t start with correct tag (<full-backup-content>). Found \""

    #@26
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v17

    #@2a
    .line 354
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2d
    move-result-object v18

    #@2e
    .line 353
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v17

    #@32
    .line 354
    const-string/jumbo v18, "\""

    #@35
    .line 353
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v17

    #@39
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v17

    #@3d
    invoke-direct/range {v16 .. v17}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@40
    throw v16

    #@41
    .line 357
    :cond_1
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@44
    const/16 v17, 0x2

    #@46
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@49
    move-result v16

    #@4a
    if-eqz v16, :cond_2

    #@4c
    .line 358
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@4f
    const-string/jumbo v17, "\n"

    #@52
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 359
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@58
    const-string/jumbo v17, "===================================================="

    #@5b
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 360
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@61
    const-string/jumbo v17, "Found valid fullBackupContent; parsing xml resource."

    #@64
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 361
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@6a
    const-string/jumbo v17, "===================================================="

    #@6d
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 362
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@73
    const-string/jumbo v17, ""

    #@76
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 365
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7c
    move-result v11

    #@7d
    const/16 v16, 0x1

    #@7f
    move/from16 v0, v16

    #@81
    if-eq v11, v0, :cond_5

    #@83
    .line 366
    packed-switch v11, :pswitch_data_0

    #@86
    goto :goto_1

    #@87
    .line 368
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroid/app/backup/FullBackup$BackupScheme;->validateInnerTagContents(Lorg/xmlpull/v1/XmlPullParser;)V

    #@8a
    .line 369
    const-string/jumbo v16, "domain"

    #@8d
    const/16 v17, 0x0

    #@8f
    move-object/from16 v0, p1

    #@91
    move-object/from16 v1, v17

    #@93
    move-object/from16 v2, v16

    #@95
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@98
    move-result-object v8

    #@99
    .line 371
    .local v8, "domainFromXml":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9b
    invoke-direct {v0, v8}, Landroid/app/backup/FullBackup$BackupScheme;->getDirectoryForCriteriaDomain(Ljava/lang/String;)Ljava/io/File;

    #@9e
    move-result-object v7

    #@9f
    .line 372
    .local v7, "domainDirectory":Ljava/io/File;
    if-nez v7, :cond_3

    #@a1
    .line 373
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@a4
    const/16 v17, 0x2

    #@a6
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a9
    move-result v16

    #@aa
    if-eqz v16, :cond_2

    #@ac
    .line 374
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@af
    new-instance v17, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v18, "...parsing \""

    #@b7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v17

    #@bb
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@be
    move-result-object v18

    #@bf
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v17

    #@c3
    const-string/jumbo v18, "\": "

    #@c6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v17

    #@ca
    .line 375
    const-string/jumbo v18, "domain=\""

    #@cd
    .line 374
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v17

    #@d1
    move-object/from16 v0, v17

    #@d3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v17

    #@d7
    .line 375
    const-string/jumbo v18, "\" invalid; skipping"

    #@da
    .line 374
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v17

    #@de
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v17

    #@e2
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e5
    goto :goto_1

    #@e6
    .line 381
    :cond_3
    const-string/jumbo v16, "path"

    #@e9
    const/16 v17, 0x0

    #@eb
    move-object/from16 v0, p1

    #@ed
    move-object/from16 v1, v17

    #@ef
    move-object/from16 v2, v16

    #@f1
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f4
    move-result-object v16

    #@f5
    .line 380
    move-object/from16 v0, p0

    #@f7
    move-object/from16 v1, v16

    #@f9
    invoke-direct {v0, v7, v1}, Landroid/app/backup/FullBackup$BackupScheme;->extractCanonicalFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@fc
    move-result-object v5

    #@fd
    .line 382
    .local v5, "canonicalFile":Ljava/io/File;
    if-eqz v5, :cond_2

    #@ff
    .line 386
    move-object/from16 v0, p0

    #@101
    move-object/from16 v1, p1

    #@103
    move-object/from16 v2, p2

    #@105
    move-object/from16 v3, p3

    #@107
    invoke-direct {v0, v1, v2, v3, v8}, Landroid/app/backup/FullBackup$BackupScheme;->parseCurrentTagForDomain(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    #@10a
    move-result-object v4

    #@10b
    .line 388
    .local v4, "activeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@10e
    move-result-object v16

    #@10f
    move-object/from16 v0, v16

    #@111
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@114
    .line 389
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@117
    const/16 v17, 0x2

    #@119
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@11c
    move-result v16

    #@11d
    if-eqz v16, :cond_4

    #@11f
    .line 390
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@122
    new-instance v17, Ljava/lang/StringBuilder;

    #@124
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v18, "...parsed "

    #@12a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v17

    #@12e
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@131
    move-result-object v18

    #@132
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v17

    #@136
    .line 391
    const-string/jumbo v18, " for domain \""

    #@139
    .line 390
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v17

    #@13d
    move-object/from16 v0, v17

    #@13f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v17

    #@143
    .line 391
    const-string/jumbo v18, "\""

    #@146
    .line 390
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v17

    #@14a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v17

    #@14e
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@151
    .line 398
    :cond_4
    const-string/jumbo v16, "database"

    #@154
    move-object/from16 v0, v16

    #@156
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@159
    move-result v16

    #@15a
    if-eqz v16, :cond_2

    #@15c
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    #@15f
    move-result v16

    #@160
    if-nez v16, :cond_2

    #@162
    .line 400
    new-instance v16, Ljava/lang/StringBuilder;

    #@164
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@16a
    move-result-object v17

    #@16b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v16

    #@16f
    const-string/jumbo v17, "-journal"

    #@172
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v16

    #@176
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v6

    #@17a
    .line 401
    .local v6, "canonicalJournalPath":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17d
    .line 402
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@180
    const/16 v17, 0x2

    #@182
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@185
    move-result v16

    #@186
    if-eqz v16, :cond_2

    #@188
    .line 403
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@18b
    new-instance v17, Ljava/lang/StringBuilder;

    #@18d
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@190
    const-string/jumbo v18, "...automatically generated "

    #@193
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v17

    #@197
    move-object/from16 v0, v17

    #@199
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v17

    #@19d
    .line 404
    const-string/jumbo v18, ". Ignore if nonexistant."

    #@1a0
    .line 403
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v17

    #@1a4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a7
    move-result-object v17

    #@1a8
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1ab
    goto/16 :goto_1

    #@1ad
    .line 409
    .end local v4    # "activeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "canonicalFile":Ljava/io/File;
    .end local v6    # "canonicalJournalPath":Ljava/lang/String;
    .end local v7    # "domainDirectory":Ljava/io/File;
    .end local v8    # "domainFromXml":Ljava/lang/String;
    :cond_5
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@1b0
    const/16 v17, 0x2

    #@1b2
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1b5
    move-result v16

    #@1b6
    if-eqz v16, :cond_8

    #@1b8
    .line 410
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@1bb
    const-string/jumbo v17, "\n"

    #@1be
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c1
    .line 411
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@1c4
    const-string/jumbo v17, "Xml resource parsing complete."

    #@1c7
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1ca
    .line 412
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@1cd
    const-string/jumbo v17, "Final tally."

    #@1d0
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1d3
    .line 413
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@1d6
    const-string/jumbo v17, "Includes:"

    #@1d9
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1dc
    .line 414
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    #@1df
    move-result v16

    #@1e0
    if-eqz v16, :cond_9

    #@1e2
    .line 415
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@1e5
    const-string/jumbo v17, "  ...nothing specified (This means the entirety of app data minus excludes)"

    #@1e8
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1eb
    .line 426
    :cond_6
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@1ee
    const-string/jumbo v17, "Excludes:"

    #@1f1
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f4
    .line 427
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    #@1f7
    move-result v16

    #@1f8
    if-eqz v16, :cond_b

    #@1fa
    .line 428
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@1fd
    const-string/jumbo v17, "  ...nothing to exclude."

    #@200
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@203
    .line 435
    :cond_7
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@206
    const-string/jumbo v17, "  "

    #@209
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20c
    .line 436
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@20f
    const-string/jumbo v17, "===================================================="

    #@212
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@215
    .line 437
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@218
    const-string/jumbo v17, "\n"

    #@21b
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@21e
    .line 346
    :cond_8
    return-void

    #@21f
    .line 418
    :cond_9
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@222
    move-result-object v16

    #@223
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@226
    move-result-object v10

    #@227
    .local v10, "entry$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@22a
    move-result v16

    #@22b
    if-eqz v16, :cond_6

    #@22d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@230
    move-result-object v9

    #@231
    check-cast v9, Ljava/util/Map$Entry;

    #@233
    .line 419
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string/jumbo v17, "BackupXmlParserLogging"

    #@236
    new-instance v16, Ljava/lang/StringBuilder;

    #@238
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@23b
    const-string/jumbo v18, "  domain="

    #@23e
    move-object/from16 v0, v16

    #@240
    move-object/from16 v1, v18

    #@242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v18

    #@246
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@249
    move-result-object v16

    #@24a
    check-cast v16, Ljava/lang/String;

    #@24c
    move-object/from16 v0, v18

    #@24e
    move-object/from16 v1, v16

    #@250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v16

    #@254
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@257
    move-result-object v16

    #@258
    move-object/from16 v0, v17

    #@25a
    move-object/from16 v1, v16

    #@25c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25f
    .line 420
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@262
    move-result-object v16

    #@263
    check-cast v16, Ljava/util/Set;

    #@265
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@268
    move-result-object v15

    #@269
    .local v15, "includeData$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@26c
    move-result v16

    #@26d
    if-eqz v16, :cond_a

    #@26f
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@272
    move-result-object v14

    #@273
    check-cast v14, Ljava/lang/String;

    #@275
    .line 421
    .local v14, "includeData":Ljava/lang/String;
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@278
    new-instance v17, Ljava/lang/StringBuilder;

    #@27a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@27d
    const-string/jumbo v18, "  "

    #@280
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@283
    move-result-object v17

    #@284
    move-object/from16 v0, v17

    #@286
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v17

    #@28a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28d
    move-result-object v17

    #@28e
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@291
    goto :goto_2

    #@292
    .line 430
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v14    # "includeData":Ljava/lang/String;
    .end local v15    # "includeData$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@295
    move-result-object v13

    #@296
    .local v13, "excludeData$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@299
    move-result v16

    #@29a
    if-eqz v16, :cond_7

    #@29c
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29f
    move-result-object v12

    #@2a0
    check-cast v12, Ljava/lang/String;

    #@2a2
    .line 431
    .local v12, "excludeData":Ljava/lang/String;
    const-string/jumbo v16, "BackupXmlParserLogging"

    #@2a5
    new-instance v17, Ljava/lang/StringBuilder;

    #@2a7
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2aa
    const-string/jumbo v18, "  "

    #@2ad
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b0
    move-result-object v17

    #@2b1
    move-object/from16 v0, v17

    #@2b3
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v17

    #@2b7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ba
    move-result-object v17

    #@2bb
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2be
    goto :goto_3

    #@2bf
    .line 366
    nop

    #@2c0
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "domainToken"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 217
    :try_start_0
    const-string/jumbo v1, "f"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 218
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    #@c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 219
    :cond_0
    const-string/jumbo v1, "db"

    #@14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 220
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    #@1c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 221
    :cond_1
    const-string/jumbo v1, "r"

    #@24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 222
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    #@2c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1

    #@31
    .line 223
    :cond_2
    const-string/jumbo v1, "sp"

    #@34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 224
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    #@3c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    return-object v1

    #@41
    .line 225
    :cond_3
    const-string/jumbo v1, "c"

    #@44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_4

    #@4a
    .line 226
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->CACHE_DIR:Ljava/io/File;

    #@4c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    return-object v1

    #@51
    .line 227
    :cond_4
    const-string/jumbo v1, "ef"

    #@54
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_6

    #@5a
    .line 228
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    #@5c
    if-eqz v1, :cond_5

    #@5e
    .line 229
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    #@60
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    return-object v1

    #@65
    .line 231
    :cond_5
    return-object v4

    #@66
    .line 233
    :cond_6
    const-string/jumbo v1, "nb"

    #@69
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_7

    #@6f
    .line 234
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->NOBACKUP_DIR:Ljava/io/File;

    #@71
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    return-object v1

    #@76
    .line 237
    :cond_7
    const-string/jumbo v1, "FullBackup"

    #@79
    new-instance v2, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v3, "Unrecognized domain "

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    .line 238
    return-object v4

    #@91
    .line 239
    :catch_0
    move-exception v0

    #@92
    .line 240
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "FullBackup"

    #@95
    new-instance v2, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v3, "Error reading directory for domain: "

    #@9d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v2

    #@a9
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    .line 241
    return-object v4
.end method

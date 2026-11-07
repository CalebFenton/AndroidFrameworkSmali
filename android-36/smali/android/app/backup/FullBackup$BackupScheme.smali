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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG_EXCLUDE:Ljava/lang/String; = "exclude"

.field private static final greylist-max-o TAG_INCLUDE:Ljava/lang/String; = "include"


# instance fields
.field private final greylist-max-o CACHE_DIR:Ljava/io/File;

.field private final greylist-max-o DATABASE_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_CACHE_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_DATABASE_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_FILES_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_NOBACKUP_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_ROOT_DIR:Ljava/io/File;

.field private final greylist-max-o DEVICE_SHAREDPREF_DIR:Ljava/io/File;

.field private final greylist-max-o EXTERNAL_DIR:Ljava/io/File;

.field private final greylist-max-o FILES_DIR:Ljava/io/File;

.field private final greylist-max-o NOBACKUP_DIR:Ljava/io/File;

.field private final greylist-max-o ROOT_DIR:Ljava/io/File;

.field private final greylist-max-o SHAREDPREF_DIR:Ljava/io/File;

.field final blacklist mBackupDestination:I

.field final blacklist mDataExtractionRules:I

.field greylist-max-o mExcludes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mFullBackupContent:I

.field greylist-max-o mIncludes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mIsUsingNewScheme:Ljava/lang/Boolean;

.field final greylist-max-o mPackageManager:Landroid/content/pm/PackageManager;

.field final greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mRequiredTransportFlags:Ljava/lang/Integer;

.field final greylist-max-o mStorageManager:Landroid/os/storage/StorageManager;

.field private greylist-max-o mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupDestination"    # I

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 430
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 432
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    iput v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    .line 433
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    iput v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    .line 434
    iput p2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mBackupDestination:I

    .line 435
    const-string/jumbo v2, "storage"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 437
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageName:Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 442
    .local v2, "ceContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    .line 443
    const-string v3, "foo"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    .line 444
    invoke-virtual {v2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    .line 445
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    .line 446
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->CACHE_DIR:Ljava/io/File;

    .line 447
    invoke-virtual {v2}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->NOBACKUP_DIR:Ljava/io/File;

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 450
    .local v4, "deContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    .line 451
    invoke-virtual {v4, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    .line 452
    invoke-virtual {v4}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    .line 453
    invoke-virtual {v4, v3}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    .line 454
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_CACHE_DIR:Ljava/io/File;

    .line 455
    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_NOBACKUP_DIR:Ljava/io/File;

    .line 457
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_9c

    .line 458
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    goto :goto_9e

    .line 460
    :cond_9c
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    .line 462
    :goto_9e
    return-void
.end method

.method private greylist-max-o extractCanonicalFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p1, "domain"    # Ljava/io/File;
    .param p2, "filePathFromXml"    # Ljava/lang/String;

    .line 929
    if-nez p2, :cond_4

    .line 931
    const-string p2, ""

    .line 933
    :cond_4
    const-string v0, ".."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " "

    const-string v2, "...resolved \""

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "BackupXmlParserLogging"

    if-eqz v0, :cond_41

    .line 934
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", but the \"..\" path is not permitted; skipping."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_40
    return-object v3

    .line 940
    :cond_41
    const-string v0, "//"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 941
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", which contains the invalid \"//\" sequence; skipping."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_75
    return-object v3

    .line 947
    :cond_76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist getConfigSectionForBackupDestination(I)Ljava/lang/String;
    .registers 3
    .param p1, "backupDestination"    # I

    .line 620
    packed-switch p1, :pswitch_data_c

    .line 626
    const/4 v0, 0x0

    return-object v0

    .line 624
    :pswitch_5
    const-string v0, "device-transfer"

    return-object v0

    .line 622
    :pswitch_8
    const-string v0, "cloud-backup"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o getDirectoryForCriteriaDomain(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "domain"    # Ljava/lang/String;

    .line 955
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 956
    return-object v1

    .line 958
    :cond_8
    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 959
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    return-object v0

    .line 960
    :cond_13
    const-string v0, "database"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 961
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    return-object v0

    .line 962
    :cond_1e
    const-string/jumbo v0, "root"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 963
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    return-object v0

    .line 964
    :cond_2a
    const-string/jumbo v0, "sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 965
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    return-object v0

    .line 966
    :cond_36
    const-string v0, "device_file"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 967
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    return-object v0

    .line 968
    :cond_41
    const-string v0, "device_database"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 969
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    return-object v0

    .line 970
    :cond_4c
    const-string v0, "device_root"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 971
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    return-object v0

    .line 972
    :cond_57
    const-string v0, "device_sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 973
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    return-object v0

    .line 974
    :cond_62
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 975
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    return-object v0

    .line 977
    :cond_6d
    return-object v1
.end method

.method private blacklist getParserForResource(I)Landroid/content/res/XmlResourceParser;
    .registers 4
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 632
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageName:Ljava/lang/String;

    .line 633
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 634
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 632
    return-object v0
.end method

.method private blacklist getRequiredFlagsForRule(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Optional;)I
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 851
    .local p2, "maybeRequiredFlags":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 854
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 857
    :cond_11
    const-string/jumbo v0, "include"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 860
    nop

    .line 861
    const/4 v0, 0x0

    const-string/jumbo v1, "requireFlags"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-direct {p0, v0}, Landroid/app/backup/FullBackup$BackupScheme;->getRequiredFlagsFromString(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 864
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getRequiredFlagsFromString(Ljava/lang/String;)I
    .registers 10
    .param p1, "requiredFlags"    # Ljava/lang/String;

    .line 826
    const/4 v0, 0x0

    .line 827
    .local v0, "flags":I
    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_6f

    .line 831
    :cond_b
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "flagsStr":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_6e

    aget-object v5, v1, v4

    .line 833
    .local v5, "f":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_70

    :cond_1f
    goto :goto_3e

    :sswitch_20
    const-string v6, "deviceToDeviceTransfer"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_3f

    :sswitch_2a
    const-string v6, "clientSideEncryption"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move v6, v3

    goto :goto_3f

    :sswitch_34
    const-string v6, "fakeClientSideEncryption"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x2

    goto :goto_3f

    :goto_3e
    const/4 v6, -0x1

    :goto_3f
    packed-switch v6, :pswitch_data_7e

    goto :goto_4d

    .line 841
    :pswitch_43
    const/high16 v6, -0x80000000

    or-int/2addr v0, v6

    goto :goto_4d

    .line 838
    :pswitch_47
    or-int/lit8 v0, v0, 0x2

    .line 839
    goto :goto_6b

    .line 835
    :pswitch_4a
    or-int/lit8 v0, v0, 0x1

    .line 836
    goto :goto_6b

    .line 843
    :goto_4d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized requiredFlag provided, value: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FullBackup"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v5    # "f":Ljava/lang/String;
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 846
    :cond_6e
    return v0

    .line 829
    .end local v1    # "flagsStr":[Ljava/lang/String;
    :cond_6f
    :goto_6f
    return v0

    :sswitch_data_70
    .sparse-switch
        0x1cc617da -> :sswitch_34
        0x595908e5 -> :sswitch_2a
        0x7363e232 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_47
        :pswitch_43
    .end packed-switch
.end method

.method private greylist-max-o getTokenForXmlDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "xmlDomain"    # Ljava/lang/String;

    .line 898
    const-string/jumbo v0, "root"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 899
    const-string/jumbo v0, "r"

    return-object v0

    .line 900
    :cond_d
    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 901
    const-string v0, "f"

    return-object v0

    .line 902
    :cond_18
    const-string v0, "database"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 903
    const-string v0, "db"

    return-object v0

    .line 904
    :cond_23
    const-string/jumbo v0, "sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 905
    const-string/jumbo v0, "sp"

    return-object v0

    .line 906
    :cond_30
    const-string v0, "device_root"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 907
    const-string v0, "d_r"

    return-object v0

    .line 908
    :cond_3b
    const-string v0, "device_file"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 909
    const-string v0, "d_f"

    return-object v0

    .line 910
    :cond_46
    const-string v0, "device_database"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 911
    const-string v0, "d_db"

    return-object v0

    .line 912
    :cond_51
    const-string v0, "device_sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 913
    const-string v0, "d_sp"

    return-object v0

    .line 914
    :cond_5c
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 915
    const-string v0, "ef"

    return-object v0

    .line 917
    :cond_67
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 3

    .line 378
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_11

    .line 379
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_18

    .line 380
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    goto :goto_18

    .line 383
    :cond_11
    const-string v0, "FullBackup"

    const-string v1, "Unable to access Storage Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method private declared-synchronized blacklist isUsingNewScheme()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 543
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 544
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 547
    .end local p0    # "this":Landroid/app/backup/FullBackup$BackupScheme;
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 542
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private blacklist logParsingResults(Ljava/util/Set;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 790
    .local p1, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p2, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const/4 v0, 0x2

    const-string v1, "BackupXmlParserLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 791
    const-string v0, "\n"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v2, "Xml resource parsing complete."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v2, "Final tally."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v2, "Includes:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v3, " requiredFlags: "

    const-string v4, " path: "

    if-eqz v2, :cond_2d

    .line 796
    const-string v2, "  ...nothing specified (This means the entirety of app data minus excludes)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 800
    :cond_2d
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 801
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 803
    .local v7, "includeData":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 804
    invoke-virtual {v7}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getRequiredFlags()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 803
    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    .end local v7    # "includeData":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    goto :goto_67

    .line 806
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    :cond_98
    goto :goto_35

    .line 809
    :cond_99
    :goto_99
    const-string v2, "Excludes:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 811
    const-string v2, "  ...nothing to exclude."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 813
    :cond_aa
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 814
    .local v5, "excludeData":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 815
    invoke-virtual {v5}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getRequiredFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 814
    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .end local v5    # "excludeData":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    goto :goto_ae

    .line 819
    :cond_df
    :goto_df
    const-string v2, "  "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v2, "===================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_ec
    return-void
.end method

.method private greylist-max-o maybeParseBackupSchemeLocked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 552
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    .line 553
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    .line 554
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    .line 555
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    .line 557
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    const/4 v1, 0x2

    const-string v2, "BackupXmlParserLogging"

    if-nez v0, :cond_32

    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    if-nez v0, :cond_32

    .line 559
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 560
    const-string v0, "android:fullBackupContent - \"true\""

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 564
    :cond_32
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found xml scheme: android:fullBackupContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; android:dataExtractionRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_5c
    :try_start_5c
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mBackupDestination:I

    invoke-direct {p0, v0}, Landroid/app/backup/FullBackup$BackupScheme;->parseSchemeForBackupDestination(I)V
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_61} :catch_63

    .line 575
    nop

    .line 577
    :cond_62
    :goto_62
    return-void

    .line 572
    :catch_63
    move-exception v0

    .line 574
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o parseCurrentTagForDomain(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 871
    .local p2, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p3, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const-string/jumbo v0, "include"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 872
    invoke-direct {p0, p4}, Landroid/app/backup/FullBackup$BackupScheme;->getTokenForXmlDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "domainToken":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 874
    .local v1, "includeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    if-nez v1, :cond_22

    .line 875
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 876
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :cond_22
    return-object v1

    .line 879
    .end local v0    # "domainToken":Ljava/lang/String;
    .end local v1    # "includeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    :cond_23
    const-string v0, "exclude"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 880
    return-object p2

    .line 883
    :cond_30
    const/4 v0, 0x2

    const-string v1, "BackupXmlParserLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag found in xml \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 885
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"; aborting operation."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_59
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognised tag in backup criteria xml ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 888
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist parseRequiredTransportFlags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "configSection"    # Ljava/lang/String;

    .line 666
    const-string v0, "cloud-backup"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 667
    const/4 v0, 0x0

    const-string v1, "disableIfNoEncryptionCapabilities"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "encryptionAttribute":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 670
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    .line 673
    .end local v0    # "encryptionAttribute":Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method private blacklist parseRules(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Optional;Ljava/lang/String;)V
    .registers 24
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "endingTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 715
    .local p2, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p3, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local p4, "maybeRequiredFlags":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "event":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_1d4

    .line 716
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p5

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cd

    .line 717
    packed-switch v3, :pswitch_data_1de

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    goto/16 :goto_1c7

    .line 719
    :pswitch_23
    invoke-direct/range {p0 .. p1}, Landroid/app/backup/FullBackup$BackupScheme;->validateInnerTagContents(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 720
    const-string v2, "domain"

    const/4 v5, 0x0

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "domainFromXml":Ljava/lang/String;
    invoke-direct {v0, v2}, Landroid/app/backup/FullBackup$BackupScheme;->getDirectoryForCriteriaDomain(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 722
    .local v6, "domainDirectory":Ljava/io/File;
    const/4 v7, 0x2

    const-string v8, "BackupXmlParserLogging"

    if-nez v6, :cond_76

    .line 723
    invoke-static {v8, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "...parsing \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\": domain=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\" invalid; skipping"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    goto/16 :goto_1c7

    .line 723
    :cond_6e
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    goto/16 :goto_1c7

    .line 729
    :cond_76
    nop

    .line 731
    const-string/jumbo v9, "path"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 730
    invoke-direct {v0, v6, v5}, Landroid/app/backup/FullBackup$BackupScheme;->extractCanonicalFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 732
    .local v5, "canonicalFile":Ljava/io/File;
    if-nez v5, :cond_8c

    .line 733
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    goto/16 :goto_1c7

    .line 736
    :cond_8c
    move-object/from16 v9, p4

    invoke-direct {v0, v1, v9}, Landroid/app/backup/FullBackup$BackupScheme;->getRequiredFlagsForRule(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Optional;)I

    move-result v10

    .line 739
    .local v10, "requiredFlags":I
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct {v0, v1, v11, v12, v2}, Landroid/app/backup/FullBackup$BackupScheme;->parseCurrentTagForDomain(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v13

    .line 741
    .local v13, "activeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    new-instance v14, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v10}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-static {v8, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_e0

    .line 744
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "...parsed "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for domain \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\", requiredFlags + \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_e0
    const-string v14, "database"

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, ". Ignore if nonexistent."

    const-string v7, "...automatically generated "

    if-eqz v14, :cond_170

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_170

    .line 754
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "-journal"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "canonicalJournalPath":Ljava/lang/String;
    new-instance v14, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-direct {v14, v0, v10}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 758
    const/4 v14, 0x2

    invoke-static {v8, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_130

    .line 759
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_130
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    move-object/from16 v16, v0

    .end local v0    # "canonicalJournalPath":Ljava/lang/String;
    .local v16, "canonicalJournalPath":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "-wal"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "canonicalWalPath":Ljava/lang/String;
    new-instance v14, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-direct {v14, v0, v10}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 766
    const/4 v14, 0x2

    invoke-static {v8, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_170

    .line 767
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    .end local v0    # "canonicalWalPath":Ljava/lang/String;
    .end local v16    # "canonicalJournalPath":Ljava/lang/String;
    :cond_170
    const-string/jumbo v0, "sharedpref"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1c7

    .line 774
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string v14, ".xml"

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c7

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "canonicalXmlPath":Ljava/lang/String;
    new-instance v1, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-direct {v1, v0, v10}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 779
    const/4 v14, 0x2

    invoke-static {v8, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c7

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v0    # "canonicalXmlPath":Ljava/lang/String;
    .end local v2    # "domainFromXml":Ljava/lang/String;
    .end local v5    # "canonicalFile":Ljava/io/File;
    .end local v6    # "domainDirectory":Ljava/io/File;
    .end local v10    # "requiredFlags":I
    .end local v13    # "activeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    :cond_1c7
    :goto_1c7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_4

    .line 716
    :cond_1cd
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    goto :goto_1dc

    .line 715
    :cond_1d4
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    move-object/from16 v4, p5

    .line 786
    :goto_1dc
    return-void

    nop

    :pswitch_data_1de
    .packed-switch 0x2
        :pswitch_23
    .end packed-switch
.end method

.method private blacklist parseSchemeForBackupDestination(I)V
    .registers 7
    .param p1, "backupDestination"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 581
    invoke-direct {p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;->getConfigSectionForBackupDestination(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "configSection":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given backup destination isn\'t supported by backup scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullBackup"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void

    .line 588
    :cond_1f
    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4c

    .line 592
    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    invoke-direct {p0, v1}, Landroid/app/backup/FullBackup$BackupScheme;->getParserForResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 593
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2a
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    iget-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    invoke-virtual {p0, v1, v0, v3, v4}, Landroid/app/backup/FullBackup$BackupScheme;->parseNewBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Z

    move-result v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_40

    .line 595
    .local v3, "isSectionPresent":Z
    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 596
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_37
    if-eqz v3, :cond_4c

    .line 598
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    .line 599
    return-void

    .line 592
    .end local v3    # "isSectionPresent":Z
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_40
    move-exception v2

    if-eqz v1, :cond_4b

    :try_start_43
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    throw v2

    .line 603
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4c
    if-ne p1, v2, :cond_5e

    .line 604
    const-wide/32 v3, 0xac2922c

    invoke-static {v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 605
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    .line 606
    return-void

    .line 609
    :cond_5e
    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    if-eqz v1, :cond_81

    .line 611
    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    invoke-direct {p0, v1}, Landroid/app/backup/FullBackup$BackupScheme;->getParserForResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 612
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :try_start_68
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/FullBackup$BackupScheme;->parseBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_75

    .line 613
    if-eqz v1, :cond_81

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_81

    .line 611
    :catchall_75
    move-exception v2

    if-eqz v1, :cond_80

    :try_start_78
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_80

    :catchall_7c
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    throw v2

    .line 615
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_81
    :goto_81
    return-void
.end method

.method private greylist-max-o sharedDomainToPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    const-string/jumbo v0, "shared/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "volume":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 370
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 371
    .local v2, "volNum":I
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v3, v3

    if-ge v2, v3, :cond_23

    .line 372
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 374
    :cond_23
    const/4 v3, 0x0

    return-object v3
.end method

.method private greylist-max-o validateInnerTagContents(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 986
    if-nez p1, :cond_3

    .line 987
    return-void

    .line 989
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6c

    :cond_e
    goto :goto_24

    :sswitch_f
    const-string/jumbo v1, "include"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_25

    :sswitch_1a
    const-string v1, "exclude"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_25

    :goto_24
    const/4 v0, -0x1

    :goto_25
    packed-switch v0, :pswitch_data_76

    .line 1004
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A valid tag is one of \"<include/>\" or \"<exclude/>. You provided \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1005
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :pswitch_4b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_53

    goto :goto_62

    .line 999
    :cond_53
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "At most 2 tag attributes allowed for \"exclude\" tag (\"domain\" & \"path\"."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :pswitch_5b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_63

    .line 1007
    :goto_62
    return-void

    .line 992
    :cond_63
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "At most 3 tag attributes allowed for \"include\" tag (\"domain\" & \"path\" & optional \"requiredFlags\")."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x4ebf2226 -> :sswitch_1a
        0x73c954a8 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_4b
    .end packed-switch
.end method

.method private blacklist verifyTopLevelTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 690
    .local v0, "event":I
    :goto_4
    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 691
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    .line 694
    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 699
    const-string v2, "BackupXmlParserLogging"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 700
    const-string v1, "\n"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v1, "===================================================="

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; parsing xml resource."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v1, ""

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_4c
    return-void

    .line 695
    :cond_4d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xml file didn\'t start with correct tag ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ). Found \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 696
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized blacklist getRequiredTransportFlags()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 534
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    if-nez v0, :cond_8

    .line 535
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 538
    .end local p0    # "this":Landroid/app/backup/FullBackup$BackupScheme;
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 533
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method greylist-max-o isFullBackupContentEnabled()Z
    .registers 3

    .line 494
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    if-gez v0, :cond_14

    .line 496
    const/4 v0, 0x2

    const-string v1, "BackupXmlParserLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 497
    const-string v0, "android:fullBackupContent - \"false\""

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_12
    const/4 v0, 0x0

    return v0

    .line 501
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method blacklist isFullBackupEnabled(I)Z
    .registers 6
    .param p1, "transportFlags"    # I

    .line 466
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isUsingNewScheme()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 467
    invoke-virtual {p0}, Landroid/app/backup/FullBackup$BackupScheme;->getRequiredTransportFlags()I

    move-result v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_b} :catch_17

    .line 470
    .local v1, "requiredTransportFlags":I
    and-int v2, p1, v1

    if-ne v2, v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 475
    .end local v1    # "requiredTransportFlags":I
    :cond_11
    nop

    .line 477
    invoke-virtual {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    move-result v0

    return v0

    .line 472
    :catch_17
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to interpret the backup scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FullBackup"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return v0
.end method

.method blacklist isFullRestoreEnabled()Z
    .registers 4

    .line 482
    :try_start_0
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isUsingNewScheme()Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_e

    if-eqz v0, :cond_8

    .line 483
    const/4 v0, 0x1

    return v0

    .line 488
    :cond_8
    nop

    .line 490
    invoke-virtual {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    move-result v0

    return v0

    .line 485
    :catch_e
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to interpret the backup scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullBackup"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized greylist-max-o maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 525
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    if-nez v0, :cond_8

    .line 526
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 528
    .end local p0    # "this":Landroid/app/backup/FullBackup$BackupScheme;
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 524
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public declared-synchronized greylist-max-o maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 513
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 514
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 516
    .end local p0    # "this":Landroid/app/backup/FullBackup$BackupScheme;
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 512
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public greylist-max-o parseBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 680
    .local p2, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p3, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const-string v0, "full-backup-content"

    invoke-direct {p0, p1, v0}, Landroid/app/backup/FullBackup$BackupScheme;->verifyTopLevelTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 682
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    const-string v6, "full-backup-content"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .end local p3    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v3, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local v4, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    invoke-direct/range {v1 .. v6}, Landroid/app/backup/FullBackup$BackupScheme;->parseRules(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Optional;Ljava/lang/String;)V

    .line 684
    invoke-direct {p0, v3, v4}, Landroid/app/backup/FullBackup$BackupScheme;->logParsingResults(Ljava/util/Set;Ljava/util/Map;)V

    .line 685
    return-void
.end method

.method public blacklist parseNewBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Z
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "configSection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 643
    .local p3, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p4, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const-string v0, "data-extraction-rules"

    invoke-direct {p0, p1, v0}, Landroid/app/backup/FullBackup$BackupScheme;->verifyTopLevelTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 645
    const/4 v0, 0x0

    .line 648
    .local v0, "isSectionPresent":Z
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "event":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_41

    .line 649
    const/4 v1, 0x2

    if-ne v2, v1, :cond_37

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 650
    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    move-object v5, p3

    move-object v6, p4

    goto :goto_3c

    .line 653
    :cond_21
    const/4 v0, 0x1

    .line 655
    invoke-direct {p0, p1, p2}, Landroid/app/backup/FullBackup$BackupScheme;->parseRequiredTransportFlags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 656
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "configSection":Ljava/lang/String;
    .end local p3    # "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .end local p4    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local v6, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local v8, "configSection":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Landroid/app/backup/FullBackup$BackupScheme;->parseRules(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Optional;Ljava/lang/String;)V

    goto :goto_6

    .line 649
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .end local v6    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .end local v8    # "configSection":Ljava/lang/String;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "configSection":Ljava/lang/String;
    .restart local p3    # "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .restart local p4    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    :cond_37
    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    move-object v5, p3

    move-object v6, p4

    .line 648
    .end local v2    # "event":I
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "configSection":Ljava/lang/String;
    .end local p3    # "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .end local p4    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .restart local v6    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .restart local v8    # "configSection":Ljava/lang/String;
    :goto_3c
    move-object p1, v4

    move-object p3, v5

    move-object p4, v6

    move-object p2, v8

    goto :goto_6

    .line 659
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .end local v6    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .end local v8    # "configSection":Ljava/lang/String;
    .restart local v2    # "event":I
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "configSection":Ljava/lang/String;
    .restart local p3    # "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .restart local p4    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    :cond_41
    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    .end local p3    # "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .end local p4    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .restart local v5    # "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .restart local v6    # "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    invoke-direct {p0, v5, v6}, Landroid/app/backup/FullBackup$BackupScheme;->logParsingResults(Ljava/util/Set;Ljava/util/Map;)V

    .line 661
    return v0
.end method

.method greylist-max-o tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "domainToken"    # Ljava/lang/String;

    .line 323
    const-string v0, "FullBackup"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "f"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 324
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_12
    const-string v2, "db"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 326
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_21
    const-string/jumbo v2, "r"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 328
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 329
    :cond_31
    const-string/jumbo v2, "sp"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 330
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 331
    :cond_41
    const-string v2, "c"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 332
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->CACHE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 333
    :cond_50
    const-string/jumbo v2, "nb"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 334
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->NOBACKUP_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :cond_60
    const-string v2, "d_f"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 336
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :cond_6f
    const-string v2, "d_db"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 338
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_7e
    const-string v2, "d_r"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 340
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :cond_8d
    const-string v2, "d_sp"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 342
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 343
    :cond_9c
    const-string v2, "d_c"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 344
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :cond_ab
    const-string v2, "d_nb"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 346
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_NOBACKUP_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_ba
    const-string v2, "ef"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 348
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    if-eqz v2, :cond_cd

    .line 349
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 351
    :cond_cd
    return-object v1

    .line 353
    :cond_ce
    const-string/jumbo v2, "shared/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 354
    invoke-direct {p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;->sharedDomainToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_dc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f2} :catch_f3

    .line 358
    return-object v1

    .line 359
    :catch_f3
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading directory for domain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-object v1
.end method

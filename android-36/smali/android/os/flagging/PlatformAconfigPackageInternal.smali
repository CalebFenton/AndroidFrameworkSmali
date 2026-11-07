.class public Landroid/os/flagging/PlatformAconfigPackageInternal;
.super Ljava/lang/Object;
.source "PlatformAconfigPackageInternal.java"


# instance fields
.field private final blacklist mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

.field private final blacklist mPackageBooleanStartOffset:I


# direct methods
.method private constructor blacklist <init>(Landroid/internal/aconfig/storage/FlagValueList;I)V
    .registers 3
    .param p1, "flagValueList"    # Landroid/internal/aconfig/storage/FlagValueList;
    .param p2, "packageBooleanStartOffset"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/os/flagging/PlatformAconfigPackageInternal;->mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    .line 49
    iput p2, p0, Landroid/os/flagging/PlatformAconfigPackageInternal;->mPackageBooleanStartOffset:I

    .line 50
    return-void
.end method

.method public static greylist load(Ljava/lang/String;J)Landroid/os/flagging/PlatformAconfigPackageInternal;
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageFingerprint"    # J

    .line 66
    sget-object v0, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    .line 67
    .local v0, "files":Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    const-string/jumbo v1, "package "

    if-eqz v0, :cond_4c

    .line 72
    iget-object v2, v0, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->packageTable:Landroid/internal/aconfig/storage/PackageTable;

    invoke-virtual {v2, p0}, Landroid/internal/aconfig/storage/PackageTable;->get(Ljava/lang/String;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object v2

    .line 73
    .local v2, "pNode":Landroid/internal/aconfig/storage/PackageTable$Node;
    iget-object v3, v0, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    .line 75
    .local v3, "vList":Landroid/internal/aconfig/storage/FlagValueList;
    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable$Node;->hasPackageFingerprint()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable$Node;->getPackageFingerprint()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_24

    goto :goto_42

    .line 76
    :cond_24
    new-instance v4, Landroid/internal/aconfig/storage/AconfigStorageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "fingerprint doesn\'t match the one on device"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    invoke-direct {v4, v5, v1}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 81
    :cond_42
    :goto_42
    new-instance v1, Landroid/os/flagging/PlatformAconfigPackageInternal;

    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable$Node;->getBooleanStartIndex()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/os/flagging/PlatformAconfigPackageInternal;-><init>(Landroid/internal/aconfig/storage/FlagValueList;I)V

    return-object v1

    .line 68
    .end local v2    # "pNode":Landroid/internal/aconfig/storage/PackageTable$Node;
    .end local v3    # "vList":Landroid/internal/aconfig/storage/FlagValueList;
    :cond_4c
    new-instance v2, Landroid/internal/aconfig/storage/AconfigStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cannot be found on the device"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(ILjava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public greylist getBooleanFlagValue(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 99
    iget-object v0, p0, Landroid/os/flagging/PlatformAconfigPackageInternal;->mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    iget v1, p0, Landroid/os/flagging/PlatformAconfigPackageInternal;->mPackageBooleanStartOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/internal/aconfig/storage/FlagValueList;->getBoolean(I)Z

    move-result v0

    return v0
.end method

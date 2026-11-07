.class public Landroid/os/flagging/AconfigPackageInternal;
.super Ljava/lang/Object;
.source "AconfigPackageInternal.java"


# instance fields
.field private final blacklist mFlagValueList:Landroid/provider/internal/aconfig/storage/FlagValueList;

.field private final blacklist mPackageBooleanStartOffset:I


# direct methods
.method private constructor blacklist <init>(Landroid/provider/internal/aconfig/storage/FlagValueList;I)V
    .registers 3
    .param p1, "flagValueList"    # Landroid/provider/internal/aconfig/storage/FlagValueList;
    .param p2, "packageBooleanStartOffset"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/os/flagging/AconfigPackageInternal;->mFlagValueList:Landroid/provider/internal/aconfig/storage/FlagValueList;

    .line 50
    iput p2, p0, Landroid/os/flagging/AconfigPackageInternal;->mPackageBooleanStartOffset:I

    .line 51
    return-void
.end method

.method public static greylist load(Ljava/lang/String;J)Landroid/os/flagging/AconfigPackageInternal;
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageFingerprint"    # J

    .line 67
    sget-object v0, Landroid/os/flagging/AconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    .line 68
    .local v0, "files":Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    const-string v1, "package "

    if-eqz v0, :cond_4b

    .line 73
    iget-object v2, v0, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;->packageTable:Landroid/provider/internal/aconfig/storage/PackageTable;

    invoke-virtual {v2, p0}, Landroid/provider/internal/aconfig/storage/PackageTable;->get(Ljava/lang/String;)Landroid/provider/internal/aconfig/storage/PackageTable$Node;

    move-result-object v2

    .line 74
    .local v2, "pNode":Landroid/provider/internal/aconfig/storage/PackageTable$Node;
    iget-object v3, v0, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagValueList:Landroid/provider/internal/aconfig/storage/FlagValueList;

    .line 76
    .local v3, "vList":Landroid/provider/internal/aconfig/storage/FlagValueList;
    invoke-virtual {v2}, Landroid/provider/internal/aconfig/storage/PackageTable$Node;->hasPackageFingerprint()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v2}, Landroid/provider/internal/aconfig/storage/PackageTable$Node;->getPackageFingerprint()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_23

    goto :goto_41

    .line 77
    :cond_23
    new-instance v4, Landroid/provider/internal/aconfig/storage/AconfigStorageException;

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

    invoke-direct {v4, v5, v1}, Landroid/provider/internal/aconfig/storage/AconfigStorageException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 82
    :cond_41
    :goto_41
    new-instance v1, Landroid/os/flagging/AconfigPackageInternal;

    invoke-virtual {v2}, Landroid/provider/internal/aconfig/storage/PackageTable$Node;->getBooleanStartIndex()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/os/flagging/AconfigPackageInternal;-><init>(Landroid/provider/internal/aconfig/storage/FlagValueList;I)V

    return-object v1

    .line 69
    .end local v2    # "pNode":Landroid/provider/internal/aconfig/storage/PackageTable$Node;
    .end local v3    # "vList":Landroid/provider/internal/aconfig/storage/FlagValueList;
    :cond_4b
    new-instance v2, Landroid/provider/internal/aconfig/storage/AconfigStorageException;

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

    invoke-direct {v2, v3, v1}, Landroid/provider/internal/aconfig/storage/AconfigStorageException;-><init>(ILjava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public greylist getBooleanFlagValue(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 100
    iget-object v0, p0, Landroid/os/flagging/AconfigPackageInternal;->mFlagValueList:Landroid/provider/internal/aconfig/storage/FlagValueList;

    iget v1, p0, Landroid/os/flagging/AconfigPackageInternal;->mPackageBooleanStartOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/provider/internal/aconfig/storage/FlagValueList;->getBoolean(I)Z

    move-result v0

    return v0
.end method

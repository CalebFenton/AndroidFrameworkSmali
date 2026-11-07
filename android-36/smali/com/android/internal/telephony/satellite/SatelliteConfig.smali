.class public Lcom/android/internal/telephony/satellite/SatelliteConfig;
.super Ljava/lang/Object;
.source "SatelliteConfig.java"


# instance fields
.field private blacklist mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

.field private blacklist mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

.field private blacklist mSatS2File:Ljava/io/File;

.field private blacklist mSatelliteAccessConfigJsonFile:Ljava/io/File;

.field private blacklist mSatelliteRegionCountryCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedServicesPerCarrier:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private blacklist mVersion:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    .line 64
    iget p1, p1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mVersion:I

    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->getCarrierSupportedSatelliteServices()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    .line 66
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object p1, p1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    iget-object p1, p1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->countryCodes:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteRegionCountryCodes:Ljava/util/List;

    .line 68
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object p1, p1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    iget-boolean p1, p1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->isAllowed:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatS2File:Ljava/io/File;

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteAccessConfigJsonFile:Ljava/io/File;

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mVersion:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | mSupportedServicesPerCarrier:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " | mSatelliteRegionCountryCodes:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteRegionCountryCodes:Ljava/util/List;

    .line 75
    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mIsSatelliteRegionAllowed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " | s2CellFile size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    iget-object v0, v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | satellite_access_config_json size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    const-string p1, "SatelliteConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist getCarrierSupportedSatelliteServices()Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_48

    aget-object v4, p0, v3

    .line 91
    iget-object v5, v4, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->supportedSatelliteProviderCapabilities:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    .line 93
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 95
    array-length v7, v5

    move v8, v2

    :goto_19
    if-ge v8, v7, :cond_3c

    aget-object v9, v5, v8

    .line 96
    iget-object v10, v9, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    .line 97
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 98
    iget-object v9, v9, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    array-length v12, v9

    move v13, v2

    :goto_28
    if-ge v13, v12, :cond_36

    aget v14, v9, v13

    .line 99
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_28

    .line 101
    :cond_36
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 103
    :cond_3c
    iget v4, v4, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->carrierId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_48
    return-object v0
.end method


# virtual methods
.method public blacklist cleanOtaResources(Landroid/content/Context;)V
    .registers 4

    .line 297
    const-string p0, "SatelliteConfig"

    if-nez p1, :cond_a

    .line 298
    const-string p1, "cleanOtaResources : context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 302
    :cond_a
    :try_start_a
    const-string v0, "satellite"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 304
    const-string p1, "cleanOtaResources: satellite does not exist. No need to clean."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1d
    move-exception p1

    goto :goto_28

    .line 311
    :cond_1f
    const-string v0, "cleanOtaResources: Deleting contents under satellite"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {p1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_1d

    return-void

    .line 314
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanOtaResources error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist copySatelliteFileToPhoneDirectory(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;
    .registers 6

    .line 261
    const-string p0, "SatelliteConfig"

    if-eqz p1, :cond_65

    if-nez p2, :cond_7

    goto :goto_65

    .line 266
    :cond_7
    const-string v0, "satellite"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    .line 268
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 271
    :cond_17
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 273
    :try_start_1f
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p2, 0x1

    .line 278
    new-array p2, p2, [Ljava/nio/file/CopyOption;

    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v0, p2, v1

    invoke-static {p3, p1, p2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2e} :catch_2f

    goto :goto_44

    :catch_2f
    move-exception p2

    .line 282
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "copySatelliteFileToPhoneDirectory: ex="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "targetSatelliteFilePath\'s path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p3

    invoke-interface {p3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 284
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 262
    :cond_65
    :goto_65
    const-string p1, "copySatelliteFileToPhoneDirectory : context or byteArrayFile are null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getAllSatelliteCarrierIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    if-eqz v0, :cond_10

    .line 158
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 160
    :cond_10
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public blacklist getAllSatellitePlmnsForCarrier(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    if-eqz p0, :cond_1a

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 117
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1a

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 123
    :cond_1a
    const-string p0, "SatelliteConfig"

    const-string p1, "getAllSatellitePlmnsForCarrier : mConfigData is null or no config data"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public blacklist getDeviceSatelliteCountryCodes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteRegionCountryCodes:Ljava/util/List;

    if-eqz p0, :cond_5

    return-object p0

    .line 171
    :cond_5
    const-string p0, "SatelliteConfig"

    const-string v0, "getDeviceSatelliteCountryCodes : mConfigData is null or no config data"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public blacklist getSatelliteAccessConfigJsonFile(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    .line 219
    const-string v1, "SatelliteConfig"

    if-nez p1, :cond_b

    .line 220
    const-string p0, "getSatelliteAccessConfigJsonFile : context is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 224
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteAccessConfigJsonFile:Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->isFileExist(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 225
    const-string p1, "File mSatelliteAccessConfigJsonFile is already exist"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteAccessConfigJsonFile:Ljava/io/File;

    return-object p0

    .line 229
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-eqz v2, :cond_2e

    iget-object v2, v2, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-eqz v2, :cond_2e

    .line 230
    iget-object v0, v2, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    const-string v1, "satelltie_access_config.json"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->copySatelliteFileToPhoneDirectory(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatelliteAccessConfigJsonFile:Ljava/io/File;

    return-object p1

    .line 235
    :cond_2e
    const-string p0, "mSatelliteAccessConfigJsonFile: mConfigData is null or mConfigData.deviceSatelliteRegion is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public blacklist getSatelliteConfigDataVersion()I
    .registers 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSatelliteConfigDataVersion: mVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SatelliteConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mVersion:I

    return p0
.end method

.method public blacklist getSatelliteS2CellFile(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    .line 193
    const-string v1, "SatelliteConfig"

    if-nez p1, :cond_b

    .line 194
    const-string p0, "getSatelliteS2CellFile : context is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 198
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatS2File:Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->isFileExist(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 199
    const-string p1, "File mSatS2File is already exist"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatS2File:Ljava/io/File;

    return-object p0

    .line 203
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mConfigData:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-eqz v2, :cond_2e

    iget-object v2, v2, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-eqz v2, :cond_2e

    .line 204
    iget-object v0, v2, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    const-string v1, "s2_cell_file"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->copySatelliteFileToPhoneDirectory(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSatS2File:Ljava/io/File;

    return-object p1

    .line 208
    :cond_2e
    const-string p0, "getSatelliteS2CellFile: mConfigData is null or mConfigData.deviceSatelliteRegion is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public blacklist getSupportedSatelliteServices(I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mSupportedServicesPerCarrier:Ljava/util/Map;

    const-string v0, "SatelliteConfig"

    if-eqz p0, :cond_28

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_13

    return-object p0

    .line 142
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No supported services found for carrier="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 145
    :cond_28
    const-string p0, "mSupportedServicesPerCarrier is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_2d
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public blacklist isFileExist(Ljava/io/File;)Z
    .registers 2

    if-nez p1, :cond_b

    .line 324
    const-string p0, "SatelliteConfig"

    const-string p1, "isFileExist : file is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 327
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public blacklist isSatelliteDataForAllowedRegion()Ljava/lang/Boolean;
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    .line 181
    const-string v0, "SatelliteConfig"

    const-string v1, "getIsSatelliteRegionAllowed : mConfigData is null or no config data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteConfig;->mIsSatelliteRegionAllowed:Ljava/lang/Boolean;

    return-object p0
.end method

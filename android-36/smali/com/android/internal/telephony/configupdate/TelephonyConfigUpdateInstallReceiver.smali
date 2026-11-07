.class public Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;
.super Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;
.source "TelephonyConfigUpdateInstallReceiver.java"

# interfaces
.implements Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor;


# static fields
.field public static final blacklist BACKUP_VERSION:Ljava/lang/String; = "backup_version"

.field protected static final blacklist NEW_CONFIG_CONTENT_PATH:Ljava/lang/String; = "new_telephony_config.pb"

.field protected static final blacklist UPDATE_DIR:Ljava/lang/String; = "/data/misc/telephonyconfig"

.field protected static final blacklist UPDATE_METADATA_PATH:Ljava/lang/String; = "metadata/"

.field protected static final blacklist VALID_CONFIG_CONTENT_PATH:Ljava/lang/String; = "valid_telephony_config.pb"

.field public static final blacklist VERSION:Ljava/lang/String; = "version"

.field public static blacklist sReceiverAdaptorInstance:Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;


# instance fields
.field private blacklist mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

.field private final blacklist mConfigParserLock:Ljava/lang/Object;

.field private final blacklist mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

.field private blacklist mOriginalVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    invoke-direct {v0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->sReceiverAdaptorInstance:Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 83
    const-string v0, "metadata/"

    const-string v1, "version"

    const-string v2, "/data/misc/telephonyconfig"

    const-string v3, "new_telephony_config.pb"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    .line 84
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->getOrCreateInstance()Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    return-void
.end method

.method private blacklist backupContentData()Z
    .registers 6

    .line 389
    const-string v0, "valid_telephony_config.pb"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "TelephonyConfigUpdateInstallReceiver"

    if-nez v1, :cond_11

    .line 390
    const-string p0, "valid_telephony_config.pb is not exit, no need to backup"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 393
    :cond_11
    const-string v1, "backup_telephony_config.pb"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 394
    const-string p0, "backupContentData: fail to backup the config data"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 397
    :cond_20
    const-string v0, "metadata/version"

    const-string v4, "metadata/backup_version"

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_30

    .line 399
    const-string p0, "bakpuackupContentData: fail to backup the version"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 402
    :cond_30
    const-string p0, "backupContentData: backup success"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;
    .registers 1

    .line 79
    sget-object v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->sReceiverAdaptorInstance:Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    return-object v0
.end method

.method private blacklist isFileExists(Ljava/lang/String;)Z
    .registers 4

    .line 379
    const-string p0, "isFileExists"

    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-nez p1, :cond_10

    .line 381
    const-string p1, "fileName cannot be null"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 384
    :cond_10
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/telephonyconfig"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p0, 0x1

    :cond_24
    return p0
.end method

.method private blacklist overrideVersion(I)Z
    .registers 8

    .line 363
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    int-to-long v4, p1

    .line 366
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 365
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 367
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    if-eqz p0, :cond_32

    .line 368
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;->overrideVersion(I)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2d} :catch_30
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p0

    goto :goto_4e

    :catch_30
    move-exception p0

    goto :goto_35

    :cond_32
    :goto_32
    const/4 p0, 0x1

    .line 374
    :try_start_33
    monitor-exit v0

    return p0

    .line 371
    :goto_35
    const-string p1, "TelephonyConfigUpdateInstallReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideVersion: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 375
    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_2e

    throw p0
.end method

.method private blacklist postInstall()V
    .registers 8

    .line 151
    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    const-string v1, "Telephony config is updated in file partition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "satellite"

    iget-object v1, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getContentFromContentPath(Ljava/io/File;)[B

    move-result-object v1

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getNewConfigParser(Ljava/lang/String;[B)Lcom/android/internal/telephony/configupdate/ConfigParser;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 157
    const-string p0, "TelephonyConfigUpdateInstallReceiver"

    const-string v0, "newConfigParser is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->isValidSatelliteCarrierConfigData(Lcom/android/internal/telephony/configupdate/ConfigParser;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 162
    const-string p0, "TelephonyConfigUpdateInstallReceiver"

    const-string v0, "received config data has invalid satellite carrier config data"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_2b
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_32
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    if-eqz v2, :cond_91

    .line 168
    iget v2, v0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 169
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    iget v3, v3, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 170
    const-string v4, "TelephonyConfigUpdateInstallReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "previous proto version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " | updated proto version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v2, v3, :cond_91

    .line 174
    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updated proto Version ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is smaller than previous proto Version ["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportOemAndCarrierConfigError(I)V

    .line 178
    monitor-exit v1

    return-void

    :catchall_8f
    move-exception p0

    goto :goto_fa

    .line 181
    :cond_91
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v2

    iput-object v0, v2, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    .line 182
    iget-object v2, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    invoke-virtual {v3}, Lcom/android/internal/telephony/configupdate/ConfigParser;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->setConfigVersion(I)Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    .line 183
    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_32 .. :try_end_a7} :catchall_8f

    .line 185
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e1

    .line 186
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    :goto_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 189
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;->onChanged(Lcom/android/internal/telephony/configupdate/ConfigParser;)V

    goto :goto_c5

    .line 193
    :cond_e1
    const-string v0, "new_telephony_config.pb"

    const-string v1, "valid_telephony_config.pb"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 194
    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    const-string v1, "fail to copy to the valid satellite carrier config data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportOemAndCarrierConfigError(I)V

    :cond_f9
    return-void

    .line 183
    :goto_fa
    :try_start_fa
    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_8f

    throw p0
.end method

.method private blacklist restoreContentData()Z
    .registers 6

    .line 407
    const-string v0, "backup_telephony_config.pb"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "TelephonyConfigUpdateInstallReceiver"

    if-nez v1, :cond_11

    .line 408
    const-string p0, "backup_telephony_config.pb is not exit, no need to restore"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 411
    :cond_11
    const-string v1, "new_telephony_config.pb"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 412
    const-string p0, "restoreContentData: fail to restore the config data"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 415
    :cond_20
    const-string v0, "metadata/backup_version"

    const-string v4, "metadata/version"

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 417
    const-string p0, "restoreContentData: fail to restore the version"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 420
    :cond_30
    const-string v0, "restoreContentData: populate the data to SatelliteController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->postInstall()V

    .line 422
    const-string p0, "restoreContentData: success"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public blacklist cleanUpTelephonyConfigs()Z
    .registers 6

    .line 311
    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    const-string v1, "cleanTelephonyConfigs: resetting the telephony configs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 314
    :try_start_8
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    const-string v3, "metadata/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, -0x1

    .line 318
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 315
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 321
    iget-object v1, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v4, v0, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 324
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    const-string v3, "valid_telephony_config.pb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v4, v0, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_47} :catch_62

    .line 331
    const-string p0, "TelephonyConfigUpdateInstallReceiver"

    const-string v0, "cleanTelephonyConfigs: resetting the config parser"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    monitor-enter p0

    .line 333
    :try_start_55
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    .line 334
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_5f
    move-exception v0

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_5f

    throw v0

    :catch_62
    move-exception p0

    .line 327
    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clean telephony config files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 283
    const-string p0, "/data/misc/telephonyconfig"

    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copy "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " >> "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_71

    .line 288
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_45

    .line 289
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_45

    :catch_43
    move-exception p0

    goto :goto_77

    .line 291
    :cond_45
    :goto_45
    invoke-static {v2, p1}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J

    .line 292
    invoke-static {v2, p1}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    .line 293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "success to copy the file "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 293
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6f} :catch_43

    const/4 p0, 0x1

    return p0

    .line 301
    :cond_71
    const-string p0, "source file is not exist, no file to copy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 298
    :goto_77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copy error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;",
            ">;"
        }
    .end annotation

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public blacklist getConfigParser(Ljava/lang/String;)Lcom/android/internal/telephony/configupdate/ConfigParser;
    .registers 7

    .line 203
    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    const-string v1, "getConfigParser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_e
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    if-nez v1, :cond_46

    .line 206
    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateNewConfigParser with domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    const-string v4, "valid_telephony_config.pb"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getContentFromContentPath(Ljava/io/File;)[B

    move-result-object v2

    .line 207
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getNewConfigParser(Ljava/lang/String;[B)Lcom/android/internal/telephony/configupdate/ConfigParser;

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    goto :goto_46

    :catchall_44
    move-exception p0

    goto :goto_4e

    .line 211
    :cond_46
    :goto_46
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    monitor-exit v0

    return-object p0

    .line 212
    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_e .. :try_end_4f} :catchall_44

    throw p0
.end method

.method public blacklist getContentFromContentPath(Ljava/io/File;)[B
    .registers 3

    .line 94
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 96
    :catch_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to read current content : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyConfigUpdateInstallReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getNewConfigParser(Ljava/lang/String;[B)Lcom/android/internal/telephony/configupdate/ConfigParser;
    .registers 6

    const/4 v0, 0x0

    .line 259
    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    if-nez p2, :cond_b

    .line 260
    const-string p0, "content data is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 263
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v2, "satellite"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 267
    const-string p1, "DOMAIN should be specified"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportOemAndCarrierConfigError(I)V

    return-object v0

    .line 265
    :cond_22
    new-instance p0, Lcom/android/internal/telephony/satellite/SatelliteConfigParser;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteConfigParser;-><init>([B)V

    return-object p0
.end method

.method public blacklist getUpdateContent()Ljava/io/File;
    .registers 1

    .line 239
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    return-object p0
.end method

.method public blacklist getUpdateDir()Ljava/io/File;
    .registers 1

    .line 234
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    return-object p0
.end method

.method public blacklist isValidSatelliteCarrierConfigData(Lcom/android/internal/telephony/configupdate/ConfigParser;)Z
    .registers 10

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;->getConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/satellite/SatelliteConfig;

    const/4 v0, 0x0

    .line 108
    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    if-nez p1, :cond_17

    .line 109
    const-string p1, "satelliteConfig is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportOemAndCarrierConfigError(I)V

    return v0

    .line 116
    :cond_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->getAllSatelliteCarrierIds()Ljava/util/Set;

    move-result-object v2

    .line 117
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 119
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->getSupportedSatelliteServices(I)Ljava/util/Map;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 121
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 122
    invoke-static {v5}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidPlmn(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found invalid plmn : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportCarrierConfigError(I)V

    return v0

    .line 128
    :cond_68
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 129
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 130
    invoke-static {v6}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidService(I)Z

    move-result v7

    if-nez v7, :cond_72

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found invalid service : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportCarrierConfigError(I)V

    return v0

    .line 139
    :cond_a4
    const-string p0, "the config data is valid"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist overrideVersion(ZI)Z
    .registers 5

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideVersion: reset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    .line 349
    iget p2, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mOriginalVersion:I

    .line 350
    invoke-direct {p0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->restoreContentData()Z

    move-result p1

    if-nez p1, :cond_33

    return v0

    .line 354
    :cond_2a
    iput p2, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mOriginalVersion:I

    .line 355
    invoke-direct {p0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->backupContentData()Z

    move-result p1

    if-nez p1, :cond_33

    return v0

    .line 359
    :cond_33
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->overrideVersion(I)Z

    move-result p0

    return p0
.end method

.method public blacklist postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->postInstall()V

    return-void
.end method

.method public blacklist registerCallback(Ljava/util/concurrent/Executor;Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;)V
    .registers 3

    .line 217
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setCallbackMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;",
            ">;)V"
        }
    .end annotation

    .line 249
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iput-object p1, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;)V
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 223
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_a

    .line 226
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.class public Lcom/android/ims/rcs/uce/util/UceUtils;
.super Ljava/lang/Object;
.source "UceUtils.java"


# static fields
.field private static final blacklist DEFAULT_AVAILABILITY_CACHE_EXPIRATION_SEC:J = 0x3cL

.field private static final blacklist DEFAULT_CAP_REQUEST_TIMEOUT_AFTER_MS:J

.field private static final blacklist DEFAULT_MINIMUM_REQUEST_RETRY_AFTER_MS:J

.field private static final blacklist DEFAULT_NON_RCS_CAPABILITIES_CACHE_EXPIRATION_SEC:J

.field private static final blacklist DEFAULT_RCL_MAX_NUM_ENTRIES:I = 0x64

.field private static final blacklist DEFAULT_RCS_PUBLISH_SOURCE_THROTTLE_MS:J = 0xea60L

.field private static final blacklist DEFAULT_REQUEST_RETRY_INTERVAL_MS:J

.field private static final blacklist LOG_PREFIX:Ljava/lang/String; = "RcsUce."

.field public static final blacklist LOG_SIZE:I = 0x14

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RcsUce.UceUtils"

.field private static blacklist OVERRIDE_CAP_REQUEST_TIMEOUT_AFTER_MS:Ljava/util/Optional; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist REQUEST_COORDINATOR_ID:J = 0x0L

.field private static final blacklist SHARED_PREF_DEVICE_STATE_KEY:Ljava/lang/String; = "UceDeviceState"

.field private static blacklist TASK_ID:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 50
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/ims/rcs/uce/util/UceUtils;->DEFAULT_NON_RCS_CAPABILITIES_CACHE_EXPIRATION_SEC:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/ims/rcs/uce/util/UceUtils;->DEFAULT_REQUEST_RETRY_INTERVAL_MS:J

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/ims/rcs/uce/util/UceUtils;->DEFAULT_MINIMUM_REQUEST_RETRY_AFTER_MS:J

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/ims/rcs/uce/util/UceUtils;->DEFAULT_CAP_REQUEST_TIMEOUT_AFTER_MS:J

    .line 56
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/util/UceUtils;->OVERRIDE_CAP_REQUEST_TIMEOUT_AFTER_MS:Ljava/util/Optional;

    .line 62
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/ims/rcs/uce/util/UceUtils;->TASK_ID:J

    .line 65
    sput-wide v0, Lcom/android/ims/rcs/uce/util/UceUtils;->REQUEST_COORDINATOR_ID:J

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist generateRequestCoordinatorId()J
    .registers 5

    const-class v0, Lcom/android/ims/rcs/uce/util/UceUtils;

    monitor-enter v0

    .line 85
    :try_start_3
    sget-wide v1, Lcom/android/ims/rcs/uce/util/UceUtils;->REQUEST_COORDINATOR_ID:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/ims/rcs/uce/util/UceUtils;->REQUEST_COORDINATOR_ID:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-wide v1

    .line 85
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static declared-synchronized blacklist generateTaskId()J
    .registers 5

    const-class v0, Lcom/android/ims/rcs/uce/util/UceUtils;

    monitor-enter v0

    .line 78
    :try_start_3
    sget-wide v1, Lcom/android/ims/rcs/uce/util/UceUtils;->TASK_ID:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/ims/rcs/uce/util/UceUtils;->TASK_ID:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-wide v1

    .line 78
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static blacklist getAvailabilityCacheExpiration(I)J
    .registers 7
    .param p0, "subId"    # I

    .line 447
    const-string v0, "RcsUce.UceUtils"

    const-wide/16 v1, -0x1

    .line 449
    .local v1, "value":J
    :try_start_4
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v3

    .line 450
    .local v3, "pm":Landroid/telephony/ims/ProvisioningManager;
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_10

    int-to-long v1, v4

    .line 454
    .end local v3    # "pm":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_27

    .line 452
    :catch_10
    move-exception v3

    .line 453
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getAvailabilityCacheExpiration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_27
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_34

    .line 457
    const-string v3, "The availability expiration cannot be less than 0."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-wide/16 v1, 0x3c

    .line 460
    :cond_34
    return-wide v1
.end method

.method public static declared-synchronized blacklist getCapRequestTimeoutAfterMillis()J
    .registers 3

    const-class v0, Lcom/android/ims/rcs/uce/util/UceUtils;

    monitor-enter v0

    .line 412
    :try_start_3
    sget-object v1, Lcom/android/ims/rcs/uce/util/UceUtils;->OVERRIDE_CAP_REQUEST_TIMEOUT_AFTER_MS:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 413
    sget-object v1, Lcom/android/ims/rcs/uce/util/UceUtils;->OVERRIDE_CAP_REQUEST_TIMEOUT_AFTER_MS:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1d

    monitor-exit v0

    return-wide v1

    .line 415
    :cond_19
    :try_start_19
    sget-wide v1, Lcom/android/ims/rcs/uce/util/UceUtils;->DEFAULT_CAP_REQUEST_TIMEOUT_AFTER_MS:J
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-wide v1

    .line 411
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public static blacklist getContactNumber(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p0, "contactUri"    # Landroid/net/Uri;

    .line 425
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 426
    return-object v0

    .line 428
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 430
    return-object v0

    .line 433
    :cond_f
    const-string v0, "[@;:]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "numberParts":[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_24

    .line 435
    const-string v2, "RcsUce.UceUtils"

    const-string v3, "getContactNumber: the length of numberPars is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 438
    :cond_24
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static blacklist getDeviceStateSharedPrefKey(I)Ljava/lang/String;
    .registers 3
    .param p0, "subId"    # I

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UceDeviceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDeviceStateSharedPrefValue(Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;)Ljava/lang/String;
    .registers 10
    .param p0, "deviceState"    # Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getDeviceState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    const-wide/16 v3, -0x1

    .line 373
    .local v3, "retryTimeMillis":J
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getRequestRetryTime()Ljava/util/Optional;

    move-result-object v1

    .line 374
    .local v1, "retryTime":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/time/Instant;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 375
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/Instant;

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 377
    :cond_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 379
    const-wide/16 v5, -0x1

    .line 380
    .local v5, "exitStateTimeMillis":J
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getExitStateTime()Ljava/util/Optional;

    move-result-object v7

    .line 381
    .local v7, "exitStateTime":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/time/Instant;>;"
    invoke-virtual {v7}, Ljava/util/Optional;->isPresent()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 382
    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/Instant;

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 384
    :cond_56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getLogPrefix()Ljava/lang/String;
    .registers 1

    .line 71
    const-string v0, "RcsUce."

    return-object v0
.end method

.method public static blacklist getMinimumRequestRetryAfterMillis()J
    .registers 2

    .line 392
    sget-wide v0, Lcom/android/ims/rcs/uce/util/UceUtils;->DEFAULT_MINIMUM_REQUEST_RETRY_AFTER_MS:J

    return-wide v0
.end method

.method public static blacklist getNonRcsCapabilitiesCacheExpiration(Landroid/content/Context;I)J
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 271
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 272
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_d

    .line 273
    sget-wide v1, Lcom/android/ims/rcs/uce/util/UceUtils;->DEFAULT_NON_RCS_CAPABILITIES_CACHE_EXPIRATION_SEC:J

    return-wide v1

    .line 275
    :cond_d
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 276
    .local v1, "config":Landroid/os/PersistableBundle;
    if-nez v1, :cond_16

    .line 277
    sget-wide v2, Lcom/android/ims/rcs/uce/util/UceUtils;->DEFAULT_NON_RCS_CAPABILITIES_CACHE_EXPIRATION_SEC:J

    return-wide v2

    .line 279
    :cond_16
    const-string v2, "ims.non_rcs_capabilities_cache_expiration_sec_int"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method public static blacklist getRclMaxNumberEntries(I)I
    .registers 5
    .param p0, "subId"    # I

    .line 256
    const/16 v0, 0x64

    .line 258
    .local v0, "maxNumEntries":I
    :try_start_2
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    .line 259
    .local v1, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_10

    .line 261
    .local v2, "provisioningValue":I
    if-lez v2, :cond_f

    .line 262
    move v0, v2

    .line 266
    .end local v1    # "manager":Landroid/telephony/ims/ProvisioningManager;
    .end local v2    # "provisioningValue":I
    :cond_f
    goto :goto_2d

    .line 264
    :catch_10
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRclMaxNumberEntries: exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RcsUce.UceUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2d
    return v0
.end method

.method public static blacklist getRcsPublishThrottle(I)J
    .registers 8
    .param p0, "subId"    # I

    .line 235
    const-wide/32 v0, 0xea60

    .line 237
    .local v0, "throttle":J
    :try_start_3
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v2

    .line 238
    .local v2, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_16

    int-to-long v3, v3

    .line 240
    .local v3, "provisioningValue":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_15

    .line 241
    move-wide v0, v3

    .line 245
    .end local v2    # "manager":Landroid/telephony/ims/ProvisioningManager;
    .end local v3    # "provisioningValue":J
    :cond_15
    goto :goto_33

    .line 243
    :catch_16
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRcsPublishThrottle: exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RcsUce.UceUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_33
    return-wide v0
.end method

.method public static blacklist getRequestRetryInterval(Landroid/content/Context;I)J
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 297
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 298
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_d

    .line 299
    sget-wide v1, Lcom/android/ims/rcs/uce/util/UceUtils;->DEFAULT_REQUEST_RETRY_INTERVAL_MS:J

    return-wide v1

    .line 301
    :cond_d
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 302
    .local v1, "config":Landroid/os/PersistableBundle;
    if-nez v1, :cond_16

    .line 303
    sget-wide v2, Lcom/android/ims/rcs/uce/util/UceUtils;->DEFAULT_REQUEST_RETRY_INTERVAL_MS:J

    return-wide v2

    .line 305
    :cond_16
    const-string v2, "ims.rcs_request_retry_interval_millis_long"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static blacklist getSubscribeRetryInterval(Landroid/content/Context;I)J
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 469
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 470
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const-wide/16 v1, -0x1

    if-nez v0, :cond_d

    .line 471
    return-wide v1

    .line 473
    :cond_d
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 474
    .local v3, "config":Landroid/os/PersistableBundle;
    if-nez v3, :cond_14

    .line 475
    return-wide v1

    .line 478
    :cond_14
    const-string v4, "ims.subscribe_retry_duration_millis_long"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static blacklist isEabProvisioned(Landroid/content/Context;I)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "isProvisioned":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "RcsUce.UceUtils"

    if-nez v1, :cond_21

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEabProvisioned: invalid subscriptionId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v2

    .line 94
    :cond_21
    nop

    .line 95
    const-string v1, "carrier_config"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 96
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_3c

    .line 97
    invoke-virtual {v1, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 98
    .local v4, "config":Landroid/os/PersistableBundle;
    if-eqz v4, :cond_3c

    const-string v5, "carrier_volte_provisioned_bool"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 100
    const/4 v2, 0x1

    return v2

    .line 104
    .end local v4    # "config":Landroid/os/PersistableBundle;
    :cond_3c
    :try_start_3c
    invoke-static {p1}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v4

    .line 105
    .local v4, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Landroid/telephony/ims/ProvisioningManager;->getRcsProvisioningStatusForCapability(II)Z

    move-result v2
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_47

    move v0, v2

    .line 110
    .end local v4    # "manager":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_62

    .line 108
    :catch_47
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEabProvisioned: exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_62
    return v0
.end method

.method public static blacklist isNumberBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, p1, v0}, Landroid/provider/BlockedNumberContract$SystemContract;->shouldSystemBlockNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_b

    .line 192
    .local v0, "blockStatus":I
    nop

    .line 193
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 190
    .end local v0    # "blockStatus":I
    :catch_b
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method public static blacklist isPresenceCapExchangeEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 119
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 120
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 121
    return v1

    .line 123
    :cond_c
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 124
    .local v2, "config":Landroid/os/PersistableBundle;
    if-nez v2, :cond_13

    .line 125
    return v1

    .line 127
    :cond_13
    const-string v1, "ims.enable_presence_capability_exchange_bool"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isPresenceGroupSubscribeEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 167
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 168
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 169
    return v1

    .line 171
    :cond_c
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 172
    .local v2, "config":Landroid/os/PersistableBundle;
    if-nez v2, :cond_13

    .line 173
    return v1

    .line 175
    :cond_13
    const-string v1, "ims.enable_presence_group_subscribe_bool"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isPresenceSupported(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 135
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 136
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 137
    return v1

    .line 139
    :cond_c
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 140
    .local v2, "config":Landroid/os/PersistableBundle;
    if-nez v2, :cond_13

    .line 141
    return v1

    .line 143
    :cond_13
    const-string v1, "ims.enable_presence_publish_bool"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isRequestForbiddenBySip489(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 284
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 285
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 286
    return v1

    .line 288
    :cond_c
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 289
    .local v2, "config":Landroid/os/PersistableBundle;
    if-nez v2, :cond_13

    .line 290
    return v1

    .line 292
    :cond_13
    const-string v1, "ims.rcs_request_forbidden_by_sip_489_bool"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isSipOptionsSupported(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 150
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 151
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 152
    return v1

    .line 154
    :cond_c
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 155
    .local v2, "config":Landroid/os/PersistableBundle;
    if-nez v2, :cond_13

    .line 156
    return v1

    .line 158
    :cond_13
    const-string v1, "use_rcs_sip_options_bool"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isSipUriForPresenceSubscribeEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 200
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 201
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 202
    return v1

    .line 204
    :cond_c
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 205
    .local v2, "config":Landroid/os/PersistableBundle;
    if-nez v2, :cond_13

    .line 206
    return v1

    .line 208
    :cond_13
    const-string v1, "ims.use_sip_uri_for_presence_subscribe_bool"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isTelUriForPidfXmlEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 216
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 217
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 218
    return v1

    .line 220
    :cond_c
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 221
    .local v2, "config":Landroid/os/PersistableBundle;
    if-nez v2, :cond_13

    .line 222
    return v1

    .line 224
    :cond_13
    const-string v1, "ims.use_tel_uri_for_pidf_xml"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist removeDeviceStateFromPreference(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 353
    nop

    .line 354
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 355
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 356
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/android/ims/rcs/uce/util/UceUtils;->getDeviceStateSharedPrefKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method public static blacklist restoreDeviceState(Landroid/content/Context;I)Ljava/util/Optional;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Optional<",
            "Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;",
            ">;"
        }
    .end annotation

    .line 320
    nop

    .line 321
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 322
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/ims/rcs/uce/util/UceUtils;->getDeviceStateSharedPrefKey(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "sharedPrefKey":Ljava/lang/String;
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "sharedPrefValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 325
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    return-object v3

    .line 327
    :cond_1a
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "valueAry":[Ljava/lang/String;
    if-eqz v3, :cond_b4

    array-length v4, v3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_28

    goto/16 :goto_b4

    .line 332
    :cond_28
    const/4 v4, 0x0

    :try_start_29
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 333
    .local v4, "deviceState":I
    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4a

    .line 334
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    goto :goto_54

    :cond_4a
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    .line 336
    .local v5, "errorCode":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :goto_54
    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 337
    .local v6, "retryTimeMillis":J
    cmp-long v10, v6, v8

    if-nez v10, :cond_68

    .line 338
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v10

    goto :goto_70

    :cond_68
    invoke-static {v6, v7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    .line 340
    .local v10, "retryTime":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/time/Instant;>;"
    :goto_70
    const/4 v11, 0x3

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 341
    .local v11, "exitStateTimeMillis":J
    cmp-long v8, v11, v8

    if-nez v8, :cond_84

    .line 342
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v8

    goto :goto_8c

    :cond_84
    invoke-static {v11, v12}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    .line 344
    .local v8, "exitStateTime":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/time/Instant;>;"
    :goto_8c
    new-instance v9, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    invoke-direct {v9, v4, v5, v10, v8}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;-><init>(ILjava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    invoke-static {v9}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_95} :catch_96

    return-object v9

    .line 346
    .end local v4    # "deviceState":I
    .end local v5    # "errorCode":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .end local v6    # "retryTimeMillis":J
    .end local v8    # "exitStateTime":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/time/Instant;>;"
    .end local v10    # "retryTime":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/time/Instant;>;"
    .end local v11    # "exitStateTimeMillis":J
    :catch_96
    move-exception v4

    .line 347
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreDeviceState: exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RcsUce.UceUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    return-object v5

    .line 329
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b4
    :goto_b4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist saveDeviceStateToPreference(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "deviceState"    # Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    .line 311
    nop

    .line 312
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 314
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/android/ims/rcs/uce/util/UceUtils;->getDeviceStateSharedPrefKey(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {p2}, Lcom/android/ims/rcs/uce/util/UceUtils;->getDeviceStateSharedPrefValue(Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;)Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method public static declared-synchronized blacklist setCapRequestTimeoutAfterMillis(J)V
    .registers 5
    .param p0, "timeoutAfterMs"    # J

    const-class v0, Lcom/android/ims/rcs/uce/util/UceUtils;

    monitor-enter v0

    .line 400
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_10

    .line 401
    :try_start_9
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    sput-object v1, Lcom/android/ims/rcs/uce/util/UceUtils;->OVERRIDE_CAP_REQUEST_TIMEOUT_AFTER_MS:Ljava/util/Optional;

    goto :goto_1a

    .line 403
    :cond_10
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sput-object v1, Lcom/android/ims/rcs/uce/util/UceUtils;->OVERRIDE_CAP_REQUEST_TIMEOUT_AFTER_MS:Ljava/util/Optional;
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1c

    .line 405
    :goto_1a
    monitor-exit v0

    return-void

    .line 399
    .end local p0    # "timeoutAfterMs":J
    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

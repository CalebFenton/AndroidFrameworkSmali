.class public Lcom/android/org/conscrypt/ct/LogStoreImpl;
.super Ljava/lang/Object;
.source "LogStoreImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/ct/LogStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/LogStoreImpl$SystemTimeSupplier;
    }
.end annotation


# static fields
.field private static final blacklist COMPAT_VERSION:I = 0x2

.field private static final blacklist LOG_LIST_CHECK_INTERVAL_IN_NS:J = 0x8bb2c97000L

.field private static final blacklist logListPrefix:Ljava/nio/file/Path;

.field private static final blacklist logListSuffix:Ljava/nio/file/Path;

.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private blacklist clock:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist logList:Ljava/nio/file/Path;

.field private blacklist logListLastChecked:J

.field private blacklist logListLastModified:J

.field private blacklist logs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Lcom/android/org/conscrypt/ct/LogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist majorVersion:I

.field private blacklist metrics:Lcom/android/org/conscrypt/metrics/StatsLog;

.field private blacklist minorVersion:I

.field private blacklist policy:Lcom/android/org/conscrypt/ct/Policy;

.field private blacklist state:Lcom/android/org/conscrypt/ct/LogStore$State;

.field private blacklist timestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 57
    const-class v0, Lcom/android/org/conscrypt/ct/LogStoreImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logger:Ljava/util/logging/Logger;

    .line 65
    const-string v0, "ANDROID_DATA"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "androidData":Ljava/lang/String;
    const-string v1, "keychain"

    const-string v2, "ct"

    const-string v3, "misc"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sput-object v1, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logListPrefix:Ljava/nio/file/Path;

    .line 68
    const-string v1, "log_list.json"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "current"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sput-object v1, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logListSuffix:Ljava/nio/file/Path;

    .line 69
    .end local v0    # "androidData":Ljava/lang/String;
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/Policy;)V
    .registers 3
    .param p1, "policy"    # Lcom/android/org/conscrypt/ct/Policy;

    .line 97
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->getPathForCompatVersion(I)Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;-><init>(Lcom/android/org/conscrypt/ct/Policy;Ljava/nio/file/Path;)V

    .line 98
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/Policy;Ljava/nio/file/Path;)V
    .registers 4
    .param p1, "policy"    # Lcom/android/org/conscrypt/ct/Policy;
    .param p2, "logList"    # Ljava/nio/file/Path;

    .line 101
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getStatsLog()Lcom/android/org/conscrypt/metrics/StatsLog;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;-><init>(Lcom/android/org/conscrypt/ct/Policy;Ljava/nio/file/Path;Lcom/android/org/conscrypt/metrics/StatsLog;)V

    .line 102
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/Policy;Ljava/nio/file/Path;Lcom/android/org/conscrypt/metrics/StatsLog;)V
    .registers 5
    .param p1, "policy"    # Lcom/android/org/conscrypt/ct/Policy;
    .param p2, "logList"    # Ljava/nio/file/Path;
    .param p3, "metrics"    # Lcom/android/org/conscrypt/metrics/StatsLog;

    .line 105
    new-instance v0, Lcom/android/org/conscrypt/ct/LogStoreImpl$SystemTimeSupplier;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ct/LogStoreImpl$SystemTimeSupplier;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;-><init>(Lcom/android/org/conscrypt/ct/Policy;Ljava/nio/file/Path;Lcom/android/org/conscrypt/metrics/StatsLog;Ljava/util/function/Supplier;)V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/Policy;Ljava/nio/file/Path;Lcom/android/org/conscrypt/metrics/StatsLog;Ljava/util/function/Supplier;)V
    .registers 6
    .param p1, "policy"    # Lcom/android/org/conscrypt/ct/Policy;
    .param p2, "logList"    # Ljava/nio/file/Path;
    .param p3, "metrics"    # Lcom/android/org/conscrypt/metrics/StatsLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/conscrypt/ct/Policy;",
            "Ljava/nio/file/Path;",
            "Lcom/android/org/conscrypt/metrics/StatsLog;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p4, "clock":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->UNINITIALIZED:Lcom/android/org/conscrypt/ct/LogStore$State;

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 110
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->policy:Lcom/android/org/conscrypt/ct/Policy;

    .line 111
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logList:Ljava/nio/file/Path;

    .line 112
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->metrics:Lcom/android/org/conscrypt/metrics/StatsLog;

    .line 113
    iput-object p4, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->clock:Ljava/util/function/Supplier;

    .line 114
    return-void
.end method

.method private static blacklist addLogsToMap(Lorg/json/JSONArray;Ljava/lang/String;ILjava/util/Map;)V
    .registers 12
    .param p0, "logs"    # Lorg/json/JSONArray;
    .param p1, "operatorName"    # Ljava/lang/String;
    .param p2, "logType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Lcom/android/org/conscrypt/ct/LogInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 264
    .local p3, "logsMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/org/conscrypt/ByteArray;Lcom/android/org/conscrypt/ct/LogInfo;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_82

    .line 265
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 266
    .local v1, "log":Lorg/json/JSONObject;
    new-instance v2, Lcom/android/org/conscrypt/ct/LogInfo$Builder;

    invoke-direct {v2}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;-><init>()V

    .line 267
    const-string v3, "description"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->setDescription(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/LogInfo$Builder;

    move-result-object v2

    .line 268
    const-string v3, "key"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->parsePubKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->setPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/ct/LogInfo$Builder;

    move-result-object v2

    .line 269
    invoke-virtual {v2, p2}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->setType(I)Lcom/android/org/conscrypt/ct/LogInfo$Builder;

    move-result-object v2

    .line 270
    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->setOperator(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/LogInfo$Builder;

    move-result-object v2

    .line 271
    .local v2, "builder":Lcom/android/org/conscrypt/ct/LogInfo$Builder;
    const-string v3, "state"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 272
    .local v3, "stateObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_53

    .line 273
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 274
    .local v4, "state":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "timestamp"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 275
    .local v5, "stateTimestamp":J
    invoke-static {v4}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->parseState(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7, v5, v6}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->setState(IJ)Lcom/android/org/conscrypt/ct/LogInfo$Builder;

    .line 277
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "stateTimestamp":J
    :cond_53
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->build()Lcom/android/org/conscrypt/ct/LogInfo;

    move-result-object v4

    .line 280
    .local v4, "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v5

    const-string v6, "log_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 281
    .local v5, "logId":[B
    invoke-virtual {v4}, Lcom/android/org/conscrypt/ct/LogInfo;->getID()[B

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 285
    new-instance v6, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v6, v5}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    invoke-interface {p3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .end local v1    # "log":Lorg/json/JSONObject;
    .end local v2    # "builder":Lcom/android/org/conscrypt/ct/LogInfo$Builder;
    .end local v3    # "stateObject":Lorg/json/JSONObject;
    .end local v4    # "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    .end local v5    # "logId":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    .restart local v1    # "log":Lorg/json/JSONObject;
    .restart local v2    # "builder":Lcom/android/org/conscrypt/ct/LogInfo$Builder;
    .restart local v3    # "stateObject":Lorg/json/JSONObject;
    .restart local v4    # "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    .restart local v5    # "logId":[B
    :cond_7a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "logId does not match publicKey"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 287
    .end local v0    # "j":I
    .end local v1    # "log":Lorg/json/JSONObject;
    .end local v2    # "builder":Lcom/android/org/conscrypt/ct/LogInfo$Builder;
    .end local v3    # "stateObject":Lorg/json/JSONObject;
    .end local v4    # "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    .end local v5    # "logId":[B
    :cond_82
    return-void
.end method

.method private declared-synchronized blacklist ensureLogListIsLoaded()Z
    .registers 4

    monitor-enter p0

    .line 175
    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->resetLogListIfRequired()V

    .line 176
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 177
    .local v0, "previousState":Lcom/android/org/conscrypt/ct/LogStore$State;
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v2, Lcom/android/org/conscrypt/ct/LogStore$State;->UNINITIALIZED:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-ne v1, v2, :cond_12

    .line 178
    invoke-direct {p0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->loadLogList()Lcom/android/org/conscrypt/ct/LogStore$State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 180
    .end local p0    # "this":Lcom/android/org/conscrypt/ct/LogStoreImpl;
    :cond_12
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v2, Lcom/android/org/conscrypt/ct/LogStore$State;->LOADED:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->policy:Lcom/android/org/conscrypt/ct/Policy;

    if-eqz v1, :cond_2b

    .line 181
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->policy:Lcom/android/org/conscrypt/ct/Policy;

    invoke-interface {v1, p0}, Lcom/android/org/conscrypt/ct/Policy;->isLogStoreCompliant(Lcom/android/org/conscrypt/ct/LogStore;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    goto :goto_29

    :cond_27
    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->NON_COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    :goto_29
    iput-object v1, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 183
    :cond_2b
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-eq v1, v0, :cond_34

    .line 184
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->metrics:Lcom/android/org/conscrypt/metrics/StatsLog;

    invoke-interface {v1, p0}, Lcom/android/org/conscrypt/metrics/StatsLog;->updateCTLogListStatusChanged(Lcom/android/org/conscrypt/ct/LogStore;)V

    .line 186
    :cond_34
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v2, Lcom/android/org/conscrypt/ct/LogStore$State;->COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3f

    if-ne v1, v2, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    monitor-exit p0

    return v1

    .line 174
    .end local v0    # "previousState":Lcom/android/org/conscrypt/ct/LogStore$State;
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method private static blacklist getPathForCompatVersion(I)Ljava/nio/file/Path;
    .registers 4
    .param p0, "compatVersion"    # I

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "v%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "version":Ljava/lang/String;
    sget-object v1, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logListPrefix:Ljava/nio/file/Path;

    invoke-interface {v1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sget-object v2, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logListSuffix:Ljava/nio/file/Path;

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1
.end method

.method private blacklist loadLogList()Lcom/android/org/conscrypt/ct/LogStore$State;
    .registers 14

    .line 220
    const-string v0, "version"

    const-string v1, "Unable to parse log list"

    :try_start_4
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logList:Ljava/nio/file/Path;

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    .line 221
    .local v2, "content":[B
    iget-object v3, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logList:Ljava/nio/file/Path;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v3
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_17} :catch_9d

    .line 224
    .local v3, "lastModified":J
    nop

    .line 225
    if-nez v2, :cond_1d

    .line 226
    sget-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->NOT_FOUND:Lcom/android/org/conscrypt/ct/LogStore$State;

    return-object v0

    .line 230
    :cond_1d
    :try_start_1d
    new-instance v5, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_29} :catch_92

    .line 234
    .local v5, "json":Lorg/json/JSONObject;
    nop

    .line 235
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v6, "logsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/org/conscrypt/ByteArray;Lcom/android/org/conscrypt/ct/LogInfo;>;"
    :try_start_2f
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->parseMajorVersion(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->majorVersion:I

    .line 238
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->parseMinorVersion(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->minorVersion:I

    .line 239
    const-string v0, "log_list_timestamp"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->timestamp:J

    .line 240
    const-string v0, "operators"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 241
    .local v0, "operators":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_52
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_7b

    .line 242
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 243
    .local v8, "operator":Lorg/json/JSONObject;
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "operatorName":Ljava/lang/String;
    const-string v10, "logs"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 246
    .local v10, "logs":Lorg/json/JSONArray;
    const/4 v11, 0x1

    invoke-static {v10, v9, v11, v6}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->addLogsToMap(Lorg/json/JSONArray;Ljava/lang/String;ILjava/util/Map;)V

    .line 248
    const-string v11, "tiled_logs"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 249
    .local v11, "tiledLogs":Lorg/json/JSONArray;
    if-eqz v11, :cond_78

    .line 250
    const/4 v12, 0x2

    invoke-static {v11, v9, v12, v6}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->addLogsToMap(Lorg/json/JSONArray;Ljava/lang/String;ILjava/util/Map;)V
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_78} :catch_87
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_78} :catch_87

    .line 241
    .end local v8    # "operator":Lorg/json/JSONObject;
    .end local v9    # "operatorName":Ljava/lang/String;
    .end local v10    # "logs":Lorg/json/JSONArray;
    .end local v11    # "tiledLogs":Lorg/json/JSONArray;
    :cond_78
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 256
    .end local v0    # "operators":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_7b
    nop

    .line 257
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logs:Ljava/util/Map;

    .line 258
    iput-wide v3, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logListLastModified:J

    .line 259
    sget-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->LOADED:Lcom/android/org/conscrypt/ct/LogStore$State;

    return-object v0

    .line 253
    :catch_87
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->MALFORMED:Lcom/android/org/conscrypt/ct/LogStore$State;

    return-object v1

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "logsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/org/conscrypt/ByteArray;Lcom/android/org/conscrypt/ct/LogInfo;>;"
    :catch_92
    move-exception v0

    .line 232
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->MALFORMED:Lcom/android/org/conscrypt/ct/LogStore$State;

    return-object v1

    .line 222
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "content":[B
    .end local v3    # "lastModified":J
    :catch_9d
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->NOT_FOUND:Lcom/android/org/conscrypt/ct/LogStore$State;

    return-object v1
.end method

.method private static blacklist parseMajorVersion(Ljava/lang/String;)I
    .registers 4
    .param p0, "version"    # Ljava/lang/String;

    .line 290
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 291
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 295
    :cond_d
    const/4 v1, 0x0

    :try_start_e
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_16} :catch_17
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_16} :catch_17

    return v1

    .line 296
    :catch_17
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/RuntimeException;
    return v1
.end method

.method private static blacklist parseMinorVersion(Ljava/lang/String;)I
    .registers 5
    .param p0, "version"    # Ljava/lang/String;

    .line 302
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, "pos":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 305
    add-int/lit8 v1, v0, 0x1

    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1e} :catch_1f

    return v1

    .line 306
    :catch_1f
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/RuntimeException;
    return v2

    .line 310
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_21
    return v2
.end method

.method private static blacklist parsePubKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN PUBLIC KEY-----\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n-----END PUBLIC KEY-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 337
    .local v0, "pem":[B
    :try_start_1f
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1
    :try_end_2c
    .catch Ljava/security/InvalidKeyException; {:try_start_1f .. :try_end_2c} :catch_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1f .. :try_end_2c} :catch_2e

    .line 341
    .local v1, "pubkey":Ljava/security/PublicKey;
    nop

    .line 342
    return-object v1

    .line 339
    .end local v1    # "pubkey":Ljava/security/PublicKey;
    :catch_2e
    move-exception v1

    .line 340
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist parseState(Ljava/lang/String;)I
    .registers 7
    .param p0, "state"    # Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_6e

    :cond_c
    goto :goto_49

    :sswitch_d
    const-string v0, "retired"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_4a

    :sswitch_17
    const-string v0, "rejected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_4a

    :sswitch_21
    const-string v0, "pending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_4a

    :sswitch_2b
    const-string v0, "usable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_4a

    :sswitch_35
    const-string v0, "readonly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_4a

    :sswitch_3f
    const-string v0, "qualified"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v5

    goto :goto_4a

    :goto_49
    const/4 v0, -0x1

    :goto_4a
    packed-switch v0, :pswitch_data_88

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown log state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :pswitch_66
    const/4 v0, 0x6

    return v0

    .line 324
    :pswitch_68
    return v1

    .line 322
    :pswitch_69
    return v2

    .line 320
    :pswitch_6a
    return v3

    .line 318
    :pswitch_6b
    return v4

    .line 316
    :pswitch_6c
    return v5

    nop

    :sswitch_data_6e
    .sparse-switch
        -0x4a620f64 -> :sswitch_3f
        -0x33a941be -> :sswitch_35
        -0x31d6db08 -> :sswitch_2b
        -0x28af7669 -> :sswitch_21
        -0x2444eb82 -> :sswitch_17
        0x4173f3a9 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_66
    .end packed-switch
.end method

.method private declared-synchronized blacklist resetLogListIfRequired()V
    .registers 10

    monitor-enter p0

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->clock:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 191
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logListLastChecked:J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_4d

    const-wide v4, 0x8bb2c97000L

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_1b

    .line 192
    monitor-exit p0

    return-void

    .line 194
    :cond_1b
    :try_start_1b
    iput-wide v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logListLastChecked:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_4d

    .line 196
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_20
    iget-object v5, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logList:Ljava/nio/file/Path;

    new-array v6, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v5

    .line 197
    .local v5, "lastModified":J
    iget-wide v7, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logListLastModified:J
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2e} :catch_35
    .catchall {:try_start_20 .. :try_end_2e} :catchall_4d

    cmp-long v7, v7, v5

    if-nez v7, :cond_34

    .line 200
    monitor-exit p0

    return-void

    .line 208
    .end local v5    # "lastModified":J
    :cond_34
    goto :goto_3e

    .line 202
    .end local p0    # "this":Lcom/android/org/conscrypt/ct/LogStoreImpl;
    :catch_35
    move-exception v5

    .line 203
    .local v5, "e":Ljava/io/IOException;
    :try_start_36
    iget-wide v6, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logListLastModified:J
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_4d

    cmp-long v6, v6, v2

    if-nez v6, :cond_3e

    .line 206
    monitor-exit p0

    return-void

    .line 209
    .end local v5    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ct/LogStoreImpl;
    :cond_3e
    :goto_3e
    :try_start_3e
    sget-object v5, Lcom/android/org/conscrypt/ct/LogStore$State;->UNINITIALIZED:Lcom/android/org/conscrypt/ct/LogStore$State;

    iput-object v5, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 210
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logs:Ljava/util/Map;

    .line 211
    iput-wide v2, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->timestamp:J

    .line 212
    iput v4, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->majorVersion:I

    .line 213
    iput v4, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->minorVersion:I
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_4d

    .line 214
    monitor-exit p0

    return-void

    .line 189
    .end local v0    # "now":J
    .end local p0    # "this":Lcom/android/org/conscrypt/ct/LogStoreImpl;
    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method


# virtual methods
.method public blacklist getCompatVersion()I
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->LOADED:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->NON_COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    if-ne v0, v1, :cond_13

    goto :goto_15

    .line 144
    :cond_13
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_15
    :goto_15
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getKnownLog([B)Lcom/android/org/conscrypt/ct/LogInfo;
    .registers 5
    .param p1, "logId"    # [B

    .line 157
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 158
    return-object v0

    .line 160
    :cond_4
    invoke-direct {p0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->ensureLogListIsLoaded()Z

    move-result v1

    if-nez v1, :cond_b

    .line 161
    return-object v0

    .line 163
    :cond_b
    new-instance v1, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v1, p1}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 164
    .local v1, "buf":Lcom/android/org/conscrypt/ByteArray;
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->logs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/ct/LogInfo;

    .line 165
    .local v2, "log":Lcom/android/org/conscrypt/ct/LogInfo;
    if-eqz v2, :cond_1b

    .line 166
    return-object v2

    .line 168
    :cond_1b
    return-object v0
.end method

.method public blacklist getMajorVersion()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->majorVersion:I

    return v0
.end method

.method public blacklist getMinCompatVersionAvailable()I
    .registers 4

    .line 149
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->getPathForCompatVersion(I)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 150
    return v0

    .line 152
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->getCompatVersion()I

    move-result v0

    return v0
.end method

.method public blacklist getMinorVersion()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->minorVersion:I

    return v0
.end method

.method public blacklist getState()Lcom/android/org/conscrypt/ct/LogStore$State;
    .registers 2

    .line 118
    invoke-direct {p0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;->ensureLogListIsLoaded()Z

    .line 119
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->state:Lcom/android/org/conscrypt/ct/LogStore$State;

    return-object v0
.end method

.method public blacklist getTimestamp()J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/android/org/conscrypt/ct/LogStoreImpl;->timestamp:J

    return-wide v0
.end method

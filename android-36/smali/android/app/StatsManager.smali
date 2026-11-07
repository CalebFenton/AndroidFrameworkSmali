.class public final Landroid/app/StatsManager;
.super Ljava/lang/Object;
.source "StatsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatsManager$StatsUnavailableException;,
        Landroid/app/StatsManager$StatsQueryCallbackInternal;,
        Landroid/app/StatsManager$PullAtomMetadata;,
        Landroid/app/StatsManager$PullAtomCallbackInternal;,
        Landroid/app/StatsManager$StatsPullAtomCallback;,
        Landroid/app/StatsManager$StatsQueryException;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_STATSD_STARTED:Ljava/lang/String; = "android.app.action.STATSD_STARTED"

.field private static final blacklist CHUNK_SIZE:I = 0x10000

.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist DEFAULT_COOL_DOWN_MILLIS:J = 0x3e8L

.field public static final blacklist DEFAULT_TIMEOUT_MILLIS:J = 0x5dcL

.field public static final whitelist EXTRA_STATS_ACTIVE_CONFIG_KEYS:Ljava/lang/String; = "android.app.extra.STATS_ACTIVE_CONFIG_KEYS"

.field public static final whitelist EXTRA_STATS_BROADCAST_SUBSCRIBER_COOKIES:Ljava/lang/String; = "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

.field public static final whitelist EXTRA_STATS_CONFIG_KEY:Ljava/lang/String; = "android.app.extra.STATS_CONFIG_KEY"

.field public static final whitelist EXTRA_STATS_CONFIG_UID:Ljava/lang/String; = "android.app.extra.STATS_CONFIG_UID"

.field public static final whitelist EXTRA_STATS_DIMENSIONS_VALUE:Ljava/lang/String; = "android.app.extra.STATS_DIMENSIONS_VALUE"

.field public static final whitelist EXTRA_STATS_RESTRICTED_METRIC_IDS:Ljava/lang/String; = "android.app.extra.STATS_RESTRICTED_METRIC_IDS"

.field public static final whitelist EXTRA_STATS_SUBSCRIPTION_ID:Ljava/lang/String; = "android.app.extra.STATS_SUBSCRIPTION_ID"

.field public static final whitelist EXTRA_STATS_SUBSCRIPTION_RULE_ID:Ljava/lang/String; = "android.app.extra.STATS_SUBSCRIPTION_RULE_ID"

.field private static final blacklist MAX_BUFFER_SIZE:I = 0x1400000

.field public static final whitelist PULL_SKIP:I = 0x1

.field public static final whitelist PULL_SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StatsManager"

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mStatsManagerService:Landroid/os/IStatsManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    .line 153
    return-void
.end method

.method private static blacklist getDataWithFd(Landroid/os/IStatsManagerService;JLjava/lang/String;)[B
    .registers 23
    .param p0, "service"    # Landroid/os/IStatsManagerService;
    .param p1, "configKey"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    const-string v1, "StatsManager"

    :try_start_2
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_e3

    move-object v2, v0

    .line 950
    .local v2, "pipe":[Landroid/os/ParcelFileDescriptor;
    nop

    .line 952
    const/4 v0, 0x0

    aget-object v3, v2, v0

    .line 953
    .local v3, "readFd":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 958
    .local v4, "writeFd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    invoke-interface {v5, v6, v7, v8, v4}, Landroid/os/IStatsManagerService;->getDataFd(JLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 960
    :try_start_17
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_d1

    .line 964
    nop

    .line 966
    :try_start_1b
    new-instance v9, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v9, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_bf

    .line 967
    .local v9, "inputStream":Ljava/io/FileInputStream;
    :try_start_20
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_ae

    .line 969
    .local v10, "dataInputStream":Ljava/io/DataInputStream;
    const/high16 v11, 0x10000

    :try_start_27
    new-array v12, v11, [B

    .line 972
    .local v12, "chunk":[B
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 973
    .local v13, "expectedReportSize":I
    const/high16 v14, 0x1400000

    if-gt v13, v14, :cond_77

    if-lez v13, :cond_77

    .line 979
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_9c

    .line 983
    .local v14, "resultBuffer":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 984
    .local v15, "chunkLen":I
    const/16 v16, 0x0

    move/from16 v18, v16

    move-object/from16 v16, v2

    move/from16 v2, v18

    .line 986
    .local v2, "readBytes":I
    .local v16, "pipe":[Landroid/os/ParcelFileDescriptor;
    :goto_40
    move-object/from16 v17, v3

    .end local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    .local v17, "readFd":Landroid/os/ParcelFileDescriptor;
    :try_start_42
    invoke-virtual {v10, v12, v0, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_99

    move v15, v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_62

    .line 988
    :try_start_4a
    invoke-virtual {v14, v12, v0, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_4d
    .catch Ljava/nio/BufferOverflowException; {:try_start_4a .. :try_end_4d} :catch_54
    .catchall {:try_start_4a .. :try_end_4d} :catchall_99

    .line 992
    nop

    .line 993
    add-int/2addr v2, v15

    move-object/from16 v3, v17

    const/high16 v11, 0x10000

    goto :goto_40

    .line 989
    :catch_54
    move-exception v0

    .line 990
    .local v0, "e":Ljava/nio/BufferOverflowException;
    :try_start_55
    const-string v3, "Failed to store report chunk"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v11, "Failed to store report chunk."

    invoke-direct {v3, v11, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "service":Landroid/os/IStatsManagerService;
    .end local p1    # "configKey":J
    .end local p3    # "packageName":Ljava/lang/String;
    throw v3

    .line 995
    .end local v0    # "e":Ljava/nio/BufferOverflowException;
    .restart local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "service":Landroid/os/IStatsManagerService;
    .restart local p1    # "configKey":J
    .restart local p3    # "packageName":Ljava/lang/String;
    :cond_62
    if-ne v2, v13, :cond_6f

    .line 998
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0
    :try_end_68
    .catchall {:try_start_55 .. :try_end_68} :catchall_99

    .line 999
    :try_start_68
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_ab

    :try_start_6b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_bd

    .line 998
    return-object v0

    .line 996
    :cond_6f
    :try_start_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Incomplete data read from StatsManagerService."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "service":Landroid/os/IStatsManagerService;
    .end local p1    # "configKey":J
    .end local p3    # "packageName":Ljava/lang/String;
    throw v0

    .line 973
    .end local v14    # "resultBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "chunkLen":I
    .local v2, "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p0    # "service":Landroid/os/IStatsManagerService;
    .restart local p1    # "configKey":J
    .restart local p3    # "packageName":Ljava/lang/String;
    :cond_77
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 974
    .end local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expectedReportSize must be in a range (0, MAX_BUFFER_SIZE]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "expectedReportSize > MAX_BUFFER_SIZE."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "service":Landroid/os/IStatsManagerService;
    .end local p1    # "configKey":J
    .end local p3    # "packageName":Ljava/lang/String;
    throw v0
    :try_end_99
    .catchall {:try_start_6f .. :try_end_99} :catchall_99

    .line 966
    .end local v12    # "chunk":[B
    .end local v13    # "expectedReportSize":I
    .restart local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "service":Landroid/os/IStatsManagerService;
    .restart local p1    # "configKey":J
    .restart local p3    # "packageName":Ljava/lang/String;
    :catchall_99
    move-exception v0

    move-object v2, v0

    goto :goto_a2

    .end local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catchall_9c
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v0

    .end local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    :goto_a2
    :try_start_a2
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_aa

    :catchall_a6
    move-exception v0

    :try_start_a7
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "inputStream":Ljava/io/FileInputStream;
    .end local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "service":Landroid/os/IStatsManagerService;
    .end local p1    # "configKey":J
    .end local p3    # "packageName":Ljava/lang/String;
    :goto_aa
    throw v2
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_ab

    .end local v10    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "inputStream":Ljava/io/FileInputStream;
    .restart local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "service":Landroid/os/IStatsManagerService;
    .restart local p1    # "configKey":J
    .restart local p3    # "packageName":Ljava/lang/String;
    :catchall_ab
    move-exception v0

    move-object v2, v0

    goto :goto_b4

    .end local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catchall_ae
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v0

    .end local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    :goto_b4
    :try_start_b4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    goto :goto_bc

    :catchall_b8
    move-exception v0

    :try_start_b9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "service":Landroid/os/IStatsManagerService;
    .end local p1    # "configKey":J
    .end local p3    # "packageName":Ljava/lang/String;
    :goto_bc
    throw v2
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bd} :catch_bd

    .line 999
    .end local v9    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .restart local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "service":Landroid/os/IStatsManagerService;
    .restart local p1    # "configKey":J
    .restart local p3    # "packageName":Ljava/lang/String;
    :catch_bd
    move-exception v0

    goto :goto_c4

    .end local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catch_bf
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 1000
    .end local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    :goto_c4
    const-string v2, "Failed to read report data from StatsManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to read report data from StatsManagerService."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 961
    .end local v0    # "e":Ljava/io/IOException;
    .end local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catch_d1
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 962
    .end local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    const-string v2, "Failed to pass FD to StatsManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to pass FD to StatsManagerService."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 947
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v17    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catch_e3
    move-exception v0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    .line 948
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "Failed to create a pipe to receive reports."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;
    .registers 2

    .line 847
    iget-object v0, p0, Landroid/app/StatsManager;->mStatsManagerService:Landroid/os/IStatsManagerService;

    if-eqz v0, :cond_7

    .line 848
    iget-object v0, p0, Landroid/app/StatsManager;->mStatsManagerService:Landroid/os/IStatsManagerService;

    return-object v0

    .line 850
    :cond_7
    nop

    .line 852
    invoke-static {}, Landroid/os/StatsFrameworkInitializer;->getStatsServiceManager()Landroid/os/StatsServiceManager;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/os/StatsServiceManager;->getStatsManagerServiceRegisterer()Landroid/os/StatsServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Landroid/os/StatsServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 850
    invoke-static {v0}, Landroid/os/IStatsManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatsManager;->mStatsManagerService:Landroid/os/IStatsManagerService;

    .line 855
    iget-object v0, p0, Landroid/app/StatsManager;->mStatsManagerService:Landroid/os/IStatsManagerService;

    return-object v0
.end method

.method private static blacklist getUseFileDescriptor()Z
    .registers 1

    .line 933
    invoke-static {}, Lcom/android/internal/statsd/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$query$0(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "outcomeReceiver"    # Landroid/os/OutcomeReceiver;

    .line 476
    new-instance v0, Landroid/app/StatsManager$StatsQueryException;

    const-string v1, "Unsupported Sql Dialect"

    invoke-direct {v0, v1}, Landroid/app/StatsManager$StatsQueryException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 477
    return-void
.end method


# virtual methods
.method public whitelist addConfig(J[B)V
    .registers 8
    .param p1, "configKey"    # J
    .param p3, "config"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 168
    sget-object v0, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v1

    .line 172
    .local v1, "service":Landroid/os/IStatsManagerService;
    iget-object v2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/os/IStatsManagerService;->addConfiguration(J[BLjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_10} :catch_27
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_10} :catch_15
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 181
    .end local v1    # "service":Landroid/os/IStatsManagerService;
    nop

    .line 182
    :try_start_11
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_13
    move-exception v1

    goto :goto_42

    .line 178
    :catch_15
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to addConfig in statsmanager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    .end local p3    # "config":[B
    throw v2

    .line 176
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    .restart local p3    # "config":[B
    :catch_27
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    .end local p3    # "config":[B
    throw v2

    .line 173
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    .restart local p3    # "config":[B
    :catch_32
    move-exception v1

    .line 174
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to connect to statsmanager when adding configuration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v3, "could not connect"

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    .end local p3    # "config":[B
    throw v2

    .line 182
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    .restart local p3    # "config":[B
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_13

    throw v1
.end method

.method public whitelist addConfiguration(J[B)Z
    .registers 6
    .param p1, "configKey"    # J
    .param p3, "config"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/StatsManager;->addConfig(J[B)V
    :try_end_3
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    .line 194
    const/4 v0, 0x1

    return v0

    .line 195
    :catch_5
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist clearPullAtomCallback(I)V
    .registers 6
    .param p1, "atomTag"    # I

    .line 673
    sget-object v0, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v1

    .line 676
    .local v1, "service":Landroid/os/IStatsManagerService;
    invoke-interface {v1, p1}, Landroid/os/IStatsManagerService;->unregisterPullAtomCallback(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_f
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    .line 679
    .end local v1    # "service":Landroid/os/IStatsManagerService;
    nop

    .line 680
    :try_start_b
    monitor-exit v0

    .line 681
    return-void

    .line 680
    :catchall_d
    move-exception v1

    goto :goto_18

    .line 677
    :catch_f
    move-exception v1

    .line 678
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to unregister pull atom callback"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "atomTag":I
    throw v2

    .line 680
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "atomTag":I
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_d

    throw v1
.end method

.method public whitelist getData(J)[B
    .registers 5
    .param p1, "configKey"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 550
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/StatsManager;->getReports(J)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 551
    :catch_5
    move-exception v0

    .line 552
    .local v0, "e":Landroid/app/StatsManager$StatsUnavailableException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getMetadata()[B
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    :try_start_0
    invoke-virtual {p0}, Landroid/app/StatsManager;->getStatsMetadata()[B

    move-result-object v0
    :try_end_4
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 592
    :catch_5
    move-exception v0

    .line 593
    .local v0, "e":Landroid/app/StatsManager$StatsUnavailableException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getRegisteredExperimentIds()[J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 607
    sget-object v0, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v1

    .line 610
    .local v1, "service":Landroid/os/IStatsManagerService;
    invoke-interface {v1}, Landroid/os/IStatsManagerService;->getRegisteredExperimentIds()[J

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_b} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_b} :catch_f
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    :try_start_b
    monitor-exit v0

    return-object v2

    .line 624
    .end local v1    # "service":Landroid/os/IStatsManagerService;
    :catchall_d
    move-exception v1

    goto :goto_35

    .line 620
    :catch_f
    move-exception v1

    .line 621
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to getRegisteredExperimentIds in statsmanager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    throw v2

    .line 618
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    :catch_21
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    throw v2

    .line 611
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    :catch_2c
    move-exception v1

    .line 617
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v3, "could not connect"

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    throw v2

    .line 624
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_d

    throw v1
.end method

.method public whitelist getReports(J)[B
    .registers 7
    .param p1, "configKey"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 522
    sget-object v0, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v1

    .line 525
    .local v1, "service":Landroid/os/IStatsManagerService;
    invoke-static {}, Landroid/app/StatsManager;->getUseFileDescriptor()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 526
    iget-object v2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Landroid/app/StatsManager;->getDataWithFd(Landroid/os/IStatsManagerService;JLjava/lang/String;)[B

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_17} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_17} :catch_27
    .catchall {:try_start_3 .. :try_end_17} :catchall_25

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_25

    return-object v2

    .line 528
    :cond_19
    :try_start_19
    iget-object v2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IStatsManagerService;->getData(JLjava/lang/String;)[B

    move-result-object v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_23} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_23} :catch_27
    .catchall {:try_start_19 .. :try_end_23} :catchall_25

    :try_start_23
    monitor-exit v0

    return-object v2

    .line 539
    .end local v1    # "service":Landroid/os/IStatsManagerService;
    :catchall_25
    move-exception v1

    goto :goto_54

    .line 535
    :catch_27
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to getReports in statsmanager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    throw v2

    .line 533
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    :catch_39
    move-exception v1

    .line 534
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    throw v2

    .line 530
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    :catch_44
    move-exception v1

    .line 531
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to connect to statsmanager when getting data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v3, "could not connect"

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    throw v2

    .line 539
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_23 .. :try_end_55} :catchall_25

    throw v1
.end method

.method public whitelist getStatsMetadata()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 567
    sget-object v0, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v1

    .line 570
    .local v1, "service":Landroid/os/IStatsManagerService;
    iget-object v2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IStatsManagerService;->getMetadata(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_11} :catch_27
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_11} :catch_15
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit v0

    return-object v2

    .line 580
    .end local v1    # "service":Landroid/os/IStatsManagerService;
    :catchall_13
    move-exception v1

    goto :goto_42

    .line 576
    :catch_15
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to getStatsMetadata in statsmanager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    throw v2

    .line 574
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    :catch_27
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    throw v2

    .line 571
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    :catch_32
    move-exception v1

    .line 572
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to connect to statsmanager when getting metadata"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v3, "could not connect"

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    throw v2

    .line 580
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_13

    throw v1
.end method

.method public whitelist query(JLjava/lang/String;Landroid/app/StatsQuery;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 19
    .param p1, "configKey"    # J
    .param p3, "configPackage"    # Ljava/lang/String;
    .param p4, "query"    # Landroid/app/StatsQuery;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Landroid/app/StatsQuery;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/StatsCursor;",
            "Landroid/app/StatsManager$StatsQueryException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 474
    .local p6, "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/StatsCursor;Landroid/app/StatsManager$StatsQueryException;>;"
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {p4 .. p4}, Landroid/app/StatsQuery;->getSqlDialect()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_14

    .line 475
    new-instance v0, Landroid/app/StatsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Landroid/app/StatsManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 478
    return-void

    .line 481
    :cond_14
    new-instance v0, Landroid/app/StatsManager$StatsQueryCallbackInternal;

    invoke-direct {v0, v2, v1}, Landroid/app/StatsManager$StatsQueryCallbackInternal;-><init>(Landroid/os/OutcomeReceiver;Ljava/util/concurrent/Executor;)V

    move-object v7, v0

    .line 483
    .local v7, "callbackInternal":Landroid/app/StatsManager$StatsQueryCallbackInternal;
    sget-object v11, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v11

    .line 485
    :try_start_1d
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v3

    .line 486
    .local v3, "service":Landroid/os/IStatsManagerService;
    invoke-virtual/range {p4 .. p4}, Landroid/app/StatsQuery;->getRawSql()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Landroid/app/StatsQuery;->getMinSqlClientVersion()I

    move-result v5

    .line 487
    invoke-virtual/range {p4 .. p4}, Landroid/app/StatsQuery;->getPolicyConfig()[B

    move-result-object v6

    .line 486
    move-wide v8, p1

    move-object v10, p3

    invoke-interface/range {v3 .. v10}, Landroid/os/IStatsManagerService;->querySql(Ljava/lang/String;I[BLandroid/os/IStatsQueryCallback;JLjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_37
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_32} :catch_37
    .catchall {:try_start_1d .. :try_end_32} :catchall_35

    .line 491
    .end local v3    # "service":Landroid/os/IStatsManagerService;
    nop

    .line 492
    :try_start_33
    monitor-exit v11

    .line 493
    return-void

    .line 492
    :catchall_35
    move-exception v0

    goto :goto_40

    .line 489
    :catch_37
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v4, "could not connect"

    invoke-direct {v3, v4, v0}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "callbackInternal":Landroid/app/StatsManager$StatsQueryCallbackInternal;
    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    .end local p3    # "configPackage":Ljava/lang/String;
    .end local p4    # "query":Landroid/app/StatsQuery;
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/StatsCursor;Landroid/app/StatsManager$StatsQueryException;>;"
    throw v3

    .line 492
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "callbackInternal":Landroid/app/StatsManager$StatsQueryCallbackInternal;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    .restart local p3    # "configPackage":Ljava/lang/String;
    .restart local p4    # "query":Landroid/app/StatsQuery;
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p6    # "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/StatsCursor;Landroid/app/StatsManager$StatsQueryException;>;"
    :goto_40
    monitor-exit v11
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_35

    throw v0
.end method

.method public whitelist removeConfig(J)V
    .registers 7
    .param p1, "configKey"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 210
    sget-object v0, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v1

    .line 213
    .local v1, "service":Landroid/os/IStatsManagerService;
    iget-object v2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IStatsManagerService;->removeConfiguration(JLjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_10} :catch_27
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_10} :catch_15
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    .line 222
    .end local v1    # "service":Landroid/os/IStatsManagerService;
    nop

    .line 223
    :try_start_11
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_13
    move-exception v1

    goto :goto_42

    .line 219
    :catch_15
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to removeConfig in statsmanager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    throw v2

    .line 217
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    :catch_27
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    throw v2

    .line 214
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    :catch_32
    move-exception v1

    .line 215
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to connect to statsmanager when removing configuration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v3, "could not connect"

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    throw v2

    .line 223
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_13

    throw v1
.end method

.method public whitelist removeConfiguration(J)Z
    .registers 5
    .param p1, "configKey"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/StatsManager;->removeConfig(J)V
    :try_end_3
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_3} :catch_5

    .line 235
    const/4 v0, 0x1

    return v0

    .line 236
    :catch_5
    move-exception v0

    .line 237
    .local v0, "e":Landroid/app/StatsManager$StatsUnavailableException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setActiveConfigsChangedOperation(Landroid/app/PendingIntent;)[J
    .registers 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 366
    sget-object v0, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v1

    .line 369
    .local v1, "service":Landroid/os/IStatsManagerService;
    if-nez p1, :cond_17

    .line 370
    iget-object v2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IStatsManagerService;->removeActiveConfigsChangedOperation(Ljava/lang/String;)V

    .line 371
    const/4 v2, 0x0

    new-array v2, v2, [J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_30
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_15} :catch_25
    .catchall {:try_start_3 .. :try_end_15} :catchall_23

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_23

    return-object v2

    .line 373
    :cond_17
    :try_start_17
    iget-object v2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    .line 374
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-interface {v1, p1, v2}, Landroid/os/IStatsManagerService;->setActiveConfigsChangedOperation(Landroid/app/PendingIntent;Ljava/lang/String;)[J

    move-result-object v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_30
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_21} :catch_25
    .catchall {:try_start_17 .. :try_end_21} :catchall_23

    :try_start_21
    monitor-exit v0

    return-object v2

    .line 384
    .end local v1    # "service":Landroid/os/IStatsManagerService;
    :catchall_23
    move-exception v1

    goto :goto_40

    .line 381
    :catch_25
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    throw v2

    .line 377
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_30
    move-exception v1

    .line 378
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to connect to statsmanager when registering active configs listener."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v3, "could not connect"

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    throw v2

    .line 384
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_21 .. :try_end_41} :catchall_23

    throw v1
.end method

.method public whitelist setBroadcastSubscriber(Landroid/app/PendingIntent;JJ)V
    .registers 15
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "configKey"    # J
    .param p4, "subscriberId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 275
    sget-object v1, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v0

    move-object v2, v0

    .line 278
    .local v2, "service":Landroid/os/IStatsManagerService;
    if-eqz p1, :cond_23

    .line 279
    iget-object v0, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_10} :catch_3c
    .catchall {:try_start_3 .. :try_end_10} :catchall_37

    .line 279
    move-object v7, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local p2    # "configKey":J
    .end local p4    # "subscriberId":J
    .local v3, "configKey":J
    .local v5, "subscriberId":J
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_13
    invoke-interface/range {v2 .. v8}, Landroid/os/IStatsManagerService;->setBroadcastSubscriber(JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_16} :catch_1b
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_2e

    .line 292
    .end local v2    # "service":Landroid/os/IStatsManagerService;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v7    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_17
    move-exception v0

    move-object p1, v7

    move-object p2, v0

    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_5f

    .line 289
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v7    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_1b
    move-exception v0

    move-object p1, v7

    move-object p2, v0

    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_40

    .line 285
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v7    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_1f
    move-exception v0

    move-object p1, v7

    move-object p2, v0

    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_4e

    .line 282
    .end local v3    # "configKey":J
    .end local v5    # "subscriberId":J
    .restart local v2    # "service":Landroid/os/IStatsManagerService;
    .restart local p2    # "configKey":J
    .restart local p4    # "subscriberId":J
    :cond_23
    move-wide v3, p2

    move-wide v5, p4

    .end local p2    # "configKey":J
    .end local p4    # "subscriberId":J
    .restart local v3    # "configKey":J
    .restart local v5    # "subscriberId":J
    :try_start_25
    iget-object p2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-interface/range {v2 .. v7}, Landroid/os/IStatsManagerService;->unsetBroadcastSubscriber(JJLjava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2e} :catch_34
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_2e} :catch_31
    .catchall {:try_start_25 .. :try_end_2e} :catchall_5d

    .line 291
    .end local v2    # "service":Landroid/os/IStatsManagerService;
    :goto_2e
    nop

    .line 292
    :try_start_2f
    monitor-exit v1

    .line 293
    return-void

    .line 289
    :catch_31
    move-exception v0

    move-object p2, v0

    goto :goto_40

    .line 285
    :catch_34
    move-exception v0

    move-object p2, v0

    goto :goto_4e

    .line 292
    .end local v3    # "configKey":J
    .end local v5    # "subscriberId":J
    .restart local p2    # "configKey":J
    .restart local p4    # "subscriberId":J
    :catchall_37
    move-exception v0

    move-wide v3, p2

    move-wide v5, p4

    move-object p2, v0

    .end local p2    # "configKey":J
    .end local p4    # "subscriberId":J
    .restart local v3    # "configKey":J
    .restart local v5    # "subscriberId":J
    goto :goto_5f

    .line 289
    .end local v3    # "configKey":J
    .end local v5    # "subscriberId":J
    .restart local p2    # "configKey":J
    .restart local p4    # "subscriberId":J
    :catch_3c
    move-exception v0

    move-wide v3, p2

    move-wide v5, p4

    move-object p2, v0

    .line 290
    .end local p4    # "subscriberId":J
    .restart local v3    # "configKey":J
    .restart local v5    # "subscriberId":J
    .local p2, "e":Ljava/lang/SecurityException;
    :goto_40
    new-instance p3, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {p2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "configKey":J
    .end local v5    # "subscriberId":J
    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    throw p3

    .line 285
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .local p2, "configKey":J
    .restart local p4    # "subscriberId":J
    :catch_4a
    move-exception v0

    move-wide v3, p2

    move-wide v5, p4

    move-object p2, v0

    .line 286
    .end local p4    # "subscriberId":J
    .restart local v3    # "configKey":J
    .restart local v5    # "subscriberId":J
    .local p2, "e":Landroid/os/RemoteException;
    :goto_4e
    const-string p3, "StatsManager"

    const-string p4, "Failed to connect to statsmanager when adding broadcast subscriber"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    new-instance p3, Landroid/app/StatsManager$StatsUnavailableException;

    const-string p4, "could not connect"

    invoke-direct {p3, p4, p2}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "configKey":J
    .end local v5    # "subscriberId":J
    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    throw p3

    .line 292
    .end local p2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "configKey":J
    .restart local v5    # "subscriberId":J
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_5d
    move-exception v0

    move-object p2, v0

    :goto_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_2f .. :try_end_60} :catchall_5d

    throw p2
.end method

.method public whitelist setBroadcastSubscriber(JJLandroid/app/PendingIntent;)Z
    .registers 13
    .param p1, "configKey"    # J
    .param p3, "subscriberId"    # J
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v2, p5

    .end local p1    # "configKey":J
    .end local p3    # "subscriberId":J
    .end local p5    # "pendingIntent":Landroid/app/PendingIntent;
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    .local v3, "configKey":J
    .local v5, "subscriberId":J
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Landroid/app/StatsManager;->setBroadcastSubscriber(Landroid/app/PendingIntent;JJ)V
    :try_end_7
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_4 .. :try_end_7} :catch_9

    .line 305
    const/4 p1, 0x1

    return p1

    .line 306
    :catch_9
    move-exception v0

    move-object p1, v0

    .line 307
    .local p1, "e":Landroid/app/StatsManager$StatsUnavailableException;
    const/4 p2, 0x0

    return p2
.end method

.method public whitelist setDataFetchOperation(JLandroid/app/PendingIntent;)Z
    .registers 6
    .param p1, "configKey"    # J
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 504
    :try_start_0
    invoke-virtual {p0, p3, p1, p2}, Landroid/app/StatsManager;->setFetchReportsOperation(Landroid/app/PendingIntent;J)V
    :try_end_3
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_3} :catch_5

    .line 505
    const/4 v0, 0x1

    return v0

    .line 506
    :catch_5
    move-exception v0

    .line 507
    .local v0, "e":Landroid/app/StatsManager$StatsUnavailableException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setFetchReportsOperation(Landroid/app/PendingIntent;J)V
    .registers 8
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "configKey"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 329
    sget-object v0, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v1

    .line 332
    .local v1, "service":Landroid/os/IStatsManagerService;
    if-nez p1, :cond_13

    .line 333
    iget-object v2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, p3, v2}, Landroid/os/IStatsManagerService;->removeDataFetchOperation(JLjava/lang/String;)V

    goto :goto_1c

    .line 335
    :cond_13
    iget-object v2, p0, Landroid/app/StatsManager;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-interface {v1, p2, p3, p1, v2}, Landroid/os/IStatsManagerService;->setDataFetchOperation(JLandroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_1c} :catch_21
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1f

    .line 344
    .end local v1    # "service":Landroid/os/IStatsManagerService;
    :goto_1c
    nop

    .line 345
    :try_start_1d
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_1f
    move-exception v1

    goto :goto_3c

    .line 342
    :catch_21
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local p2    # "configKey":J
    throw v2

    .line 339
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p2    # "configKey":J
    :catch_2c
    move-exception v1

    .line 340
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to connect to statsmanager when registering data listener."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v3, "could not connect"

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local p2    # "configKey":J
    throw v2

    .line 345
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p2    # "configKey":J
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_1f

    throw v1
.end method

.method public whitelist setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V
    .registers 15
    .param p1, "atomTag"    # I
    .param p2, "metadata"    # Landroid/app/StatsManager$PullAtomMetadata;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/app/StatsManager$StatsPullAtomCallback;

    .line 644
    if-nez p2, :cond_5

    const-wide/16 v0, 0x3e8

    goto :goto_9

    :cond_5
    invoke-static {p2}, Landroid/app/StatsManager$PullAtomMetadata;->-$$Nest$fgetmCoolDownMillis(Landroid/app/StatsManager$PullAtomMetadata;)J

    move-result-wide v0

    :goto_9
    move-wide v4, v0

    .line 645
    .local v4, "coolDownMillis":J
    if-nez p2, :cond_f

    const-wide/16 v0, 0x5dc

    goto :goto_13

    :cond_f
    invoke-static {p2}, Landroid/app/StatsManager$PullAtomMetadata;->-$$Nest$fgetmTimeoutMillis(Landroid/app/StatsManager$PullAtomMetadata;)J

    move-result-wide v0

    :goto_13
    move-wide v6, v0

    .line 646
    .local v6, "timeoutMillis":J
    const/4 v0, 0x0

    if-nez p2, :cond_1a

    new-array v1, v0, [I

    goto :goto_1e

    :cond_1a
    invoke-static {p2}, Landroid/app/StatsManager$PullAtomMetadata;->-$$Nest$fgetmAdditiveFields(Landroid/app/StatsManager$PullAtomMetadata;)[I

    move-result-object v1

    .line 647
    .local v1, "additiveFields":[I
    :goto_1e
    if-nez v1, :cond_24

    .line 648
    new-array v1, v0, [I

    move-object v8, v1

    goto :goto_25

    .line 647
    :cond_24
    move-object v8, v1

    .line 651
    .end local v1    # "additiveFields":[I
    .local v8, "additiveFields":[I
    :goto_25
    sget-object v1, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    :try_start_28
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v2

    .line 654
    .local v2, "service":Landroid/os/IStatsManagerService;
    new-instance v9, Landroid/app/StatsManager$PullAtomCallbackInternal;

    invoke-direct {v9, p1, p4, p3}, Landroid/app/StatsManager$PullAtomCallbackInternal;-><init>(ILandroid/app/StatsManager$StatsPullAtomCallback;Ljava/util/concurrent/Executor;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_3f
    .catchall {:try_start_28 .. :try_end_31} :catchall_3b

    .line 656
    .local v9, "rec":Landroid/app/StatsManager$PullAtomCallbackInternal;
    move v3, p1

    .end local p1    # "atomTag":I
    .local v3, "atomTag":I
    :try_start_32
    invoke-interface/range {v2 .. v9}, Landroid/os/IStatsManagerService;->registerPullAtomCallback(IJJ[ILandroid/os/IPullAtomCallback;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_38
    .catchall {:try_start_32 .. :try_end_35} :catchall_4a

    .line 660
    .end local v2    # "service":Landroid/os/IStatsManagerService;
    .end local v9    # "rec":Landroid/app/StatsManager$PullAtomCallbackInternal;
    nop

    .line 661
    :try_start_36
    monitor-exit v1

    .line 662
    return-void

    .line 658
    :catch_38
    move-exception v0

    move-object p1, v0

    goto :goto_42

    .line 661
    .end local v3    # "atomTag":I
    .restart local p1    # "atomTag":I
    :catchall_3b
    move-exception v0

    move v3, p1

    move-object p1, v0

    .end local p1    # "atomTag":I
    .restart local v3    # "atomTag":I
    goto :goto_4c

    .line 658
    .end local v3    # "atomTag":I
    .restart local p1    # "atomTag":I
    :catch_3f
    move-exception v0

    move v3, p1

    move-object p1, v0

    .line 659
    .restart local v3    # "atomTag":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to register pull callback"

    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "atomTag":I
    .end local v4    # "coolDownMillis":J
    .end local v6    # "timeoutMillis":J
    .end local v8    # "additiveFields":[I
    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p2    # "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/app/StatsManager$StatsPullAtomCallback;
    throw v0

    .line 661
    .end local p1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "atomTag":I
    .restart local v4    # "coolDownMillis":J
    .restart local v6    # "timeoutMillis":J
    .restart local v8    # "additiveFields":[I
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p2    # "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/app/StatsManager$StatsPullAtomCallback;
    :catchall_4a
    move-exception v0

    move-object p1, v0

    :goto_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_4a

    throw p1
.end method

.method public whitelist setRestrictedMetricsChangedOperation(JLjava/lang/String;Landroid/app/PendingIntent;)[J
    .registers 9
    .param p1, "configKey"    # J
    .param p3, "configPackage"    # Ljava/lang/String;
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 414
    sget-object v0, Landroid/app/StatsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatsManager;->getIStatsManagerServiceLocked()Landroid/os/IStatsManagerService;

    move-result-object v1

    .line 417
    .local v1, "service":Landroid/os/IStatsManagerService;
    if-nez p4, :cond_11

    .line 418
    invoke-interface {v1, p1, p2, p3}, Landroid/os/IStatsManagerService;->removeRestrictedMetricsChangedOperation(JLjava/lang/String;)V

    .line 419
    const/4 v2, 0x0

    new-array v2, v2, [J
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_f} :catch_19
    .catchall {:try_start_3 .. :try_end_f} :catchall_17

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_17

    return-object v2

    .line 421
    :cond_11
    :try_start_11
    invoke-interface {v1, p4, p1, p2, p3}, Landroid/os/IStatsManagerService;->setRestrictedMetricsChangedOperation(Landroid/app/PendingIntent;JLjava/lang/String;)[J

    move-result-object v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_15} :catch_19
    .catchall {:try_start_11 .. :try_end_15} :catchall_17

    :try_start_15
    monitor-exit v0

    return-object v2

    .line 432
    .end local v1    # "service":Landroid/os/IStatsManagerService;
    :catchall_17
    move-exception v1

    goto :goto_34

    .line 429
    :catch_19
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    .end local p3    # "configPackage":Ljava/lang/String;
    .end local p4    # "pendingIntent":Landroid/app/PendingIntent;
    throw v2

    .line 425
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    .restart local p3    # "configPackage":Ljava/lang/String;
    .restart local p4    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_24
    move-exception v1

    .line 426
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StatsManager"

    const-string v3, "Failed to connect to statsmanager when registering restricted metrics  listener."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v2, Landroid/app/StatsManager$StatsUnavailableException;

    const-string v3, "could not connect"

    invoke-direct {v2, v3, v1}, Landroid/app/StatsManager$StatsUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/StatsManager;
    .end local p1    # "configKey":J
    .end local p3    # "configPackage":Ljava/lang/String;
    .end local p4    # "pendingIntent":Landroid/app/PendingIntent;
    throw v2

    .line 432
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/StatsManager;
    .restart local p1    # "configKey":J
    .restart local p3    # "configPackage":Ljava/lang/String;
    .restart local p4    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_17

    throw v1
.end method

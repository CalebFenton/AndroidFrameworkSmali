.class public Lcom/android/internal/protolog/LegacyProtoLogImpl;
.super Ljava/lang/Object;
.source "LegacyProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLog;


# static fields
.field private static final blacklist BUFFER_CAPACITY:I = 0x100000

.field private static final blacklist MAGIC_NUMBER_VALUE:J = 0x474f4c4f544f5250L

.field private static final blacklist PER_CHUNK_SIZE:I = 0x400

.field static final blacklist PROTOLOG_VERSION:Ljava/lang/String; = "2.0.0"

.field private static final blacklist TAG:Ljava/lang/String; = "ProtoLog"


# instance fields
.field private final blacklist mBuffer:Lcom/android/internal/util/TraceBuffer;

.field private final blacklist mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

.field private final blacklist mLegacyViewerConfigFilename:Ljava/lang/String;

.field private final blacklist mLogFile:Ljava/io/File;

.field private final blacklist mLogGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPerChunkSize:I

.field private blacklist mProtoLogEnabled:Z

.field private final blacklist mProtoLogEnabledLock:Ljava/lang/Object;

.field private blacklist mProtoLogEnabledLockFree:Z

.field private final blacklist mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;


# direct methods
.method public constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;ILcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;ILcom/android/internal/protolog/ProtoLogCacheUpdater;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "viewerConfigFilename"    # Ljava/lang/String;
    .param p3, "bufferCapacity"    # I
    .param p4, "viewerConfig"    # Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;
    .param p5, "perChunkSize"    # I
    .param p6, "cacheUpdater"    # Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogGroups:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogFile:Ljava/io/File;

    .line 90
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, p3}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 91
    iput-object p2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLegacyViewerConfigFilename:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    .line 93
    iput p5, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mPerChunkSize:I

    .line 94
    iput-object p6, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/protolog/ProtoLogCacheUpdater;)V
    .registers 11
    .param p1, "outputFile"    # Ljava/lang/String;
    .param p2, "viewerConfigFilename"    # Ljava/lang/String;
    .param p3, "cacheUpdater"    # Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    .line 82
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    invoke-direct {v4}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;-><init>()V

    const/16 v5, 0x400

    const/high16 v3, 0x100000

    move-object v0, p0

    move-object v2, p2

    move-object v6, p3

    .end local p2    # "viewerConfigFilename":Ljava/lang/String;
    .end local p3    # "cacheUpdater":Lcom/android/internal/protolog/ProtoLogCacheUpdater;
    .local v2, "viewerConfigFilename":Ljava/lang/String;
    .local v6, "cacheUpdater":Lcom/android/internal/protolog/ProtoLogCacheUpdater;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/protolog/LegacyProtoLogImpl;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;ILcom/android/internal/protolog/ProtoLogCacheUpdater;)V

    .line 84
    return-void
.end method

.method static synthetic blacklist lambda$getStatus$3(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .registers 2
    .param p0, "it"    # Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 365
    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic blacklist lambda$getStatus$4(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .registers 2
    .param p0, "it"    # Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 369
    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic blacklist lambda$logToProto$0(Ljava/lang/Long;)J
    .registers 3
    .param p0, "i"    # Ljava/lang/Long;

    .line 214
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$logToProto$1(Ljava/lang/Double;)D
    .registers 3
    .param p0, "i"    # Ljava/lang/Double;

    .line 218
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$onShellCommand$2(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 331
    invoke-static {p0, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerGroups$5(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 438
    const-string v0, "ProtoLog"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 389
    const-string v0, "ProtoLog"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-eqz p0, :cond_d

    .line 391
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 394
    :cond_d
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;J[Ljava/lang/Object;)V
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "messageHash"    # J
    .param p5, "args"    # [Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    invoke-virtual {v1, p3, p4}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->getViewerString(J)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "messageString":Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 124
    if-eqz p5, :cond_1a

    .line 126
    :try_start_b
    invoke-static {v1, p5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_11

    move-object v0, v2

    .line 129
    :goto_10
    goto :goto_1b

    .line 127
    :catch_11
    move-exception v2

    .line 128
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "ProtoLog"

    const-string v4, "Invalid ProtoLog format string."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_10

    .line 131
    :cond_1a
    move-object v0, v1

    .line 134
    :cond_1b
    :goto_1b
    if-nez v0, :cond_53

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN MESSAGE ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "builder":Ljava/lang/StringBuilder;
    if-eqz p5, :cond_4f

    .line 137
    array-length v3, p5

    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v3, :cond_4f

    aget-object v5, p5, v4

    .line 138
    .local v5, "o":Ljava/lang/Object;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .end local v5    # "o":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 141
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_53
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private blacklist logToProto(JI[Ljava/lang/Object;)V
    .registers 25
    .param p1, "messageHash"    # J
    .param p3, "paramsMask"    # I
    .param p4, "args"    # [Ljava/lang/Object;

    .line 174
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v3, "ProtoLog"

    invoke-virtual {v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 175
    return-void

    .line 178
    :cond_d
    :try_start_d
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    iget v4, v1, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mPerChunkSize:I

    invoke-direct {v0, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    move-object v4, v0

    .line 179
    .local v4, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v5, 0x20b00000004L

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 180
    .local v5, "token":J
    const-wide v7, 0x11000000007L

    move-wide/from16 v9, p1

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    const-wide v11, 0x10600000002L

    invoke-virtual {v4, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 183
    if-eqz v2, :cond_14d

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "argIndex":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v7, "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v8, "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v11, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    array-length v12, v2

    const/4 v13, 0x0

    move v14, v13

    move v13, v0

    .end local v0    # "argIndex":I
    .local v13, "argIndex":I
    :goto_4a
    if-ge v14, v12, :cond_dd

    aget-object v0, v2, v14
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4e} :catch_15a

    move-object v15, v0

    .line 189
    .local v15, "o":Ljava/lang/Object;
    move/from16 v2, p3

    :try_start_51
    invoke-static {v2, v13}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_55} :catch_158

    move/from16 v16, v0

    .line 191
    .local v16, "type":I
    const-wide v9, 0x20900000003L

    packed-switch v16, :pswitch_data_164

    move-object v10, v7

    move-object/from16 v19, v8

    .end local v7    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v10, "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v19, "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    goto/16 :goto_ce

    .line 202
    .end local v10    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v7    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v8    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :pswitch_64
    :try_start_64
    move-object v0, v15

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v7

    move-object/from16 v19, v8

    goto :goto_ce

    .line 199
    :pswitch_76
    move-object v0, v15

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    move-object v10, v7

    move-object/from16 v19, v8

    goto :goto_ce

    .line 196
    :pswitch_88
    move-object v0, v15

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    move-object v10, v7

    move-object/from16 v19, v8

    goto :goto_ce

    .line 193
    :pswitch_9a
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/ClassCastException; {:try_start_64 .. :try_end_a1} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_a1} :catch_158

    .line 194
    move-object v10, v7

    move-object/from16 v19, v8

    goto :goto_ce

    .line 205
    :catch_a5
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/lang/ClassCastException;
    :try_start_a6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(INVALID PARAMS_MASK) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    move-object/from16 v19, v8

    const-wide v7, 0x20900000003L

    .end local v7    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v10    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {v4, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 208
    const-string v7, "Invalid ProtoLog paramsMask"

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cf

    .line 209
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :goto_ce
    nop

    .line 210
    :goto_cf
    nop

    .end local v15    # "o":Ljava/lang/Object;
    .end local v16    # "type":I
    add-int/lit8 v13, v13, 0x1

    .line 188
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p4

    move-object v7, v10

    move-object/from16 v8, v19

    move-wide/from16 v9, p1

    goto/16 :goto_4a

    .line 212
    .end local v10    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v7    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v8    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :cond_dd
    move/from16 v2, p3

    move-object v10, v7

    move-object/from16 v19, v8

    .end local v7    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v10    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_102

    .line 213
    nop

    .line 214
    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v7, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    .line 213
    const-wide v7, 0x51200000004L

    invoke-virtual {v4, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedSInt64(J[J)V

    .line 216
    :cond_102
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_122

    .line 217
    nop

    .line 218
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v7, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda7;

    invoke-direct {v7}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    .line 217
    const-wide v7, 0x50100000005L

    invoke-virtual {v4, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedDouble(J[D)V

    .line 220
    :cond_122
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14f

    .line 221
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 222
    .local v0, "arr":[Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_12f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_144

    .line 223
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    aput-boolean v8, v0, v7

    .line 222
    add-int/lit8 v7, v7, 0x1

    goto :goto_12f

    .line 225
    .end local v7    # "i":I
    :cond_144
    const-wide v7, 0x50800000006L

    invoke-virtual {v4, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedBool(J[Z)V

    goto :goto_14f

    .line 183
    .end local v0    # "arr":[Z
    .end local v10    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v13    # "argIndex":I
    .end local v19    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :cond_14d
    move/from16 v2, p3

    .line 228
    :cond_14f
    :goto_14f
    invoke-virtual {v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 229
    iget-object v0, v1, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_157} :catch_158

    .line 232
    .end local v4    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "token":J
    goto :goto_162

    .line 230
    :catch_158
    move-exception v0

    goto :goto_15d

    :catch_15a
    move-exception v0

    move/from16 v2, p3

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    :goto_15d
    const-string v4, "Exception while logging to proto"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_162
    return-void

    nop

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_88
        :pswitch_76
        :pswitch_64
    .end packed-switch
.end method

.method private varargs blacklist setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I
    .registers 10
    .param p1, "setTextLogging"    # Z
    .param p2, "value"    # Z
    .param p3, "logger"    # Lcom/android/internal/protolog/common/ILogger;
    .param p4, "groups"    # [Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p4

    if-ge v0, v1, :cond_34

    .line 287
    aget-object v1, p4, v0

    .line 288
    .local v1, "group":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 289
    .local v2, "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    if-eqz v2, :cond_1c

    .line 290
    if-eqz p1, :cond_16

    .line 291
    invoke-interface {v2, p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToLogcat(Z)V

    goto :goto_19

    .line 293
    :cond_16
    invoke-interface {v2, p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToProto(Z)V

    .line 286
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .restart local v1    # "group":Ljava/lang/String;
    .restart local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No IProtoLogGroup named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    .line 297
    const/4 v3, -0x1

    return v3

    .line 301
    .end local v0    # "i":I
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_34
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {v0, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist unknownCommand(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 306
    const-string v0, "Unknown command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    const-string v0, "Window manager logging options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    const-string v0, "  start: Start proto logging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    const-string v0, "  stop: Stop proto logging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    const-string v0, "  enable [group...]: Enable proto logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    const-string v0, "  disable [group...]: Disable proto logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    const-string v0, "  enable-text [group...]: Enable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    const-string v0, "  disable-text [group...]: Disable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist writeProtoLogToFileLocked()V
    .registers 8

    .line 377
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 378
    .local v0, "offset":J
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    iget v3, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mPerChunkSize:I

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 379
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10600000001L

    const-wide v5, 0x474f4c4f544f5250L

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 380
    const-string v3, "2.0.0"

    const-wide v4, 0x10900000002L

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 381
    const-wide v3, 0x10600000003L

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 382
    iget-object v3, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v4, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 385
    .end local v0    # "offset":J
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_43

    .line 383
    :catch_3b
    move-exception v0

    .line 384
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ProtoLog"

    const-string v2, "Unable to write buffer to file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    :goto_43
    return-void
.end method


# virtual methods
.method public blacklist getRegisteredGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStatus()Ljava/lang/String;
    .registers 5

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoLog status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->isProtoEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "Enabled"

    goto :goto_16

    :cond_14
    const-string v1, "Disabled"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nEnabled log groups: \n  Proto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogGroups:Ljava/util/Map;

    .line 364
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda3;-><init>()V

    .line 366
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, " "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Logcat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogGroups:Ljava/util/Map;

    .line 368
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda3;-><init>()V

    .line 370
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLogging definitions loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    .line 371
    invoke-virtual {v1}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->knownViewerStringsNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    return-object v0
.end method

.method public blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 4
    .param p1, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;

    .line 421
    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public blacklist isProtoEnabled()Z
    .registers 2

    .line 281
    iget-boolean v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLockFree:Z

    return v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 14
    .param p1, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageHash"    # J
    .param p5, "paramsMask"    # I
    .param p6, "args"    # [Ljava/lang/Object;

    .line 104
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logToProto(JI[Ljava/lang/Object;)V

    .line 107
    :cond_9
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 108
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p6

    .end local p1    # "level":Lcom/android/internal/protolog/common/LogLevel;
    .end local p3    # "messageHash":J
    .end local p6    # "args":[Ljava/lang/Object;
    .local v3, "level":Lcom/android/internal/protolog/common/LogLevel;
    .local v4, "messageHash":J
    .local v6, "args":[Ljava/lang/Object;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;J[Ljava/lang/Object;)V

    goto :goto_1e

    .line 107
    .end local v3    # "level":Lcom/android/internal/protolog/common/LogLevel;
    .end local v4    # "messageHash":J
    .end local v6    # "args":[Ljava/lang/Object;
    .restart local p1    # "level":Lcom/android/internal/protolog/common/LogLevel;
    .restart local p3    # "messageHash":J
    .restart local p6    # "args":[Ljava/lang/Object;
    :cond_1b
    move-object v3, p1

    move-wide v4, p3

    move-object v6, p6

    .line 110
    .end local p1    # "level":Lcom/android/internal/protolog/common/LogLevel;
    .end local p3    # "messageHash":J
    .end local p6    # "args":[Ljava/lang/Object;
    .restart local v3    # "level":Lcom/android/internal/protolog/common/LogLevel;
    .restart local v4    # "messageHash":J
    .restart local v6    # "args":[Ljava/lang/Object;
    :goto_1e
    return-void
.end method

.method public varargs blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented. Only implemented for PerfettoProtoLogImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onShellCommand(Landroid/os/ShellCommand;)I
    .registers 11
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 321
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 322
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "cmd":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 324
    invoke-direct {p0, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 326
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_14
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "arg":Ljava/lang/String;
    if-eqz v3, :cond_1f

    .line 329
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 331
    :cond_1f
    new-instance v3, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintWriter;)V

    .line 332
    .local v3, "logger":Lcom/android/internal/protolog/common/ILogger;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 333
    .local v5, "groups":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_b8

    :cond_39
    goto :goto_83

    :sswitch_3a
    const-string v6, "disable"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/4 v6, 0x5

    goto :goto_84

    :sswitch_44
    const-string/jumbo v6, "start"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    move v6, v8

    goto :goto_84

    :sswitch_4f
    const-string/jumbo v6, "stop"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    move v6, v7

    goto :goto_84

    :sswitch_5a
    const-string/jumbo v6, "status"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/4 v6, 0x2

    goto :goto_84

    :sswitch_65
    const-string v6, "disable-text"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/4 v6, 0x6

    goto :goto_84

    :sswitch_6f
    const-string v6, "enable"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/4 v6, 0x3

    goto :goto_84

    :sswitch_79
    const-string v6, "enable-text"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/4 v6, 0x4

    goto :goto_84

    :goto_83
    const/4 v6, -0x1

    :goto_84
    packed-switch v6, :pswitch_data_d6

    .line 353
    invoke-direct {p0, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v6

    return v6

    .line 351
    :pswitch_8c
    invoke-direct {p0, v7, v8, v3, v5}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v6

    return v6

    .line 349
    :pswitch_91
    invoke-direct {p0, v8, v8, v3, v5}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v6

    return v6

    .line 346
    :pswitch_96
    iget-object v6, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    iget-object v8, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLegacyViewerConfigFilename:Ljava/lang/String;

    invoke-virtual {v6, v3, v8}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->loadViewerConfig(Lcom/android/internal/protolog/common/ILogger;Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, v7, v7, v3, v5}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v6

    return v6

    .line 344
    :pswitch_a2
    invoke-direct {p0, v8, v7, v3, v5}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v6

    return v6

    .line 341
    :pswitch_a7
    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 342
    return v8

    .line 338
    :pswitch_af
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 339
    return v8

    .line 335
    :pswitch_b3
    invoke-virtual {p0, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 336
    return v8

    nop

    :sswitch_data_b8
    .sparse-switch
        -0x57eac4c9 -> :sswitch_79
        -0x4d6ada7d -> :sswitch_6f
        -0x3d842b0e -> :sswitch_65
        -0x3532300e -> :sswitch_5a
        0x360802 -> :sswitch_4f
        0x68ac462 -> :sswitch_44
        0x639e22e8 -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_af
        :pswitch_a7
        :pswitch_a2
        :pswitch_96
        :pswitch_91
        :pswitch_8c
    .end packed-switch
.end method

.method public blacklist passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "message"    # Ljava/lang/String;

    .line 151
    sget-object v0, Lcom/android/internal/protolog/LegacyProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$common$LogLevel:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    goto :goto_24

    .line 168
    :pswitch_c
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 165
    :pswitch_10
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    goto :goto_24

    .line 162
    :pswitch_14
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    goto :goto_24

    .line 159
    :pswitch_18
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    goto :goto_24

    .line 156
    :pswitch_1c
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    goto :goto_24

    .line 153
    :pswitch_20
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    nop

    .line 171
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method public varargs blacklist registerGroups([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 7
    .param p1, "protoLogGroups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 431
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    .line 432
    .local v2, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    iget-object v3, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogGroups:Ljava/util/Map;

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .end local v2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 435
    :cond_12
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 436
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 438
    .local v0, "hasGroupsLoggingToLogcat":Z
    new-instance v1, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 439
    .local v1, "logger":Lcom/android/internal/protolog/common/ILogger;
    if-eqz v0, :cond_2d

    .line 440
    iget-object v2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    iget-object v3, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLegacyViewerConfigFilename:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->loadViewerConfig(Lcom/android/internal/protolog/common/ILogger;Ljava/lang/String;)V

    .line 442
    :cond_2d
    return-void
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 5
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    .line 403
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;

    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLegacyViewerConfigFilename:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/protolog/LegacyProtoLogViewerConfigReader;->loadViewerConfig(Lcom/android/internal/protolog/common/ILogger;Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, p2, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist startProtoLog(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    return-void

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 247
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabled:Z

    .line 248
    iput-boolean v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLockFree:Z

    .line 249
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 5
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    .line 414
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->setLogging(ZZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist stopProtoLog(Ljava/io/PrintWriter;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "writeToFile"    # Z

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 260
    return-void

    .line 262
    :cond_7
    iget-object v0, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Waiting for log to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 264
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabled:Z

    .line 265
    if-eqz p2, :cond_55

    .line 266
    invoke-direct {p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->writeProtoLogToFileLocked()V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 270
    :cond_55
    iget-boolean v1, p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;->mProtoLogEnabled:Z

    if-nez v1, :cond_5b

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 271
    :cond_5b
    const-string v1, "ERROR: logging was re-enabled while waiting for flush."

    invoke-static {p1, v1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 272
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "logging enabled while waiting for flush."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/protolog/LegacyProtoLogImpl;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "writeToFile":Z
    throw v1

    .line 274
    .restart local p0    # "this":Lcom/android/internal/protolog/LegacyProtoLogImpl;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "writeToFile":Z
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_a .. :try_end_6a} :catchall_68

    throw v1
.end method

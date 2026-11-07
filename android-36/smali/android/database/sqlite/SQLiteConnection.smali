.class public final Landroid/database/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnection$OperationLog;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatement;,
        Landroid/database/sqlite/SQLiteConnection$Operation;,
        Landroid/database/sqlite/SQLiteConnection$RateLimiter;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EMPTY_BYTE_ARRAY:[B

.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteConnection"


# instance fields
.field private greylist-max-o mCancellationSignalAttachCount:I

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final greylist-max-o mConnectionId:I

.field private greylist-max-o mConnectionPtr:J

.field private final greylist-max-o mIsPrimaryConnection:Z

.field private final greylist-max-o mIsReadOnlyConnection:Z

.field private greylist-max-o mOnlyAllowReadOnlyOperations:Z

.field private final greylist-max-o mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private final greylist-max-o mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

.field private greylist-max-o mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field private final greylist-max-o mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfiguration(Landroid/database/sqlite/SQLiteConnection;)Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .registers 1

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionPtr(Landroid/database/sqlite/SQLiteConnection;)J
    .registers 3

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPool(Landroid/database/sqlite/SQLiteConnection;)Landroid/database/sqlite/SQLiteConnectionPool;
    .registers 1

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfinalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_BYTE_ARRAY()[B
    .registers 1

    sget-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativePrepareStatement(JLjava/lang/String;)J
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->nativePrepareStatement(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtrimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 105
    nop

    .line 109
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 110
    new-array v0, v0, [B

    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V
    .registers 7
    .param p1, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p2, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p3, "connectionId"    # I
    .param p4, "primaryConnection"    # Z

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 189
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 190
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    .line 191
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 192
    iput p3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    .line 193
    iput-boolean p4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 194
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isReadOnlyDatabase()Z

    move-result v0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 195
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-direct {v0, p0, v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;-><init>(Landroid/database/sqlite/SQLiteConnection;I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 197
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "SQLiteConnection.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private blacklist acquirePreparedStatementLI(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .registers 19
    .param p1, "sql"    # Ljava/lang/String;

    .line 1083
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget v3, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatements:I

    const/4 v10, 0x1

    add-int/2addr v3, v10

    iput v3, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatements:I

    .line 1084
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->getStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0

    .line 1085
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v3, v1, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->getLastSeqNum()J

    move-result-wide v3

    .line 1087
    .local v3, "seqNum":J
    const/4 v5, 0x0

    .line 1088
    .local v5, "skipCache":Z
    if-eqz v0, :cond_35

    .line 1089
    iget-boolean v6, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v6, :cond_31

    .line 1090
    iget-wide v6, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSeqNum:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_28

    .line 1092
    iput-boolean v10, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1093
    return-object v0

    .line 1097
    :cond_28
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    const/4 v0, 0x0

    move-object v11, v0

    move v12, v5

    goto :goto_37

    .line 1105
    :cond_31
    const/4 v5, 0x1

    move-object v11, v0

    move v12, v5

    goto :goto_37

    .line 1088
    :cond_35
    move-object v11, v0

    move v12, v5

    .line 1108
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local v5    # "skipCache":Z
    .local v11, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v12, "skipCache":Z
    :goto_37
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget v5, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatementCacheMiss:I

    add-int/2addr v5, v10

    iput v5, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mTotalPrepareStatementCacheMiss:I

    .line 1109
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->createStatement(Ljava/lang/String;)J

    move-result-wide v5

    .line 1110
    .local v5, "statementPtr":J
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->getLastSeqNum()J

    move-result-wide v8

    .line 1112
    .end local v3    # "seqNum":J
    .local v8, "seqNum":J
    :try_start_4a
    iget-wide v3, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->nativeGetParameterCount(JJ)I

    move-result v0

    .line 1113
    .local v0, "numParameters":I
    invoke-static {v2}, Landroid/database/DatabaseUtils;->getSqlStatementTypeExtended(Ljava/lang/String;)I

    move-result v3

    .line 1114
    .local v3, "type":I
    iget-wide v13, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v13, v14, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->nativeIsReadOnly(JJ)Z

    move-result v7
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_5a} :catch_78

    .line 1115
    .local v7, "readOnly":Z
    move-wide v15, v5

    move v6, v3

    move-wide v3, v15

    move v5, v0

    .end local v0    # "numParameters":I
    .local v3, "statementPtr":J
    .local v5, "numParameters":I
    .local v6, "type":I
    :try_start_5e
    invoke-direct/range {v1 .. v9}, Landroid/database/sqlite/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;JIIZJ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0

    move-object v11, v0

    .line 1117
    if-nez v12, :cond_72

    invoke-static {v6}, Landroid/database/sqlite/SQLiteConnection;->isCacheable(I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1118
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, v2, v11}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iput-boolean v10, v11, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z
    :try_end_72
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_72} :catch_76

    .line 1128
    .end local v5    # "numParameters":I
    .end local v6    # "type":I
    .end local v7    # "readOnly":Z
    :cond_72
    nop

    .line 1129
    iput-boolean v10, v11, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1130
    return-object v11

    .line 1121
    :catch_76
    move-exception v0

    goto :goto_7a

    .end local v3    # "statementPtr":J
    .local v5, "statementPtr":J
    :catch_78
    move-exception v0

    move-wide v3, v5

    .line 1124
    .end local v5    # "statementPtr":J
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "statementPtr":J
    :goto_7a
    if-eqz v11, :cond_80

    iget-boolean v5, v11, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-nez v5, :cond_85

    .line 1125
    :cond_80
    iget-wide v5, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v5, v6, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1127
    :cond_85
    throw v0
.end method

.method private greylist-max-o applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 3
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1309
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1310
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_14

    .line 1311
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    goto :goto_1b

    .line 1313
    :cond_14
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1316
    :cond_1b
    :goto_1b
    return-void
.end method

.method private greylist-max-o attachCancellationSignal(Landroid/os/CancellationSignal;)V
    .registers 6
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1197
    if-eqz p1, :cond_17

    .line 1198
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1200
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 1201
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    if-ne v0, v1, :cond_17

    .line 1203
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 1206
    invoke-virtual {p1, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1209
    :cond_17
    return-void
.end method

.method private greylist-max-o bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .registers 13
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    .line 1237
    if-eqz p2, :cond_4

    array-length v0, p2

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1238
    .local v0, "count":I
    :goto_5
    iget v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    if-ne v0, v1, :cond_74

    .line 1243
    if-nez v0, :cond_c

    .line 1244
    return-void

    .line 1247
    :cond_c
    iget-wide v4, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1248
    .local v4, "statementPtr":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_73

    .line 1249
    aget-object v9, p2, v1

    .line 1250
    .local v9, "arg":Ljava/lang/Object;
    invoke-static {v9}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_a0

    .line 1267
    :pswitch_1a
    instance-of v2, v9, Ljava/lang/Boolean;

    if-eqz v2, :cond_65

    .line 1270
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    .line 1271
    move-object v7, v9

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5f

    const-wide/16 v7, 0x1

    goto :goto_61

    .line 1263
    :pswitch_2e
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v7, v9

    check-cast v7, [B

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeBindBlob(JJI[B)V

    .line 1264
    goto :goto_70

    .line 1259
    :pswitch_39
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v7, v9

    check-cast v7, Ljava/lang/Number;

    .line 1260
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 1259
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindDouble(JJID)V

    .line 1261
    goto :goto_70

    .line 1255
    :pswitch_48
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v7, v9

    check-cast v7, Ljava/lang/Number;

    .line 1256
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 1255
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    .line 1257
    goto :goto_70

    .line 1252
    :pswitch_57
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->nativeBindNull(JJI)V

    .line 1253
    goto :goto_70

    .line 1271
    :cond_5f
    const-wide/16 v7, 0x0

    .line 1270
    :goto_61
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    goto :goto_70

    .line 1273
    :cond_65
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeBindString(JJILjava/lang/String;)V

    .line 1248
    .end local v9    # "arg":Ljava/lang/Object;
    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1278
    .end local v1    # "i":I
    :cond_73
    return-void

    .line 1239
    .end local v4    # "statementPtr":J
    :cond_74
    new-instance v1, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bind arguments but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " were provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_57
        :pswitch_48
        :pswitch_39
        :pswitch_1a
        :pswitch_2e
    .end packed-switch
.end method

.method private static greylist-max-o canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    :cond_7
    goto :goto_30

    :pswitch_8
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_31

    :pswitch_12
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_31

    :pswitch_1c
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_31

    :pswitch_26
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_31

    :goto_30
    const/4 v0, -0x1

    :goto_31
    packed-switch v0, :pswitch_data_4e

    .line 433
    return-object p0

    .line 431
    :pswitch_35
    const-string v0, "EXTRA"

    return-object v0

    .line 430
    :pswitch_38
    const-string v0, "FULL"

    return-object v0

    .line 429
    :pswitch_3b
    const-string v0, "NORMAL"

    return-object v0

    .line 428
    :pswitch_3e
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x30
        :pswitch_26
        :pswitch_1c
        :pswitch_12
        :pswitch_8
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
    .end packed-switch
.end method

.method private blacklist checkDatabaseWiped()V
    .registers 6

    .line 557
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->checkDbWipe()Z

    move-result v0

    if-nez v0, :cond_7

    .line 558
    return-void

    .line 561
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-wipecheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, "checkFile":Ljava/io/File;
    const-string v1, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'android_metadata\'"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 567
    .local v1, "hasMetadataTable":Z
    :goto_33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 569
    .local v2, "hasCheckFile":Z
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v3, :cond_40

    if-nez v2, :cond_40

    .line 572
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 575
    :cond_40
    if-nez v1, :cond_4e

    if-eqz v2, :cond_4e

    .line 577
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->wipeDetected(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_4e} :catch_4f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4e} :catch_4f

    .line 583
    .end local v0    # "checkFile":Ljava/io/File;
    .end local v1    # "hasMetadataTable":Z
    .end local v2    # "hasCheckFile":Z
    :cond_4e
    goto :goto_57

    .line 580
    :catch_4f
    move-exception v0

    .line 581
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SQLiteConnection"

    const-string v2, "Unexpected exception while checking for wipe"

    invoke-static {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->wtfAsSystemServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_57
    return-void
.end method

.method private greylist-max-o detachCancellationSignal(Landroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1212
    if-eqz p1, :cond_17

    .line 1213
    nop

    .line 1215
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 1216
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    if-nez v0, :cond_17

    .line 1218
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1221
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 1224
    :cond_17
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .registers 8
    .param p1, "finalized"    # Z

    .line 292
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_10

    .line 293
    if-eqz p1, :cond_b

    .line 294
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 296
    :cond_b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 299
    :cond_10
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    .line 300
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "close"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 302
    .local v0, "cookie":I
    :try_start_21
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->evictAll()V

    .line 303
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    if-eqz p1, :cond_32

    invoke-static {}, Landroid/database/sqlite/Flags;->noCheckpointOnFinalize()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    invoke-static {v4, v5, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeClose(JZ)V

    .line 304
    iput-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_3e

    .line 306
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 307
    goto :goto_45

    .line 306
    :catchall_3e
    move-exception v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 307
    throw v1

    .line 309
    .end local v0    # "cookie":I
    :cond_45
    :goto_45
    return-void
.end method

.method private blacklist executePerConnectionSqlFromConfiguration(I)V
    .registers 8
    .param p1, "startIndex"    # I

    .line 539
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 540
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 541
    .local v1, "statement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    .line 542
    .local v2, "type":I
    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_56

    .line 550
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported configuration statement: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 547
    :sswitch_3a
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 548
    goto :goto_52

    .line 544
    :sswitch_46
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    .line 545
    nop

    .line 539
    .end local v1    # "statement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v2    # "type":I
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 554
    .end local v0    # "i":I
    :cond_55
    return-void

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_46
        0x7 -> :sswitch_3a
    .end sparse-switch
.end method

.method private greylist-max-o finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 6
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1174
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1175
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1176
    return-void
.end method

.method private greylist-max-o getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;
    .registers 18
    .param p1, "lookaside"    # I
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J

    .line 1439
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-eqz v0, :cond_a

    .line 1440
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    move-object v2, v0

    .local v0, "label":Ljava/lang/String;
    goto :goto_2e

    .line 1442
    .end local v0    # "label":Ljava/lang/String;
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1444
    .local v2, "label":Ljava/lang/String;
    :goto_2e
    new-instance v1, Landroid/database/sqlite/SQLiteDebug$DbStats;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1445
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->hitCount()I

    move-result v8

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->missCount()I

    move-result v9

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1446
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->size()I

    move-result v10

    const/4 v11, 0x0

    move v7, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v11}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIIIZ)V

    .line 1444
    return-object v1
.end method

.method private static greylist-max-o isCacheable(I)Z
    .registers 3
    .param p0, "statementType"    # I

    .line 1300
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_d

    if-eq p0, v1, :cond_d

    const/16 v0, 0x64

    if-ne p0, v0, :cond_b

    goto :goto_d

    .line 1305
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 1303
    :cond_d
    :goto_d
    return v1
.end method

.method private blacklist maybeTruncateWalFile()V
    .registers 9

    .line 382
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z

    if-nez v0, :cond_7

    .line 383
    return-void

    .line 386
    :cond_7
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALTruncateSize()J

    move-result-wide v0

    .line 390
    .local v0, "threshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 391
    return-void

    .line 394
    :cond_12
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v2, "walFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_35

    .line 396
    return-void

    .line 398
    :cond_35
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 399
    .local v3, "size":J
    cmp-long v5, v3, v0

    if-gez v5, :cond_3e

    .line 403
    return-void

    .line 407
    :cond_3e
    :try_start_3e
    const-string v5, "PRAGMA wal_checkpoint(TRUNCATE)"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    .line 408
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z
    :try_end_49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_49} :catch_4a

    .line 411
    goto :goto_52

    .line 409
    :catch_4a
    move-exception v5

    .line 410
    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    const-string v6, "SQLiteConnection"

    const-string v7, "Failed to truncate the -wal file"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .end local v5    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_52
    return-void
.end method

.method private static native greylist-max-o nativeBindBlob(JJI[B)V
.end method

.method private static native greylist-max-o nativeBindDouble(JJID)V
.end method

.method private static native greylist-max-o nativeBindLong(JJIJ)V
.end method

.method private static native greylist-max-o nativeBindNull(JJI)V
.end method

.method private static native greylist-max-o nativeBindString(JJILjava/lang/String;)V
.end method

.method private static native greylist-max-o nativeCancel(J)V
.end method

.method private static native blacklist nativeChanges(J)J
.end method

.method private static native blacklist nativeClose(JZ)V
.end method

.method private static native blacklist nativeExecute(JJZ)V
.end method

.method private static native greylist-max-o nativeExecuteForBlobFileDescriptor(JJ)I
.end method

.method private static native greylist-max-o nativeExecuteForChangedRowCount(JJ)I
.end method

.method private static native greylist-max-o nativeExecuteForCursorWindow(JJJIIZ)J
.end method

.method private static native greylist-max-o nativeExecuteForLastInsertedRowId(JJ)J
.end method

.method private static native greylist-max-o nativeExecuteForLong(JJ)J
.end method

.method private static native greylist-max-o nativeExecuteForString(JJ)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeFinalizeStatement(JJ)V
.end method

.method private static native greylist-max-o nativeGetColumnCount(JJ)I
.end method

.method private static native greylist-max-o nativeGetColumnName(JJI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetDbLookaside(J)I
.end method

.method private static native greylist-max-o nativeGetParameterCount(JJ)I
.end method

.method private static native greylist-max-o nativeIsReadOnly(JJ)Z
.end method

.method private static native blacklist nativeLastInsertRowId(J)I
.end method

.method private static native greylist-max-o nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZII)J
.end method

.method private static native greylist-max-o nativePrepareStatement(JLjava/lang/String;)J
.end method

.method private static native blacklist nativeRegisterCustomAggregateFunction(JLjava/lang/String;Ljava/util/function/BinaryOperator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeRegisterCustomScalarFunction(JLjava/lang/String;Ljava/util/function/UnaryOperator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeRegisterLocalizedCollators(JLjava/lang/String;)V
.end method

.method private static native greylist-max-o nativeResetCancel(JZ)V
.end method

.method private static native greylist-max-o nativeResetStatementAndClearBindings(JJ)V
.end method

.method private static native blacklist nativeTotalChanges(J)J
.end method

.method private static native blacklist nativeUpdatesTempOnly(JJ)Z
.end method

.method private blacklist obtainPreparedStatement(Ljava/lang/String;JIIZJ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .registers 11
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "statementPtr"    # J
    .param p4, "numParameters"    # I
    .param p5, "type"    # I
    .param p6, "readOnly"    # Z
    .param p7, "seqNum"    # J

    .line 1456
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1457
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz v0, :cond_f

    .line 1458
    iget-object v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1459
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1460
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    goto :goto_15

    .line 1462
    :cond_f
    new-instance v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;-><init>()V

    move-object v0, v1

    .line 1464
    :goto_15
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1465
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1466
    iput p4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    .line 1467
    iput p5, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    .line 1468
    iput-boolean p6, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    .line 1469
    iput-wide p7, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSeqNum:J

    .line 1470
    return-object v0
.end method

.method static greylist-max-o open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;
    .registers 7
    .param p0, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "connectionId"    # I
    .param p3, "primaryConnection"    # Z

    .line 217
    new-instance v0, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnection;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V

    .line 220
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_5
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnection;->open()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 221
    return-object v0

    .line 222
    :catch_9
    move-exception v1

    .line 223
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 224
    throw v1
.end method

.method private greylist-max-o open()V
    .registers 11

    .line 236
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 237
    .local v1, "file":Ljava/lang/String;
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v2, "open"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v8

    .line 239
    .local v8, "cookie":I
    const/4 v9, 0x0

    :try_start_f
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    sget-boolean v4, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_STATEMENTS:Z

    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_TIME:Z

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v6, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v7, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZII)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_f .. :try_end_29} :catch_4e
    .catchall {:try_start_f .. :try_end_29} :catchall_4b

    .line 278
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 279
    nop

    .line 280
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setPageSize()V

    .line 281
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 282
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalFromConfiguration()V

    .line 283
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 284
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    .line 285
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    .line 286
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 287
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCustomFunctionsFromConfiguration()V

    .line 288
    invoke-direct {p0, v9}, Landroid/database/sqlite/SQLiteConnection;->executePerConnectionSqlFromConfiguration(I)V

    .line 289
    return-void

    .line 278
    :catchall_4b
    move-exception v0

    goto/16 :goto_117

    .line 243
    :catch_4e
    move-exception v0

    move-object v2, v0

    .line 244
    .local v2, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :try_start_50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Cannot open database "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "["

    .line 245
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \'"

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with flags 0x"

    .line 247
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 248
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_8d
    .catchall {:try_start_50 .. :try_end_8d} :catchall_4b

    move-object v3, v0

    .line 254
    .local v3, "message":Ljava/lang/StringBuilder;
    :try_start_8e
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 255
    .local v0, "path":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v4

    .line 256
    .local v4, "dir":Ljava/nio/file/Path;
    if-eqz v4, :cond_106

    .line 258
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_a4
    .catchall {:try_start_8e .. :try_end_a4} :catchall_10c

    const-string v6, " doesn\'t exist"

    if-eqz v5, :cond_f8

    .line 260
    :try_start_a8
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_10c

    const-string v7, ": File "

    if-nez v5, :cond_cc

    .line 261
    :try_start_b2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_10b

    .line 264
    const-string v5, " and CREATE_IF_NECESSARY is set, check directory permissions"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10b

    .line 267
    :cond_cc
    invoke-static {v0}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 269
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 270
    const-string v5, ": Path "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10b

    .line 268
    :cond_ea
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not readable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10b

    .line 259
    :cond_f8
    const-string v5, ": Directory "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10b

    .line 257
    :cond_106
    const-string v5, ": Directory not specified in the file path"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10b
    .catchall {:try_start_b2 .. :try_end_10b} :catchall_10c

    .line 275
    .end local v0    # "path":Ljava/nio/file/Path;
    .end local v4    # "dir":Ljava/nio/file/Path;
    :cond_10b
    :goto_10b
    goto :goto_10d

    .line 272
    :catchall_10c
    move-exception v0

    .line 276
    :goto_10d
    :try_start_10d
    new-instance v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "file":Ljava/lang/String;
    .end local v8    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    throw v0
    :try_end_117
    .catchall {:try_start_10d .. :try_end_117} :catchall_4b

    .line 278
    .end local v2    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    .end local v3    # "message":Ljava/lang/StringBuilder;
    .restart local v1    # "file":Ljava/lang/String;
    .restart local v8    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    :goto_117
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 279
    throw v0
.end method

.method private greylist-max-o recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 3
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1474
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1475
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1476
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1477
    return-void
.end method

.method private blacklist releasePreparedStatementLI(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 6
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1144
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1145
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v0, :cond_18

    .line 1147
    :try_start_7
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeResetStatementAndClearBindings(JJ)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_17

    .line 1148
    :catch_f
    move-exception v0

    .line 1159
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_17
    goto :goto_1b

    .line 1162
    :cond_18
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1164
    :goto_1b
    return-void
.end method

.method private greylist-max-o setAutoCheckpointInterval()V
    .registers 8

    .line 332
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_32

    .line 333
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALAutoCheckpoint()I

    move-result v0

    int-to-long v0, v0

    .line 334
    .local v0, "newValue":J
    const-string v2, "PRAGMA wal_autocheckpoint"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 335
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_32

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA wal_autocheckpoint="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    .line 339
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_32
    return-void
.end method

.method private blacklist setCustomFunctionsFromConfiguration()V
    .registers 6

    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 527
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 528
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 529
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/UnaryOperator;

    .line 527
    invoke-static {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomScalarFunction(JLjava/lang/String;Ljava/util/function/UnaryOperator;)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 531
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_28
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 532
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 533
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 534
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/BinaryOperator;

    .line 532
    invoke-static {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomAggregateFunction(JLjava/lang/String;Ljava/util/function/BinaryOperator;)V

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 536
    .end local v0    # "i":I
    :cond_4e
    return-void
.end method

.method private greylist-max-o setForeignKeyModeFromConfiguration()V
    .registers 8

    .line 352
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_30

    .line 353
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x1

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x0

    .line 354
    .local v0, "newValue":J
    :goto_f
    const-string v2, "PRAGMA foreign_keys"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 355
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_30

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA foreign_keys="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 359
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_30
    return-void
.end method

.method private blacklist setJournalFromConfiguration()V
    .registers 3

    .line 362
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_11

    .line 363
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->maybeTruncateWalFile()V

    goto :goto_16

    .line 367
    :cond_11
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z

    .line 369
    :goto_16
    return-void
.end method

.method private greylist-max-o setJournalMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "newValue"    # Ljava/lang/String;

    .line 437
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 439
    return-void

    .line 441
    :cond_7
    const-string v0, "PRAGMA journal_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 444
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA journal_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_14 .. :try_end_2f} :catch_33

    if-eqz v2, :cond_32

    .line 446
    return-void

    .line 453
    .end local v1    # "result":Ljava/lang/String;
    :cond_32
    goto :goto_34

    .line 450
    :catch_33
    move-exception v1

    .line 466
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not change the database journal mode of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnection"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_6a
    return-void
.end method

.method private greylist-max-o setJournalSizeLimit()V
    .registers 8

    .line 342
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_32

    .line 343
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getJournalSizeLimit()I

    move-result v0

    int-to-long v0, v0

    .line 344
    .local v0, "newValue":J
    const-string v2, "PRAGMA journal_size_limit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 345
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_32

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA journal_size_limit="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    .line 349
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_32
    return-void
.end method

.method private greylist-max-o setLocaleFromConfiguration()V
    .registers 9

    .line 476
    const-string v0, "COMMIT"

    const-string v1, "ROLLBACK"

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_d

    .line 477
    return-void

    .line 481
    :cond_d
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "newLocale":Ljava/lang/String;
    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v3, v4, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterLocalizedCollators(JLjava/lang/String;)V

    .line 484
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v3

    if-nez v3, :cond_25

    .line 485
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->checkDatabaseWiped()V

    .line 490
    :cond_25
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-eqz v3, :cond_2a

    .line 491
    return-void

    .line 496
    :cond_2a
    :try_start_2a
    const-string v3, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 499
    const-string v3, "SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1"

    invoke-virtual {p0, v3, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "oldLocale":Ljava/lang/String;
    if-eqz v3, :cond_3f

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 502
    return-void

    .line 506
    :cond_3f
    const-string v5, "BEGIN"

    invoke-virtual {p0, v5, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_44} :catch_9b
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_44} :catch_6d

    .line 507
    const/4 v5, 0x0

    .line 509
    .local v5, "success":Z
    :try_start_45
    const-string v6, "DELETE FROM android_metadata"

    invoke-virtual {p0, v6, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 510
    const-string v6, "INSERT INTO android_metadata (locale) VALUES(?)"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 512
    const-string v6, "REINDEX LOCALIZED"

    invoke-virtual {p0, v6, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_63

    .line 513
    const/4 v5, 0x1

    .line 515
    if-eqz v5, :cond_5c

    goto :goto_5d

    :cond_5c
    move-object v0, v1

    :goto_5d
    :try_start_5d
    invoke-virtual {p0, v0, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 516
    nop

    .line 522
    .end local v3    # "oldLocale":Ljava/lang/String;
    .end local v5    # "success":Z
    nop

    .line 523
    return-void

    .line 515
    .restart local v3    # "oldLocale":Ljava/lang/String;
    .restart local v5    # "success":Z
    :catchall_63
    move-exception v6

    if-eqz v5, :cond_67

    goto :goto_68

    :cond_67
    move-object v0, v1

    :goto_68
    invoke-virtual {p0, v0, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 516
    nop

    .end local v2    # "newLocale":Ljava/lang/String;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    throw v6
    :try_end_6d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_6d} :catch_9b
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_6d} :catch_6d

    .line 519
    .end local v3    # "oldLocale":Ljava/lang/String;
    .end local v5    # "success":Z
    .restart local v2    # "newLocale":Ljava/lang/String;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    :catch_6d
    move-exception v0

    .line 520
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to change locale for db \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 517
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_9b
    move-exception v0

    .line 518
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    throw v0
.end method

.method private greylist-max-o setPageSize()V
    .registers 8

    .line 322
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_32

    .line 323
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultPageSize()I

    move-result v0

    int-to-long v0, v0

    .line 324
    .local v0, "newValue":J
    const-string v2, "PRAGMA page_size"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 325
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_32

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA page_size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 329
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_32
    return-void
.end method

.method private greylist-max-o setSyncMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "newValue"    # Ljava/lang/String;

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 417
    return-void

    .line 419
    :cond_7
    const-string v0, "PRAGMA synchronous"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-static {p1}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA synchronous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 424
    :cond_32
    return-void
.end method

.method private blacklist setSyncModeFromConfiguration()V
    .registers 2

    .line 372
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_d

    .line 373
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    .line 375
    :cond_d
    return-void
.end method

.method private static greylist-max-o trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "sql"    # Ljava/lang/String;

    .line 1484
    const-string v0, "[\\s]*\\n+[\\s]*"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist acquirePersistentStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .registers 5
    .param p1, "sql"    # Ljava/lang/String;

    .line 1183
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v1, "prepare"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 1185
    .local v0, "cookie":I
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1

    .line 1186
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_11} :catch_1a
    .catchall {:try_start_a .. :try_end_11} :catchall_18

    .line 1187
    nop

    .line 1192
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 1187
    return-object v1

    .line 1192
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_18
    move-exception v1

    goto :goto_22

    .line 1188
    :catch_1a
    move-exception v1

    .line 1189
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1b
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1190
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    throw v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    .line 1192
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    :goto_22
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 1193
    throw v1
.end method

.method greylist-max-o acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .line 1137
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatementLI(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o close()V
    .registers 2

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 233
    return-void
.end method

.method greylist-max-o collectDbStats(Ljava/util/ArrayList;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1383
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    const-string v10, "PRAGMA "

    iget-wide v2, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetDbLookaside(J)I

    move-result v2

    .line 1384
    .local v2, "lookaside":I
    const-wide/16 v3, 0x0

    .line 1385
    .local v3, "pageCount":J
    const-wide/16 v5, 0x0

    .line 1387
    .local v5, "pageSize":J
    const/4 v11, 0x0

    :try_start_11
    const-string v0, "PRAGMA page_count;"

    invoke-virtual {v1, v0, v11, v11}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v7

    move-wide v3, v7

    .line 1388
    const-string v0, "PRAGMA page_size;"

    invoke-virtual {v1, v0, v11, v11}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v7
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_1e} :catch_20

    move-wide v5, v7

    .line 1391
    goto :goto_21

    .line 1389
    :catch_20
    move-exception v0

    .line 1392
    :goto_21
    invoke-direct/range {v1 .. v6}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    move/from16 v16, v2

    move-wide v12, v3

    move-wide v14, v5

    .end local v2    # "lookaside":I
    .end local v3    # "pageCount":J
    .end local v5    # "pageSize":J
    .local v12, "pageCount":J
    .local v14, "pageSize":J
    .local v16, "lookaside":I
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    new-instance v4, Landroid/database/CursorWindow;

    const-string v0, "collectDbStats"

    invoke-direct {v4, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 1399
    .local v4, "window":Landroid/database/CursorWindow;
    :try_start_33
    const-string v2, "PRAGMA database_list;"
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_35} :catch_fa
    .catchall {:try_start_33 .. :try_end_35} :catchall_f2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    :try_start_3c
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_3f} :catch_f0
    .catchall {:try_start_3c .. :try_end_3f} :catchall_ee

    .line 1400
    const/4 v0, 0x1

    move v2, v0

    move-wide v5, v14

    .end local v14    # "pageSize":J
    .local v2, "i":I
    .restart local v5    # "pageSize":J
    :goto_42
    :try_start_42
    invoke-virtual {v4}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    if-ge v2, v0, :cond_e4

    .line 1401
    const/4 v0, 0x1

    invoke-virtual {v4, v2, v0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1402
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v4, v2, v0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_53} :catch_ea
    .catchall {:try_start_42 .. :try_end_53} :catchall_e8

    move-object v7, v0

    .line 1403
    .local v7, "path":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 1404
    const-wide/16 v5, 0x0

    .line 1406
    :try_start_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ".page_count;"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v11, v11}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v14
    :try_end_73
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_58 .. :try_end_73} :catch_9a
    .catchall {:try_start_58 .. :try_end_73} :catchall_e8

    .line 1407
    .end local v12    # "pageCount":J
    .local v14, "pageCount":J
    :try_start_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ".page_size;"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v11, v11}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v12
    :try_end_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_73 .. :try_end_8e} :catch_97
    .catchall {:try_start_73 .. :try_end_8e} :catchall_93

    .line 1410
    .end local v5    # "pageSize":J
    .local v12, "pageSize":J
    move-wide/from16 v21, v12

    move-wide/from16 v19, v14

    goto :goto_9f

    .line 1421
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v12    # "pageSize":J
    .restart local v5    # "pageSize":J
    :catchall_93
    move-exception v0

    move-wide v12, v14

    goto/16 :goto_f6

    .line 1408
    .restart local v2    # "i":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    :catch_97
    move-exception v0

    move-wide v12, v14

    goto :goto_9b

    .end local v14    # "pageCount":J
    .local v12, "pageCount":J
    :catch_9a
    move-exception v0

    :goto_9b
    move-wide/from16 v21, v5

    move-wide/from16 v19, v12

    .line 1411
    .end local v5    # "pageSize":J
    .end local v12    # "pageCount":J
    .local v19, "pageCount":J
    .local v21, "pageSize":J
    :goto_9f
    :try_start_9f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "  (attached) "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1412
    .local v0, "label":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b9

    .line 1413
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    :cond_b9
    new-instance v17, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v17 .. v27}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIIIZ)V

    move-object/from16 v5, v17

    .line 1415
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9f .. :try_end_d1} :catch_e0
    .catchall {:try_start_9f .. :try_end_d1} :catchall_da

    .line 1400
    nop

    .end local v0    # "label":Ljava/lang/StringBuilder;
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v12, v19

    move-wide/from16 v5, v21

    goto/16 :goto_42

    .line 1421
    .end local v2    # "i":I
    :catchall_da
    move-exception v0

    move-wide/from16 v12, v19

    move-wide/from16 v5, v21

    goto :goto_f6

    .line 1418
    :catch_e0
    move-exception v0

    move-wide/from16 v5, v21

    goto :goto_100

    .line 1421
    .end local v19    # "pageCount":J
    .end local v21    # "pageSize":J
    .restart local v5    # "pageSize":J
    .restart local v12    # "pageCount":J
    :cond_e4
    invoke-virtual {v4}, Landroid/database/CursorWindow;->close()V

    .line 1422
    goto :goto_105

    .line 1421
    :catchall_e8
    move-exception v0

    goto :goto_f6

    .line 1418
    :catch_ea
    move-exception v0

    move-wide/from16 v19, v12

    goto :goto_100

    .line 1421
    .end local v5    # "pageSize":J
    .local v14, "pageSize":J
    :catchall_ee
    move-exception v0

    goto :goto_f5

    .line 1418
    :catch_f0
    move-exception v0

    goto :goto_fd

    .line 1421
    :catchall_f2
    move-exception v0

    move-object/from16 v1, p0

    :goto_f5
    move-wide v5, v14

    .end local v14    # "pageSize":J
    .restart local v5    # "pageSize":J
    :goto_f6
    invoke-virtual {v4}, Landroid/database/CursorWindow;->close()V

    .line 1422
    throw v0

    .line 1418
    .end local v5    # "pageSize":J
    .restart local v14    # "pageSize":J
    :catch_fa
    move-exception v0

    move-object/from16 v1, p0

    :goto_fd
    move-wide/from16 v19, v12

    move-wide v5, v14

    .line 1421
    .end local v12    # "pageCount":J
    .end local v14    # "pageSize":J
    .restart local v5    # "pageSize":J
    .restart local v19    # "pageCount":J
    :goto_100
    invoke-virtual {v4}, Landroid/database/CursorWindow;->close()V

    .line 1422
    move-wide/from16 v12, v19

    .line 1423
    .end local v19    # "pageCount":J
    .restart local v12    # "pageCount":J
    :goto_105
    return-void
.end method

.method greylist-max-o collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1432
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    return-void
.end method

.method greylist-max-o describeCurrentOperationUnsafe()Ljava/lang/String;
    .registers 2

    .line 1373
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Z)V
    .registers 3
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1325
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1326
    return-void
.end method

.method greylist-max-o dumpUnsafe(Landroid/util/Printer;Z)V
    .registers 6
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1344
    if-eqz p2, :cond_3c

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  connectionPtr: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1347
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isPrimaryConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onlyAllowReadOnlyOperations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  totalLongOperations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getTotalLongOperations()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;)V

    .line 1353
    if-eqz p2, :cond_94

    .line 1354
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    .line 1356
    :cond_94
    return-void
.end method

.method public greylist-max-o execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .registers 11
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 739
    if-eqz p1, :cond_57

    .line 743
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "execute"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 745
    .local v0, "cookie":I
    nop

    .line 746
    :try_start_b
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 747
    .local v1, "isPragmaStmt":Z
    :goto_15
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_19} :catch_49
    .catchall {:try_start_b .. :try_end_19} :catchall_47

    .line 749
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_19
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 750
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 751
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 752
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_41

    .line 754
    :try_start_25
    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v5, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v3, v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeExecute(JJZ)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3b

    .line 756
    :try_start_2c
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_41

    .line 757
    nop

    .line 759
    :try_start_30
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_33} :catch_49
    .catchall {:try_start_30 .. :try_end_33} :catchall_47

    .line 760
    nop

    .line 765
    .end local v1    # "isPragmaStmt":Z
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 766
    nop

    .line 767
    return-void

    .line 756
    .restart local v1    # "isPragmaStmt":Z
    .restart local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_3b
    move-exception v3

    :try_start_3c
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 757
    nop

    .end local v0    # "cookie":I
    .end local v1    # "isPragmaStmt":Z
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_41

    .line 759
    .restart local v0    # "cookie":I
    .restart local v1    # "isPragmaStmt":Z
    .restart local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_41
    move-exception v3

    :try_start_42
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 760
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_47} :catch_49
    .catchall {:try_start_42 .. :try_end_47} :catchall_47

    .line 765
    .end local v1    # "isPragmaStmt":Z
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_47
    move-exception v1

    goto :goto_51

    .line 761
    :catch_49
    move-exception v1

    .line 762
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 763
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_47

    .line 765
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_51
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 766
    throw v1

    .line 740
    .end local v0    # "cookie":I
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 876
    if-eqz p1, :cond_52

    .line 880
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForBlobFileDescriptor"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 883
    .local v0, "cookie":I
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_44
    .catchall {:try_start_a .. :try_end_e} :catchall_42

    .line 885
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_e
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 886
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 887
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 888
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_3c

    .line 890
    :try_start_1a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForBlobFileDescriptor(JJ)I

    move-result v2

    .line 892
    .local v2, "fd":I
    if-ltz v2, :cond_29

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_36

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    .line 894
    :goto_2a
    :try_start_2a
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3c

    .line 897
    :try_start_2d
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_30} :catch_44
    .catchall {:try_start_2d .. :try_end_30} :catchall_42

    .line 903
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 892
    return-object v3

    .line 894
    .end local v2    # "fd":I
    :catchall_36
    move-exception v2

    :try_start_37
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 895
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3c

    .line 897
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_3c
    move-exception v2

    :try_start_3d
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 898
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_42} :catch_44
    .catchall {:try_start_3d .. :try_end_42} :catchall_42

    .line 903
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_42
    move-exception v1

    goto :goto_4c

    .line 899
    :catch_44
    move-exception v1

    .line 900
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_45
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 901
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_42

    .line 903
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_4c
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 904
    throw v1

    .line 877
    .end local v0    # "cookie":I
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I
    .registers 12
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 922
    const-string v0, "changedRows="

    if-eqz p1, :cond_81

    .line 926
    const/4 v1, 0x0

    .line 927
    .local v1, "changedRows":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "executeForChangedRowCount"

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 930
    .local v2, "cookie":I
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_11} :catch_5a
    .catchall {:try_start_d .. :try_end_11} :catchall_58

    .line 932
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_11
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 933
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 934
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 935
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_52

    .line 937
    :try_start_1d
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForChangedRowCount(JJ)I

    move-result v4
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_4c

    move v1, v4

    .line 939
    nop

    .line 941
    :try_start_27
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_52

    .line 944
    :try_start_2a
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2d} :catch_5a
    .catchall {:try_start_2a .. :try_end_2d} :catchall_58

    .line 950
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 951
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 939
    :cond_4b
    return v1

    .line 941
    :catchall_4c
    move-exception v4

    :try_start_4d
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 942
    nop

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 944
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_52
    move-exception v4

    :try_start_53
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 945
    nop

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_58} :catch_5a
    .catchall {:try_start_53 .. :try_end_58} :catchall_58

    .line 950
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_58
    move-exception v3

    goto :goto_62

    .line 946
    :catch_5a
    move-exception v3

    .line 947
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_5b
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 948
    nop

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_58

    .line 950
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_62
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 951
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 953
    :cond_80
    throw v3

    .line 923
    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    .registers 33
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1026
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v14, p7

    const-string v15, ", countedRows="

    const-string v5, ", filledRows="

    const-string v6, ", actualPos="

    const-string v7, "\', startPos="

    const-string/jumbo v8, "window=\'"

    if-eqz v2, :cond_1ca

    .line 1029
    if-eqz v4, :cond_1bf

    .line 1033
    invoke-virtual {v4}, Landroid/database/CursorWindow;->acquireReference()V

    .line 1035
    const/16 v16, -0x1

    .line 1036
    .local v16, "actualPos":I
    const/16 v17, -0x1

    .line 1037
    .local v17, "countedRows":I
    const/16 v18, -0x1

    .line 1038
    .local v18, "filledRows":I
    :try_start_22
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v9, "executeForCursorWindow"

    invoke-virtual {v0, v9, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_1b8

    move v9, v0

    .line 1041
    .local v9, "cookie":I
    :try_start_2b
    invoke-virtual/range {p0 .. p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2f} :catch_160
    .catchall {:try_start_2b .. :try_end_2f} :catchall_151

    move-object v10, v0

    .line 1043
    .local v10, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_30
    invoke-virtual {v1, v10}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1044
    invoke-direct {v1, v10, v3}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 1045
    invoke-direct {v1, v10}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1046
    invoke-direct {v1, v14}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_141

    .line 1048
    move-object v12, v5

    move-object v11, v6

    :try_start_3e
    iget-wide v5, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_130

    move-object/from16 v19, v7

    move-object v13, v8

    :try_start_43
    iget-wide v7, v10, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_124

    move/from16 v20, v9

    move-object/from16 v21, v10

    .end local v9    # "cookie":I
    .end local v10    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v20, "cookie":I
    .local v21, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_49
    iget-wide v9, v4, Landroid/database/CursorWindow;->mWindowPtr:J
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_116

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v22, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v19, v15

    move-object v15, v13

    move/from16 v13, p6

    .end local v20    # "cookie":I
    .end local v21    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v2, "cookie":I
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_5e
    invoke-static/range {v5 .. v13}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(JJJIIZ)J

    move-result-wide v5
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_10c

    .line 1051
    .local v5, "result":J
    const/16 v0, 0x20

    shr-long v7, v5, v0

    long-to-int v7, v7

    .line 1052
    .end local v16    # "actualPos":I
    .local v7, "actualPos":I
    long-to-int v8, v5

    .line 1053
    .end local v17    # "countedRows":I
    .local v8, "countedRows":I
    :try_start_68
    invoke-virtual {v4}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_fe

    move v9, v0

    .line 1054
    .end local v18    # "filledRows":I
    .local v9, "filledRows":I
    :try_start_6d
    invoke-virtual {v4, v7}, Landroid/database/CursorWindow;->setStartPosition(I)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_ee

    .line 1055
    nop

    .line 1057
    :try_start_71
    invoke-direct {v1, v14}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_dd

    .line 1060
    :try_start_74
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_77} :catch_cc
    .catchall {:try_start_74 .. :try_end_77} :catchall_c1

    .line 1066
    :try_start_77
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1067
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v12, v22

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v13, v23

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v12, v24

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v12, v19

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_77 .. :try_end_bd} :catchall_1b6

    .line 1075
    :cond_bd
    invoke-virtual {v4}, Landroid/database/CursorWindow;->releaseReference()V

    .line 1055
    return v8

    .line 1066
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local v5    # "result":J
    :catchall_c1
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    goto/16 :goto_176

    .line 1062
    :catch_cc
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    goto/16 :goto_168

    .line 1060
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_dd
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    goto/16 :goto_14a

    .line 1057
    :catchall_ee
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    goto :goto_13a

    .end local v9    # "filledRows":I
    .restart local v18    # "filledRows":I
    :catchall_fe
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    goto :goto_13a

    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    :catchall_10c
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    goto :goto_13a

    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v20    # "cookie":I
    .restart local v21    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_116
    move-exception v0

    move-object v5, v12

    move-object v6, v15

    move-object/from16 v12, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object v15, v13

    move-object v13, v11

    move/from16 v11, p4

    .end local v20    # "cookie":I
    .end local v21    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    goto :goto_13a

    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v9, "cookie":I
    .restart local v10    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_124
    move-exception v0

    move v2, v9

    move-object v3, v10

    move-object v5, v12

    move-object v6, v15

    move-object/from16 v12, v19

    move-object v15, v13

    move-object v13, v11

    move/from16 v11, p4

    goto :goto_13a

    :catchall_130
    move-exception v0

    move v2, v9

    move-object v3, v10

    move-object v13, v11

    move-object v5, v12

    move-object v6, v15

    move/from16 v11, p4

    move-object v12, v7

    move-object v15, v8

    .end local v9    # "cookie":I
    .end local v10    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :goto_13a
    :try_start_13a
    invoke-direct {v1, v14}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 1058
    nop

    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_13f
    .catchall {:try_start_13a .. :try_end_13f} :catchall_13f

    .line 1060
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_13f
    move-exception v0

    goto :goto_14a

    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v9    # "cookie":I
    .restart local v10    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_141
    move-exception v0

    move/from16 v11, p4

    move-object v13, v6

    move-object v12, v7

    move v2, v9

    move-object v3, v10

    move-object v6, v15

    move-object v15, v8

    .end local v9    # "cookie":I
    .end local v10    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :goto_14a
    :try_start_14a
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1061
    nop

    .end local v2    # "cookie":I
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_14f
    .catch Ljava/lang/RuntimeException; {:try_start_14a .. :try_end_14f} :catch_14f
    .catchall {:try_start_14a .. :try_end_14f} :catchall_16f

    .line 1062
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_14f
    move-exception v0

    goto :goto_168

    .line 1066
    .end local v2    # "cookie":I
    .restart local v9    # "cookie":I
    :catchall_151
    move-exception v0

    move/from16 v11, p4

    move-object v13, v6

    move-object v12, v7

    move v2, v9

    move-object v6, v15

    move-object v15, v8

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    .end local v9    # "cookie":I
    .restart local v2    # "cookie":I
    goto :goto_176

    .line 1062
    .end local v2    # "cookie":I
    .restart local v9    # "cookie":I
    :catch_160
    move-exception v0

    move/from16 v11, p4

    move-object v13, v6

    move-object v12, v7

    move v2, v9

    move-object v6, v15

    move-object v15, v8

    .line 1063
    .end local v9    # "cookie":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "cookie":I
    :goto_168
    :try_start_168
    iget-object v3, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1064
    nop

    .end local v2    # "cookie":I
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_16f
    .catchall {:try_start_168 .. :try_end_16f} :catchall_16f

    .line 1066
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_16f
    move-exception v0

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .restart local v7    # "actualPos":I
    .restart local v8    # "countedRows":I
    .local v9, "filledRows":I
    :goto_176
    :try_start_176
    iget-object v3, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v3

    if-eqz v3, :cond_1b4

    .line 1067
    iget-object v3, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1073
    :cond_1b4
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_1b6
    .catchall {:try_start_176 .. :try_end_1b6} :catchall_1b6

    .line 1075
    .end local v2    # "cookie":I
    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .end local v9    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1b6
    move-exception v0

    goto :goto_1bb

    :catchall_1b8
    move-exception v0

    move/from16 v11, p4

    :goto_1bb
    invoke-virtual {v4}, Landroid/database/CursorWindow;->releaseReference()V

    .line 1076
    throw v0

    .line 1030
    :cond_1bf
    move/from16 v11, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "window must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_1ca
    move/from16 v11, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sql must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 971
    if-eqz p1, :cond_4a

    .line 975
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForLastInsertedRowId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 978
    .local v0, "cookie":I
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_3c
    .catchall {:try_start_a .. :try_end_e} :catchall_3a

    .line 980
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_e
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 981
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 982
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 983
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_34

    .line 985
    :try_start_1a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLastInsertedRowId(JJ)J

    move-result-wide v2
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2e

    .line 988
    :try_start_22
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_34

    .line 991
    :try_start_25
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_3c
    .catchall {:try_start_25 .. :try_end_28} :catchall_3a

    .line 997
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 985
    return-wide v2

    .line 988
    :catchall_2e
    move-exception v2

    :try_start_2f
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 989
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 991
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_34
    move-exception v2

    :try_start_35
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 992
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_3a} :catch_3c
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3a

    .line 997
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_3a
    move-exception v1

    goto :goto_44

    .line 993
    :catch_3c
    move-exception v1

    .line 994
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_3d
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 995
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    .line 997
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_44
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 998
    throw v1

    .line 972
    .end local v0    # "cookie":I
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 784
    if-eqz p1, :cond_50

    .line 788
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForLong"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 790
    .local v0, "cookie":I
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_42
    .catchall {:try_start_a .. :try_end_e} :catchall_40

    .line 792
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_e
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 793
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 794
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 795
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_3a

    .line 797
    :try_start_1a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLong(JJ)J

    move-result-wide v2

    .line 798
    .local v2, "ret":J
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->setResult(J)V
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_34

    .line 799
    nop

    .line 801
    :try_start_28
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3a

    .line 804
    :try_start_2b
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_42
    .catchall {:try_start_2b .. :try_end_2e} :catchall_40

    .line 810
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 799
    return-wide v2

    .line 801
    .end local v2    # "ret":J
    :catchall_34
    move-exception v2

    :try_start_35
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 802
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3a

    .line 804
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_3a
    move-exception v2

    :try_start_3b
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 805
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_40} :catch_42
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    .line 810
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_40
    move-exception v1

    goto :goto_4a

    .line 806
    :catch_42
    move-exception v1

    .line 807
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_43
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 808
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_40

    .line 810
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_4a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 811
    throw v1

    .line 785
    .end local v0    # "cookie":I
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 829
    if-eqz p1, :cond_50

    .line 833
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForString"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 835
    .local v0, "cookie":I
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_42
    .catchall {:try_start_a .. :try_end_e} :catchall_40

    .line 837
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_e
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 838
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 839
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 840
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_3a

    .line 842
    :try_start_1a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForString(JJ)Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->setResult(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_34

    .line 844
    nop

    .line 846
    :try_start_28
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3a

    .line 849
    :try_start_2b
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_42
    .catchall {:try_start_2b .. :try_end_2e} :catchall_40

    .line 855
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 844
    return-object v2

    .line 846
    .end local v2    # "ret":Ljava/lang/String;
    :catchall_34
    move-exception v2

    :try_start_35
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 847
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3a

    .line 849
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_3a
    move-exception v2

    :try_start_3b
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 850
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_40} :catch_42
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    .line 855
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_40
    move-exception v1

    goto :goto_4a

    .line 851
    :catch_42
    move-exception v1

    .line 852
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_43
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 853
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_40

    .line 855
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_4a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 856
    throw v1

    .line 830
    .end local v0    # "cookie":I
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 203
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_11

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 204
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->onConnectionLeaked()V

    .line 207
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1a

    .line 209
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 210
    nop

    .line 211
    return-void

    .line 209
    :catchall_1a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 210
    throw v0
.end method

.method public greylist-max-o getConnectionId()I
    .registers 2

    .line 655
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    return v0
.end method

.method blacklist getLastChangedRowCount()J
    .registers 3

    .line 2088
    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeChanges(J)J

    move-result-wide v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    .line 2090
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 2088
    return-wide v0

    .line 2090
    :catchall_a
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 2091
    throw v0
.end method

.method blacklist getLastInsertRowId()J
    .registers 3

    .line 2075
    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeLastInsertRowId(J)I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    int-to-long v0, v0

    .line 2077
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 2075
    return-wide v0

    .line 2077
    :catchall_b
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 2078
    throw v0
.end method

.method blacklist getTotalChangedRowCount()J
    .registers 3

    .line 2100
    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeTotalChanges(J)J

    move-result-wide v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    .line 2102
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 2100
    return-wide v0

    .line 2102
    :catchall_a
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 2103
    throw v0
.end method

.method greylist-max-o isPreparedStatementInCache(Ljava/lang/String;)Z
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .line 647
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o isPrimaryConnection()Z
    .registers 2

    .line 663
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    return v0
.end method

.method public whitelist onCancel()V
    .registers 3

    .line 1233
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeCancel(J)V

    .line 1234
    return-void
.end method

.method public greylist-max-o prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .registers 12
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    .line 691
    if-eqz p1, :cond_60

    .line 695
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v1, "prepare"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 697
    .local v0, "cookie":I
    :try_start_c
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_10} :catch_52
    .catchall {:try_start_c .. :try_end_10} :catchall_50

    .line 699
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz p2, :cond_45

    .line 700
    :try_start_12
    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    iput v2, p2, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    .line 701
    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    iput-boolean v2, p2, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    .line 703
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnCount(JJ)I

    move-result v2

    .line 705
    .local v2, "columnCount":I
    if-nez v2, :cond_29

    .line 706
    sget-object v3, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v3, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    goto :goto_45

    .line 708
    :cond_29
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 709
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v2, :cond_45

    .line 710
    iget-object v4, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iget-wide v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v7, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v5, v6, v7, v8, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnName(JJI)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_3f

    .line 709
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 716
    .end local v2    # "columnCount":I
    .end local v3    # "i":I
    :catchall_3f
    move-exception v2

    :try_start_40
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 717
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    throw v2

    .line 716
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    :cond_45
    :goto_45
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_48} :catch_52
    .catchall {:try_start_40 .. :try_end_48} :catchall_50

    .line 717
    nop

    .line 722
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 723
    nop

    .line 724
    return-void

    .line 722
    :catchall_50
    move-exception v1

    goto :goto_5a

    .line 718
    :catch_52
    move-exception v1

    .line 719
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_53
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 720
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    throw v1
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_50

    .line 722
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    :goto_5a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 723
    throw v1

    .line 692
    .end local v0    # "cookie":I
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 13
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 591
    iget-boolean v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    const/4 v3, 0x1

    if-eq v1, v2, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v0

    .line 593
    .local v1, "foreignKeyModeChanged":Z
    :goto_f
    iget-object v2, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 594
    .local v2, "localeChanged":Z
    iget-object v4, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 595
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 596
    .local v4, "customScalarFunctionsChanged":Z
    iget-object v5, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 597
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 598
    .local v5, "customAggregateFunctionsChanged":Z
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 599
    .local v6, "oldSize":I
    iget-object v7, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 600
    .local v7, "newSize":I
    if-le v7, v6, :cond_41

    move v0, v3

    .line 601
    .local v0, "perConnectionSqlChanged":Z
    :cond_41
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 602
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v9

    .line 601
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    xor-int/2addr v8, v3

    .line 603
    .local v8, "journalModeChanged":Z
    nop

    .line 604
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v3, v9

    .line 607
    .local v3, "syncModeChanged":Z
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v9, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 610
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v10, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->resize(I)V

    .line 612
    if-eqz v1, :cond_71

    .line 613
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 616
    :cond_71
    if-eqz v8, :cond_76

    .line 617
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalFromConfiguration()V

    .line 620
    :cond_76
    if-eqz v3, :cond_7b

    .line 621
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 624
    :cond_7b
    if-eqz v2, :cond_80

    .line 625
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 627
    :cond_80
    if-nez v4, :cond_84

    if-eqz v5, :cond_87

    .line 628
    :cond_84
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCustomFunctionsFromConfiguration()V

    .line 630
    :cond_87
    if-eqz v0, :cond_8c

    .line 631
    invoke-direct {p0, v6}, Landroid/database/sqlite/SQLiteConnection;->executePerConnectionSqlFromConfiguration(I)V

    .line 633
    :cond_8c
    return-void
.end method

.method blacklist recordBeginTransaction(Ljava/lang/String;)V
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginTransaction(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method blacklist recordEndTransaction(Z)V
    .registers 3
    .param p1, "successful"    # Z

    .line 318
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endTransaction(Z)Z

    .line 319
    return-void
.end method

.method greylist-max-o releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 2
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1170
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatementLI(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1171
    return-void
.end method

.method blacklist setDatabaseSeqNum(J)V
    .registers 4
    .param p1, "n"    # J

    .line 1490
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->setDatabaseSeqNum(J)V

    .line 1491
    return-void
.end method

.method greylist-max-o setOnlyAllowReadOnlyOperations(Z)V
    .registers 2
    .param p1, "readOnly"    # Z

    .line 639
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 640
    return-void
.end method

.method greylist-max-o throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 6
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1289
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-nez v0, :cond_1f

    .line 1290
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1291
    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeUpdatesTempOnly(JJ)Z

    move-result v0

    iput-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    .line 1292
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_17

    return-void

    .line 1294
    :cond_17
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Cannot execute this statement because it might modify the database but the connection is read-only."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1297
    :cond_1f
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

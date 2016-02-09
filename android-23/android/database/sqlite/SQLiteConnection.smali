.class public final Landroid/database/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnection$PreparedStatement;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;,
        Landroid/database/sqlite/SQLiteConnection$OperationLog;,
        Landroid/database/sqlite/SQLiteConnection$Operation;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SQLiteConnection"


# instance fields
.field private mCancellationSignalAttachCount:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final mConnectionId:I

.field private mConnectionPtr:J

.field private final mIsPrimaryConnection:Z

.field private final mIsReadOnlyConnection:Z

.field private mOnlyAllowReadOnlyOperations:Z

.field private final mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private final mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

.field private mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field private final mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method static synthetic -get0()[B
    .locals 1

    #@0
    sget-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sql"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 0
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Landroid/database/sqlite/SQLiteConnection;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteConnection;->-assertionsDisabled:Z

    #@c
    .line 91
    new-array v0, v1, [Ljava/lang/String;

    #@e
    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@10
    .line 92
    new-array v0, v1, [B

    #@12
    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    #@14
    .line 87
    return-void

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V
    .locals 3
    .param p1, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p2, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p3, "connectionId"    # I
    .param p4, "primaryConnection"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 94
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@a
    .line 105
    new-instance v1, Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>(Landroid/database/sqlite/SQLiteConnection$OperationLog;)V

    #@10
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@12
    .line 161
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    #@14
    .line 162
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@16
    invoke-direct {v1, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    #@19
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@1b
    .line 163
    iput p3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    #@1d
    .line 164
    iput-boolean p4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    #@1f
    .line 165
    iget v1, p2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@21
    and-int/lit8 v1, v1, 0x1

    #@23
    if-eqz v1, :cond_0

    #@25
    const/4 v0, 0x1

    #@26
    :cond_0
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    #@28
    .line 166
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@2a
    .line 167
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2c
    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    #@2e
    .line 166
    invoke-direct {v0, p0, v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;-><init>(Landroid/database/sqlite/SQLiteConnection;I)V

    #@31
    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@33
    .line 168
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@35
    const-string/jumbo v1, "close"

    #@38
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@3b
    .line 160
    return-void
.end method

.method private acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .locals 11
    .param p1, "sql"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 875
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@3
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v9

    #@7
    check-cast v9, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@9
    .line 876
    .local v9, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v8, 0x0

    #@a
    .line 877
    .local v8, "skipCache":Z
    if-eqz v9, :cond_1

    #@c
    .line 878
    iget-boolean v0, v9, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    #@e
    if-nez v0, :cond_0

    #@10
    .line 879
    return-object v9

    #@11
    .line 884
    :cond_0
    const/4 v8, 0x1

    #@12
    .line 887
    :cond_1
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@14
    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteConnection;->nativePrepareStatement(JLjava/lang/String;)J

    #@17
    move-result-wide v2

    #@18
    .line 889
    .local v2, "statementPtr":J
    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@1a
    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetParameterCount(JJ)I

    #@1d
    move-result v4

    #@1e
    .line 890
    .local v4, "numParameters":I
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    #@21
    move-result v5

    #@22
    .line 891
    .local v5, "type":I
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@24
    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeIsReadOnly(JJ)Z

    #@27
    move-result v6

    #@28
    .local v6, "readOnly":Z
    move-object v0, p0

    #@29
    move-object v1, p1

    #@2a
    .line 892
    invoke-direct/range {v0 .. v6}, Landroid/database/sqlite/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;JIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@2d
    move-result-object v9

    #@2e
    .line 893
    if-nez v8, :cond_2

    #@30
    invoke-static {v5}, Landroid/database/sqlite/SQLiteConnection;->isCacheable(I)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_2

    #@36
    .line 894
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@38
    invoke-virtual {v0, p1, v9}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 895
    const/4 v0, 0x1

    #@3c
    iput-boolean v0, v9, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 905
    :cond_2
    iput-boolean v10, v9, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    #@40
    .line 906
    return-object v9

    #@41
    .line 897
    .end local v4    # "numParameters":I
    .end local v5    # "type":I
    .end local v6    # "readOnly":Z
    :catch_0
    move-exception v7

    #@42
    .line 900
    .local v7, "ex":Ljava/lang/RuntimeException;
    if-eqz v9, :cond_3

    #@44
    iget-boolean v0, v9, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    #@46
    if-eqz v0, :cond_3

    #@48
    .line 903
    :goto_0
    throw v7

    #@49
    .line 901
    :cond_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@4b
    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    #@4e
    goto :goto_0
.end method

.method private applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@0
    .prologue
    .line 1037
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1038
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1039
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@13
    .line 1036
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1041
    :cond_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@1b
    goto :goto_0
.end method

.method private attachCancellationSignal(Landroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 938
    if-eqz p1, :cond_0

    #@3
    .line 939
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@6
    .line 941
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    #@c
    .line 942
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    #@e
    if-ne v0, v2, :cond_0

    #@10
    .line 944
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@12
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    #@15
    .line 947
    invoke-virtual {p1, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@18
    .line 937
    :cond_0
    return-void
.end method

.method private bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 978
    if-eqz p2, :cond_0

    #@3
    array-length v8, p2

    #@4
    .line 979
    .local v8, "count":I
    :goto_0
    iget v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    #@6
    if-eq v8, v0, :cond_1

    #@8
    .line 980
    new-instance v0, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;

    #@a
    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Expected "

    #@12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget v4, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    #@18
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v4, " bind arguments but "

    #@1f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 982
    const-string/jumbo v4, " were provided."

    #@2a
    .line 981
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 980
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 978
    .end local v8    # "count":I
    :cond_0
    const/4 v8, 0x0

    #@37
    .restart local v8    # "count":I
    goto :goto_0

    #@38
    .line 984
    :cond_1
    if-nez v8, :cond_2

    #@3a
    .line 985
    return-void

    #@3b
    .line 988
    :cond_2
    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@3d
    .line 989
    .local v2, "statementPtr":J
    const/4 v9, 0x0

    #@3e
    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_5

    #@40
    .line 990
    aget-object v7, p2, v9

    #@42
    .line 991
    .local v7, "arg":Ljava/lang/Object;
    invoke-static {v7}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    #@45
    move-result v0

    #@46
    packed-switch v0, :pswitch_data_0

    #@49
    .line 1008
    :pswitch_0
    instance-of v0, v7, Ljava/lang/Boolean;

    #@4b
    if-eqz v0, :cond_4

    #@4d
    .line 1011
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@4f
    add-int/lit8 v4, v9, 0x1

    #@51
    .line 1012
    check-cast v7, Ljava/lang/Boolean;

    #@53
    .end local v7    # "arg":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    #@56
    move-result v5

    #@57
    if-eqz v5, :cond_3

    #@59
    const/4 v5, 0x1

    #@5a
    :goto_2
    int-to-long v5, v5

    #@5b
    .line 1011
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    #@5e
    .line 989
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@60
    goto :goto_1

    #@61
    .line 993
    .restart local v7    # "arg":Ljava/lang/Object;
    :pswitch_1
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@63
    add-int/lit8 v4, v9, 0x1

    #@65
    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeBindNull(JJI)V

    #@68
    goto :goto_3

    #@69
    .line 996
    :pswitch_2
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@6b
    add-int/lit8 v4, v9, 0x1

    #@6d
    .line 997
    check-cast v7, Ljava/lang/Number;

    #@6f
    .end local v7    # "arg":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    #@72
    move-result-wide v5

    #@73
    .line 996
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    #@76
    goto :goto_3

    #@77
    .line 1000
    .restart local v7    # "arg":Ljava/lang/Object;
    :pswitch_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@79
    add-int/lit8 v4, v9, 0x1

    #@7b
    .line 1001
    check-cast v7, Ljava/lang/Number;

    #@7d
    .end local v7    # "arg":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    #@80
    move-result-wide v5

    #@81
    .line 1000
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SQLiteConnection;->nativeBindDouble(JJID)V

    #@84
    goto :goto_3

    #@85
    .line 1004
    .restart local v7    # "arg":Ljava/lang/Object;
    :pswitch_4
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@87
    add-int/lit8 v4, v9, 0x1

    #@89
    move-object v5, v7

    #@8a
    check-cast v5, [B

    #@8c
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->nativeBindBlob(JJI[B)V

    #@8f
    goto :goto_3

    #@90
    .end local v7    # "arg":Ljava/lang/Object;
    :cond_3
    move v5, v10

    #@91
    .line 1012
    goto :goto_2

    #@92
    .line 1014
    .restart local v7    # "arg":Ljava/lang/Object;
    :cond_4
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@94
    add-int/lit8 v4, v9, 0x1

    #@96
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->nativeBindString(JJILjava/lang/String;)V

    #@9d
    goto :goto_3

    #@9e
    .line 977
    .end local v7    # "arg":Ljava/lang/Object;
    :cond_5
    return-void

    #@9f
    .line 991
    nop

    #@a0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 307
    const-string/jumbo v0, "0"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 308
    const-string/jumbo v0, "OFF"

    #@c
    return-object v0

    #@d
    .line 309
    :cond_0
    const-string/jumbo v0, "1"

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 310
    const-string/jumbo v0, "NORMAL"

    #@19
    return-object v0

    #@1a
    .line 311
    :cond_1
    const-string/jumbo v0, "2"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 312
    const-string/jumbo v0, "FULL"

    #@26
    return-object v0

    #@27
    .line 314
    :cond_2
    return-object p0
.end method

.method private detachCancellationSignal(Landroid/os/CancellationSignal;)V
    .locals 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 953
    if-eqz p1, :cond_2

    #@4
    .line 954
    sget-boolean v0, Landroid/database/sqlite/SQLiteConnection;->-assertionsDisabled:Z

    #@6
    if-nez v0, :cond_1

    #@8
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    #@a
    if-lez v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    if-nez v0, :cond_1

    #@f
    new-instance v0, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v0

    #@15
    :cond_0
    move v0, v1

    #@16
    goto :goto_0

    #@17
    .line 956
    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    #@1d
    .line 957
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 959
    invoke-virtual {p1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@24
    .line 962
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@26
    invoke-static {v2, v3, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    #@29
    .line 952
    :cond_2
    return-void
.end method

.method private dispose(Z)V
    .locals 8
    .param p1, "finalized"    # Z

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 227
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 228
    if-eqz p1, :cond_0

    #@9
    .line 229
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@b
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@e
    .line 231
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@10
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@13
    .line 234
    :cond_1
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@15
    cmp-long v1, v2, v6

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 235
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@1b
    const-string/jumbo v2, "close"

    #@1e
    invoke-virtual {v1, v2, v4, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    .line 237
    .local v0, "cookie":I
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@24
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->evictAll()V

    #@27
    .line 238
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@29
    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeClose(J)V

    #@2c
    .line 239
    const-wide/16 v2, 0x0

    #@2e
    iput-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 241
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@32
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@35
    .line 226
    .end local v0    # "cookie":I
    :cond_2
    return-void

    #@36
    .line 240
    .restart local v0    # "cookie":I
    :catchall_0
    move-exception v1

    #@37
    .line 241
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@39
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@3c
    .line 240
    throw v1
.end method

.method private finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 4
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@0
    .prologue
    .line 933
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@2
    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    #@7
    .line 934
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@a
    .line 932
    return-void
.end method

.method private getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;
    .locals 10
    .param p1, "lookaside"    # I
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J

    #@0
    .prologue
    .line 1164
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2
    iget-object v1, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    #@4
    .line 1165
    .local v1, "label":Ljava/lang/String;
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v2, " ("

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v2, ")"

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 1168
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteDebug$DbStats;

    #@2b
    .line 1169
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@2d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->hitCount()I

    #@30
    move-result v7

    #@31
    .line 1170
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@33
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->missCount()I

    #@36
    move-result v8

    #@37
    .line 1171
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@39
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->size()I

    #@3c
    move-result v9

    #@3d
    move-wide v2, p2

    #@3e
    move-wide v4, p4

    #@3f
    move v6, p1

    #@40
    .line 1168
    invoke-direct/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    #@43
    return-object v0
.end method

.method private static isCacheable(I)Z
    .locals 2
    .param p0, "statementType"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1029
    const/4 v0, 0x2

    #@2
    if-eq p0, v0, :cond_0

    #@4
    .line 1030
    if-ne p0, v1, :cond_1

    #@6
    .line 1031
    :cond_0
    return v1

    #@7
    .line 1033
    :cond_1
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method private static native nativeBindBlob(JJI[B)V
.end method

.method private static native nativeBindDouble(JJID)V
.end method

.method private static native nativeBindLong(JJIJ)V
.end method

.method private static native nativeBindNull(JJI)V
.end method

.method private static native nativeBindString(JJILjava/lang/String;)V
.end method

.method private static native nativeCancel(J)V
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeExecute(JJ)V
.end method

.method private static native nativeExecuteForBlobFileDescriptor(JJ)I
.end method

.method private static native nativeExecuteForChangedRowCount(JJ)I
.end method

.method private static native nativeExecuteForCursorWindow(JJJIIZ)J
.end method

.method private static native nativeExecuteForLastInsertedRowId(JJ)J
.end method

.method private static native nativeExecuteForLong(JJ)J
.end method

.method private static native nativeExecuteForString(JJ)Ljava/lang/String;
.end method

.method private static native nativeFinalizeStatement(JJ)V
.end method

.method private static native nativeGetColumnCount(JJ)I
.end method

.method private static native nativeGetColumnName(JJI)Ljava/lang/String;
.end method

.method private static native nativeGetDbLookaside(J)I
.end method

.method private static native nativeGetParameterCount(JJ)I
.end method

.method private static native nativeIsReadOnly(JJ)Z
.end method

.method private static native nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)J
.end method

.method private static native nativePrepareStatement(JLjava/lang/String;)J
.end method

.method private static native nativeRegisterCustomFunction(JLandroid/database/sqlite/SQLiteCustomFunction;)V
.end method

.method private static native nativeRegisterLocalizedCollators(JLjava/lang/String;)V
.end method

.method private static native nativeResetCancel(JZ)V
.end method

.method private static native nativeResetStatementAndClearBindings(JJ)V
.end method

.method private obtainPreparedStatement(Ljava/lang/String;JIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "statementPtr"    # J
    .param p4, "numParameters"    # I
    .param p5, "type"    # I
    .param p6, "readOnly"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1181
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@3
    .line 1182
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz v0, :cond_0

    #@5
    .line 1183
    iget-object v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@7
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@9
    .line 1184
    iput-object v2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@b
    .line 1185
    const/4 v1, 0x0

    #@c
    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    #@e
    .line 1189
    :goto_0
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    #@10
    .line 1190
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@12
    .line 1191
    iput p4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    #@14
    .line 1192
    iput p5, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    #@16
    .line 1193
    iput-boolean p6, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    #@18
    .line 1194
    return-object v0

    #@19
    .line 1187
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@1b
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;-><init>(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@1e
    .restart local v0    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    goto :goto_0
.end method

.method static open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;
    .locals 3
    .param p0, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "connectionId"    # I
    .param p3, "primaryConnection"    # Z

    #@0
    .prologue
    .line 188
    new-instance v0, Landroid/database/sqlite/SQLiteConnection;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnection;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V

    #@5
    .line 191
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_0
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnection;->open()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 192
    return-object v0

    #@9
    .line 193
    :catch_0
    move-exception v1

    #@a
    .line 194
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    #@b
    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    #@e
    .line 195
    throw v1
.end method

.method private open()V
    .locals 8

    #@0
    .prologue
    .line 207
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2
    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    #@4
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@6
    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@8
    .line 208
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@a
    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    #@c
    .line 209
    sget-boolean v6, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    #@e
    sget-boolean v7, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    #@10
    .line 207
    invoke-static {v3, v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)J

    #@13
    move-result-wide v4

    #@14
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@16
    .line 211
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setPageSize()V

    #@19
    .line 212
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    #@1c
    .line 213
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    #@1f
    .line 214
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    #@22
    .line 215
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    #@25
    .line 216
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    #@28
    .line 219
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2a
    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v1

    #@30
    .line 220
    .local v1, "functionCount":I
    const/4 v2, 0x0

    #@31
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@33
    .line 221
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@35
    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/database/sqlite/SQLiteCustomFunction;

    #@3d
    .line 222
    .local v0, "function":Landroid/database/sqlite/SQLiteCustomFunction;
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@3f
    invoke-static {v4, v5, v0}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(JLandroid/database/sqlite/SQLiteCustomFunction;)V

    #@42
    .line 220
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_0

    #@45
    .line 206
    .end local v0    # "function":Landroid/database/sqlite/SQLiteCustomFunction;
    :cond_0
    return-void
.end method

.method private recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@0
    .prologue
    .line 1198
    const/4 v0, 0x0

    #@1
    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    #@3
    .line 1199
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@5
    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@7
    .line 1200
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@9
    .line 1197
    return-void
.end method

.method private releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 6
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@0
    .prologue
    .line 910
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    #@3
    .line 911
    iget-boolean v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 913
    :try_start_0
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@9
    iget-wide v4, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@b
    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeResetStatementAndClearBindings(JJ)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 909
    :goto_0
    return-void

    #@f
    .line 914
    :catch_0
    move-exception v0

    #@10
    .line 925
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@12
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    goto :goto_0

    #@18
    .line 928
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@1b
    goto :goto_0
.end method

.method private setAutoCheckpointInterval()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 257
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 256
    :cond_0
    :goto_0
    return-void

    #@e
    .line 258
    :cond_1
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALAutoCheckpoint()I

    #@11
    move-result v4

    #@12
    int-to-long v0, v4

    #@13
    .line 259
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA wal_autocheckpoint"

    #@16
    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    #@19
    move-result-wide v2

    #@1a
    .line 260
    .local v2, "value":J
    cmp-long v4, v2, v0

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "PRAGMA wal_autocheckpoint="

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    #@35
    goto :goto_0
.end method

.method private setForeignKeyModeFromConfiguration()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 277
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 278
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@7
    iget-boolean v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    #@9
    if-eqz v4, :cond_1

    #@b
    const/4 v4, 0x1

    #@c
    :goto_0
    int-to-long v0, v4

    #@d
    .line 279
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA foreign_keys"

    #@10
    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    #@13
    move-result-wide v2

    #@14
    .line 280
    .local v2, "value":J
    cmp-long v4, v2, v0

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "PRAGMA foreign_keys="

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    #@2f
    .line 276
    .end local v0    # "newValue":J
    .end local v2    # "value":J
    :cond_0
    return-void

    #@30
    .line 278
    :cond_1
    const/4 v4, 0x0

    #@31
    goto :goto_0
.end method

.method private setJournalMode(Ljava/lang/String;)V
    .locals 6
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 318
    const-string/jumbo v3, "PRAGMA journal_mode"

    #@4
    invoke-virtual {p0, v3, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 319
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_1

    #@e
    .line 321
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "PRAGMA journal_mode="

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    const/4 v4, 0x0

    #@23
    const/4 v5, 0x0

    #@24
    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 322
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_0

    #@2e
    .line 323
    return-void

    #@2f
    .line 327
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@30
    .line 343
    :cond_0
    const-string/jumbo v3, "SQLiteConnection"

    #@33
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "Could not change the database journal mode of \'"

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 344
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@41
    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    #@43
    .line 343
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 344
    const-string/jumbo v5, "\' from \'"

    #@4a
    .line 343
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 344
    const-string/jumbo v5, "\' to \'"

    #@55
    .line 343
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 345
    const-string/jumbo v5, "\' because the database is locked.  This usually means that "

    #@60
    .line 343
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    .line 346
    const-string/jumbo v5, "there are other open connections to the database which prevents "

    #@67
    .line 343
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 347
    const-string/jumbo v5, "the database from enabling or disabling write-ahead logging mode.  "

    #@6e
    .line 343
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    .line 348
    const-string/jumbo v5, "Proceeding without changing the journal mode."

    #@75
    .line 343
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 317
    :cond_1
    return-void
.end method

.method private setJournalSizeLimit()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 267
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 266
    :cond_0
    :goto_0
    return-void

    #@e
    .line 268
    :cond_1
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getJournalSizeLimit()I

    #@11
    move-result v4

    #@12
    int-to-long v0, v4

    #@13
    .line 269
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA journal_size_limit"

    #@16
    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    #@19
    move-result-wide v2

    #@1a
    .line 270
    .local v2, "value":J
    cmp-long v4, v2, v0

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "PRAGMA journal_size_limit="

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    #@35
    goto :goto_0
.end method

.method private setLocaleFromConfiguration()V
    .locals 8

    #@0
    .prologue
    .line 353
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2
    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@4
    and-int/lit8 v4, v4, 0x10

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 354
    return-void

    #@9
    .line 358
    :cond_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@b
    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    #@d
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 359
    .local v1, "newLocale":Ljava/lang/String;
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@13
    invoke-static {v4, v5, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterLocalizedCollators(JLjava/lang/String;)V

    #@16
    .line 363
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 364
    return-void

    #@1b
    .line 369
    :cond_1
    :try_start_0
    const-string/jumbo v4, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    #@1e
    const/4 v5, 0x0

    #@1f
    const/4 v6, 0x0

    #@20
    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    #@23
    .line 372
    const-string/jumbo v4, "SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1"

    #@26
    .line 373
    const/4 v5, 0x0

    #@27
    const/4 v6, 0x0

    #@28
    .line 372
    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 374
    .local v2, "oldLocale":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@2e
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_2

    #@34
    .line 375
    return-void

    #@35
    .line 379
    :cond_2
    const-string/jumbo v4, "BEGIN"

    #@38
    const/4 v5, 0x0

    #@39
    const/4 v6, 0x0

    #@3a
    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 380
    const/4 v3, 0x0

    #@3e
    .line 382
    .local v3, "success":Z
    :try_start_1
    const-string/jumbo v4, "DELETE FROM android_metadata"

    #@41
    const/4 v5, 0x0

    #@42
    const/4 v6, 0x0

    #@43
    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    #@46
    .line 383
    const-string/jumbo v4, "INSERT INTO android_metadata (locale) VALUES(?)"

    #@49
    .line 384
    const/4 v5, 0x1

    #@4a
    new-array v5, v5, [Ljava/lang/Object;

    #@4c
    const/4 v6, 0x0

    #@4d
    aput-object v1, v5, v6

    #@4f
    const/4 v6, 0x0

    #@50
    .line 383
    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    #@53
    .line 385
    const-string/jumbo v4, "REINDEX LOCALIZED"

    #@56
    const/4 v5, 0x0

    #@57
    const/4 v6, 0x0

    #@58
    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    .line 386
    const/4 v3, 0x1

    #@5c
    .line 388
    if-eqz v3, :cond_3

    #@5e
    :try_start_2
    const-string/jumbo v4, "COMMIT"

    #@61
    :goto_0
    const/4 v5, 0x0

    #@62
    const/4 v6, 0x0

    #@63
    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    #@66
    .line 352
    return-void

    #@67
    .line 388
    :cond_3
    const-string/jumbo v4, "ROLLBACK"

    #@6a
    goto :goto_0

    #@6b
    .line 387
    :catchall_0
    move-exception v4

    #@6c
    .line 388
    if-eqz v3, :cond_4

    #@6e
    const-string/jumbo v5, "COMMIT"

    #@71
    :goto_1
    const/4 v6, 0x0

    #@72
    const/4 v7, 0x0

    #@73
    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    #@76
    .line 387
    throw v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@77
    .line 390
    .end local v2    # "oldLocale":Ljava/lang/String;
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    #@78
    .line 391
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Landroid/database/sqlite/SQLiteException;

    #@7a
    new-instance v5, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v6, "Failed to change locale for db \'"

    #@82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@88
    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    .line 392
    const-string/jumbo v6, "\' to \'"

    #@91
    .line 391
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    .line 392
    const-string/jumbo v6, "\'."

    #@9c
    .line 391
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v5

    #@a4
    invoke-direct {v4, v5, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a7
    throw v4

    #@a8
    .line 388
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "oldLocale":Ljava/lang/String;
    .restart local v3    # "success":Z
    :cond_4
    :try_start_3
    const-string/jumbo v5, "ROLLBACK"
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    #@ab
    goto :goto_1
.end method

.method private setPageSize()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 247
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 246
    :cond_0
    :goto_0
    return-void

    #@e
    .line 248
    :cond_1
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultPageSize()I

    #@11
    move-result v4

    #@12
    int-to-long v0, v4

    #@13
    .line 249
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA page_size"

    #@16
    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    #@19
    move-result-wide v2

    #@1a
    .line 250
    .local v2, "value":J
    cmp-long v4, v2, v0

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "PRAGMA page_size="

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    #@35
    goto :goto_0
.end method

.method private setSyncMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 299
    const-string/jumbo v1, "PRAGMA synchronous"

    #@4
    invoke-virtual {p0, v1, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 300
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 301
    invoke-static {p1}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "PRAGMA synchronous="

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {p0, v1, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    #@2d
    .line 298
    :cond_0
    return-void
.end method

.method private setWalModeFromConfiguration()V
    .locals 2

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 286
    :cond_0
    :goto_0
    return-void

    #@d
    .line 288
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@f
    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@11
    const/high16 v1, 0x20000000

    #@13
    and-int/2addr v0, v1

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 289
    const-string/jumbo v0, "WAL"

    #@19
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    #@1c
    .line 290
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALSyncMode()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 292
    :cond_2
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultJournalMode()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    #@2b
    .line 293
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultSyncMode()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    #@32
    goto :goto_0
.end method

.method private throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 2
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    #@0
    .prologue
    .line 1022
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1021
    :cond_0
    return-void

    #@9
    .line 1023
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    #@b
    const-string/jumbo v1, "Cannot execute this statement because it might modify the database but the connection is read-only."

    #@e
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method private static trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1208
    const-string/jumbo v0, "[\\s]*\\n+[\\s]*"

    #@3
    const-string/jumbo v1, " "

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method


# virtual methods
.method close()V
    .locals 1

    #@0
    .prologue
    .line 203
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    #@4
    .line 202
    return-void
.end method

.method collectDbStats(Ljava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1110
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    move-object/from16 v0, p0

    #@2
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@4
    invoke-static {v8, v9}, Landroid/database/sqlite/SQLiteConnection;->nativeGetDbLookaside(J)I

    #@7
    move-result v3

    #@8
    .line 1111
    .local v3, "lookaside":I
    const-wide/16 v4, 0x0

    #@a
    .line 1112
    .local v4, "pageCount":J
    const-wide/16 v6, 0x0

    #@c
    .line 1114
    .local v6, "pageSize":J
    :try_start_0
    const-string/jumbo v2, "PRAGMA page_count;"

    #@f
    const/4 v8, 0x0

    #@10
    const/4 v9, 0x0

    #@11
    move-object/from16 v0, p0

    #@13
    invoke-virtual {v0, v2, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    #@16
    move-result-wide v4

    #@17
    .line 1115
    const-string/jumbo v2, "PRAGMA page_size;"

    #@1a
    const/4 v8, 0x0

    #@1b
    const/4 v9, 0x0

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v2, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    #@21
    move-result-wide v6

    #@22
    :goto_0
    move-object/from16 v2, p0

    #@24
    .line 1119
    invoke-direct/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    #@27
    move-result-object v2

    #@28
    move-object/from16 v0, p1

    #@2a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 1124
    new-instance v11, Landroid/database/CursorWindow;

    #@2f
    const-string/jumbo v2, "collectDbStats"

    #@32
    invoke-direct {v11, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    #@35
    .line 1126
    .local v11, "window":Landroid/database/CursorWindow;
    :try_start_1
    const-string/jumbo v9, "PRAGMA database_list;"

    #@38
    const/4 v10, 0x0

    #@39
    const/4 v12, 0x0

    #@3a
    const/4 v13, 0x0

    #@3b
    const/4 v14, 0x0

    #@3c
    const/4 v15, 0x0

    #@3d
    move-object/from16 v8, p0

    #@3f
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I

    #@42
    .line 1127
    const/16 v23, 0x1

    #@44
    .local v23, "i":I
    :goto_1
    invoke-virtual {v11}, Landroid/database/CursorWindow;->getNumRows()I

    #@47
    move-result v2

    #@48
    move/from16 v0, v23

    #@4a
    if-ge v0, v2, :cond_1

    #@4c
    .line 1128
    const/4 v2, 0x1

    #@4d
    move/from16 v0, v23

    #@4f
    invoke-virtual {v11, v0, v2}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    #@52
    move-result-object v24

    #@53
    .line 1129
    .local v24, "name":Ljava/lang/String;
    const/4 v2, 0x2

    #@54
    move/from16 v0, v23

    #@56
    invoke-virtual {v11, v0, v2}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    move-result-object v25

    #@5a
    .line 1130
    .local v25, "path":Ljava/lang/String;
    const-wide/16 v4, 0x0

    #@5c
    .line 1131
    const-wide/16 v6, 0x0

    #@5e
    .line 1133
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v8, "PRAGMA "

    #@66
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    move-object/from16 v0, v24

    #@6c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    const-string/jumbo v8, ".page_count;"

    #@73
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    const/4 v8, 0x0

    #@7c
    const/4 v9, 0x0

    #@7d
    move-object/from16 v0, p0

    #@7f
    invoke-virtual {v0, v2, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    #@82
    move-result-wide v4

    #@83
    .line 1134
    new-instance v2, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v8, "PRAGMA "

    #@8b
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    move-object/from16 v0, v24

    #@91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    const-string/jumbo v8, ".page_size;"

    #@98
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    const/4 v8, 0x0

    #@a1
    const/4 v9, 0x0

    #@a2
    move-object/from16 v0, p0

    #@a4
    invoke-virtual {v0, v2, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a7
    move-result-wide v6

    #@a8
    .line 1138
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v8, "  (attached) "

    #@b0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    move-object/from16 v0, v24

    #@b6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v13

    #@be
    .line 1139
    .local v13, "label":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    #@c1
    move-result v2

    #@c2
    if-nez v2, :cond_0

    #@c4
    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v2

    #@cd
    const-string/jumbo v8, ": "

    #@d0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v2

    #@d4
    move-object/from16 v0, v25

    #@d6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v2

    #@da
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v13

    #@de
    .line 1142
    :cond_0
    new-instance v12, Landroid/database/sqlite/SQLiteDebug$DbStats;

    #@e0
    const/16 v18, 0x0

    #@e2
    const/16 v19, 0x0

    #@e4
    const/16 v20, 0x0

    #@e6
    const/16 v21, 0x0

    #@e8
    move-wide v14, v4

    #@e9
    move-wide/from16 v16, v6

    #@eb
    invoke-direct/range {v12 .. v21}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    #@ee
    move-object/from16 v0, p1

    #@f0
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@f3
    .line 1127
    add-int/lit8 v23, v23, 0x1

    #@f5
    goto/16 :goto_1

    #@f7
    .line 1147
    .end local v13    # "label":Ljava/lang/String;
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v11}, Landroid/database/CursorWindow;->close()V

    #@fa
    .line 1108
    .end local v23    # "i":I
    :goto_3
    return-void

    #@fb
    .line 1144
    :catch_0
    move-exception v22

    #@fc
    .line 1147
    .local v22, "ex":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v11}, Landroid/database/CursorWindow;->close()V

    #@ff
    goto :goto_3

    #@100
    .line 1146
    .end local v22    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    #@101
    .line 1147
    invoke-virtual {v11}, Landroid/database/CursorWindow;->close()V

    #@104
    .line 1146
    throw v2

    #@105
    .line 1135
    .restart local v23    # "i":I
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v25    # "path":Ljava/lang/String;
    :catch_1
    move-exception v22

    #@106
    .restart local v22    # "ex":Landroid/database/sqlite/SQLiteException;
    goto :goto_2

    #@107
    .line 1116
    .end local v11    # "window":Landroid/database/CursorWindow;
    .end local v22    # "ex":Landroid/database/sqlite/SQLiteException;
    .end local v23    # "i":I
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "path":Ljava/lang/String;
    :catch_2
    move-exception v22

    #@108
    .restart local v22    # "ex":Landroid/database/sqlite/SQLiteException;
    goto/16 :goto_0
.end method

.method collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 1158
    const/4 v1, 0x0

    #@3
    move-object v0, p0

    #@4
    move-wide v4, v2

    #@5
    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c
    .line 1157
    return-void
.end method

.method describeCurrentOperationUnsafe()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1100
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    #@0
    .prologue
    .line 1053
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    #@3
    .line 1052
    return-void
.end method

.method dumpUnsafe(Landroid/util/Printer;Z)V
    .locals 4
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    #@0
    .prologue
    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Connection #"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ":"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@20
    .line 1072
    if-eqz p2, :cond_0

    #@22
    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, "  connectionPtr: 0x"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@30
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3f
    .line 1075
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v1, "  isPrimaryConnection: "

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@58
    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v1, "  onlyAllowReadOnlyOperations: "

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@71
    .line 1078
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@73
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;Z)V

    #@76
    .line 1080
    if-eqz p2, :cond_1

    #@78
    .line 1081
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@7a
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    #@7d
    .line 1070
    :cond_1
    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 540
    if-nez p1, :cond_0

    #@2
    .line 541
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "sql must not be null."

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 544
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@d
    const-string/jumbo v4, "execute"

    #@10
    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    #@13
    move-result v0

    #@14
    .line 546
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@17
    move-result-object v2

    #@18
    .line 548
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@1b
    .line 549
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    #@1e
    .line 550
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@21
    .line 551
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@24
    .line 553
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@26
    iget-wide v6, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@28
    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecute(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    .line 555
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2e
    .line 558
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@31
    .line 564
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@33
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@36
    .line 539
    return-void

    #@37
    .line 554
    :catchall_0
    move-exception v3

    #@38
    .line 555
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    #@3b
    .line 554
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3c
    .line 557
    :catchall_1
    move-exception v3

    #@3d
    .line 558
    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@40
    .line 557
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@41
    .line 560
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    #@42
    .line 561
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@44
    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    #@47
    .line 562
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@48
    .line 563
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    #@49
    .line 564
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@4b
    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@4e
    .line 563
    throw v3
.end method

.method public executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 671
    if-nez p1, :cond_0

    #@3
    .line 672
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v5, "sql must not be null."

    #@8
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 675
    :cond_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@e
    const-string/jumbo v6, "executeForBlobFileDescriptor"

    #@11
    invoke-virtual {v5, v6, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    #@14
    move-result v0

    #@15
    .line 678
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@18
    move-result-object v3

    #@19
    .line 680
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@1c
    .line 681
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    #@1f
    .line 682
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@22
    .line 683
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 686
    :try_start_2
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@27
    iget-wide v8, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@29
    .line 685
    invoke-static {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForBlobFileDescriptor(JJ)I

    #@2c
    move-result v2

    #@2d
    .line 687
    .local v2, "fd":I
    if-ltz v2, :cond_1

    #@2f
    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    move-result-object v4

    #@33
    .line 689
    :cond_1
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@36
    .line 692
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@39
    .line 698
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@3b
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@3e
    .line 687
    return-object v4

    #@3f
    .line 688
    .end local v2    # "fd":I
    :catchall_0
    move-exception v4

    #@40
    .line 689
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    #@43
    .line 688
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@44
    .line 691
    :catchall_1
    move-exception v4

    #@45
    .line 692
    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@48
    .line 691
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@49
    .line 694
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    #@4a
    .line 695
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@4c
    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    #@4f
    .line 696
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@50
    .line 697
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v4

    #@51
    .line 698
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@53
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@56
    .line 697
    throw v4
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 717
    if-nez p1, :cond_0

    #@2
    .line 718
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "sql must not be null."

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 721
    :cond_0
    const/4 v0, 0x0

    #@c
    .line 722
    .local v0, "changedRows":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@e
    const-string/jumbo v5, "executeForChangedRowCount"

    #@11
    invoke-virtual {v4, v5, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    #@14
    move-result v1

    #@15
    .line 725
    .local v1, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@18
    move-result-object v3

    #@19
    .line 727
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@1c
    .line 728
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    #@1f
    .line 729
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@22
    .line 730
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 733
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@27
    iget-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@29
    .line 732
    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForChangedRowCount(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    move-result v0

    #@2d
    .line 736
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@30
    .line 739
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@33
    .line 745
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@35
    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_1

    #@3b
    .line 746
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "changedRows="

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    #@54
    .line 734
    :cond_1
    return v0

    #@55
    .line 735
    :catchall_0
    move-exception v4

    #@56
    .line 736
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    #@59
    .line 735
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@5a
    .line 738
    :catchall_1
    move-exception v4

    #@5b
    .line 739
    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@5e
    .line 738
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@5f
    .line 741
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v2

    #@60
    .line 742
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@62
    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    #@65
    .line 743
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@66
    .line 744
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v4

    #@67
    .line 745
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@69
    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    #@6c
    move-result v5

    #@6d
    if-eqz v5, :cond_2

    #@6f
    .line 746
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@71
    new-instance v6, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v7, "changedRows="

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v5, v1, v6}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    #@88
    .line 744
    :cond_2
    throw v4
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    .locals 21
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 821
    if-nez p1, :cond_0

    #@2
    .line 822
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "sql must not be null."

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 824
    :cond_0
    if-nez p3, :cond_1

    #@d
    .line 825
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v5, "window must not be null."

    #@12
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 828
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->acquireReference()V

    #@19
    .line 830
    const/4 v13, -0x1

    #@1a
    .line 831
    .local v13, "actualPos":I
    const/4 v15, -0x1

    #@1b
    .line 832
    .local v15, "countedRows":I
    const/16 v17, -0x1

    #@1d
    .line 833
    .local v17, "filledRows":I
    :try_start_0
    move-object/from16 v0, p0

    #@1f
    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@21
    const-string/jumbo v5, "executeForCursorWindow"

    #@24
    move-object/from16 v0, p1

    #@26
    move-object/from16 v1, p2

    #@28
    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    #@2b
    move-result v14

    #@2c
    .line 836
    .local v14, "cookie":I
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@2f
    move-result-object v20

    #@30
    .line 838
    .local v20, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_2
    move-object/from16 v0, p0

    #@32
    move-object/from16 v1, v20

    #@34
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@37
    .line 839
    move-object/from16 v0, p0

    #@39
    move-object/from16 v1, v20

    #@3b
    move-object/from16 v2, p2

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    #@40
    .line 840
    move-object/from16 v0, p0

    #@42
    move-object/from16 v1, v20

    #@44
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@47
    .line 841
    move-object/from16 v0, p0

    #@49
    move-object/from16 v1, p7

    #@4b
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4e
    .line 844
    :try_start_3
    move-object/from16 v0, p0

    #@50
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@52
    move-object/from16 v0, v20

    #@54
    iget-wide v6, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@56
    move-object/from16 v0, p3

    #@58
    iget-wide v8, v0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5a
    move/from16 v10, p4

    #@5c
    move/from16 v11, p5

    #@5e
    move/from16 v12, p6

    #@60
    .line 843
    invoke-static/range {v4 .. v12}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(JJJIIZ)J

    #@63
    move-result-wide v18

    #@64
    .line 846
    .local v18, "result":J
    const/16 v4, 0x20

    #@66
    shr-long v4, v18, v4

    #@68
    long-to-int v13, v4

    #@69
    .line 847
    move-wide/from16 v0, v18

    #@6b
    long-to-int v15, v0

    #@6c
    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->getNumRows()I

    #@6f
    move-result v17

    #@70
    .line 849
    move-object/from16 v0, p3

    #@72
    invoke-virtual {v0, v13}, Landroid/database/CursorWindow;->setStartPosition(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@75
    .line 852
    :try_start_4
    move-object/from16 v0, p0

    #@77
    move-object/from16 v1, p7

    #@79
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@7c
    .line 855
    :try_start_5
    move-object/from16 v0, p0

    #@7e
    move-object/from16 v1, v20

    #@80
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@83
    .line 861
    :try_start_6
    move-object/from16 v0, p0

    #@85
    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@87
    invoke-virtual {v4, v14}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    #@8a
    move-result v4

    #@8b
    if-eqz v4, :cond_2

    #@8d
    .line 862
    move-object/from16 v0, p0

    #@8f
    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@91
    new-instance v5, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v6, "window=\'"

    #@99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v5

    #@9d
    move-object/from16 v0, p3

    #@9f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v5

    #@a3
    .line 863
    const-string/jumbo v6, "\', startPos="

    #@a6
    .line 862
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v5

    #@aa
    move/from16 v0, p4

    #@ac
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    .line 864
    const-string/jumbo v6, ", actualPos="

    #@b3
    .line 862
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v5

    #@b7
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v5

    #@bb
    .line 865
    const-string/jumbo v6, ", filledRows="

    #@be
    .line 862
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v5

    #@c2
    move/from16 v0, v17

    #@c4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v5

    #@c8
    .line 866
    const-string/jumbo v6, ", countedRows="

    #@cb
    .line 862
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v5

    #@d3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v5

    #@d7
    invoke-virtual {v4, v14, v5}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@da
    .line 870
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    #@dd
    .line 850
    return v15

    #@de
    .line 851
    .end local v18    # "result":J
    :catchall_0
    move-exception v4

    #@df
    .line 852
    :try_start_7
    move-object/from16 v0, p0

    #@e1
    move-object/from16 v1, p7

    #@e3
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    #@e6
    .line 851
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@e7
    .line 854
    :catchall_1
    move-exception v4

    #@e8
    .line 855
    :try_start_8
    move-object/from16 v0, p0

    #@ea
    move-object/from16 v1, v20

    #@ec
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@ef
    .line 854
    throw v4
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@f0
    .line 857
    .end local v20    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v16

    #@f1
    .line 858
    .local v16, "ex":Ljava/lang/RuntimeException;
    :try_start_9
    move-object/from16 v0, p0

    #@f3
    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@f5
    move-object/from16 v0, v16

    #@f7
    invoke-virtual {v4, v14, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    #@fa
    .line 859
    throw v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@fb
    .line 860
    .end local v16    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v4

    #@fc
    .line 861
    :try_start_a
    move-object/from16 v0, p0

    #@fe
    iget-object v5, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@100
    invoke-virtual {v5, v14}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    #@103
    move-result v5

    #@104
    if-eqz v5, :cond_3

    #@106
    .line 862
    move-object/from16 v0, p0

    #@108
    iget-object v5, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@10a
    new-instance v6, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v7, "window=\'"

    #@112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v6

    #@116
    move-object/from16 v0, p3

    #@118
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v6

    #@11c
    .line 863
    const-string/jumbo v7, "\', startPos="

    #@11f
    .line 862
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v6

    #@123
    move/from16 v0, p4

    #@125
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@128
    move-result-object v6

    #@129
    .line 864
    const-string/jumbo v7, ", actualPos="

    #@12c
    .line 862
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v6

    #@130
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@133
    move-result-object v6

    #@134
    .line 865
    const-string/jumbo v7, ", filledRows="

    #@137
    .line 862
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v6

    #@13b
    move/from16 v0, v17

    #@13d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@140
    move-result-object v6

    #@141
    .line 866
    const-string/jumbo v7, ", countedRows="

    #@144
    .line 862
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v6

    #@148
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v6

    #@14c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v6

    #@150
    invoke-virtual {v5, v14, v6}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    #@153
    .line 860
    :cond_3
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@154
    .line 869
    .end local v14    # "cookie":I
    :catchall_3
    move-exception v4

    #@155
    .line 870
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    #@158
    .line 869
    throw v4
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 766
    if-nez p1, :cond_0

    #@2
    .line 767
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "sql must not be null."

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 770
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@d
    const-string/jumbo v4, "executeForLastInsertedRowId"

    #@10
    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    #@13
    move-result v0

    #@14
    .line 773
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@17
    move-result-object v2

    #@18
    .line 775
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@1b
    .line 776
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    #@1e
    .line 777
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@21
    .line 778
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@24
    .line 781
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@26
    iget-wide v6, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@28
    .line 780
    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLastInsertedRowId(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    move-result-wide v4

    #@2c
    .line 783
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2f
    .line 786
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@32
    .line 792
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@34
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@37
    .line 780
    return-wide v4

    #@38
    .line 782
    :catchall_0
    move-exception v3

    #@39
    .line 783
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    #@3c
    .line 782
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3d
    .line 785
    :catchall_1
    move-exception v3

    #@3e
    .line 786
    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@41
    .line 785
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@42
    .line 788
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    #@43
    .line 789
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@45
    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    #@48
    .line 790
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@49
    .line 791
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    #@4a
    .line 792
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@4c
    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@4f
    .line 791
    throw v3
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 583
    if-nez p1, :cond_0

    #@2
    .line 584
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "sql must not be null."

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 587
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@d
    const-string/jumbo v4, "executeForLong"

    #@10
    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    #@13
    move-result v0

    #@14
    .line 589
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@17
    move-result-object v2

    #@18
    .line 591
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@1b
    .line 592
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    #@1e
    .line 593
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@21
    .line 594
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@24
    .line 596
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@26
    iget-wide v6, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@28
    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLong(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    move-result-wide v4

    #@2c
    .line 598
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2f
    .line 601
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@32
    .line 607
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@34
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@37
    .line 596
    return-wide v4

    #@38
    .line 597
    :catchall_0
    move-exception v3

    #@39
    .line 598
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    #@3c
    .line 597
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3d
    .line 600
    :catchall_1
    move-exception v3

    #@3e
    .line 601
    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@41
    .line 600
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@42
    .line 603
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    #@43
    .line 604
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@45
    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    #@48
    .line 605
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@49
    .line 606
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    #@4a
    .line 607
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@4c
    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@4f
    .line 606
    throw v3
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 626
    if-nez p1, :cond_0

    #@2
    .line 627
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "sql must not be null."

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 630
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@d
    const-string/jumbo v4, "executeForString"

    #@10
    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    #@13
    move-result v0

    #@14
    .line 632
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@17
    move-result-object v2

    #@18
    .line 634
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@1b
    .line 635
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    #@1e
    .line 636
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@21
    .line 637
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@24
    .line 639
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@26
    iget-wide v6, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@28
    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForString(JJ)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    move-result-object v3

    #@2c
    .line 641
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2f
    .line 644
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@32
    .line 650
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@34
    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@37
    .line 639
    return-object v3

    #@38
    .line 640
    :catchall_0
    move-exception v3

    #@39
    .line 641
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    #@3c
    .line 640
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3d
    .line 643
    :catchall_1
    move-exception v3

    #@3e
    .line 644
    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@41
    .line 643
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@42
    .line 646
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    #@43
    .line 647
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@45
    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    #@48
    .line 648
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@49
    .line 649
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    #@4a
    .line 650
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@4c
    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@4f
    .line 649
    throw v3
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 175
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    #@e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->onConnectionLeaked()V

    #@11
    .line 178
    :cond_0
    const/4 v0, 0x1

    #@12
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 180
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@18
    .line 172
    return-void

    #@19
    .line 179
    :catchall_0
    move-exception v0

    #@1a
    .line 180
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@1d
    .line 179
    throw v0
.end method

.method public getConnectionId()I
    .locals 1

    #@0
    .prologue
    .line 456
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    #@2
    return v0
.end method

.method isPreparedStatementInCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@2
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isPrimaryConnection()Z
    .locals 1

    #@0
    .prologue
    .line 464
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    #@2
    return v0
.end method

.method public onCancel()V
    .locals 2

    #@0
    .prologue
    .line 974
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@2
    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeCancel(J)V

    #@5
    .line 973
    return-void
.end method

.method public prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .locals 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 492
    if-nez p1, :cond_0

    #@3
    .line 493
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v6, "sql must not be null."

    #@8
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v5

    #@c
    .line 496
    :cond_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@e
    const-string/jumbo v6, "prepare"

    #@11
    invoke-virtual {v5, v6, p1, v7}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    #@14
    move-result v1

    #@15
    .line 498
    .local v1, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@18
    move-result-object v4

    #@19
    .line 500
    .local v4, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz p2, :cond_1

    #@1b
    .line 501
    :try_start_1
    iget v5, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    #@1d
    iput v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    #@1f
    .line 502
    iget-boolean v5, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    #@21
    iput-boolean v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    #@23
    .line 505
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@25
    iget-wide v8, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@27
    .line 504
    invoke-static {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnCount(JJ)I

    #@2a
    move-result v0

    #@2b
    .line 506
    .local v0, "columnCount":I
    if-nez v0, :cond_2

    #@2d
    .line 507
    sget-object v5, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@2f
    iput-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 517
    .end local v0    # "columnCount":I
    :cond_1
    :try_start_2
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@34
    .line 523
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@36
    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@39
    .line 491
    return-void

    #@3a
    .line 509
    .restart local v0    # "columnCount":I
    :cond_2
    :try_start_3
    new-array v5, v0, [Ljava/lang/String;

    #@3c
    iput-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    #@3e
    .line 510
    const/4 v3, 0x0

    #@3f
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@41
    .line 511
    iget-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    #@43
    .line 512
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@45
    iget-wide v8, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    #@47
    .line 511
    invoke-static {v6, v7, v8, v9, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnName(JJI)Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    aput-object v6, v5, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    .line 510
    add-int/lit8 v3, v3, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 516
    .end local v0    # "columnCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    #@51
    .line 517
    :try_start_4
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    #@54
    .line 516
    throw v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@55
    .line 519
    .end local v4    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v2

    #@56
    .line 520
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@58
    invoke-virtual {v5, v1, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    #@5b
    .line 521
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@5c
    .line 522
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v5

    #@5d
    .line 523
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    #@5f
    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    #@62
    .line 522
    throw v5
.end method

.method reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 8
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 398
    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    #@3
    .line 401
    iget-object v6, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    .line 402
    .local v2, "functionCount":I
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@c
    .line 403
    iget-object v6, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/database/sqlite/SQLiteCustomFunction;

    #@14
    .line 404
    .local v1, "function":Landroid/database/sqlite/SQLiteCustomFunction;
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@16
    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v6

    #@1c
    if-nez v6, :cond_0

    #@1e
    .line 405
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    #@20
    invoke-static {v6, v7, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(JLandroid/database/sqlite/SQLiteCustomFunction;)V

    #@23
    .line 402
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 410
    .end local v1    # "function":Landroid/database/sqlite/SQLiteCustomFunction;
    :cond_1
    iget-boolean v6, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    #@28
    .line 411
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@2a
    iget-boolean v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    #@2c
    .line 410
    if-eq v6, v7, :cond_5

    #@2e
    const/4 v0, 0x1

    #@2f
    .line 412
    .local v0, "foreignKeyModeChanged":Z
    :goto_1
    iget v6, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@31
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@33
    iget v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    #@35
    xor-int/2addr v6, v7

    #@36
    .line 413
    const/high16 v7, 0x20000000

    #@38
    .line 412
    and-int/2addr v6, v7

    #@39
    if-eqz v6, :cond_6

    #@3b
    const/4 v5, 0x1

    #@3c
    .line 414
    .local v5, "walModeChanged":Z
    :goto_2
    iget-object v6, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    #@3e
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@40
    iget-object v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    #@42
    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_7

    #@48
    const/4 v4, 0x0

    #@49
    .line 417
    .local v4, "localeChanged":Z
    :goto_3
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@4b
    invoke-virtual {v6, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    #@4e
    .line 420
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    #@50
    iget v7, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    #@52
    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->resize(I)V

    #@55
    .line 423
    if-eqz v0, :cond_2

    #@57
    .line 424
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    #@5a
    .line 428
    :cond_2
    if-eqz v5, :cond_3

    #@5c
    .line 429
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    #@5f
    .line 433
    :cond_3
    if-eqz v4, :cond_4

    #@61
    .line 434
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    #@64
    .line 397
    :cond_4
    return-void

    #@65
    .line 410
    .end local v0    # "foreignKeyModeChanged":Z
    .end local v4    # "localeChanged":Z
    .end local v5    # "walModeChanged":Z
    :cond_5
    const/4 v0, 0x0

    #@66
    .restart local v0    # "foreignKeyModeChanged":Z
    goto :goto_1

    #@67
    .line 412
    :cond_6
    const/4 v5, 0x0

    #@68
    .restart local v5    # "walModeChanged":Z
    goto :goto_2

    #@69
    .line 414
    :cond_7
    const/4 v4, 0x1

    #@6a
    .restart local v4    # "localeChanged":Z
    goto :goto_3
.end method

.method setOnlyAllowReadOnlyOperations(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    #@0
    .prologue
    .line 442
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    #@2
    .line 441
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SQLiteConnection: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    #@e
    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " ("

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, ")"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.class public Landroid/graphics/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/GraphicsStatsService$ActiveBuffer;,
        Landroid/graphics/GraphicsStatsService$BufferInfo;,
        Landroid/graphics/GraphicsStatsService$HistoricalBuffer;
    }
.end annotation


# static fields
.field private static final blacklist AID_STATSD:I = 0x42a

.field private static final blacklist DELETE_OLD:I = 0x2

.field public static final blacklist GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final blacklist SAVE_BUFFER:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private blacklist mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private final blacklist mAshmemSize:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFileAccessLock:Ljava/lang/Object;

.field private blacklist mGraphicsStatsDir:Ljava/io/File;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRotateIsScheduled:Z

.field private blacklist mWriteOutHandler:Landroid/os/Handler;

.field private final blacklist mZeroData:[B


# direct methods
.method public static synthetic blacklist $r8$lambda$WvL1__hjHUUBxHKYqhwbTcKuuCk(Landroid/graphics/GraphicsStatsService;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->onAlarm()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I
    .registers 1

    iget p0, p0, Landroid/graphics/GraphicsStatsService;->mAshmemSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZeroData(Landroid/graphics/GraphicsStatsService;)[B
    .registers 1

    iget-object p0, p0, Landroid/graphics/GraphicsStatsService;->mZeroData:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeleteOldBuffers(Landroid/graphics/GraphicsStatsService;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->deleteOldBuffers()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessDied(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/GraphicsStatsService;->processDied(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveBuffer(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/GraphicsStatsService;->saveBuffer(Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    .line 90
    invoke-static {}, Landroid/graphics/GraphicsStatsService;->nGetAshmemSize()I

    move-result v0

    iput v0, p0, Landroid/graphics/GraphicsStatsService;->mAshmemSize:I

    .line 91
    iget v0, p0, Landroid/graphics/GraphicsStatsService;->mAshmemSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mZeroData:[B

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 104
    iput-object p1, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    .line 105
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 106
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 107
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v0, "systemDataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "graphicsstats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 109
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 110
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 114
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GraphicsStats-disk"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v1, "bgthread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Landroid/graphics/GraphicsStatsService$1;

    invoke-direct {v4, p0}, Landroid/graphics/GraphicsStatsService$1;-><init>(Landroid/graphics/GraphicsStatsService;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    .line 132
    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->nativeInit()V

    .line 133
    return-void

    .line 111
    .end local v1    # "bgthread":Landroid/os/HandlerThread;
    :cond_80
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Graphics stats directory does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist addToSaveQueue(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .registers 5
    .param p1, "buffer"    # Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    .line 361
    :try_start_0
    new-instance v0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v0, p0, p1}, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    .line 362
    .local v0, "data":Landroid/graphics/GraphicsStatsService$HistoricalBuffer;
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    .line 365
    .end local v0    # "data":Landroid/graphics/GraphicsStatsService$HistoricalBuffer;
    goto :goto_2d

    .line 363
    :catch_10
    move-exception v0

    .line 364
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy graphicsstats from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v2, v2, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GraphicsStatsService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2d
    invoke-virtual {p1}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    .line 367
    return-void
.end method

.method private blacklist deleteOldBuffers()V
    .registers 12

    .line 334
    const-string v0, "deleting old graphicsstats buffers"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 335
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_b
    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 337
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_55

    array-length v4, v3

    const/4 v5, 0x3

    if-gt v4, v5, :cond_18

    goto :goto_55

    .line 340
    :cond_18
    array-length v4, v3

    new-array v4, v4, [J

    .line 341
    .local v4, "sortedDates":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1c
    array-length v7, v3
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_57

    if-ge v6, v7, :cond_30

    .line 343
    :try_start_1f
    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v4, v6
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2b} :catch_2c
    .catchall {:try_start_1f .. :try_end_2b} :catchall_57

    .line 346
    goto :goto_2d

    .line 344
    :catch_2c
    move-exception v7

    .line 341
    :goto_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 348
    .end local v6    # "i":I
    :cond_30
    :try_start_30
    array-length v6, v4

    if-gt v6, v5, :cond_35

    .line 349
    monitor-exit v0

    return-void

    .line 351
    :cond_35
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 352
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_39
    array-length v7, v4

    sub-int/2addr v7, v5

    if-ge v6, v7, :cond_50

    .line 353
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    aget-wide v9, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Landroid/graphics/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 352
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 355
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "sortedDates":[J
    .end local v6    # "i":I
    :cond_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_30 .. :try_end_51} :catchall_57

    .line 356
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 357
    return-void

    .line 338
    .restart local v3    # "files":[Ljava/io/File;
    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v0

    return-void

    .line 355
    .end local v3    # "files":[Ljava/io/File;
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_57

    throw v1
.end method

.method private blacklist deleteRecursiveLocked(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .line 323
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 324
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 325
    .local v3, "child":Ljava/io/File;
    invoke-direct {p0, v3}, Landroid/graphics/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 324
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 328
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphicsStatsService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_3e
    return-void
.end method

.method private blacklist dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;
    .registers 22
    .param p1, "dump"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/GraphicsStatsService$HistoricalBuffer;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 404
    .local p3, "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 405
    .local v0, "skipFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 406
    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    .line 407
    .local v3, "buffer":Landroid/graphics/GraphicsStatsService$HistoricalBuffer;
    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    move-object/from16 v5, p0

    invoke-direct {v5, v4}, Landroid/graphics/GraphicsStatsService;->pathForApp(Landroid/graphics/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v4

    .line 408
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget v9, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mUid:I

    iget-object v6, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v10, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v11, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    iget-object v6, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v13, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    iget-object v6, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v6, v6, Landroid/graphics/GraphicsStatsService$BufferInfo;->mEndTime:J

    iget-object v15, v3, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-object/from16 v17, v15

    move-wide v15, v6

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v17}, Landroid/graphics/GraphicsStatsService;->nAddToDump(JLjava/lang/String;ILjava/lang/String;JJJ[B)V

    .line 405
    .end local v3    # "buffer":Landroid/graphics/GraphicsStatsService$HistoricalBuffer;
    .end local v4    # "path":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_48
    move-object/from16 v5, p0

    move-object/from16 v2, p3

    .line 413
    .end local v1    # "i":I
    return-object v0
.end method

.method private blacklist dumpHistoricalLocked(JLjava/util/HashSet;)V
    .registers 22
    .param p1, "dump"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 417
    .local p3, "skipFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_63

    aget-object v5, v1, v4

    .line 418
    .local v5, "date":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v7, :cond_56

    aget-object v9, v6, v8

    .line 419
    .local v9, "pkg":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v11, :cond_49

    aget-object v13, v10, v12

    .line 420
    .local v13, "version":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "total"

    invoke-direct {v14, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 421
    .local v14, "data":Ljava/io/File;
    move-object/from16 v15, p3

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_37

    .line 422
    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    goto :goto_42

    .line 424
    :cond_37
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v3}, Landroid/graphics/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    .line 419
    .end local v13    # "version":Ljava/io/File;
    .end local v14    # "data":Ljava/io/File;
    :goto_42
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_1e

    :cond_49
    move-object/from16 v15, p3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    .line 418
    .end local v9    # "pkg":Ljava/io/File;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_14

    :cond_56
    move-object/from16 v15, p3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    .line 417
    .end local v5    # "date":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_a

    .line 428
    :cond_63
    move-wide/from16 v0, p1

    move-object/from16 v15, p3

    return-void
.end method

.method private blacklist fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    .registers 18
    .param p1, "token"    # Landroid/view/IGraphicsStatsCallback;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "versionCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 379
    .local v8, "size":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 380
    .local v9, "today":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v8, :cond_35

    .line 381
    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    .line 382
    .local v2, "buffer":Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    iget v3, v2, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mPid:I

    if-ne v3, p3, :cond_32

    iget v3, v2, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mUid:I

    if-ne v3, p2, :cond_32

    .line 385
    iget-object v3, v2, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v6, v3, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    cmp-long v3, v6, v9

    if-gez v3, :cond_31

    .line 386
    invoke-virtual {v2}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->binderDied()V

    .line 387
    goto :goto_35

    .line 389
    :cond_31
    return-object v2

    .line 380
    .end local v2    # "buffer":Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 395
    .end local v0    # "i":I
    :cond_35
    :goto_35
    :try_start_35
    new-instance v0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V

    .line 396
    .local v0, "buffers":Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_46} :catch_47

    .line 397
    return-object v0

    .line 398
    .end local v0    # "buffers":Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    :catch_47
    move-exception v0

    .line 399
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Failed to allocate space"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native blacklist nAddToDump(JLjava/lang/String;)V
.end method

.method private static native blacklist nAddToDump(JLjava/lang/String;ILjava/lang/String;JJJ[B)V
.end method

.method private static native blacklist nCreateDump(IZ)J
.end method

.method private static native blacklist nFinishDump(J)V
.end method

.method private static native blacklist nFinishDumpInMemory(JJZ)V
.end method

.method private static native blacklist nGetAshmemSize()I
.end method

.method private static native blacklist nSaveBuffer(Ljava/lang/String;ILjava/lang/String;JJJ[B)V
.end method

.method private static native blacklist nativeDestructor()V
.end method

.method private native blacklist nativeInit()V
.end method

.method private blacklist normalizeDate(J)Ljava/util/Calendar;
    .registers 6
    .param p1, "timestamp"    # J

    .line 286
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 287
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 288
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 289
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 290
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 291
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 292
    return-object v0
.end method

.method private blacklist onAlarm()V
    .registers 10

    .line 156
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 158
    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->scheduleRotateLocked()V

    .line 159
    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    new-array v3, v1, [Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    .line 160
    .local v2, "activeCopy":[Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_45

    .line 161
    array-length v0, v2

    :goto_15
    if-ge v1, v0, :cond_3c

    aget-object v3, v2, v1

    .line 163
    .local v3, "active":Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    :try_start_19
    iget-object v4, v3, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v4}, Landroid/view/IGraphicsStatsCallback;->onRotateGraphicsStatsBuffer()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 167
    goto :goto_39

    .line 164
    :catch_1f
    move-exception v4

    .line 165
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "GraphicsStatsService"

    const-string v6, "Failed to notify \'%s\' (pid=%d) to rotate buffers"

    iget-object v7, v3, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v7, v7, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget v8, v3, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mPid:I

    .line 166
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 165
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v3    # "active":Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 170
    :cond_3c
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    return-void

    .line 160
    .end local v2    # "activeCopy":[Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private blacklist pathForApp(Landroid/graphics/GraphicsStatsService$BufferInfo;)Ljava/io/File;
    .registers 6
    .param p1, "info"    # Landroid/graphics/GraphicsStatsService$BufferInfo;

    .line 296
    iget-wide v0, p1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    .line 297
    invoke-direct {p0, v0, v1}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget-wide v2, p1, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    .line 298
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 296
    const-string v1, "%d/%s/%d/total"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "subPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist processDied(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .registers 4
    .param p1, "buffer"    # Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    .line 370
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 373
    invoke-direct {p0, p1}, Landroid/graphics/GraphicsStatsService;->addToSaveQueue(Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    .line 374
    return-void

    .line 372
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method private blacklist pullGraphicsStats(ZJ)V
    .registers 9
    .param p1, "lastFullDay"    # Z
    .param p2, "pulledData"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 209
    .local v0, "uid":I
    const/16 v1, 0x42a

    if-eq v0, v1, :cond_2a

    .line 210
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 211
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 212
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v4, "GraphicsStatsService"

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_2a

    .line 213
    :cond_1d
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 214
    new-instance v3, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_2a
    :goto_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 220
    .local v1, "callingIdentity":J
    :try_start_2e
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/GraphicsStatsService;->pullGraphicsStatsImpl(ZJ)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_36

    .line 222
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    nop

    .line 224
    return-void

    .line 222
    :catchall_36
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    throw v3
.end method

.method private blacklist pullGraphicsStatsImpl(ZJ)V
    .registers 27
    .param p1, "lastFullDay"    # Z
    .param p2, "pulledData"    # J

    .line 228
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    if-eqz v2, :cond_19

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    sub-long/2addr v5, v7

    invoke-direct {v1, v5, v6}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .local v5, "targetDay":J
    goto :goto_25

    .line 233
    .end local v5    # "targetDay":J
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 238
    .restart local v5    # "targetDay":J
    :goto_25
    iget-object v7, v1, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 239
    :try_start_28
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, v1, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    .line 240
    .local v8, "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_36
    iget-object v0, v1, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_ec

    if-ge v9, v0, :cond_61

    .line 241
    :try_start_3e
    iget-object v0, v1, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    move-object v10, v0

    .line 242
    .local v10, "buffer":Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    iget-object v0, v10, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v11, v0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_5c

    cmp-long v0, v11, v5

    if-nez v0, :cond_59

    .line 244
    :try_start_4f
    new-instance v0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v0, v1, v10}, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_58
    .catchall {:try_start_4f .. :try_end_57} :catchall_5c

    .line 247
    goto :goto_59

    .line 245
    :catch_58
    move-exception v0

    .line 240
    .end local v10    # "buffer":Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    :cond_59
    :goto_59
    add-int/lit8 v9, v9, 0x1

    goto :goto_36

    .line 250
    .end local v8    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    .end local v9    # "i":I
    :catchall_5c
    move-exception v0

    move-wide/from16 v17, v5

    goto/16 :goto_ef

    .restart local v8    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    :cond_61
    :try_start_61
    monitor-exit v7
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_ec

    .line 254
    const/4 v0, -0x1

    const/4 v7, 0x1

    invoke-static {v0, v7}, Landroid/graphics/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v9

    .line 256
    .local v9, "dump":J
    :try_start_68
    iget-object v7, v1, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_e5

    .line 257
    :try_start_6b
    invoke-direct {v1, v9, v10, v8}, Landroid/graphics/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    .line 258
    .local v0, "skipList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 259
    const-string v11, "%d"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 260
    .local v11, "subPath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Landroid/graphics/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v12, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    .local v12, "dateDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_d4

    .line 262
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_93
    if-ge v15, v14, :cond_d1

    aget-object v16, v13, v15

    .line 263
    .local v16, "pkg":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_9b
    .catchall {:try_start_6b .. :try_end_9b} :catchall_dc

    move-wide/from16 v17, v5

    .end local v5    # "targetDay":J
    .local v17, "targetDay":J
    :try_start_9d
    array-length v5, v1

    const/4 v6, 0x0

    :goto_9f
    if-ge v6, v5, :cond_ca

    aget-object v19, v1, v6

    move-object/from16 v20, v19

    .line 264
    .local v20, "version":Ljava/io/File;
    move-object/from16 v19, v1

    new-instance v1, Ljava/io/File;

    move/from16 v21, v5

    const-string/jumbo v5, "total"

    move/from16 v22, v6

    move-object/from16 v6, v20

    .end local v20    # "version":Ljava/io/File;
    .local v6, "version":Ljava/io/File;
    invoke-direct {v1, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    .local v1, "data":Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 266
    goto :goto_c3

    .line 268
    :cond_bc
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v10, v5}, Landroid/graphics/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    .line 263
    .end local v1    # "data":Ljava/io/File;
    .end local v6    # "version":Ljava/io/File;
    :goto_c3
    add-int/lit8 v6, v22, 0x1

    move-object/from16 v1, v19

    move/from16 v5, v21

    goto :goto_9f

    .line 262
    .end local v16    # "pkg":Ljava/io/File;
    :cond_ca
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v5, v17

    goto :goto_93

    .end local v17    # "targetDay":J
    .restart local v5    # "targetDay":J
    :cond_d1
    move-wide/from16 v17, v5

    .end local v5    # "targetDay":J
    .restart local v17    # "targetDay":J
    goto :goto_d6

    .line 261
    .end local v17    # "targetDay":J
    .restart local v5    # "targetDay":J
    :cond_d4
    move-wide/from16 v17, v5

    .line 272
    .end local v0    # "skipList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    .end local v5    # "targetDay":J
    .end local v11    # "subPath":Ljava/lang/String;
    .end local v12    # "dateDir":Ljava/io/File;
    .restart local v17    # "targetDay":J
    :goto_d6
    monitor-exit v7
    :try_end_d7
    .catchall {:try_start_9d .. :try_end_d7} :catchall_e3

    .line 274
    invoke-static {v9, v10, v3, v4, v2}, Landroid/graphics/GraphicsStatsService;->nFinishDumpInMemory(JJZ)V

    .line 275
    nop

    .line 276
    return-void

    .line 272
    .end local v17    # "targetDay":J
    .restart local v5    # "targetDay":J
    :catchall_dc
    move-exception v0

    move-wide/from16 v17, v5

    .end local v5    # "targetDay":J
    .restart local v17    # "targetDay":J
    :goto_df
    :try_start_df
    monitor-exit v7
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_e3

    .end local v8    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    .end local v9    # "dump":J
    .end local v17    # "targetDay":J
    .end local p0    # "this":Landroid/graphics/GraphicsStatsService;
    .end local p1    # "lastFullDay":Z
    .end local p2    # "pulledData":J
    :try_start_e0
    throw v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e1

    .line 274
    .restart local v8    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    .restart local v9    # "dump":J
    .restart local v17    # "targetDay":J
    .restart local p0    # "this":Landroid/graphics/GraphicsStatsService;
    .restart local p1    # "lastFullDay":Z
    .restart local p2    # "pulledData":J
    :catchall_e1
    move-exception v0

    goto :goto_e8

    .line 272
    :catchall_e3
    move-exception v0

    goto :goto_df

    .line 274
    .end local v17    # "targetDay":J
    .restart local v5    # "targetDay":J
    :catchall_e5
    move-exception v0

    move-wide/from16 v17, v5

    .end local v5    # "targetDay":J
    .restart local v17    # "targetDay":J
    :goto_e8
    invoke-static {v9, v10, v3, v4, v2}, Landroid/graphics/GraphicsStatsService;->nFinishDumpInMemory(JJZ)V

    .line 275
    throw v0

    .line 250
    .end local v8    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    .end local v9    # "dump":J
    .end local v17    # "targetDay":J
    .restart local v5    # "targetDay":J
    :catchall_ec
    move-exception v0

    move-wide/from16 v17, v5

    .end local v5    # "targetDay":J
    .restart local v17    # "targetDay":J
    :goto_ef
    :try_start_ef
    monitor-exit v7
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_f1

    throw v0

    :catchall_f1
    move-exception v0

    goto :goto_ef
.end method

.method private blacklist requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "token"    # Landroid/view/IGraphicsStatsCallback;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "versionCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-direct/range {p0 .. p6}, Landroid/graphics/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    move-result-object v0

    .line 281
    .local v0, "buffer":Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    invoke-direct {p0}, Landroid/graphics/GraphicsStatsService;->scheduleRotateLocked()V

    .line 282
    invoke-virtual {v0}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private blacklist saveBuffer(Landroid/graphics/GraphicsStatsService$HistoricalBuffer;)V
    .registers 21
    .param p1, "buffer"    # Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    .line 303
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/32 v3, 0x80000

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saving graphicsstats for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v5, v5, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 307
    :cond_28
    iget-object v5, v1, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v5

    .line 308
    :try_start_2b
    iget-object v0, v2, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    invoke-direct {v1, v0}, Landroid/graphics/GraphicsStatsService;->pathForApp(Landroid/graphics/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v0

    .line 309
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 310
    .local v6, "parent":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 311
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_62

    .line 312
    const-string v3, "GraphicsStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create path: \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    monitor-exit v5

    return-void

    .line 315
    :cond_62
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget v8, v8, Landroid/graphics/GraphicsStatsService$BufferInfo;->mUid:I

    iget-object v9, v2, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-object v9, v9, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v10, v10, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    iget-object v12, v2, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v12, v12, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    iget-object v14, v2, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iget-wide v14, v14, Landroid/graphics/GraphicsStatsService$BufferInfo;->mEndTime:J

    move-wide/from16 v17, v3

    iget-object v3, v2, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-object/from16 v16, v3

    invoke-static/range {v7 .. v16}, Landroid/graphics/GraphicsStatsService;->nSaveBuffer(Ljava/lang/String;ILjava/lang/String;JJJ[B)V

    .line 318
    .end local v0    # "path":Ljava/io/File;
    .end local v6    # "parent":Ljava/io/File;
    monitor-exit v5
    :try_end_84
    .catchall {:try_start_2b .. :try_end_84} :catchall_88

    .line 319
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 320
    return-void

    .line 318
    :catchall_88
    move-exception v0

    :try_start_89
    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v0
.end method

.method private blacklist scheduleRotateLocked()V
    .registers 11

    .line 141
    iget-boolean v0, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    if-eqz v0, :cond_5

    .line 142
    return-void

    .line 144
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/graphics/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v1

    .line 146
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 147
    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    new-instance v8, Landroid/graphics/GraphicsStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Landroid/graphics/GraphicsStatsService$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/GraphicsStatsService;)V

    iget-object v9, p0, Landroid/graphics/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const-string v7, "GraphicsStatsService"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 432
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v1, "GraphicsStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 433
    :cond_b
    const/4 v0, 0x0

    .line 434
    .local v0, "dumpProto":Z
    array-length v1, p3

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1f

    aget-object v3, p3, v2

    .line 435
    .local v3, "str":Ljava/lang/String;
    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 436
    const/4 v0, 0x1

    .line 437
    goto :goto_1f

    .line 434
    .end local v3    # "str":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 441
    :cond_1f
    :goto_1f
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_22
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 443
    .local v2, "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    iget-object v4, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_6f

    if-ge v3, v4, :cond_4b

    .line 445
    :try_start_36
    new-instance v4, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;

    iget-object v5, p0, Landroid/graphics/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v4, p0, v5}, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;-><init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_46} :catch_47
    .catchall {:try_start_36 .. :try_end_46} :catchall_6f

    .line 448
    goto :goto_48

    .line 446
    :catch_47
    move-exception v4

    .line 443
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 450
    .end local v3    # "i":I
    :cond_4b
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_6f

    .line 451
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v3

    .line 453
    .local v3, "dump":J
    :try_start_54
    iget-object v1, p0, Landroid/graphics/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_6a

    .line 454
    :try_start_57
    invoke-direct {p0, v3, v4, v2}, Landroid/graphics/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v5

    .line 455
    .local v5, "skipList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 456
    invoke-direct {p0, v3, v4, v5}, Landroid/graphics/GraphicsStatsService;->dumpHistoricalLocked(JLjava/util/HashSet;)V

    .line 457
    .end local v5    # "skipList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_67

    .line 459
    invoke-static {v3, v4}, Landroid/graphics/GraphicsStatsService;->nFinishDump(J)V

    .line 460
    nop

    .line 461
    return-void

    .line 457
    :catchall_67
    move-exception v5

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    .end local v0    # "dumpProto":Z
    .end local v2    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    .end local v3    # "dump":J
    .end local p0    # "this":Landroid/graphics/GraphicsStatsService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "fout":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_69
    throw v5
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 459
    .restart local v0    # "dumpProto":Z
    .restart local v2    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    .restart local v3    # "dump":J
    .restart local p0    # "this":Landroid/graphics/GraphicsStatsService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "fout":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_6a
    move-exception v1

    invoke-static {v3, v4}, Landroid/graphics/GraphicsStatsService;->nFinishDump(J)V

    .line 460
    throw v1

    .line 450
    .end local v2    # "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/GraphicsStatsService$HistoricalBuffer;>;"
    .end local v3    # "dump":J
    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 465
    invoke-static {}, Landroid/graphics/GraphicsStatsService;->nativeDestructor()V

    .line 466
    return-void
.end method

.method public blacklist requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/view/IGraphicsStatsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 177
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 178
    .local v4, "pid":I
    const/4 v8, 0x0

    .line 179
    .local v8, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 181
    .local v9, "callingIdentity":J
    :try_start_d
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v3, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 182
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 185
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 182
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v11, v0

    .line 186
    .local v11, "info":Landroid/content/pm/PackageInfo;
    iget-object v12, p0, Landroid/graphics/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_25} :catch_49
    .catchall {:try_start_d .. :try_end_25} :catchall_44

    .line 187
    nop

    .line 188
    :try_start_26
    invoke-virtual {v11}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_3b

    .line 187
    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    .local v2, "token":Landroid/view/IGraphicsStatsCallback;
    .local v5, "packageName":Ljava/lang/String;
    :try_start_2d
    invoke-direct/range {v1 .. v7}, Landroid/graphics/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    move-object v8, p1

    .line 189
    monitor-exit v12
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_38

    .line 193
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    nop

    .line 195
    return-object v8

    .line 189
    .restart local v11    # "info":Landroid/content/pm/PackageInfo;
    :catchall_38
    move-exception v0

    move-object p1, v0

    goto :goto_3f

    .end local v2    # "token":Landroid/view/IGraphicsStatsCallback;
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    :catchall_3b
    move-exception v0

    move-object v5, p1

    move-object v2, p2

    move-object p1, v0

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    .restart local v2    # "token":Landroid/view/IGraphicsStatsCallback;
    .restart local v5    # "packageName":Ljava/lang/String;
    :goto_3f
    :try_start_3f
    monitor-exit v12
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_38

    .end local v2    # "token":Landroid/view/IGraphicsStatsCallback;
    .end local v3    # "uid":I
    .end local v4    # "pid":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "callingIdentity":J
    .end local p0    # "this":Landroid/graphics/GraphicsStatsService;
    :try_start_40
    throw p1
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_41} :catch_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_6c

    .line 190
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .restart local v2    # "token":Landroid/view/IGraphicsStatsCallback;
    .restart local v3    # "uid":I
    .restart local v4    # "pid":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "callingIdentity":J
    .restart local p0    # "this":Landroid/graphics/GraphicsStatsService;
    :catch_41
    move-exception v0

    move-object p1, v0

    goto :goto_4d

    .line 193
    .end local v2    # "token":Landroid/view/IGraphicsStatsCallback;
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    :catchall_44
    move-exception v0

    move-object v5, p1

    move-object v2, p2

    move-object p1, v0

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    .restart local v2    # "token":Landroid/view/IGraphicsStatsCallback;
    .restart local v5    # "packageName":Ljava/lang/String;
    goto :goto_6e

    .line 190
    .end local v2    # "token":Landroid/view/IGraphicsStatsCallback;
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    :catch_49
    move-exception v0

    move-object v5, p1

    move-object v2, p2

    move-object p1, v0

    .line 191
    .end local p2    # "token":Landroid/view/IGraphicsStatsCallback;
    .restart local v2    # "token":Landroid/view/IGraphicsStatsCallback;
    .restart local v5    # "packageName":Ljava/lang/String;
    .local p1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4d
    :try_start_4d
    new-instance p2, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find package: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v2    # "token":Landroid/view/IGraphicsStatsCallback;
    .end local v3    # "uid":I
    .end local v4    # "pid":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "callingIdentity":J
    .end local p0    # "this":Landroid/graphics/GraphicsStatsService;
    throw p2
    :try_end_6c
    .catchall {:try_start_4d .. :try_end_6c} :catchall_6c

    .line 193
    .end local p1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "token":Landroid/view/IGraphicsStatsCallback;
    .restart local v3    # "uid":I
    .restart local v4    # "pid":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "callingIdentity":J
    .restart local p0    # "this":Landroid/graphics/GraphicsStatsService;
    :catchall_6c
    move-exception v0

    move-object p1, v0

    :goto_6e
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    throw p1
.end method

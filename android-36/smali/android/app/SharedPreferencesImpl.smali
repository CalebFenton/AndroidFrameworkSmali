.class final Landroid/app/SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedPreferencesImpl$EditorImpl;,
        Landroid/app/SharedPreferencesImpl$MemoryCommitResult;,
        Landroid/app/SharedPreferencesImpl$SharedPreferencesThreadFactory;
    }
.end annotation


# static fields
.field private static final blacklist CALLBACK_ON_CLEAR_CHANGE:J = 0x71a0c40L

.field private static final greylist-max-o CONTENT:Ljava/lang/Object;

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MAX_FSYNC_DURATION_MILLIS:J = 0x100L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SharedPreferencesImpl"

.field private static final blacklist sLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final greylist-max-o mBackupFile:Ljava/io/File;

.field private greylist-max-o mCurrentMemoryStateGeneration:J

.field private greylist-max-o mDiskStateGeneration:J

.field private greylist-max-o mDiskWritesInFlight:I

.field private final greylist mFile:Ljava/io/File;

.field private final greylist-max-o mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLoaded:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMode:I

.field private greylist-max-o mNumSync:I

.field private greylist-max-o mStatSize:J

.field private greylist-max-o mStatTimestamp:Landroid/system/StructTimespec;

.field private final greylist-max-o mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

.field private greylist-max-o mThrowable:Ljava/lang/Throwable;

.field private final greylist-max-o mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$gCIQI__z13DI5jNIqnAnYLWLcMc(Landroid/app/SharedPreferencesImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->lambda$startLoadFromDisk$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I
    .registers 1

    iget p0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .registers 1

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMap(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritingToDiskLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentMemoryStateGeneration(Landroid/app/SharedPreferencesImpl;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;I)V
    .registers 2

    iput p1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMap(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$menqueueDiskWrite(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToFile(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    .line 127
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Landroid/app/SharedPreferencesImpl$SharedPreferencesThreadFactory;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/app/SharedPreferencesImpl$SharedPreferencesThreadFactory;-><init>(Landroid/app/SharedPreferencesImpl-IA;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Landroid/app/SharedPreferencesImpl;->sLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method constructor greylist <init>(Ljava/io/File;I)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    .line 101
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 110
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 123
    new-instance v1, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 125
    iput v0, p0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    .line 133
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 134
    invoke-static {p1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 135
    iput p2, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    .line 136
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 138
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    .line 139
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 140
    return-void
.end method

.method private greylist-max-o awaitLoadedLocked()V
    .registers 3

    .line 279
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_b

    .line 283
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 285
    :cond_b
    :goto_b
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_17

    .line 287
    :try_start_f
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_16

    .line 288
    :catch_15
    move-exception v0

    .line 289
    :goto_16
    goto :goto_b

    .line 291
    :cond_17
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    if-nez v0, :cond_1c

    .line 294
    return-void

    .line 292
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static greylist-max-o createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 8
    .param p0, "file"    # Ljava/io/File;

    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, "str":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_8

    move-object v0, v1

    .line 726
    goto :goto_56

    .line 711
    :catch_8
    move-exception v1

    .line 712
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 713
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    const-string v4, "SharedPreferencesImpl"

    if-nez v3, :cond_2d

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v3, 0x0

    return-object v3

    .line 717
    :cond_2d
    nop

    .line 718
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 717
    const/16 v5, 0x1f9

    const/4 v6, -0x1

    invoke-static {v3, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 722
    :try_start_38
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3d} :catch_3f

    move-object v0, v3

    .line 725
    goto :goto_56

    .line 723
    :catch_3f
    move-exception v3

    .line 724
    .local v3, "e2":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "parent":Ljava/io/File;
    .end local v3    # "e2":Ljava/io/FileNotFoundException;
    :goto_56
    return-object v0
.end method

.method private greylist-max-o enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "postWriteRunnable"    # Ljava/lang/Runnable;

    .line 674
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 676
    .local v2, "isFromSyncCommit":Z
    :goto_7
    new-instance v3, Landroid/app/SharedPreferencesImpl$1;

    invoke-direct {v3, p0, p1, v2, p2}, Landroid/app/SharedPreferencesImpl$1;-><init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;ZLjava/lang/Runnable;)V

    .line 693
    .local v3, "writeToDiskRunnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_24

    .line 694
    const/4 v4, 0x0

    .line 695
    .local v4, "wasEmpty":Z
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 696
    :try_start_12
    iget v6, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-ne v6, v1, :cond_18

    move v6, v1

    goto :goto_19

    :cond_18
    move v6, v0

    :goto_19
    move v4, v6

    .line 697
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_21

    .line 698
    if-eqz v4, :cond_24

    .line 699
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 700
    return-void

    .line 697
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v5
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0

    .line 704
    .end local v4    # "wasEmpty":Z
    :cond_24
    if-nez v2, :cond_27

    move v0, v1

    :cond_27
    invoke-static {v3, v0}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    .line 705
    return-void
.end method

.method private greylist-max-o hasFileChangedUnexpectedly()Z
    .registers 9

    .line 238
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    const/4 v2, 0x0

    if-lez v1, :cond_a

    .line 242
    monitor-exit v0

    return v2

    .line 244
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3b

    .line 252
    const/4 v0, 0x1

    :try_start_c
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 253
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_1d} :catch_39

    .line 256
    .local v1, "stat":Landroid/system/StructStat;
    nop

    .line 258
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 259
    :try_start_21
    iget-object v4, v1, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    iget-wide v6, v1, Landroid/system/StructStat;->st_size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_34

    :cond_33
    move v2, v0

    :cond_34
    monitor-exit v3

    return v2

    .line 260
    :catchall_36
    move-exception v0

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_36

    throw v0

    .line 254
    .end local v1    # "stat":Landroid/system/StructStat;
    :catch_39
    move-exception v1

    .line 255
    .local v1, "e":Landroid/system/ErrnoException;
    return v0

    .line 244
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private synthetic blacklist lambda$startLoadFromDisk$0()V
    .registers 1

    .line 149
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->loadFromDisk()V

    .line 150
    return-void
.end method

.method private greylist-max-o loadFromDisk()V
    .registers 9

    .line 154
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-eqz v1, :cond_9

    .line 156
    monitor-exit v0

    return-void

    .line 158
    :cond_9
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 159
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 160
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 162
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_e5

    .line 165
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 166
    const-string v0, "SharedPreferencesImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to read preferences file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_4e
    const/4 v0, 0x0

    .line 170
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 171
    .local v1, "stat":Landroid/system/StructStat;
    const/4 v2, 0x0

    .line 173
    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_51
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    move-object v1, v3

    .line 174
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3
    :try_end_62
    .catch Landroid/system/ErrnoException; {:try_start_51 .. :try_end_62} :catch_a9
    .catchall {:try_start_51 .. :try_end_62} :catchall_a4

    if-eqz v3, :cond_aa

    .line 175
    const/4 v3, 0x0

    .line 177
    .local v3, "str":Ljava/io/BufferedInputStream;
    :try_start_65
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x4000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v3, v4

    .line 179
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_78} :catch_7f
    .catchall {:try_start_65 .. :try_end_78} :catchall_7d

    move-object v0, v4

    .line 183
    :goto_79
    :try_start_79
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7c
    .catch Landroid/system/ErrnoException; {:try_start_79 .. :try_end_7c} :catch_a9
    .catchall {:try_start_79 .. :try_end_7c} :catchall_a4

    .line 184
    goto :goto_aa

    .line 183
    :catchall_7d
    move-exception v4

    goto :goto_9f

    .line 180
    :catch_7f
    move-exception v4

    .line 181
    .local v4, "e":Ljava/lang/Exception;
    :try_start_80
    const-string v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9e
    .catchall {:try_start_80 .. :try_end_9e} :catchall_7d

    goto :goto_79

    .line 183
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_9f
    :try_start_9f
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 184
    nop

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "stat":Landroid/system/StructStat;
    .end local v2    # "thrown":Ljava/lang/Throwable;
    .end local p0    # "this":Landroid/app/SharedPreferencesImpl;
    throw v4
    :try_end_a4
    .catch Landroid/system/ErrnoException; {:try_start_9f .. :try_end_a4} :catch_a9
    .catchall {:try_start_9f .. :try_end_a4} :catchall_a4

    .line 189
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "stat":Landroid/system/StructStat;
    .restart local v2    # "thrown":Ljava/lang/Throwable;
    .restart local p0    # "this":Landroid/app/SharedPreferencesImpl;
    :catchall_a4
    move-exception v3

    .line 190
    .local v3, "t":Ljava/lang/Throwable;
    move-object v2, v3

    move-object v2, v1

    move-object v1, v0

    goto :goto_ad

    .line 186
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_a9
    move-exception v3

    .line 191
    :cond_aa
    :goto_aa
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 193
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, "stat":Landroid/system/StructStat;
    .local v3, "thrown":Ljava/lang/Throwable;
    :goto_ad
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 194
    const/4 v0, 0x1

    :try_start_b1
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 195
    iput-object v3, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_e2

    .line 201
    if-nez v3, :cond_da

    .line 202
    if-eqz v1, :cond_c4

    .line 203
    :try_start_b9
    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 204
    iget-object v0, v2, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    .line 205
    iget-wide v5, v2, Landroid/system/StructStat;->st_size:J

    iput-wide v5, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    goto :goto_da

    .line 207
    :cond_c4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    :try_end_cb
    .catchall {:try_start_b9 .. :try_end_cb} :catchall_cc

    goto :goto_da

    .line 212
    :catchall_cc
    move-exception v0

    .line 213
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_cd
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;
    :try_end_cf
    .catchall {:try_start_cd .. :try_end_cf} :catchall_d2

    .line 215
    .end local v0    # "t":Ljava/lang/Throwable;
    :try_start_cf
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    goto :goto_dc

    :catchall_d2
    move-exception v0

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 216
    nop

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "stat":Landroid/system/StructStat;
    .end local v3    # "thrown":Ljava/lang/Throwable;
    .end local p0    # "this":Landroid/app/SharedPreferencesImpl;
    throw v0

    .line 215
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "stat":Landroid/system/StructStat;
    .restart local v3    # "thrown":Ljava/lang/Throwable;
    .restart local p0    # "this":Landroid/app/SharedPreferencesImpl;
    :cond_da
    :goto_da
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    :goto_dc
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 216
    nop

    .line 217
    monitor-exit v4

    .line 218
    return-void

    .line 217
    :catchall_e2
    move-exception v0

    monitor-exit v4
    :try_end_e4
    .catchall {:try_start_cf .. :try_end_e4} :catchall_e2

    throw v0

    .line 162
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "stat":Landroid/system/StructStat;
    .end local v3    # "thrown":Ljava/lang/Throwable;
    :catchall_e5
    move-exception v1

    :try_start_e6
    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v1
.end method

.method static greylist-max-o makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p0, "prefsFile"    # Ljava/io/File;

    .line 221
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-r startLoadFromDisk()V
    .registers 3

    .line 144
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 146
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 148
    sget-object v0, Landroid/app/SharedPreferencesImpl;->sLoadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroid/app/SharedPreferencesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/SharedPreferencesImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/SharedPreferencesImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void

    .line 146
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .registers 33
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "isFromSyncCommit"    # Z

    .line 732
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    .line 733
    .local v3, "startTime":J
    const-wide/16 v5, 0x0

    .line 734
    .local v5, "existsTime":J
    const-wide/16 v7, 0x0

    .line 735
    .local v7, "backupExistsTime":J
    const-wide/16 v9, 0x0

    .line 736
    .local v9, "outputStreamCreateTime":J
    const-wide/16 v11, 0x0

    .line 737
    .local v11, "writeTime":J
    const-wide/16 v13, 0x0

    .line 738
    .local v13, "fsyncTime":J
    const-wide/16 v15, 0x0

    .line 739
    .local v15, "setPermTime":J
    const-wide/16 v17, 0x0

    .line 740
    .local v17, "fstatTime":J
    const-wide/16 v19, 0x0

    .line 746
    .local v19, "deleteTime":J
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v21

    .line 756
    .local v21, "fileExists":Z
    move-wide/from16 v22, v3

    .end local v3    # "startTime":J
    .local v22, "startTime":J
    if-eqz v21, :cond_96

    .line 757
    const/16 v24, 0x0

    .line 760
    .local v24, "needsWrite":Z
    iget-wide v3, v1, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    move-wide/from16 v26, v3

    iget-wide v3, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    cmp-long v0, v26, v3

    if-gez v0, :cond_49

    .line 761
    if-eqz p2, :cond_33

    .line 762
    const/16 v24, 0x1

    move-wide/from16 v26, v5

    goto :goto_4b

    .line 764
    :cond_33
    iget-object v3, v1, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 767
    move-wide/from16 v26, v5

    .end local v5    # "existsTime":J
    .local v26, "existsTime":J
    :try_start_38
    iget-wide v4, v1, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    move-wide/from16 v28, v4

    iget-wide v4, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    cmp-long v0, v28, v4

    if-nez v0, :cond_44

    .line 768
    const/16 v24, 0x1

    .line 770
    :cond_44
    monitor-exit v3

    goto :goto_4b

    :catchall_46
    move-exception v0

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_46

    throw v0

    .line 760
    .end local v26    # "existsTime":J
    .restart local v5    # "existsTime":J
    :cond_49
    move-wide/from16 v26, v5

    .line 774
    .end local v5    # "existsTime":J
    .restart local v26    # "existsTime":J
    :goto_4b
    if-nez v24, :cond_53

    .line 775
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 776
    return-void

    .line 779
    :cond_53
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 785
    .local v0, "backupFileExists":Z
    if-nez v0, :cond_90

    .line 786
    iget-object v3, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_98

    .line 787
    const-string v3, "SharedPreferencesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t rename file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 790
    return-void

    .line 793
    :cond_90
    iget-object v3, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_98

    .line 756
    .end local v0    # "backupFileExists":Z
    .end local v24    # "needsWrite":Z
    .end local v26    # "existsTime":J
    .restart local v5    # "existsTime":J
    :cond_96
    move-wide/from16 v26, v5

    .line 801
    .end local v5    # "existsTime":J
    .restart local v26    # "existsTime":J
    :cond_98
    :goto_98
    :try_start_98
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_9e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_9e} :catch_153
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9e} :catch_147

    move-object v3, v0

    .line 807
    .local v3, "str":Ljava/io/FileOutputStream;
    if-nez v3, :cond_b0

    .line 808
    const/4 v4, 0x0

    :try_start_a2
    invoke-virtual {v2, v4, v4}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V
    :try_end_a5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_a5} :catch_ab
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    .line 809
    return-void

    .line 873
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :catch_a6
    move-exception v0

    move-wide/from16 v28, v7

    goto/16 :goto_14a

    .line 871
    :catch_ab
    move-exception v0

    move-wide/from16 v28, v7

    goto/16 :goto_156

    .line 811
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    :cond_b0
    :try_start_b0
    iget-object v0, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v11, v4

    .line 815
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 817
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v13, v4

    .line 819
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 820
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget v4, v1, Landroid/app/SharedPreferencesImpl;->mMode:I

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_d1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b0 .. :try_end_d1} :catch_153
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_d1} :catch_147

    .line 827
    :try_start_d1
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    move-object v4, v0

    .line 828
    .local v4, "stat":Landroid/system/StructStat;
    iget-object v5, v1, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_df
    .catch Landroid/system/ErrnoException; {:try_start_d1 .. :try_end_df} :catch_f4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d1 .. :try_end_df} :catch_153
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_df} :catch_147

    .line 829
    :try_start_df
    iget-object v0, v4, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v0, v1, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_eb

    .line 830
    move-wide/from16 v28, v7

    .end local v7    # "backupExistsTime":J
    .local v28, "backupExistsTime":J
    :try_start_e5
    iget-wide v6, v4, Landroid/system/StructStat;->st_size:J

    iput-wide v6, v1, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    .line 831
    monitor-exit v5

    .line 834
    .end local v4    # "stat":Landroid/system/StructStat;
    goto :goto_f7

    .line 831
    .end local v28    # "backupExistsTime":J
    .restart local v4    # "stat":Landroid/system/StructStat;
    .restart local v7    # "backupExistsTime":J
    :catchall_eb
    move-exception v0

    move-wide/from16 v28, v7

    .end local v7    # "backupExistsTime":J
    .restart local v28    # "backupExistsTime":J
    :goto_ee
    monitor-exit v5
    :try_end_ef
    .catchall {:try_start_e5 .. :try_end_ef} :catchall_f2

    .end local v3    # "str":Ljava/io/FileOutputStream;
    .end local v9    # "outputStreamCreateTime":J
    .end local v11    # "writeTime":J
    .end local v13    # "fsyncTime":J
    .end local v15    # "setPermTime":J
    .end local v17    # "fstatTime":J
    .end local v19    # "deleteTime":J
    .end local v21    # "fileExists":Z
    .end local v22    # "startTime":J
    .end local v26    # "existsTime":J
    .end local v28    # "backupExistsTime":J
    .end local p0    # "this":Landroid/app/SharedPreferencesImpl;
    .end local p1    # "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .end local p2    # "isFromSyncCommit":Z
    :try_start_ef
    throw v0
    :try_end_f0
    .catch Landroid/system/ErrnoException; {:try_start_ef .. :try_end_f0} :catch_f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ef .. :try_end_f0} :catch_145
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f0} :catch_143

    .line 832
    .end local v4    # "stat":Landroid/system/StructStat;
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    .restart local v9    # "outputStreamCreateTime":J
    .restart local v11    # "writeTime":J
    .restart local v13    # "fsyncTime":J
    .restart local v15    # "setPermTime":J
    .restart local v17    # "fstatTime":J
    .restart local v19    # "deleteTime":J
    .restart local v21    # "fileExists":Z
    .restart local v22    # "startTime":J
    .restart local v26    # "existsTime":J
    .restart local v28    # "backupExistsTime":J
    .restart local p0    # "this":Landroid/app/SharedPreferencesImpl;
    .restart local p1    # "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .restart local p2    # "isFromSyncCommit":Z
    :catch_f0
    move-exception v0

    goto :goto_f7

    .line 831
    .restart local v4    # "stat":Landroid/system/StructStat;
    :catchall_f2
    move-exception v0

    goto :goto_ee

    .line 832
    .end local v4    # "stat":Landroid/system/StructStat;
    .end local v28    # "backupExistsTime":J
    .restart local v7    # "backupExistsTime":J
    :catch_f4
    move-exception v0

    move-wide/from16 v28, v7

    .line 841
    .end local v7    # "backupExistsTime":J
    .restart local v28    # "backupExistsTime":J
    :goto_f7
    :try_start_f7
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 847
    iget-wide v4, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    iput-wide v4, v1, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    .line 849
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 862
    sub-long v4, v13, v11

    .line 863
    .local v4, "fsyncDuration":J
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    long-to-int v6, v4

    invoke-virtual {v0, v6}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 864
    iget v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    const/16 v25, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    .line 866
    iget v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    rem-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_120

    const-wide/16 v6, 0x100

    cmp-long v0, v4, v6

    if-lez v0, :cond_142

    .line 867
    :cond_120
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const-string v6, "SharedPreferencesImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time required to fsync "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_142
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f7 .. :try_end_142} :catch_145
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_142} :catch_143

    .line 870
    :cond_142
    return-void

    .line 873
    .end local v3    # "str":Ljava/io/FileOutputStream;
    .end local v4    # "fsyncDuration":J
    :catch_143
    move-exception v0

    goto :goto_14a

    .line 871
    :catch_145
    move-exception v0

    goto :goto_156

    .line 873
    .end local v28    # "backupExistsTime":J
    .restart local v7    # "backupExistsTime":J
    :catch_147
    move-exception v0

    move-wide/from16 v28, v7

    .line 874
    .end local v7    # "backupExistsTime":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v28    # "backupExistsTime":J
    :goto_14a
    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15f

    .line 871
    .end local v0    # "e":Ljava/io/IOException;
    .end local v28    # "backupExistsTime":J
    .restart local v7    # "backupExistsTime":J
    :catch_153
    move-exception v0

    move-wide/from16 v28, v7

    .line 872
    .end local v7    # "backupExistsTime":J
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v28    # "backupExistsTime":J
    :goto_156
    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 878
    :goto_15f
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 879
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_189

    .line 880
    const-string v0, "SharedPreferencesImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t clean up partially-written file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_189
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 884
    return-void
.end method


# virtual methods
.method public whitelist contains(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 360
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 362
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 363
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist edit()Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 375
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 377
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_d

    .line 379
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/SharedPreferencesImpl;)V

    return-object v0

    .line 377
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist getAll()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 301
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    .line 302
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 351
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 353
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 354
    .local v1, "v":Ljava/lang/Boolean;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_16

    :cond_15
    move v2, p2

    :goto_16
    monitor-exit v0

    return v2

    .line 355
    .end local v1    # "v":Ljava/lang/Boolean;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist getFloat(Ljava/lang/String;F)F
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 343
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 345
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 346
    .local v1, "v":Ljava/lang/Float;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_16

    :cond_15
    move v2, p2

    :goto_16
    monitor-exit v0

    return v2

    .line 347
    .end local v1    # "v":Ljava/lang/Float;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 327
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 329
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 330
    .local v1, "v":Ljava/lang/Integer;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_16

    :cond_15
    move v2, p2

    :goto_16
    monitor-exit v0

    return v2

    .line 331
    .end local v1    # "v":Ljava/lang/Integer;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist getLong(Ljava/lang/String;J)J
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 335
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 337
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 338
    .local v1, "v":Ljava/lang/Long;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_16

    :cond_15
    move-wide v2, p2

    :goto_16
    monitor-exit v0

    return-wide v2

    .line 339
    .end local v1    # "v":Ljava/lang/Long;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 308
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 310
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_12

    move-object v2, v1

    goto :goto_13

    :cond_12
    move-object v2, p2

    :goto_13
    monitor-exit v0

    return-object v2

    .line 312
    .end local v1    # "v":Ljava/lang/String;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 318
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 320
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 321
    .local v1, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_12

    move-object v2, v1

    goto :goto_13

    :cond_12
    move-object v2, p2

    :goto_13
    monitor-exit v0

    return-object v2

    .line 322
    .end local v1    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 265
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v2, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method greylist startReloadIfChangedUnexpectedly()V
    .registers 3

    .line 226
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z

    move-result v1

    if-nez v1, :cond_b

    .line 229
    monitor-exit v0

    return-void

    .line 231
    :cond_b
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 272
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

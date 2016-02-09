.class final Landroid/app/SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedPreferencesImpl$MemoryCommitResult;,
        Landroid/app/SharedPreferencesImpl$EditorImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesImpl"

.field private static final mContent:Ljava/lang/Object;


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private mDiskWritesInFlight:I

.field private final mFile:Ljava/io/File;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMode:I

.field private mStatSize:J

.field private mStatTimestamp:J

.field private final mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/app/SharedPreferencesImpl;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/app/SharedPreferencesImpl;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "postWriteRunnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/app/SharedPreferencesImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->loadFromDiskLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl;->writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/app/SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    #@7
    .line 52
    return-void
.end method

.method constructor <init>(Ljava/io/File;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 65
    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    #@6
    .line 66
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    #@8
    .line 70
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    #@f
    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    #@11
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@14
    .line 72
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    #@16
    .line 76
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@18
    .line 77
    invoke-static {p1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    #@1e
    .line 78
    iput p2, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    #@20
    .line 79
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    #@22
    .line 80
    const/4 v0, 0x0

    #@23
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@25
    .line 81
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    #@28
    .line 75
    return-void
.end method

.method private awaitLoadedLocked()V
    .locals 2

    #@0
    .prologue
    .line 199
    iget-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 203
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@b
    .line 205
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    #@d
    if-nez v1, :cond_1

    #@f
    .line 207
    :try_start_0
    invoke-virtual {p0}, Landroid/app/SharedPreferencesImpl;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    goto :goto_0

    #@13
    .line 208
    :catch_0
    move-exception v0

    #@14
    .local v0, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    #@15
    .line 198
    .end local v0    # "unused":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method private static createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 545
    const/4 v3, 0x0

    #@2
    .line 547
    .local v3, "str":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    #@4
    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .end local v3    # "str":Ljava/io/FileOutputStream;
    .local v4, "str":Ljava/io/FileOutputStream;
    move-object v3, v4

    #@8
    .line 564
    .end local v4    # "str":Ljava/io/FileOutputStream;
    :goto_0
    return-object v3

    #@9
    .line 548
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@a
    .line 549
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@d
    move-result-object v2

    #@e
    .line 550
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    #@11
    move-result v5

    #@12
    if-nez v5, :cond_0

    #@14
    .line 551
    const-string/jumbo v5, "SharedPreferencesImpl"

    #@17
    new-instance v6, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v7, "Couldn\'t create directory for SharedPreferences file "

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 552
    const/4 v5, 0x0

    #@2f
    return-object v5

    #@30
    .line 555
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    .line 556
    const/16 v6, 0x1f9

    #@36
    .line 554
    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@39
    .line 559
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    #@3b
    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@3e
    .restart local v4    # "str":Ljava/io/FileOutputStream;
    move-object v3, v4

    #@3f
    .end local v4    # "str":Ljava/io/FileOutputStream;
    .local v3, "str":Ljava/io/FileOutputStream;
    goto :goto_0

    #@40
    .line 560
    .local v3, "str":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    #@41
    .line 561
    .local v1, "e2":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "SharedPreferencesImpl"

    #@44
    new-instance v6, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v7, "Couldn\'t create SharedPreferences file "

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    goto :goto_0
.end method

.method private enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "postWriteRunnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 512
    new-instance v2, Landroid/app/SharedPreferencesImpl$2;

    #@2
    invoke-direct {v2, p0, p1, p2}, Landroid/app/SharedPreferencesImpl$2;-><init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    #@5
    .line 526
    .local v2, "writeToDiskRunnable":Ljava/lang/Runnable;
    if-nez p2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 530
    .local v0, "isFromSyncCommit":Z
    :goto_0
    if-eqz v0, :cond_2

    #@a
    .line 531
    const/4 v1, 0x0

    #@b
    .line 532
    .local v1, "wasEmpty":Z
    monitor-enter p0

    #@c
    .line 533
    :try_start_0
    iget v3, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    const/4 v4, 0x1

    #@f
    if-ne v3, v4, :cond_1

    #@11
    const/4 v1, 0x1

    #@12
    :goto_1
    monitor-exit p0

    #@13
    .line 535
    if-eqz v1, :cond_2

    #@15
    .line 536
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    #@18
    .line 537
    return-void

    #@19
    .line 526
    .end local v0    # "isFromSyncCommit":Z
    .end local v1    # "wasEmpty":Z
    :cond_0
    const/4 v0, 0x0

    #@1a
    .restart local v0    # "isFromSyncCommit":Z
    goto :goto_0

    #@1b
    .line 533
    .restart local v1    # "wasEmpty":Z
    :cond_1
    const/4 v1, 0x0

    #@1c
    goto :goto_1

    #@1d
    .line 532
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit p0

    #@1f
    throw v3

    #@20
    .line 541
    .end local v1    # "wasEmpty":Z
    :cond_2
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@27
    .line 511
    return-void
.end method

.method private hasFileChangedUnexpectedly()Z
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 161
    monitor-enter p0

    #@3
    .line 162
    :try_start_0
    iget v4, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-lez v4, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 165
    return v3

    #@9
    :cond_0
    monitor-exit p0

    #@a
    .line 175
    :try_start_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@11
    .line 176
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@13
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@1a
    move-result-object v1

    #@1b
    .line 181
    .local v1, "stat":Landroid/system/StructStat;
    monitor-enter p0

    #@1c
    .line 182
    :try_start_2
    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:J

    #@1e
    iget-wide v6, v1, Landroid/system/StructStat;->st_mtime:J

    #@20
    cmp-long v4, v4, v6

    #@22
    if-nez v4, :cond_1

    #@24
    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    #@26
    iget-wide v6, v1, Landroid/system/StructStat;->st_size:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@28
    cmp-long v4, v4, v6

    #@2a
    if-eqz v4, :cond_2

    #@2c
    :cond_1
    :goto_0
    monitor-exit p0

    #@2d
    return v2

    #@2e
    .line 161
    .end local v1    # "stat":Landroid/system/StructStat;
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit p0

    #@30
    throw v2

    #@31
    .line 177
    :catch_0
    move-exception v0

    #@32
    .line 178
    .local v0, "e":Landroid/system/ErrnoException;
    return v2

    #@33
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "stat":Landroid/system/StructStat;
    :cond_2
    move v2, v3

    #@34
    .line 182
    goto :goto_0

    #@35
    .line 181
    :catchall_1
    move-exception v2

    #@36
    monitor-exit p0

    #@37
    throw v2
.end method

.method private loadFromDiskLocked()V
    .locals 11

    #@0
    .prologue
    .line 98
    iget-boolean v8, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    #@2
    if-eqz v8, :cond_0

    #@4
    .line 99
    return-void

    #@5
    .line 101
    :cond_0
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    #@7
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_1

    #@d
    .line 102
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@f
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    #@12
    .line 103
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    #@14
    iget-object v9, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@16
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@19
    .line 107
    :cond_1
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@1b
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_2

    #@21
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@23
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_4

    #@29
    .line 111
    :cond_2
    :goto_0
    const/4 v4, 0x0

    #@2a
    .line 112
    .local v4, "map":Ljava/util/Map;
    const/4 v5, 0x0

    #@2b
    .line 114
    .local v5, "stat":Landroid/system/StructStat;
    :try_start_0
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@2d
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    invoke-static {v8}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@34
    move-result-object v5

    #@35
    .line 115
    .local v5, "stat":Landroid/system/StructStat;
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@37
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    #@3a
    move-result v8

    #@3b
    if-eqz v8, :cond_3

    #@3d
    .line 116
    const/4 v6, 0x0

    #@3e
    .line 118
    .local v6, "str":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedInputStream;

    #@40
    .line 119
    new-instance v8, Ljava/io/FileInputStream;

    #@42
    iget-object v9, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@44
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@47
    const/16 v9, 0x4000

    #@49
    .line 118
    invoke-direct {v7, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    .line 120
    .end local v6    # "str":Ljava/io/BufferedInputStream;
    .local v7, "str":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4f
    move-result-object v4

    #@50
    .line 128
    .local v4, "map":Ljava/util/Map;
    :try_start_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1

    #@53
    .line 133
    .end local v4    # "map":Ljava/util/Map;
    .end local v5    # "stat":Landroid/system/StructStat;
    .end local v7    # "str":Ljava/io/BufferedInputStream;
    :cond_3
    :goto_1
    const/4 v8, 0x1

    #@54
    iput-boolean v8, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    #@56
    .line 134
    if-eqz v4, :cond_5

    #@58
    .line 135
    iput-object v4, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@5a
    .line 136
    iget-wide v8, v5, Landroid/system/StructStat;->st_mtime:J

    #@5c
    iput-wide v8, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:J

    #@5e
    .line 137
    iget-wide v8, v5, Landroid/system/StructStat;->st_size:J

    #@60
    iput-wide v8, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    #@62
    .line 141
    :goto_2
    invoke-virtual {p0}, Landroid/app/SharedPreferencesImpl;->notifyAll()V

    #@65
    .line 97
    return-void

    #@66
    .line 108
    :cond_4
    const-string/jumbo v8, "SharedPreferencesImpl"

    #@69
    new-instance v9, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v10, "Attempt to read preferences file "

    #@71
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    iget-object v10, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    const-string/jumbo v10, " without permission"

    #@7e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    goto :goto_0

    #@8a
    .line 125
    .local v4, "map":Ljava/util/Map;
    .restart local v5    # "stat":Landroid/system/StructStat;
    .restart local v6    # "str":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v2

    #@8b
    .line 126
    .end local v6    # "str":Ljava/io/BufferedInputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string/jumbo v8, "SharedPreferencesImpl"

    #@8e
    const-string/jumbo v9, "getSharedPreferences"

    #@91
    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@94
    .line 128
    :try_start_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1

    #@97
    goto :goto_1

    #@98
    .line 131
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "map":Ljava/util/Map;
    .end local v5    # "stat":Landroid/system/StructStat;
    :catch_1
    move-exception v0

    #@99
    .local v0, "e":Landroid/system/ErrnoException;
    goto :goto_1

    #@9a
    .line 123
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v4    # "map":Ljava/util/Map;
    .restart local v5    # "stat":Landroid/system/StructStat;
    .restart local v6    # "str":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v1

    #@9b
    .line 124
    .end local v6    # "str":Ljava/io/BufferedInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    const-string/jumbo v8, "SharedPreferencesImpl"

    #@9e
    const-string/jumbo v9, "getSharedPreferences"

    #@a1
    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@a4
    .line 128
    :try_start_7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_1

    #@a7
    goto :goto_1

    #@a8
    .line 121
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "str":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v3

    #@a9
    .line 122
    .end local v6    # "str":Ljava/io/BufferedInputStream;
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    :try_start_8
    const-string/jumbo v8, "SharedPreferencesImpl"

    #@ac
    const-string/jumbo v9, "getSharedPreferences"

    #@af
    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@b2
    .line 128
    :try_start_9
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b5
    goto :goto_1

    #@b6
    .line 127
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v8

    #@b7
    .line 128
    :goto_6
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ba
    .line 127
    throw v8
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_1

    #@bb
    .line 139
    .end local v4    # "map":Ljava/util/Map;
    .end local v5    # "stat":Landroid/system/StructStat;
    :cond_5
    new-instance v8, Ljava/util/HashMap;

    #@bd
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@c0
    iput-object v8, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@c2
    goto :goto_2

    #@c3
    .line 127
    .restart local v4    # "map":Ljava/util/Map;
    .restart local v5    # "stat":Landroid/system/StructStat;
    .restart local v7    # "str":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v8

    #@c4
    move-object v6, v7

    #@c5
    .end local v7    # "str":Ljava/io/BufferedInputStream;
    .local v6, "str":Ljava/io/BufferedInputStream;
    goto :goto_6

    #@c6
    .line 121
    .end local v6    # "str":Ljava/io/BufferedInputStream;
    .restart local v7    # "str":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v3

    #@c7
    .restart local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v6, v7

    #@c8
    .end local v7    # "str":Ljava/io/BufferedInputStream;
    .restart local v6    # "str":Ljava/io/BufferedInputStream;
    goto :goto_5

    #@c9
    .line 123
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6    # "str":Ljava/io/BufferedInputStream;
    .restart local v7    # "str":Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v1

    #@ca
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    #@cb
    .end local v7    # "str":Ljava/io/BufferedInputStream;
    .restart local v6    # "str":Ljava/io/BufferedInputStream;
    goto :goto_4

    #@cc
    .line 125
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "str":Ljava/io/BufferedInputStream;
    .restart local v7    # "str":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v2

    #@cd
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v6, v7

    #@ce
    .end local v7    # "str":Ljava/io/BufferedInputStream;
    .restart local v6    # "str":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "prefsFile"    # Ljava/io/File;

    #@0
    .prologue
    .line 145
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ".bak"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1d
    return-object v0
.end method

.method private startLoadFromDisk()V
    .locals 2

    #@0
    .prologue
    .line 85
    monitor-enter p0

    #@1
    .line 86
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 88
    new-instance v0, Landroid/app/SharedPreferencesImpl$1;

    #@7
    const-string/jumbo v1, "SharedPreferencesImpl-load"

    #@a
    invoke-direct {v0, p0, v1}, Landroid/app/SharedPreferencesImpl$1;-><init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V

    #@d
    invoke-virtual {v0}, Landroid/app/SharedPreferencesImpl$1;->start()V

    #@10
    .line 84
    return-void

    #@11
    .line 85
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method private writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 9
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 570
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_2

    #@a
    .line 571
    iget-boolean v5, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    #@c
    if-nez v5, :cond_0

    #@e
    .line 576
    invoke-virtual {p1, v6}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    #@11
    .line 577
    return-void

    #@12
    .line 579
    :cond_0
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    #@14
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_1

    #@1a
    .line 580
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@1c
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    #@1e
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_2

    #@24
    .line 581
    const-string/jumbo v5, "SharedPreferencesImpl"

    #@27
    new-instance v6, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v7, "Couldn\'t rename file "

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    .line 582
    const-string/jumbo v7, " to backup file "

    #@3c
    .line 581
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    .line 582
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    #@42
    .line 581
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 583
    invoke-virtual {p1, v8}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    #@50
    .line 584
    return-void

    #@51
    .line 587
    :cond_1
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@53
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@56
    .line 595
    :cond_2
    :try_start_0
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@58
    invoke-static {v5}, Landroid/app/SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    #@5b
    move-result-object v4

    #@5c
    .line 596
    .local v4, "str":Ljava/io/FileOutputStream;
    if-nez v4, :cond_3

    #@5e
    .line 597
    const/4 v5, 0x0

    #@5f
    invoke-virtual {p1, v5}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    #@62
    .line 598
    return-void

    #@63
    .line 600
    :cond_3
    iget-object v5, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    #@65
    invoke-static {v5, v4}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    #@68
    .line 601
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@6b
    .line 602
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    #@6e
    .line 603
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@70
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    iget v6, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    #@76
    const/4 v7, 0x0

    #@77
    invoke-static {v5, v6, v7}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@7a
    .line 605
    :try_start_1
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@7c
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@7f
    move-result-object v5

    #@80
    invoke-static {v5}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@83
    move-result-object v3

    #@84
    .line 606
    .local v3, "stat":Landroid/system/StructStat;
    monitor-enter p0
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@85
    .line 607
    :try_start_2
    iget-wide v6, v3, Landroid/system/StructStat;->st_mtime:J

    #@87
    iput-wide v6, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:J

    #@89
    .line 608
    iget-wide v6, v3, Landroid/system/StructStat;->st_size:J

    #@8b
    iput-wide v6, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8d
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@8e
    .line 614
    .end local v3    # "stat":Landroid/system/StructStat;
    :goto_0
    :try_start_4
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    #@90
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@93
    .line 615
    const/4 v5, 0x1

    #@94
    invoke-virtual {p1, v5}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@97
    .line 616
    return-void

    #@98
    .line 606
    .restart local v3    # "stat":Landroid/system/StructStat;
    :catchall_0
    move-exception v5

    #@99
    :try_start_5
    monitor-exit p0

    #@9a
    throw v5
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@9b
    .line 610
    .end local v3    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    #@9c
    .local v0, "e":Landroid/system/ErrnoException;
    goto :goto_0

    #@9d
    .line 619
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v4    # "str":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    #@9e
    .line 620
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SharedPreferencesImpl"

    #@a1
    const-string/jumbo v6, "writeToFile: Got exception:"

    #@a4
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a7
    .line 623
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@a9
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    #@ac
    move-result v5

    #@ad
    if-eqz v5, :cond_4

    #@af
    .line 624
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@b1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@b4
    move-result v5

    #@b5
    if-nez v5, :cond_4

    #@b7
    .line 625
    const-string/jumbo v5, "SharedPreferencesImpl"

    #@ba
    new-instance v6, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v7, "Couldn\'t clean up partially-written file "

    #@c2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v6

    #@c6
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    #@c8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v6

    #@cc
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 628
    :cond_4
    invoke-virtual {p1, v8}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    #@d6
    .line 568
    return-void

    #@d7
    .line 617
    :catch_2
    move-exception v2

    #@d8
    .line 618
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "SharedPreferencesImpl"

    #@db
    const-string/jumbo v6, "writeToFile: Got exception:"

    #@de
    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e1
    goto :goto_1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    monitor-enter p0

    #@1
    .line 270
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    #@4
    .line 271
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    .line 269
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    #@0
    .prologue
    .line 283
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 287
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl;

    #@7
    invoke-direct {v0, p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/SharedPreferencesImpl;)V

    #@a
    return-object v0

    #@b
    .line 283
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 214
    monitor-enter p0

    #@1
    .line 215
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    #@4
    .line 217
    new-instance v0, Ljava/util/HashMap;

    #@6
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@8
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    return-object v0

    #@d
    .line 214
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    #@0
    .prologue
    .line 261
    monitor-enter p0

    #@1
    .line 262
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    #@4
    .line 263
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Boolean;

    #@c
    .line 264
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result p2

    #@12
    .end local p2    # "defValue":Z
    :cond_0
    monitor-exit p0

    #@13
    return p2

    #@14
    .line 261
    .end local v0    # "v":Ljava/lang/Boolean;
    .restart local p2    # "defValue":Z
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    #@0
    .prologue
    .line 254
    monitor-enter p0

    #@1
    .line 255
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    #@4
    .line 256
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Float;

    #@c
    .line 257
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result p2

    #@12
    .end local p2    # "defValue":F
    :cond_0
    monitor-exit p0

    #@13
    return p2

    #@14
    .line 254
    .end local v0    # "v":Ljava/lang/Float;
    .restart local p2    # "defValue":F
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 240
    monitor-enter p0

    #@1
    .line 241
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    #@4
    .line 242
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Integer;

    #@c
    .line 243
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result p2

    #@12
    .end local p2    # "defValue":I
    :cond_0
    monitor-exit p0

    #@13
    return p2

    #@14
    .line 240
    .end local v0    # "v":Ljava/lang/Integer;
    .restart local p2    # "defValue":I
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    #@0
    .prologue
    .line 247
    monitor-enter p0

    #@1
    .line 248
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    #@4
    .line 249
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Long;

    #@c
    .line 250
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-wide p2

    #@12
    .end local p2    # "defValue":J
    :cond_0
    monitor-exit p0

    #@13
    return-wide p2

    #@14
    .line 247
    .end local v0    # "v":Ljava/lang/Long;
    .restart local p2    # "defValue":J
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 223
    monitor-enter p0

    #@1
    .line 224
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    #@4
    .line 225
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 226
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .end local v0    # "v":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    #@f
    return-object v0

    #@10
    .restart local v0    # "v":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    #@11
    goto :goto_0

    #@12
    .line 223
    .end local v0    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 232
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    #@1
    .line 233
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    #@4
    .line 234
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 235
    .local v0, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    #@e
    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    #@f
    return-object v0

    #@10
    .restart local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    move-object v0, p2

    #@11
    goto :goto_0

    #@12
    .line 232
    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    #@0
    .prologue
    .line 187
    monitor-enter p0

    #@1
    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    #@3
    sget-object v1, Landroid/app/SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    #@5
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 186
    return-void

    #@a
    .line 187
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method startReloadIfChangedUnexpectedly()V
    .locals 1

    #@0
    .prologue
    .line 149
    monitor-enter p0

    #@1
    .line 151
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 152
    return-void

    #@9
    .line 154
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 148
    return-void

    #@e
    .line 149
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    #@0
    .prologue
    .line 193
    monitor-enter p0

    #@1
    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 192
    return-void

    #@8
    .line 193
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

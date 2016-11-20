.class public Lcom/android/server/am/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;,
        Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$WriteQueueItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final FLUSH_QUEUE:J = -0x1L

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field private static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field private static final PERSISTED_TASK_IDS_FILENAME:Ljava/lang/String; = "persisted_taskIds.txt"

.field private static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field private static final RECENTS_FILENAME:Ljava/lang/String; = "_task"

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_EXTENSION:Ljava/lang/String; = ".xml"


# instance fields
.field private final mIoLock:Ljava/lang/Object;

.field private final mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

.field private mNextWriteTime:J

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTaskIdsDir:Ljava/io/File;

.field private final mTaskIdsInFile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field mWriteQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/TaskPersister;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/TaskPersister;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/am/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "persistentTaskIds"    # Landroid/util/ArraySet;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/TaskPersister;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->writeTaskIdsFiles()V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "workingDir"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 88
    new-instance v0, Landroid/util/SparseArray;

    #@6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@b
    .line 91
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    #@12
    .line 100
    const-wide/16 v0, 0x0

    #@14
    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@16
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@1d
    .line 152
    iput-object p1, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    #@1f
    .line 153
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@21
    .line 154
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@23
    .line 155
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@25
    .line 156
    new-instance v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@27
    const-string/jumbo v1, "LazyTaskWriterThreadTest"

    #@2a
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@2f
    .line 151
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V
    .locals 5
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p4, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    new-instance v2, Landroid/util/SparseArray;

    #@5
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@a
    .line 91
    new-instance v2, Ljava/lang/Object;

    #@c
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    #@11
    .line 100
    const-wide/16 v2, 0x0

    #@13
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@15
    .line 124
    new-instance v2, Ljava/util/ArrayList;

    #@17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@1c
    .line 129
    new-instance v0, Ljava/io/File;

    #@1e
    const-string/jumbo v2, "recent_images"

    #@21
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@24
    .line 130
    .local v0, "legacyImagesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_0

    #@2a
    .line 131
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_2

    #@30
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_2

    #@36
    .line 136
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    #@38
    const-string/jumbo v2, "recent_tasks"

    #@3b
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3e
    .line 137
    .local v1, "legacyTasksDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_1

    #@44
    .line 138
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_3

    #@4a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_3

    #@50
    .line 143
    :cond_1
    :goto_1
    new-instance v2, Ljava/io/File;

    #@52
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@55
    move-result-object v3

    #@56
    const-string/jumbo v4, "system_de"

    #@59
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5c
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    #@5e
    .line 144
    iput-object p2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@60
    .line 145
    iput-object p3, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@62
    .line 146
    iput-object p4, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@64
    .line 147
    new-instance v2, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@66
    const-string/jumbo v3, "LazyTaskWriterThread"

    #@69
    invoke-direct {v2, p0, v3}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    #@6c
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@6e
    .line 127
    return-void

    #@6f
    .line 132
    .end local v1    # "legacyTasksDir":Ljava/io/File;
    :cond_2
    const-string/jumbo v2, "TaskPersister"

    #@72
    new-instance v3, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v4, "Failure deleting legacy images directory: "

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    goto :goto_0

    #@8a
    .line 139
    .restart local v1    # "legacyTasksDir":Ljava/io/File;
    :cond_3
    const-string/jumbo v2, "TaskPersister"

    #@8d
    new-instance v3, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v4, "Failure deleting legacy tasks directory: "

    #@95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v3

    #@a1
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    goto :goto_1
.end method

.method private static createParentDirectory(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 611
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    .line 612
    .local v0, "parentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@12
    move-result v1

    #@13
    :goto_0
    return v1

    #@14
    :cond_0
    const/4 v1, 0x1

    #@15
    goto :goto_0
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 380
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 382
    .local v2, "newline":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    #@7
    new-instance v5, Ljava/io/FileReader;

    #@9
    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@c
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@f
    .line 383
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuffer;

    #@11
    invoke-virtual {p1}, Ljava/io/File;->length()J

    #@14
    move-result-wide v6

    #@15
    long-to-int v5, v6

    #@16
    mul-int/lit8 v5, v5, 0x2

    #@18
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@1b
    .line 385
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@21
    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 390
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    #@37
    .line 391
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "TaskPersister"

    #@3a
    new-instance v6, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v7, "Couldn\'t read file "

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 392
    return-object v8

    #@56
    .line 388
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    #@59
    .line 389
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    move-result-object v5

    #@5d
    return-object v5
.end method

.method static getUserImagesDir(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 607
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "recent_images"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method private getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 587
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    #@4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    .line 588
    .local v0, "userTaskIdsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 591
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    #@19
    const-string/jumbo v2, "persisted_taskIds.txt"

    #@1c
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1f
    return-object v1

    #@20
    .line 589
    :cond_1
    const-string/jumbo v1, "TaskPersister"

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "Error while creating user directory: "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    goto :goto_0
.end method

.method static getUserTasksDir(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 595
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "recent_tasks"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 597
    .local v0, "userTasksDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 598
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 599
    const-string/jumbo v1, "TaskPersister"

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Failure creating tasks directory for user "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const-string/jumbo v3, ": "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 603
    :cond_0
    return-object v0
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 570
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v3

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 573
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@8
    invoke-virtual {v2}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v0

    #@c
    .local v0, "candidateUserIds":[I
    monitor-exit v3

    #@d
    .line 570
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@10
    .line 575
    const/4 v2, 0x0

    #@11
    array-length v3, v0

    #@12
    :goto_0
    if-ge v2, v3, :cond_0

    #@14
    aget v1, v0, v2

    #@16
    .line 576
    .local v1, "userId":I
    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {p1, v4}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    #@21
    .line 577
    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@28
    move-result-object v4

    #@29
    invoke-static {p1, v4}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    #@2c
    .line 575
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 570
    .end local v0    # "candidateUserIds":[I
    .end local v1    # "userId":I
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@34
    throw v2

    #@35
    .line 568
    .restart local v0    # "candidateUserIds":[I
    :cond_0
    return-void
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .locals 9
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 521
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    #@2
    .line 522
    const-string/jumbo v6, "TaskPersister"

    #@5
    const-string/jumbo v7, "File error accessing recents directory (directory doesn\'t exist?)."

    #@8
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 523
    return-void

    #@c
    .line 525
    :cond_0
    const/4 v2, 0x0

    #@d
    .local v2, "fileNdx":I
    :goto_0
    array-length v6, p1

    #@e
    if-ge v2, v6, :cond_2

    #@10
    .line 526
    aget-object v1, p1, v2

    #@12
    .line 527
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 528
    .local v3, "filename":Ljava/lang/String;
    const/16 v6, 0x5f

    #@18
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@1b
    move-result v5

    #@1c
    .line 529
    .local v5, "taskIdEnd":I
    if-lez v5, :cond_1

    #@1e
    .line 532
    const/4 v6, 0x0

    #@1f
    :try_start_0
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result v4

    #@27
    .line 539
    .local v4, "taskId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@2e
    move-result v6

    #@2f
    if-nez v6, :cond_1

    #@31
    .line 541
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@34
    .line 525
    .end local v4    # "taskId":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_0

    #@37
    .line 534
    :catch_0
    move-exception v0

    #@38
    .line 535
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TaskPersister"

    #@3b
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v8, "removeObsoleteFiles: Can\'t parse file="

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 536
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@59
    goto :goto_1

    #@5a
    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "taskIdEnd":I
    :cond_2
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 166
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 167
    .local v2, "taskString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v4

    #@c
    add-int/lit8 v1, v4, -0x1

    #@e
    .local v1, "queueNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@10
    .line 168
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@18
    .line 169
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v4, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 170
    new-instance v3, Ljava/io/File;

    #@1e
    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@20
    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v4, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    #@22
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@25
    .line 171
    .local v3, "thumbnailFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_0

    #@2f
    .line 176
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@34
    .line 167
    .end local v3    # "thumbnailFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@36
    goto :goto_0

    #@37
    .line 165
    :cond_1
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 583
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 359
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    #@3
    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@6
    .line 360
    .local v1, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/StringWriter;

    #@8
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    #@b
    .line 361
    .local v0, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    #@e
    .line 367
    const/4 v2, 0x1

    #@f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@16
    .line 369
    const-string/jumbo v2, "task"

    #@19
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c
    .line 370
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1f
    .line 371
    const-string/jumbo v2, "task"

    #@22
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 373
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@28
    .line 374
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    #@2b
    .line 376
    return-object v0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x0

    #@1
    .line 397
    if-gez p1, :cond_0

    #@3
    .line 398
    return-object v5

    #@4
    .line 400
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    add-int/lit8 v1, v2, -0x1

    #@a
    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    #@c
    .line 401
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@12
    .line 402
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@14
    if-ne v2, p1, :cond_1

    #@16
    .line 403
    return-object v0

    #@17
    .line 400
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 406
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const-string/jumbo v2, "TaskPersister"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "Restore affiliation error looking for taskId="

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 407
    return-object v5
.end method

.method private writeTaskIdsFiles()V
    .locals 11

    #@0
    .prologue
    .line 548
    new-instance v0, Landroid/util/SparseArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5
    .line 549
    .local v0, "changedTaskIdsPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    iget-object v7, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    monitor-enter v7

    #@8
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@b
    .line 550
    iget-object v6, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@d
    invoke-virtual {v6}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I

    #@10
    move-result-object v8

    #@11
    const/4 v6, 0x0

    #@12
    array-length v9, v8

    #@13
    :goto_0
    if-ge v6, v9, :cond_1

    #@15
    aget v5, v8, v6

    #@17
    .line 551
    .local v5, "userId":I
    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@19
    iget-object v10, v10, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/util/SparseBooleanArray;

    #@21
    .line 552
    .local v3, "taskIdsToSave":Landroid/util/SparseBooleanArray;
    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/util/SparseBooleanArray;

    #@29
    .line 553
    .local v2, "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_0

    #@2b
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v10

    #@2f
    if-eqz v10, :cond_0

    #@31
    .line 550
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@33
    goto :goto_0

    #@34
    .line 556
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    #@37
    move-result-object v4

    #@38
    .line 557
    .local v4, "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@3a
    invoke-virtual {v10, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    .line 558
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    goto :goto_1

    #@41
    .line 549
    .end local v2    # "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    .end local v3    # "taskIdsToSave":Landroid/util/SparseBooleanArray;
    .end local v4    # "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    .end local v5    # "userId":I
    :catchall_0
    move-exception v6

    #@42
    monitor-exit v7

    #@43
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@46
    throw v6

    #@47
    :cond_1
    monitor-exit v7

    #@48
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@4b
    .line 562
    const/4 v1, 0x0

    #@4c
    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@4f
    move-result v6

    #@50
    if-ge v1, v6, :cond_2

    #@52
    .line 563
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@55
    move-result-object v6

    #@56
    check-cast v6, Landroid/util/SparseBooleanArray;

    #@58
    .line 564
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@5b
    move-result v7

    #@5c
    .line 563
    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    #@5f
    .line 562
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_2

    #@62
    .line 547
    :cond_2
    return-void
.end method

.method private yieldIfQueueTooDeep()V
    .locals 6

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    .line 184
    .local v0, "stall":Z
    monitor-enter p0

    #@2
    .line 185
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    const-wide/16 v4, -0x1

    #@6
    cmp-long v1, v2, v4

    #@8
    if-nez v1, :cond_0

    #@a
    .line 186
    const/4 v0, 0x1

    #@b
    :cond_0
    monitor-exit p0

    #@c
    .line 189
    if-eqz v0, :cond_1

    #@e
    .line 190
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@11
    .line 182
    :cond_1
    return-void

    #@12
    .line 184
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method


# virtual methods
.method flush()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 290
    monitor-enter p0

    #@3
    .line 291
    const-wide/16 v2, -0x1

    #@5
    :try_start_0
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@7
    .line 292
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 295
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 298
    :goto_0
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-eqz v1, :cond_0

    #@13
    monitor-exit p0

    #@14
    .line 289
    return-void

    #@15
    .line 296
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@17
    .line 290
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@18
    monitor-exit p0

    #@19
    throw v1
.end method

.method getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 343
    monitor-enter p0

    #@1
    .line 344
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v3, v4, -0x1

    #@9
    .local v3, "queueNdx":I
    :goto_0
    if-ltz v3, :cond_1

    #@b
    .line 345
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@13
    .line 346
    .local v2, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v4, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 347
    move-object v0, v2

    #@18
    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@1a
    move-object v1, v0

    #@1b
    .line 348
    .local v1, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    #@1d
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 349
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit p0

    #@26
    return-object v4

    #@27
    .line 344
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 353
    .end local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_1
    const/4 v4, 0x0

    #@2b
    monitor-exit p0

    #@2c
    return-object v4

    #@2d
    .line 343
    .end local v3    # "queueNdx":I
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit p0

    #@2f
    throw v4
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    .line 336
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@6
    .line 337
    return-object v0

    #@7
    .line 339
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .locals 13
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 196
    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v8

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 197
    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v8

    #@e
    check-cast v8, Landroid/util/SparseBooleanArray;

    #@10
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    #@13
    move-result-object v8

    #@14
    return-object v8

    #@15
    .line 199
    :cond_0
    new-instance v4, Landroid/util/SparseBooleanArray;

    #@17
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    #@1a
    .line 200
    .local v4, "persistedTaskIds":Landroid/util/SparseBooleanArray;
    iget-object v9, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    #@1c
    monitor-enter v9

    #@1d
    .line 201
    const/4 v5, 0x0

    #@1e
    .line 204
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    #@20
    new-instance v8, Ljava/io/FileReader;

    #@22
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    #@25
    move-result-object v10

    #@26
    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@29
    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2c
    .line 205
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@32
    .line 206
    const-string/jumbo v8, "\\s+"

    #@35
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@38
    move-result-object v10

    #@39
    const/4 v8, 0x0

    #@3a
    array-length v11, v10

    #@3b
    :goto_0
    if-ge v8, v11, :cond_1

    #@3d
    aget-object v7, v10, v8

    #@3f
    .line 207
    .local v7, "taskIdString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@42
    move-result v2

    #@43
    .line 208
    .local v2, "id":I
    const/4 v12, 0x1

    #@44
    invoke-virtual {v4, v2, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@47
    .line 206
    add-int/lit8 v8, v8, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 216
    .end local v2    # "id":I
    .end local v7    # "taskIdString":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@4d
    move-object v5, v6

    #@4e
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_1
    monitor-exit v9

    #@4f
    .line 219
    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@51
    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@54
    .line 220
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    #@57
    move-result-object v8

    #@58
    return-object v8

    #@59
    .line 213
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    #@5a
    .line 214
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v8, "TaskPersister"

    #@5d
    new-instance v10, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v11, "Error while reading taskIds file for user "

    #@65
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v10

    #@69
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v10

    #@6d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v10

    #@71
    invoke-static {v8, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@74
    .line 216
    :try_start_4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@77
    goto :goto_1

    #@78
    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@79
    :goto_3
    monitor-exit v9

    #@7a
    throw v8

    #@7b
    .line 211
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    #@7c
    .line 216
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@7f
    goto :goto_1

    #@80
    .line 215
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v8

    #@81
    .line 216
    :goto_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@84
    .line 215
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@85
    .line 200
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    #@86
    move-object v5, v6

    #@87
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    #@88
    .line 215
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v8

    #@89
    move-object v5, v6

    #@8a
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@8b
    .line 211
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    #@8c
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    #@8d
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    #@8e
    .line 213
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    #@8f
    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v5, v6

    #@90
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method restoreTasksForUserLocked(I)Ljava/util/List;
    .locals 21
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 411
    new-instance v16, Ljava/util/ArrayList;

    #@2
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 412
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v11, Landroid/util/ArraySet;

    #@7
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 414
    .local v11, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    #@d
    move-result-object v17

    #@e
    .line 416
    .local v17, "userTasksDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@11
    move-result-object v10

    #@12
    .line 417
    .local v10, "recentFiles":[Ljava/io/File;
    if-nez v10, :cond_0

    #@14
    .line 418
    const-string/jumbo v18, "TaskPersister"

    #@17
    new-instance v19, Ljava/lang/StringBuilder;

    #@19
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v20, "restoreTasksForUserLocked: Unable to list files from "

    #@1f
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v19

    #@23
    move-object/from16 v0, v19

    #@25
    move-object/from16 v1, v17

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v19

    #@2b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v19

    #@2f
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 419
    return-object v16

    #@33
    .line 422
    :cond_0
    const/4 v15, 0x0

    #@34
    .local v15, "taskNdx":I
    :goto_0
    array-length v0, v10

    #@35
    move/from16 v18, v0

    #@37
    move/from16 v0, v18

    #@39
    if-ge v15, v0, :cond_a

    #@3b
    .line 423
    aget-object v13, v10, v15

    #@3d
    .line 428
    .local v13, "taskFile":Ljava/io/File;
    const/4 v8, 0x0

    #@3e
    .line 429
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    #@3f
    .line 431
    .local v3, "deleteFile":Z
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    #@41
    new-instance v18, Ljava/io/FileReader;

    #@43
    move-object/from16 v0, v18

    #@45
    invoke-direct {v0, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@48
    move-object/from16 v0, v18

    #@4a
    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4d
    .line 432
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@50
    move-result-object v6

    #@51
    .line 433
    .local v6, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@54
    .line 436
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@57
    move-result v5

    #@58
    .local v5, "event":I
    const/16 v18, 0x1

    #@5a
    move/from16 v0, v18

    #@5c
    if-eq v5, v0, :cond_8

    #@5e
    .line 437
    const/16 v18, 0x3

    #@60
    move/from16 v0, v18

    #@62
    if-eq v5, v0, :cond_8

    #@64
    .line 438
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    .line 439
    .local v7, "name":Ljava/lang/String;
    const/16 v18, 0x2

    #@6a
    move/from16 v0, v18

    #@6c
    if-ne v5, v0, :cond_1

    #@6e
    .line 441
    const-string/jumbo v18, "task"

    #@71
    move-object/from16 v0, v18

    #@73
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v18

    #@77
    if-eqz v18, :cond_7

    #@79
    .line 442
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@7d
    move-object/from16 v18, v0

    #@7f
    move-object/from16 v0, v18

    #@81
    invoke-static {v6, v0}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    #@84
    move-result-object v12

    #@85
    .line 445
    .local v12, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v12, :cond_6

    #@87
    .line 451
    iget v14, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    #@89
    .line 452
    .local v14, "taskId":I
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@8d
    move-object/from16 v18, v0

    #@8f
    .line 453
    const/16 v19, 0x0

    #@91
    const/16 v20, 0x0

    #@93
    .line 452
    move-object/from16 v0, v18

    #@95
    move/from16 v1, v19

    #@97
    move/from16 v2, v20

    #@99
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZI)Lcom/android/server/am/TaskRecord;

    #@9c
    move-result-object v18

    #@9d
    if-eqz v18, :cond_3

    #@9f
    .line 455
    const-string/jumbo v18, "TaskPersister"

    #@a2
    new-instance v19, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v20, "Existing task with taskId "

    #@aa
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v19

    #@ae
    move-object/from16 v0, v19

    #@b0
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v19

    #@b4
    const-string/jumbo v20, "found"

    #@b7
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v19

    #@bb
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v19

    #@bf
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    .line 476
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "taskId":I
    :cond_1
    :goto_2
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c5
    goto :goto_1

    #@c6
    .line 478
    .end local v5    # "event":I
    .end local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@c7
    .local v4, "e":Ljava/lang/Exception;
    move-object v8, v9

    #@c8
    .line 479
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string/jumbo v18, "TaskPersister"

    #@cb
    new-instance v19, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v20, "Unable to parse "

    #@d3
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v19

    #@d7
    move-object/from16 v0, v19

    #@d9
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v19

    #@dd
    const-string/jumbo v20, ". Error "

    #@e0
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v19

    #@e4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v19

    #@e8
    move-object/from16 v0, v18

    #@ea
    move-object/from16 v1, v19

    #@ec
    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ef
    .line 480
    const-string/jumbo v18, "TaskPersister"

    #@f2
    new-instance v19, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v20, "Failing file: "

    #@fa
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v19

    #@fe
    move-object/from16 v0, p0

    #@100
    invoke-direct {v0, v13}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    #@103
    move-result-object v20

    #@104
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v19

    #@108
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v19

    #@10c
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@10f
    .line 481
    const/4 v3, 0x1

    #@110
    .line 483
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@113
    .line 484
    if-eqz v3, :cond_2

    #@115
    .line 486
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    #@118
    .line 422
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    add-int/lit8 v15, v15, 0x1

    #@11a
    goto/16 :goto_0

    #@11c
    .line 456
    .restart local v5    # "event":I
    .restart local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v14    # "taskId":I
    :cond_3
    :try_start_3
    iget v0, v12, Lcom/android/server/am/TaskRecord;->userId:I

    #@11e
    move/from16 v18, v0

    #@120
    move/from16 v0, p1

    #@122
    move/from16 v1, v18

    #@124
    if-eq v0, v1, :cond_5

    #@126
    .line 458
    const-string/jumbo v18, "TaskPersister"

    #@129
    new-instance v19, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v20, "Task with userId "

    #@131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v19

    #@135
    iget v0, v12, Lcom/android/server/am/TaskRecord;->userId:I

    #@137
    move/from16 v20, v0

    #@139
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v19

    #@13d
    const-string/jumbo v20, " found in "

    #@140
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v19

    #@144
    .line 459
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@147
    move-result-object v20

    #@148
    .line 458
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v19

    #@14c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v19

    #@150
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@153
    goto/16 :goto_2

    #@155
    .line 482
    .end local v5    # "event":I
    .end local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "name":Ljava/lang/String;
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "taskId":I
    :catchall_0
    move-exception v18

    #@156
    move-object v8, v9

    #@157
    .line 483
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :goto_5
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@15a
    .line 484
    if-eqz v3, :cond_4

    #@15c
    .line 486
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    #@15f
    .line 482
    :cond_4
    throw v18

    #@160
    .line 462
    .restart local v5    # "event":I
    .restart local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v14    # "taskId":I
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@164
    move-object/from16 v18, v0

    #@166
    move-object/from16 v0, v18

    #@168
    move/from16 v1, p1

    #@16a
    invoke-virtual {v0, v14, v1}, Lcom/android/server/am/ActivityStackSupervisor;->setNextTaskIdForUserLocked(II)V

    #@16d
    .line 463
    const/16 v18, 0x1

    #@16f
    move/from16 v0, v18

    #@171
    iput-boolean v0, v12, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@173
    .line 464
    move-object/from16 v0, v16

    #@175
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@178
    .line 465
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17b
    move-result-object v18

    #@17c
    move-object/from16 v0, v18

    #@17e
    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@181
    goto/16 :goto_2

    #@183
    .line 468
    .end local v14    # "taskId":I
    :cond_6
    const-string/jumbo v18, "TaskPersister"

    #@186
    new-instance v19, Ljava/lang/StringBuilder;

    #@188
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    const-string/jumbo v20, "restoreTasksForUserLocked: Unable to restore taskFile="

    #@18e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v19

    #@192
    move-object/from16 v0, v19

    #@194
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v19

    #@198
    .line 469
    const-string/jumbo v20, ": "

    #@19b
    .line 468
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v19

    #@19f
    .line 469
    move-object/from16 v0, p0

    #@1a1
    invoke-direct {v0, v13}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    #@1a4
    move-result-object v20

    #@1a5
    .line 468
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v19

    #@1a9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v19

    #@1ad
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b0
    goto/16 :goto_2

    #@1b2
    .line 472
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    :cond_7
    const-string/jumbo v18, "TaskPersister"

    #@1b5
    new-instance v19, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v20, "restoreTasksForUserLocked: Unknown xml event="

    #@1bd
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v19

    #@1c1
    move-object/from16 v0, v19

    #@1c3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v19

    #@1c7
    .line 473
    const-string/jumbo v20, " name="

    #@1ca
    .line 472
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v19

    #@1ce
    move-object/from16 v0, v19

    #@1d0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v19

    #@1d4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v19

    #@1d8
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1db
    goto/16 :goto_2

    #@1dd
    .line 483
    .end local v7    # "name":Ljava/lang/String;
    :cond_8
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e0
    .line 484
    if-eqz v3, :cond_9

    #@1e2
    .line 486
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    #@1e5
    :cond_9
    move-object v8, v9

    #@1e6
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    #@1e8
    .line 492
    .end local v3    # "deleteFile":Z
    .end local v5    # "event":I
    .end local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "taskFile":Ljava/io/File;
    :cond_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@1eb
    move-result-object v18

    #@1ec
    move-object/from16 v0, v18

    #@1ee
    invoke-static {v11, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    #@1f1
    .line 496
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@1f4
    move-result v18

    #@1f5
    add-int/lit8 v15, v18, -0x1

    #@1f7
    :goto_6
    if-ltz v15, :cond_b

    #@1f9
    .line 497
    move-object/from16 v0, v16

    #@1fb
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1fe
    move-result-object v12

    #@1ff
    check-cast v12, Lcom/android/server/am/TaskRecord;

    #@201
    .line 498
    .restart local v12    # "task":Lcom/android/server/am/TaskRecord;
    iget v0, v12, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@203
    move/from16 v18, v0

    #@205
    move-object/from16 v0, p0

    #@207
    move/from16 v1, v18

    #@209
    move-object/from16 v2, v16

    #@20b
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    #@20e
    move-result-object v18

    #@20f
    move-object/from16 v0, v18

    #@211
    invoke-virtual {v12, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@214
    .line 499
    iget v0, v12, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@216
    move/from16 v18, v0

    #@218
    move-object/from16 v0, p0

    #@21a
    move/from16 v1, v18

    #@21c
    move-object/from16 v2, v16

    #@21e
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    #@221
    move-result-object v18

    #@222
    move-object/from16 v0, v18

    #@224
    invoke-virtual {v12, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@227
    .line 496
    add-int/lit8 v15, v15, -0x1

    #@229
    goto :goto_6

    #@22a
    .line 502
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    :cond_b
    new-instance v18, Lcom/android/server/am/TaskPersister$1;

    #@22c
    move-object/from16 v0, v18

    #@22e
    move-object/from16 v1, p0

    #@230
    invoke-direct {v0, v1}, Lcom/android/server/am/TaskPersister$1;-><init>(Lcom/android/server/am/TaskPersister;)V

    #@233
    move-object/from16 v0, v16

    #@235
    move-object/from16 v1, v18

    #@237
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@23a
    .line 515
    return-object v16

    #@23b
    .line 482
    .restart local v3    # "deleteFile":Z
    .restart local v13    # "taskFile":Ljava/io/File;
    :catchall_1
    move-exception v18

    #@23c
    goto/16 :goto_5

    #@23e
    .line 478
    .local v8, "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    #@23f
    .restart local v4    # "e":Ljava/lang/Exception;
    goto/16 :goto_3
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 10
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 303
    monitor-enter p0

    #@1
    .line 305
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v5

    #@7
    add-int/lit8 v4, v5, -0x1

    #@9
    .local v4, "queueNdx":I
    :goto_0
    if-ltz v4, :cond_0

    #@b
    .line 306
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@13
    .line 307
    .local v3, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v5, v3, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@15
    if-eqz v5, :cond_3

    #@17
    .line 308
    move-object v0, v3

    #@18
    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@1a
    move-object v2, v0

    #@1b
    .line 309
    .local v2, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v5, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    #@1d
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_3

    #@23
    .line 311
    iput-object p1, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    #@25
    .line 316
    .end local v2    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_0
    if-gez v4, :cond_1

    #@27
    .line 317
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@29
    new-instance v6, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@2b
    invoke-direct {v6, p2, p1}, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    #@2e
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 319
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v5

    #@37
    const/4 v6, 0x6

    #@38
    if-le v5, v6, :cond_4

    #@3a
    .line 320
    const-wide/16 v6, -0x1

    #@3c
    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@3e
    .line 327
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    monitor-exit p0

    #@42
    .line 330
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    #@45
    .line 302
    return-void

    #@46
    .line 305
    .restart local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    #@48
    goto :goto_0

    #@49
    .line 321
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_4
    :try_start_1
    iget-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@4b
    const-wide/16 v8, 0x0

    #@4d
    cmp-long v5, v6, v8

    #@4f
    if-nez v5, :cond_2

    #@51
    .line 322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@54
    move-result-wide v6

    #@55
    const-wide/16 v8, 0xbb8

    #@57
    add-long/2addr v6, v8

    #@58
    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    goto :goto_1

    #@5b
    .line 303
    .end local v4    # "queueNdx":I
    :catchall_0
    move-exception v5

    #@5c
    monitor-exit p0

    #@5d
    throw v5
.end method

.method startPersisting()V
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@2
    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->isAlive()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 161
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@a
    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->start()V

    #@d
    .line 159
    :cond_0
    return-void
.end method

.method unloadUserDataFromMemory(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    #@5
    .line 248
    return-void
.end method

.method wakeup(Lcom/android/server/am/TaskRecord;Z)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    #@0
    .prologue
    .line 253
    monitor-enter p0

    #@1
    .line 254
    if-eqz p1, :cond_5

    #@3
    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v1, v2, -0x1

    #@b
    .local v1, "queueNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@d
    .line 257
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@15
    .line 258
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@17
    if-eqz v2, :cond_4

    #@19
    .line 259
    check-cast v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@1b
    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    #@1d
    if-ne v2, p1, :cond_4

    #@1f
    .line 260
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@21
    if-nez v2, :cond_0

    #@23
    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeThumbnails(Lcom/android/server/am/TaskRecord;)V

    #@26
    .line 267
    :cond_0
    if-gez v1, :cond_1

    #@28
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@2a
    if-eqz v2, :cond_1

    #@2c
    .line 268
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@2e
    new-instance v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@30
    invoke-direct {v3, p1}, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/am/TaskRecord;)V

    #@33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 275
    .end local v1    # "queueNdx":I
    :cond_1
    :goto_1
    if-nez p2, :cond_2

    #@38
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@3d
    move-result v2

    #@3e
    const/4 v3, 0x6

    #@3f
    if-le v2, v3, :cond_6

    #@41
    .line 276
    :cond_2
    const-wide/16 v2, -0x1

    #@43
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@45
    .line 283
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    monitor-exit p0

    #@49
    .line 286
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    #@4c
    .line 252
    return-void

    #@4d
    .line 256
    .restart local v1    # "queueNdx":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@4f
    goto :goto_0

    #@50
    .line 273
    .end local v1    # "queueNdx":I
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@52
    new-instance v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@54
    const/4 v4, 0x0

    #@55
    invoke-direct {v3, v4}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$WriteQueueItem;)V

    #@58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    goto :goto_1

    #@5c
    .line 253
    :catchall_0
    move-exception v2

    #@5d
    monitor-exit p0

    #@5e
    throw v2

    #@5f
    .line 277
    :cond_6
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@61
    const-wide/16 v4, 0x0

    #@63
    cmp-long v2, v2, v4

    #@65
    if-nez v2, :cond_3

    #@67
    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6a
    move-result-wide v2

    #@6b
    const-wide/16 v4, 0xbb8

    #@6d
    add-long/2addr v2, v4

    #@6e
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@70
    goto :goto_2
.end method

.method writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .locals 9
    .param p1, "taskIds"    # Landroid/util/SparseBooleanArray;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 226
    if-gez p2, :cond_0

    #@2
    .line 227
    return-void

    #@3
    .line 229
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/am/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    #@6
    move-result-object v2

    #@7
    .line 230
    .local v2, "persistedTaskIdsFile":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    #@9
    monitor-enter v6

    #@a
    .line 231
    const/4 v3, 0x0

    #@b
    .line 233
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    #@d
    new-instance v5, Ljava/io/FileWriter;

    #@f
    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    #@12
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    .line 234
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .local v4, "writer":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    #@19
    move-result v5

    #@1a
    if-ge v1, v5, :cond_2

    #@1c
    .line 235
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_1

    #@22
    .line 236
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@25
    move-result v5

    #@26
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@2d
    .line 237
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@30
    .line 234
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 243
    :cond_2
    :try_start_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@36
    move-object v3, v4

    #@37
    .end local v1    # "i":I
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    monitor-exit v6

    #@38
    .line 225
    return-void

    #@39
    .line 240
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    #@3a
    .line 241
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "TaskPersister"

    #@3d
    new-instance v7, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v8, "Error while writing taskIds file for user "

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@54
    .line 243
    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@57
    goto :goto_1

    #@58
    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@59
    :goto_3
    monitor-exit v6

    #@5a
    throw v5

    #@5b
    .line 242
    :catchall_1
    move-exception v5

    #@5c
    .line 243
    :goto_4
    :try_start_5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5f
    .line 242
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@60
    .line 230
    .restart local v1    # "i":I
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v5

    #@61
    move-object v3, v4

    #@62
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .local v3, "writer":Ljava/io/BufferedWriter;
    goto :goto_3

    #@63
    .line 242
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v5

    #@64
    move-object v3, v4

    #@65
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_4

    #@66
    .line 240
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    #@67
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    #@68
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

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
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 88
    new-instance v0, Landroid/util/SparseArray;

    #@6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@b
    .line 98
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@f
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@16
    .line 150
    iput-object p1, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    #@18
    .line 151
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a
    .line 152
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    .line 153
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@1e
    .line 154
    new-instance v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@20
    const-string/jumbo v1, "LazyTaskWriterThreadTest"

    #@23
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    #@26
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@28
    .line 149
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
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    new-instance v2, Landroid/util/SparseArray;

    #@5
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@a
    .line 98
    const-wide/16 v2, 0x0

    #@c
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@e
    .line 122
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@15
    .line 127
    new-instance v0, Ljava/io/File;

    #@17
    const-string/jumbo v2, "recent_images"

    #@1a
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1d
    .line 128
    .local v0, "legacyImagesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 129
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2

    #@29
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 134
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    #@31
    const-string/jumbo v2, "recent_tasks"

    #@34
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@37
    .line 135
    .local v1, "legacyTasksDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_1

    #@3d
    .line 136
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_3

    #@43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_3

    #@49
    .line 141
    :cond_1
    :goto_1
    new-instance v2, Ljava/io/File;

    #@4b
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@4e
    move-result-object v3

    #@4f
    const-string/jumbo v4, "system_de"

    #@52
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@55
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    #@57
    .line 142
    iput-object p2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@59
    .line 143
    iput-object p3, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5b
    .line 144
    iput-object p4, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@5d
    .line 145
    new-instance v2, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@5f
    const-string/jumbo v3, "LazyTaskWriterThread"

    #@62
    invoke-direct {v2, p0, v3}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    #@65
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@67
    .line 125
    return-void

    #@68
    .line 130
    .end local v1    # "legacyTasksDir":Ljava/io/File;
    :cond_2
    const-string/jumbo v2, "TaskPersister"

    #@6b
    new-instance v3, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v4, "Failure deleting legacy images directory: "

    #@73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    goto :goto_0

    #@83
    .line 137
    .restart local v1    # "legacyTasksDir":Ljava/io/File;
    :cond_3
    const-string/jumbo v2, "TaskPersister"

    #@86
    new-instance v3, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v4, "Failure deleting legacy tasks directory: "

    #@8e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    goto :goto_1
.end method

.method private static createParentDirectory(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 602
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    .line 603
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
    .line 378
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 380
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
    .line 381
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
    .line 383
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@21
    .line 384
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
    .line 388
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    #@37
    .line 389
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
    .line 390
    return-object v8

    #@56
    .line 386
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    #@59
    .line 387
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
    .line 598
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
    .line 578
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
    .line 579
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
    .line 582
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
    .line 580
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
    .line 586
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
    .line 588
    .local v0, "userTasksDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 589
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 590
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
    .line 594
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
    .line 561
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v3

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 564
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
    .line 561
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@10
    .line 566
    const/4 v2, 0x0

    #@11
    array-length v3, v0

    #@12
    :goto_0
    if-ge v2, v3, :cond_0

    #@14
    aget v1, v0, v2

    #@16
    .line 567
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
    .line 568
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
    .line 566
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 561
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
    .line 559
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
    .line 519
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    #@2
    .line 520
    const-string/jumbo v6, "TaskPersister"

    #@5
    const-string/jumbo v7, "File error accessing recents directory (directory doesn\'t exist?)."

    #@8
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 521
    return-void

    #@c
    .line 523
    :cond_0
    const/4 v2, 0x0

    #@d
    .local v2, "fileNdx":I
    :goto_0
    array-length v6, p1

    #@e
    if-ge v2, v6, :cond_2

    #@10
    .line 524
    aget-object v1, p1, v2

    #@12
    .line 525
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 526
    .local v3, "filename":Ljava/lang/String;
    const/16 v6, 0x5f

    #@18
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@1b
    move-result v5

    #@1c
    .line 527
    .local v5, "taskIdEnd":I
    if-lez v5, :cond_1

    #@1e
    .line 530
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
    .line 537
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
    .line 539
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@34
    .line 523
    .end local v4    # "taskId":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_0

    #@37
    .line 532
    :catch_0
    move-exception v0

    #@38
    .line 533
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
    .line 534
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@59
    goto :goto_1

    #@5a
    .line 516
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
    .line 164
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 165
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
    .line 166
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@18
    .line 167
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v4, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 168
    new-instance v3, Ljava/io/File;

    #@1e
    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@20
    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v4, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    #@22
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@25
    .line 169
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
    .line 174
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@34
    .line 165
    .end local v3    # "thumbnailFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@36
    goto :goto_0

    #@37
    .line 163
    :cond_1
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 574
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
    .line 357
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    #@3
    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@6
    .line 358
    .local v1, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/StringWriter;

    #@8
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    #@b
    .line 359
    .local v0, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    #@e
    .line 365
    const/4 v2, 0x1

    #@f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@16
    .line 367
    const-string/jumbo v2, "task"

    #@19
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c
    .line 368
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1f
    .line 369
    const-string/jumbo v2, "task"

    #@22
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 371
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@28
    .line 372
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    #@2b
    .line 374
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
    .line 395
    if-gez p1, :cond_0

    #@3
    .line 396
    return-object v5

    #@4
    .line 398
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
    .line 399
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@12
    .line 400
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@14
    if-ne v2, p1, :cond_1

    #@16
    .line 401
    return-object v0

    #@17
    .line 398
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 404
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
    .line 405
    return-object v5
.end method

.method private writeTaskIdsFiles()V
    .locals 7

    #@0
    .prologue
    .line 547
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v4

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 548
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@8
    invoke-virtual {v3}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v0

    #@c
    .local v0, "candidateUserIds":[I
    monitor-exit v4

    #@d
    .line 547
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@10
    .line 551
    const/4 v3, 0x0

    #@11
    array-length v5, v0

    #@12
    move v4, v3

    #@13
    :goto_0
    if-ge v4, v5, :cond_0

    #@15
    aget v2, v0, v4

    #@17
    .line 552
    .local v2, "userId":I
    iget-object v6, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@19
    monitor-enter v6

    #@1a
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@1d
    .line 553
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@1f
    iget-object v3, v3, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/util/SparseBooleanArray;

    #@27
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2a
    move-result-object v1

    #@2b
    .local v1, "taskIdsToSave":Landroid/util/SparseBooleanArray;
    monitor-exit v6

    #@2c
    .line 552
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2f
    .line 555
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/TaskPersister;->maybeWritePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    #@32
    .line 551
    add-int/lit8 v3, v4, 0x1

    #@34
    move v4, v3

    #@35
    goto :goto_0

    #@36
    .line 547
    .end local v0    # "candidateUserIds":[I
    .end local v1    # "taskIdsToSave":Landroid/util/SparseBooleanArray;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    #@37
    monitor-exit v4

    #@38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3b
    throw v3

    #@3c
    .line 552
    .restart local v0    # "candidateUserIds":[I
    .restart local v2    # "userId":I
    :catchall_1
    move-exception v3

    #@3d
    monitor-exit v6

    #@3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@41
    throw v3

    #@42
    .line 545
    .end local v2    # "userId":I
    :cond_0
    return-void
.end method

.method private yieldIfQueueTooDeep()V
    .locals 6

    #@0
    .prologue
    .line 181
    const/4 v0, 0x0

    #@1
    .line 182
    .local v0, "stall":Z
    monitor-enter p0

    #@2
    .line 183
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
    .line 184
    const/4 v0, 0x1

    #@b
    :cond_0
    monitor-exit p0

    #@c
    .line 187
    if-eqz v0, :cond_1

    #@e
    .line 188
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@11
    .line 180
    :cond_1
    return-void

    #@12
    .line 182
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
    .line 288
    monitor-enter p0

    #@3
    .line 289
    const-wide/16 v2, -0x1

    #@5
    :try_start_0
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@7
    .line 290
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 293
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 296
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
    .line 287
    return-void

    #@15
    .line 294
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@17
    .line 288
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
    .line 341
    monitor-enter p0

    #@1
    .line 342
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
    .line 343
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@13
    .line 344
    .local v2, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v4, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 345
    move-object v0, v2

    #@18
    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@1a
    move-object v1, v0

    #@1b
    .line 346
    .local v1, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    #@1d
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 347
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit p0

    #@26
    return-object v4

    #@27
    .line 342
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 351
    .end local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_1
    const/4 v4, 0x0

    #@2b
    monitor-exit p0

    #@2c
    return-object v4

    #@2d
    .line 341
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
    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    .line 334
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@6
    .line 335
    return-object v0

    #@7
    .line 337
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .locals 12
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 194
    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v8

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 195
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
    .line 197
    :cond_0
    new-instance v4, Landroid/util/SparseBooleanArray;

    #@17
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    #@1a
    .line 198
    .local v4, "persistedTaskIds":Landroid/util/SparseBooleanArray;
    const/4 v5, 0x0

    #@1b
    .line 201
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    #@1d
    new-instance v8, Ljava/io/FileReader;

    #@1f
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    #@22
    move-result-object v9

    #@23
    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@26
    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 202
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@2f
    .line 203
    const-string/jumbo v8, "\\s+"

    #@32
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@35
    move-result-object v9

    #@36
    const/4 v8, 0x0

    #@37
    array-length v10, v9

    #@38
    :goto_0
    if-ge v8, v10, :cond_1

    #@3a
    aget-object v7, v9, v8

    #@3c
    .line 204
    .local v7, "taskIdString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3f
    move-result v2

    #@40
    .line 205
    .local v2, "id":I
    const/4 v11, 0x1

    #@41
    invoke-virtual {v4, v2, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@44
    .line 203
    add-int/lit8 v8, v8, 0x1

    #@46
    goto :goto_0

    #@47
    .line 213
    .end local v2    # "id":I
    .end local v7    # "taskIdString":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4a
    move-object v5, v6

    #@4b
    .line 215
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_1
    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@4d
    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@50
    .line 216
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    #@53
    move-result-object v8

    #@54
    return-object v8

    #@55
    .line 210
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    #@56
    .line 211
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string/jumbo v8, "TaskPersister"

    #@59
    new-instance v9, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v10, "Error while reading taskIds file for user "

    #@61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v9

    #@6d
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@70
    .line 213
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@73
    goto :goto_1

    #@74
    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    #@75
    .line 213
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@78
    goto :goto_1

    #@79
    .line 212
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    #@7a
    .line 213
    :goto_4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@7d
    .line 212
    throw v8

    #@7e
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    #@7f
    move-object v5, v6

    #@80
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    #@81
    .line 208
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    #@82
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    #@83
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    #@84
    .line 210
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    #@85
    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v5, v6

    #@86
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method maybeWritePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .locals 9
    .param p1, "taskIds"    # Landroid/util/SparseBooleanArray;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 221
    if-gez p2, :cond_0

    #@2
    .line 222
    return-void

    #@3
    .line 224
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/util/SparseBooleanArray;

    #@b
    .line 225
    .local v2, "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_1

    #@d
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_1

    #@13
    .line 226
    return-void

    #@14
    .line 228
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/am/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    #@17
    move-result-object v3

    #@18
    .line 229
    .local v3, "persistedTaskIdsFile":Ljava/io/File;
    const/4 v4, 0x0

    #@19
    .line 231
    .local v4, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    #@1b
    new-instance v6, Ljava/io/FileWriter;

    #@1d
    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    #@20
    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 232
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .local v5, "writer":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    #@24
    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    #@27
    move-result v6

    #@28
    if-ge v1, v6, :cond_3

    #@2a
    .line 233
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_2

    #@30
    .line 234
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@33
    move-result v6

    #@34
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@3b
    .line 235
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    .line 232
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 241
    :cond_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@44
    move-object v4, v5

    #@45
    .line 243
    .end local v1    # "i":I
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@47
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v6, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4e
    .line 220
    return-void

    #@4f
    .line 238
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    #@50
    .line 239
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string/jumbo v6, "TaskPersister"

    #@53
    new-instance v7, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v8, "Error while writing taskIds file for user "

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6a
    .line 241
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6d
    goto :goto_1

    #@6e
    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    #@6f
    .line 241
    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@72
    .line 240
    throw v6

    #@73
    .restart local v1    # "i":I
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    #@74
    move-object v4, v5

    #@75
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .local v4, "writer":Ljava/io/BufferedWriter;
    goto :goto_3

    #@76
    .line 238
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    #@77
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v4, v5

    #@78
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
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
    .line 409
    new-instance v16, Ljava/util/ArrayList;

    #@2
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 410
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v11, Landroid/util/ArraySet;

    #@7
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 412
    .local v11, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    #@d
    move-result-object v17

    #@e
    .line 414
    .local v17, "userTasksDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@11
    move-result-object v10

    #@12
    .line 415
    .local v10, "recentFiles":[Ljava/io/File;
    if-nez v10, :cond_0

    #@14
    .line 416
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
    .line 417
    return-object v16

    #@33
    .line 420
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
    .line 421
    aget-object v13, v10, v15

    #@3d
    .line 426
    .local v13, "taskFile":Ljava/io/File;
    const/4 v8, 0x0

    #@3e
    .line 427
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    #@3f
    .line 429
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
    .line 430
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@50
    move-result-object v6

    #@51
    .line 431
    .local v6, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@54
    .line 434
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
    .line 435
    const/16 v18, 0x3

    #@60
    move/from16 v0, v18

    #@62
    if-eq v5, v0, :cond_8

    #@64
    .line 436
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    .line 437
    .local v7, "name":Ljava/lang/String;
    const/16 v18, 0x2

    #@6a
    move/from16 v0, v18

    #@6c
    if-ne v5, v0, :cond_1

    #@6e
    .line 439
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
    .line 440
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
    .line 443
    .local v12, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v12, :cond_6

    #@87
    .line 449
    iget v14, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    #@89
    .line 450
    .local v14, "taskId":I
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@8d
    move-object/from16 v18, v0

    #@8f
    .line 451
    const/16 v19, 0x0

    #@91
    const/16 v20, 0x0

    #@93
    .line 450
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
    .line 453
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
    .line 474
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
    .line 476
    .end local v5    # "event":I
    .end local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@c7
    .local v4, "e":Ljava/lang/Exception;
    move-object v8, v9

    #@c8
    .line 477
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
    .line 478
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
    .line 479
    const/4 v3, 0x1

    #@110
    .line 481
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@113
    .line 482
    if-eqz v3, :cond_2

    #@115
    .line 484
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    #@118
    .line 420
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    add-int/lit8 v15, v15, 0x1

    #@11a
    goto/16 :goto_0

    #@11c
    .line 454
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
    .line 456
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
    .line 457
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@147
    move-result-object v20

    #@148
    .line 456
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
    .line 480
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
    .line 481
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :goto_5
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@15a
    .line 482
    if-eqz v3, :cond_4

    #@15c
    .line 484
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    #@15f
    .line 480
    :cond_4
    throw v18

    #@160
    .line 460
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
    .line 461
    const/16 v18, 0x1

    #@16f
    move/from16 v0, v18

    #@171
    iput-boolean v0, v12, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@173
    .line 462
    move-object/from16 v0, v16

    #@175
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@178
    .line 463
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
    .line 466
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
    .line 467
    const-string/jumbo v20, ": "

    #@19b
    .line 466
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v19

    #@19f
    .line 467
    move-object/from16 v0, p0

    #@1a1
    invoke-direct {v0, v13}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    #@1a4
    move-result-object v20

    #@1a5
    .line 466
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
    .line 470
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
    .line 471
    const-string/jumbo v20, " name="

    #@1ca
    .line 470
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
    .line 481
    .end local v7    # "name":Ljava/lang/String;
    :cond_8
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e0
    .line 482
    if-eqz v3, :cond_9

    #@1e2
    .line 484
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    #@1e5
    :cond_9
    move-object v8, v9

    #@1e6
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    #@1e8
    .line 490
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
    .line 494
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@1f4
    move-result v18

    #@1f5
    add-int/lit8 v15, v18, -0x1

    #@1f7
    :goto_6
    if-ltz v15, :cond_b

    #@1f9
    .line 495
    move-object/from16 v0, v16

    #@1fb
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1fe
    move-result-object v12

    #@1ff
    check-cast v12, Lcom/android/server/am/TaskRecord;

    #@201
    .line 496
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
    .line 497
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
    .line 494
    add-int/lit8 v15, v15, -0x1

    #@229
    goto :goto_6

    #@22a
    .line 500
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
    .line 513
    return-object v16

    #@23b
    .line 480
    .restart local v3    # "deleteFile":Z
    .restart local v13    # "taskFile":Ljava/io/File;
    :catchall_1
    move-exception v18

    #@23c
    goto/16 :goto_5

    #@23e
    .line 476
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
    .line 301
    monitor-enter p0

    #@1
    .line 303
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
    .line 304
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@13
    .line 305
    .local v3, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v5, v3, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@15
    if-eqz v5, :cond_3

    #@17
    .line 306
    move-object v0, v3

    #@18
    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@1a
    move-object v2, v0

    #@1b
    .line 307
    .local v2, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v5, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    #@1d
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_3

    #@23
    .line 309
    iput-object p1, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    #@25
    .line 314
    .end local v2    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_0
    if-gez v4, :cond_1

    #@27
    .line 315
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@29
    new-instance v6, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@2b
    invoke-direct {v6, p2, p1}, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    #@2e
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 317
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
    .line 318
    const-wide/16 v6, -0x1

    #@3c
    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@3e
    .line 325
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    monitor-exit p0

    #@42
    .line 328
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    #@45
    .line 300
    return-void

    #@46
    .line 303
    .restart local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    #@48
    goto :goto_0

    #@49
    .line 319
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
    .line 320
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
    .line 301
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
    .line 158
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@2
    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->isAlive()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 159
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@a
    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->start()V

    #@d
    .line 157
    :cond_0
    return-void
.end method

.method unloadUserDataFromMemory(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    #@5
    .line 246
    return-void
.end method

.method wakeup(Lcom/android/server/am/TaskRecord;Z)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    #@0
    .prologue
    .line 251
    monitor-enter p0

    #@1
    .line 252
    if-eqz p1, :cond_5

    #@3
    .line 254
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
    .line 255
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@15
    .line 256
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@17
    if-eqz v2, :cond_4

    #@19
    .line 257
    check-cast v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@1b
    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    #@1d
    if-ne v2, p1, :cond_4

    #@1f
    .line 258
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@21
    if-nez v2, :cond_0

    #@23
    .line 260
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeThumbnails(Lcom/android/server/am/TaskRecord;)V

    #@26
    .line 265
    :cond_0
    if-gez v1, :cond_1

    #@28
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@2a
    if-eqz v2, :cond_1

    #@2c
    .line 266
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@2e
    new-instance v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@30
    invoke-direct {v3, p1}, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/am/TaskRecord;)V

    #@33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 273
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
    .line 274
    :cond_2
    const-wide/16 v2, -0x1

    #@43
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@45
    .line 281
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    monitor-exit p0

    #@49
    .line 284
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    #@4c
    .line 250
    return-void

    #@4d
    .line 254
    .restart local v1    # "queueNdx":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@4f
    goto :goto_0

    #@50
    .line 271
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
    .line 251
    :catchall_0
    move-exception v2

    #@5d
    monitor-exit p0

    #@5e
    throw v2

    #@5f
    .line 275
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
    .line 276
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

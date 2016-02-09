.class public Lcom/android/server/am/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskPersister$WriteQueueItem;,
        Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final FLUSH_QUEUE:J = -0x1L

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field private static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field private static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field private static final RECENTS_FILENAME:Ljava/lang/String; = "_task"

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_EXTENSION:Ljava/lang/String; = ".xml"

.field static sImagesDir:Ljava/io/File;

.field static sTasksDir:Ljava/io/File;


# instance fields
.field private final mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

.field private mNextWriteTime:J

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

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

.method static synthetic -wrap0(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
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

.method static synthetic -wrap1(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "persistentTaskIds"    # Landroid/util/ArraySet;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/RecentTasks;)V
    .locals 3
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@7
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@e
    .line 123
    new-instance v0, Ljava/io/File;

    #@10
    const-string/jumbo v1, "recent_tasks"

    #@13
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@16
    sput-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    #@18
    .line 124
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    #@1a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_0

    #@20
    .line 126
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    #@22
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_0

    #@28
    .line 127
    const-string/jumbo v0, "TaskPersister"

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Failure creating tasks directory "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    sget-object v2, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 131
    :cond_0
    new-instance v0, Ljava/io/File;

    #@46
    const-string/jumbo v1, "recent_images"

    #@49
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4c
    sput-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    #@4e
    .line 132
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    #@50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@53
    move-result v0

    #@54
    if-nez v0, :cond_1

    #@56
    .line 134
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    #@58
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@5b
    move-result v0

    #@5c
    if-nez v0, :cond_1

    #@5e
    .line 135
    const-string/jumbo v0, "TaskPersister"

    #@61
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v2, "Failure creating images directory "

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    sget-object v2, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 139
    :cond_1
    iput-object p2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@7c
    .line 140
    iget-object v0, p2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7e
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    #@80
    .line 141
    iput-object p3, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@82
    .line 142
    new-instance v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@84
    const-string/jumbo v1, "LazyTaskWriterThread"

    #@87
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    #@8a
    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@8c
    .line 122
    return-void
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 303
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 305
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
    .line 306
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
    .line 308
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@21
    .line 309
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
    .line 313
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    #@37
    .line 314
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
    .line 315
    return-object v8

    #@56
    .line 311
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    #@59
    .line 312
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    move-result-object v5

    #@5d
    return-object v5
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .locals 1
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
    .line 458
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    #@9
    .line 459
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    #@b
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    invoke-static {p1, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    #@12
    .line 457
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
    .line 431
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    #@2
    .line 432
    const-string/jumbo v6, "TaskPersister"

    #@5
    const-string/jumbo v7, "File error accessing recents directory (too many files open?)."

    #@8
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 433
    return-void

    #@c
    .line 435
    :cond_0
    const/4 v2, 0x0

    #@d
    .local v2, "fileNdx":I
    :goto_0
    array-length v6, p1

    #@e
    if-ge v2, v6, :cond_2

    #@10
    .line 436
    aget-object v1, p1, v2

    #@12
    .line 437
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 438
    .local v3, "filename":Ljava/lang/String;
    const/16 v6, 0x5f

    #@18
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@1b
    move-result v5

    #@1c
    .line 439
    .local v5, "taskIdEnd":I
    if-lez v5, :cond_1

    #@1e
    .line 442
    const/4 v6, 0x0

    #@1f
    :try_start_0
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result v4

    #@2b
    .line 449
    .local v4, "taskId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@32
    move-result v6

    #@33
    if-nez v6, :cond_1

    #@35
    .line 451
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@38
    .line 435
    .end local v4    # "taskId":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 444
    :catch_0
    move-exception v0

    #@3c
    .line 445
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TaskPersister"

    #@3f
    new-instance v7, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v8, "removeObsoleteFile: Can\'t parse file="

    #@47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 446
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@5d
    goto :goto_1

    #@5e
    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "taskIdEnd":I
    :cond_2
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/am/TaskRecord;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 152
    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 153
    .local v2, "taskString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    add-int/lit8 v1, v3, -0x1

    #@e
    .local v1, "queueNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@10
    .line 154
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@18
    .line 155
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v3, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 156
    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@1e
    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v3, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    #@20
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v3

    #@24
    .line 155
    if-eqz v3, :cond_0

    #@26
    .line 159
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2b
    .line 153
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 151
    :cond_1
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@1c
    move-result-object v0

    #@1d
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
    .line 282
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    #@3
    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@6
    .line 283
    .local v1, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/StringWriter;

    #@8
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    #@b
    .line 284
    .local v0, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    #@e
    .line 290
    const/4 v2, 0x1

    #@f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@16
    .line 292
    const-string/jumbo v2, "task"

    #@19
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c
    .line 293
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1f
    .line 294
    const-string/jumbo v2, "task"

    #@22
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 296
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@28
    .line 297
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    #@2b
    .line 299
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
    .line 320
    if-gez p1, :cond_0

    #@3
    .line 321
    return-object v5

    #@4
    .line 323
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
    .line 324
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@12
    .line 325
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@14
    if-ne v2, p1, :cond_1

    #@16
    .line 326
    return-object v0

    #@17
    .line 323
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 329
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
    .line 330
    return-object v5
.end method

.method private yieldIfQueueTooDeep()V
    .locals 6

    #@0
    .prologue
    .line 165
    const/4 v0, 0x0

    #@1
    .line 166
    .local v0, "stall":Z
    monitor-enter p0

    #@2
    .line 167
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
    .line 168
    const/4 v0, 0x1

    #@b
    :cond_0
    monitor-exit p0

    #@c
    .line 171
    if-eqz v0, :cond_1

    #@e
    .line 172
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@11
    .line 164
    :cond_1
    return-void

    #@12
    .line 166
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
    .line 213
    monitor-enter p0

    #@3
    .line 214
    const-wide/16 v2, -0x1

    #@5
    :try_start_0
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@7
    .line 215
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 218
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 221
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
    .line 212
    return-void

    #@15
    .line 219
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@17
    .line 213
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
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 266
    monitor-enter p0

    #@1
    .line 267
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
    .line 268
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@13
    .line 269
    .local v2, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v4, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 270
    move-object v0, v2

    #@18
    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@1a
    move-object v1, v0

    #@1b
    .line 271
    .local v1, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    #@1d
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 272
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit p0

    #@26
    return-object v4

    #@27
    .line 267
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 276
    .end local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_1
    const/4 v4, 0x0

    #@2b
    monitor-exit p0

    #@2c
    return-object v4

    #@2d
    .line 266
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
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    .line 259
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@6
    .line 260
    return-object v0

    #@7
    .line 262
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method restoreTasksLocked()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 334
    new-instance v15, Ljava/util/ArrayList;

    #@2
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 335
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v10, Landroid/util/ArraySet;

    #@7
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 337
    .local v10, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sget-object v17, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    #@c
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@f
    move-result-object v9

    #@10
    .line 338
    .local v9, "recentFiles":[Ljava/io/File;
    if-nez v9, :cond_0

    #@12
    .line 339
    const-string/jumbo v17, "TaskPersister"

    #@15
    new-instance v18, Ljava/lang/StringBuilder;

    #@17
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v19, "Unable to list files from "

    #@1d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v18

    #@21
    sget-object v19, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    #@23
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v18

    #@27
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v18

    #@2b
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 340
    return-object v15

    #@2f
    .line 343
    :cond_0
    const/4 v14, 0x0

    #@30
    .local v14, "taskNdx":I
    :goto_0
    array-length v0, v9

    #@31
    move/from16 v17, v0

    #@33
    move/from16 v0, v17

    #@35
    if-ge v14, v0, :cond_8

    #@37
    .line 344
    aget-object v12, v9, v14

    #@39
    .line 346
    .local v12, "taskFile":Ljava/io/File;
    const/4 v7, 0x0

    #@3a
    .line 347
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    #@3b
    .line 349
    .local v2, "deleteFile":Z
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    #@3d
    new-instance v17, Ljava/io/FileReader;

    #@3f
    move-object/from16 v0, v17

    #@41
    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@44
    move-object/from16 v0, v17

    #@46
    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@49
    .line 350
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@4c
    move-result-object v5

    #@4d
    .line 351
    .local v5, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@50
    .line 354
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@53
    move-result v4

    #@54
    .local v4, "event":I
    const/16 v17, 0x1

    #@56
    move/from16 v0, v17

    #@58
    if-eq v4, v0, :cond_6

    #@5a
    .line 355
    const/16 v17, 0x3

    #@5c
    move/from16 v0, v17

    #@5e
    if-eq v4, v0, :cond_6

    #@60
    .line 356
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    .line 357
    .local v6, "name":Ljava/lang/String;
    const/16 v17, 0x2

    #@66
    move/from16 v0, v17

    #@68
    if-ne v4, v0, :cond_1

    #@6a
    .line 359
    const-string/jumbo v17, "task"

    #@6d
    move-object/from16 v0, v17

    #@6f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v17

    #@73
    if-eqz v17, :cond_5

    #@75
    .line 361
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@79
    move-object/from16 v17, v0

    #@7b
    move-object/from16 v0, v17

    #@7d
    invoke-static {v5, v0}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    #@80
    move-result-object v11

    #@81
    .line 364
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v11, :cond_3

    #@83
    .line 365
    const/16 v17, 0x1

    #@85
    move/from16 v0, v17

    #@87
    iput-boolean v0, v11, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@89
    .line 370
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8c
    .line 371
    iget v13, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    #@8e
    .line 372
    .local v13, "taskId":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@91
    move-result-object v17

    #@92
    move-object/from16 v0, v17

    #@94
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@97
    .line 373
    move-object/from16 v0, p0

    #@99
    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@9b
    move-object/from16 v17, v0

    #@9d
    move-object/from16 v0, v17

    #@9f
    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor;->setNextTaskId(I)V

    #@a2
    .line 383
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "taskId":I
    :cond_1
    :goto_2
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a5
    goto :goto_1

    #@a6
    .line 385
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@a7
    .local v3, "e":Ljava/lang/Exception;
    move-object v7, v8

    #@a8
    .line 386
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string/jumbo v17, "TaskPersister"

    #@ab
    new-instance v18, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v19, "Unable to parse "

    #@b3
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v18

    #@b7
    move-object/from16 v0, v18

    #@b9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v18

    #@bd
    const-string/jumbo v19, ". Error "

    #@c0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v18

    #@c4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v18

    #@c8
    move-object/from16 v0, v17

    #@ca
    move-object/from16 v1, v18

    #@cc
    invoke-static {v0, v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@cf
    .line 387
    const-string/jumbo v17, "TaskPersister"

    #@d2
    new-instance v18, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v19, "Failing file: "

    #@da
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v18

    #@de
    move-object/from16 v0, p0

    #@e0
    invoke-direct {v0, v12}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    #@e3
    move-result-object v19

    #@e4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v18

    #@e8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v18

    #@ec
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@ef
    .line 388
    const/4 v2, 0x1

    #@f0
    .line 390
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f3
    .line 391
    if-eqz v2, :cond_2

    #@f5
    .line 393
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    #@f8
    .line 343
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    add-int/lit8 v14, v14, 0x1

    #@fa
    goto/16 :goto_0

    #@fc
    .line 375
    .restart local v4    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    :try_start_3
    const-string/jumbo v17, "TaskPersister"

    #@ff
    new-instance v18, Ljava/lang/StringBuilder;

    #@101
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v19, "Unable to restore taskFile="

    #@107
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v18

    #@10b
    move-object/from16 v0, v18

    #@10d
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v18

    #@111
    const-string/jumbo v19, ": "

    #@114
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v18

    #@118
    .line 376
    move-object/from16 v0, p0

    #@11a
    invoke-direct {v0, v12}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    #@11d
    move-result-object v19

    #@11e
    .line 375
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v18

    #@122
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v18

    #@126
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@129
    goto/16 :goto_2

    #@12b
    .line 389
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v17

    #@12c
    move-object v7, v8

    #@12d
    .line 390
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_5
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@130
    .line 391
    if-eqz v2, :cond_4

    #@132
    .line 393
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    #@135
    .line 389
    :cond_4
    throw v17

    #@136
    .line 379
    .restart local v4    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_4
    const-string/jumbo v17, "TaskPersister"

    #@139
    new-instance v18, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v19, "restoreTasksLocked Unknown xml event="

    #@141
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v18

    #@145
    move-object/from16 v0, v18

    #@147
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v18

    #@14b
    .line 380
    const-string/jumbo v19, " name="

    #@14e
    .line 379
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v18

    #@152
    move-object/from16 v0, v18

    #@154
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v18

    #@158
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v18

    #@15c
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@15f
    goto/16 :goto_2

    #@161
    .line 390
    .end local v6    # "name":Ljava/lang/String;
    :cond_6
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@164
    .line 391
    if-eqz v2, :cond_7

    #@166
    .line 393
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    #@169
    :cond_7
    move-object v7, v8

    #@16a
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    #@16b
    .line 399
    .end local v2    # "deleteFile":Z
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "taskFile":Ljava/io/File;
    :cond_8
    move-object/from16 v0, p0

    #@16d
    invoke-direct {v0, v10}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    #@170
    .line 403
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@173
    move-result v17

    #@174
    add-int/lit8 v14, v17, -0x1

    #@176
    :goto_6
    if-ltz v14, :cond_9

    #@178
    .line 404
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17b
    move-result-object v11

    #@17c
    check-cast v11, Lcom/android/server/am/TaskRecord;

    #@17e
    .line 405
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    iget v0, v11, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    #@180
    move/from16 v17, v0

    #@182
    move-object/from16 v0, p0

    #@184
    move/from16 v1, v17

    #@186
    invoke-direct {v0, v1, v15}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    #@189
    move-result-object v17

    #@18a
    move-object/from16 v0, v17

    #@18c
    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@18f
    .line 406
    iget v0, v11, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    #@191
    move/from16 v17, v0

    #@193
    move-object/from16 v0, p0

    #@195
    move/from16 v1, v17

    #@197
    invoke-direct {v0, v1, v15}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    #@19a
    move-result-object v17

    #@19b
    move-object/from16 v0, v17

    #@19d
    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    #@1a0
    .line 403
    add-int/lit8 v14, v14, -0x1

    #@1a2
    goto :goto_6

    #@1a3
    .line 409
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@1a6
    move-result v17

    #@1a7
    move/from16 v0, v17

    #@1a9
    new-array v0, v0, [Lcom/android/server/am/TaskRecord;

    #@1ab
    move-object/from16 v16, v0

    #@1ad
    .line 410
    .local v16, "tasksArray":[Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1b0
    .line 411
    new-instance v17, Lcom/android/server/am/TaskPersister$1;

    #@1b2
    move-object/from16 v0, v17

    #@1b4
    move-object/from16 v1, p0

    #@1b6
    invoke-direct {v0, v1}, Lcom/android/server/am/TaskPersister$1;-><init>(Lcom/android/server/am/TaskPersister;)V

    #@1b9
    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@1bc
    .line 425
    new-instance v17, Ljava/util/ArrayList;

    #@1be
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1c1
    move-result-object v18

    #@1c2
    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1c5
    return-object v17

    #@1c6
    .line 389
    .end local v16    # "tasksArray":[Lcom/android/server/am/TaskRecord;
    .restart local v2    # "deleteFile":Z
    .restart local v12    # "taskFile":Ljava/io/File;
    :catchall_1
    move-exception v17

    #@1c7
    goto/16 :goto_5

    #@1c9
    .line 385
    .local v7, "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    #@1ca
    .restart local v3    # "e":Ljava/lang/Exception;
    goto/16 :goto_3
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 10
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 226
    monitor-enter p0

    #@1
    .line 228
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
    .line 229
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@13
    .line 230
    .local v3, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v5, v3, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@15
    if-eqz v5, :cond_3

    #@17
    .line 231
    move-object v0, v3

    #@18
    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@1a
    move-object v2, v0

    #@1b
    .line 232
    .local v2, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v5, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    #@1d
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_3

    #@23
    .line 234
    iput-object p1, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    #@25
    .line 239
    .end local v2    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_0
    if-gez v4, :cond_1

    #@27
    .line 240
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@29
    new-instance v6, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    #@2b
    invoke-direct {v6, p2, p1}, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    #@2e
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 242
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
    .line 243
    const-wide/16 v6, -0x1

    #@3c
    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@3e
    .line 250
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    monitor-exit p0

    #@42
    .line 253
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    #@45
    .line 225
    return-void

    #@46
    .line 228
    .restart local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    #@48
    goto :goto_0

    #@49
    .line 244
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
    .line 245
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
    .line 226
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
    .line 146
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@2
    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->isAlive()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 147
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    #@a
    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->start()V

    #@d
    .line 145
    :cond_0
    return-void
.end method

.method wakeup(Lcom/android/server/am/TaskRecord;Z)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    #@0
    .prologue
    .line 177
    monitor-enter p0

    #@1
    .line 178
    if-eqz p1, :cond_5

    #@3
    .line 180
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
    .line 181
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    #@15
    .line 182
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@17
    if-eqz v2, :cond_4

    #@19
    .line 183
    check-cast v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@1b
    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    #@1d
    if-ne v2, p1, :cond_4

    #@1f
    .line 184
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@21
    if-nez v2, :cond_0

    #@23
    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeThumbnails(Lcom/android/server/am/TaskRecord;)V

    #@26
    .line 191
    :cond_0
    if-gez v1, :cond_1

    #@28
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@2a
    if-eqz v2, :cond_1

    #@2c
    .line 192
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    #@2e
    new-instance v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    #@30
    invoke-direct {v3, p1}, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/am/TaskRecord;)V

    #@33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 198
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
    .line 199
    :cond_2
    const-wide/16 v2, -0x1

    #@43
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    #@45
    .line 206
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    monitor-exit p0

    #@49
    .line 209
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    #@4c
    .line 176
    return-void

    #@4d
    .line 180
    .restart local v1    # "queueNdx":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@4f
    goto :goto_0

    #@50
    .line 196
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
    .line 177
    :catchall_0
    move-exception v2

    #@5d
    monitor-exit p0

    #@5e
    throw v2

    #@5f
    .line 200
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
    .line 201
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

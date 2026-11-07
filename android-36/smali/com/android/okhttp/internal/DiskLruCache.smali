.class public final Lcom/android/okhttp/internal/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/DiskLruCache$Editor;,
        Lcom/android/okhttp/internal/DiskLruCache$Entry;,
        Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final blacklist CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final blacklist DIRTY:Ljava/lang/String; = "DIRTY"

.field static final blacklist JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final blacklist JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final blacklist JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final blacklist LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final blacklist MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final blacklist NULL_SINK:Lcom/android/okhttp/okio/Sink;

.field private static final blacklist READ:Ljava/lang/String; = "READ"

.field private static final blacklist REMOVE:Ljava/lang/String; = "REMOVE"

.field static final blacklist VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final blacklist appVersion:I

.field private final blacklist cleanupRunnable:Ljava/lang/Runnable;

.field private blacklist closed:Z

.field private final blacklist directory:Ljava/io/File;

.field private final blacklist executor:Ljava/util/concurrent/Executor;

.field private final blacklist fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

.field private blacklist hasJournalErrors:Z

.field private blacklist initialized:Z

.field private final blacklist journalFile:Ljava/io/File;

.field private final blacklist journalFileBackup:Ljava/io/File;

.field private final blacklist journalFileTmp:Ljava/io/File;

.field private blacklist journalWriter:Lcom/android/okhttp/okio/BufferedSink;

.field private final blacklist lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist maxSize:J

.field private blacklist nextSequenceNumber:J

.field private blacklist redundantOpCount:I

.field private blacklist size:J

.field private final blacklist valueCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    const-class v0, Lcom/android/okhttp/internal/DiskLruCache;

    .line 97
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 812
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$4;

    invoke-direct {v0}, Lcom/android/okhttp/internal/DiskLruCache$4;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .registers 14

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 151
    iput-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    .line 153
    new-instance v2, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 166
    iput-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    .line 170
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/DiskLruCache$1;-><init>(Lcom/android/okhttp/internal/DiskLruCache;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 191
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    .line 192
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    .line 193
    iput p3, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    .line 194
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    .line 195
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 196
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 197
    iput p4, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    .line 198
    iput-wide p5, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    .line 199
    iput-object p7, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .registers 1

    .line 90
    iget-boolean p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    return p0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .registers 1

    .line 90
    iget-boolean p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    return p0
.end method

.method static synthetic blacklist access$1900(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic blacklist access$2100(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I
    .registers 1

    .line 90
    iget p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    return p0
.end method

.method static synthetic blacklist access$2300(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    return-object p0
.end method

.method static synthetic blacklist access$2400()Lcom/android/okhttp/okio/Sink;
    .registers 1

    .line 90
    sget-object v0, Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;

    return-object v0
.end method

.method static synthetic blacklist access$2500(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic blacklist access$2600(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .registers 1

    .line 90
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic blacklist access$502(Lcom/android/okhttp/internal/DiskLruCache;I)I
    .registers 2

    .line 90
    iput p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method static synthetic blacklist access$602(Lcom/android/okhttp/internal/DiskLruCache;Z)Z
    .registers 2

    .line 90
    iput-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z

    return p1
.end method

.method private declared-synchronized blacklist checkNotClosed()V
    .registers 3

    monitor-enter p0

    .line 631
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez v0, :cond_9

    .line 634
    monitor-exit p0

    return-void

    .line 632
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_11
    move-exception v0

    .line 634
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private declared-synchronized blacklist completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 517
    :try_start_1
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->access$1700(Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Entry;

    move-result-object v0

    .line 518
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_115

    const/4 v1, 0x0

    if-eqz p2, :cond_54

    .line 523
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_54

    move v2, v1

    .line 524
    :goto_15
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_54

    .line 525
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->access$1800(Lcom/android/okhttp/internal/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_3a

    .line 529
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 530
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 531
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    goto/16 :goto_11b

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 526
    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V

    .line 527
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_54
    :goto_54
    iget p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v1, p1, :cond_94

    .line 537
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object p1

    aget-object p1, p1, v1

    if-eqz p2, :cond_8c

    .line 539
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v2, p1}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 540
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    .line 541
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v3, p1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 542
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 543
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {p1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v5

    .line 544
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 545
    iget-wide v7, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    goto :goto_91

    .line 548
    :cond_8c
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v2, p1}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    :cond_91
    :goto_91
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 552
    :cond_94
    iget p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 553
    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 554
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_d7

    .line 555
    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$802(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z

    .line 556
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 557
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 558
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 559
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    if-eqz p2, :cond_f9

    .line 561
    iget-wide p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1602(Lcom/android/okhttp/internal/DiskLruCache$Entry;J)J

    goto :goto_f9

    .line 564
    :cond_d7
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 566
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 567
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 569
    :cond_f9
    :goto_f9
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V

    .line 571
    iget-wide p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_10c

    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_113

    .line 572
    :cond_10c
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_113
    .catchall {:try_start_3a .. :try_end_113} :catchall_34

    .line 574
    :cond_113
    monitor-exit p0

    return-void

    .line 519
    :cond_115
    :try_start_115
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 574
    :goto_11b
    monitor-exit p0
    :try_end_11c
    .catchall {:try_start_115 .. :try_end_11c} :catchall_34

    throw p1
.end method

.method public static blacklist create(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/android/okhttp/internal/DiskLruCache;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_34

    if-lez p3, :cond_2c

    .line 257
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp DiskLruCache"

    const/4 v2, 0x1

    .line 258
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 260
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/okhttp/internal/DiskLruCache;-><init>(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v1

    .line 253
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private declared-synchronized blacklist edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 452
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 454
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 455
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    if-eqz v0, :cond_26

    .line 458
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1600(Lcom/android/okhttp/internal/DiskLruCache$Entry;)J

    move-result-wide v3
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    cmp-long p2, v3, p2

    if-eqz p2, :cond_28

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_6a

    .line 459
    :cond_26
    :goto_26
    monitor-exit p0

    return-object v2

    :cond_28
    if-eqz v0, :cond_32

    .line 461
    :try_start_2a
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object p2
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_24

    if-eqz p2, :cond_32

    .line 462
    monitor-exit p0

    return-object v2

    .line 466
    :cond_32
    :try_start_32
    iget-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 467
    iget-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p2}, Lcom/android/okhttp/okio/Sink;->flush()V

    .line 469
    iget-boolean p2, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_24

    if-eqz p2, :cond_54

    .line 470
    monitor-exit p0

    return-object v2

    :cond_54
    if-nez v0, :cond_60

    .line 474
    :try_start_56
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$1;)V

    .line 475
    iget-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_60
    new-instance p1, Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p1, p0, v0, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$1;)V

    .line 478
    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_24

    .line 479
    monitor-exit p0

    return-object p1

    :goto_6a
    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_24

    throw p1
.end method

.method private blacklist journalRebuildRequired()Z
    .registers 3

    .line 582
    iget v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 583
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    if-lt v0, p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/android/okhttp/internal/DiskLruCache$2;

    invoke-direct {v1, p0, v0}, Lcom/android/okhttp/internal/DiskLruCache$2;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/okio/Sink;)V

    .line 310
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0
.end method

.method private blacklist processJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 358
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 359
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 360
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_36

    .line 361
    :goto_24
    iget v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_11

    .line 362
    iget-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_36
    const/4 v2, 0x0

    .line 365
    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 366
    :goto_3a
    iget v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_57

    .line 367
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 368
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 370
    :cond_57
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_5b
    return-void
.end method

.method private blacklist readJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const-string v0, ", "

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    .line 266
    :try_start_e
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    .line 271
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    const-string v7, "1"

    .line 272
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    iget v7, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    .line 273
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    iget v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    .line 274
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    const-string v4, ""

    .line 275
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_5d

    if-eqz v4, :cond_7c

    const/4 v0, 0x0

    .line 283
    :goto_53
    :try_start_53
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/EOFException; {:try_start_53 .. :try_end_5a} :catch_5f
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5d

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :catchall_5d
    move-exception p0

    goto :goto_aa

    .line 289
    :catch_5f
    :try_start_5f
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 292
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_72

    .line 293
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V

    goto :goto_78

    .line 295
    :cond_72
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;
    :try_end_78
    .catchall {:try_start_5f .. :try_end_78} :catchall_5d

    .line 298
    :goto_78
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 276
    :cond_7c
    :try_start_7c
    new-instance p0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_aa
    .catchall {:try_start_7c .. :try_end_aa} :catchall_5d

    .line 298
    :goto_aa
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 299
    throw p0
.end method

.method private blacklist readJournalLine(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 315
    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9c

    add-int/lit8 v4, v1, 0x1

    .line 320
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_28

    .line 323
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_2c

    .line 324
    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 325
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 329
    :cond_28
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 332
    :cond_2c
    iget-object v5, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    const/4 v6, 0x0

    if-nez v5, :cond_41

    .line 334
    new-instance v5, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-direct {v5, p0, v4, v6}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$1;)V

    .line 335
    iget-object v7, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    const/4 v4, 0x5

    if-eq v0, v3, :cond_64

    if-ne v1, v4, :cond_64

    .line 338
    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    const/4 p0, 0x1

    add-int/2addr v0, p0

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 340
    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v5, p0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$802(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z

    .line 341
    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 342
    # invokes: Lcom/android/okhttp/internal/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v5, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1000(Lcom/android/okhttp/internal/DiskLruCache$Entry;[Ljava/lang/String;)V

    return-void

    :cond_64
    if-ne v0, v3, :cond_79

    if-ne v1, v4, :cond_79

    .line 343
    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 344
    new-instance p1, Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p1, p0, v5, v6}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$1;)V

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v5, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    return-void

    :cond_79
    if-ne v0, v3, :cond_87

    const/4 p0, 0x4

    if-ne v1, p0, :cond_87

    .line 345
    const-string p0, "READ"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_87

    return-void

    .line 348
    :cond_87
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_9c
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private declared-synchronized blacklist rebuildJournal()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v0, :cond_c

    .line 381
    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    goto :goto_c

    :catchall_9
    move-exception v0

    goto/16 :goto_c3

    .line 384
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_9

    .line 386
    :try_start_18
    const-string v1, "libcore.io.DiskLruCache"

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 387
    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 388
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 389
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 390
    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 392
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 393
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v4

    const/16 v5, 0x20

    if-eqz v4, :cond_77

    .line 394
    const-string v4, "DIRTY"

    invoke-interface {v0, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 395
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 396
    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_4d

    :catchall_75
    move-exception v1

    goto :goto_bf

    .line 398
    :cond_77
    const-string v4, "CLEAN"

    invoke-interface {v0, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 399
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 400
    invoke-virtual {v3, v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 401
    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_8d
    .catchall {:try_start_18 .. :try_end_8d} :catchall_75

    goto :goto_4d

    .line 405
    :cond_8e
    :try_start_8e
    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    .line 408
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 409
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 411
    :cond_a4
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 412
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 414
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    :try_end_bd
    .catchall {:try_start_8e .. :try_end_bd} :catchall_9

    .line 416
    monitor-exit p0

    return-void

    .line 405
    :goto_bf
    :try_start_bf
    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    .line 406
    throw v1

    :goto_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_bf .. :try_end_c4} :catchall_9

    throw v0
.end method

.method private blacklist removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 605
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->detach()V

    :cond_d
    const/4 v0, 0x0

    .line 608
    :goto_e
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_33

    .line 609
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 610
    iget-wide v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v3, v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    .line 611
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 614
    :cond_33
    iget v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 615
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 616
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 619
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6a
    return v1
.end method

.method private blacklist trimToSize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    :goto_0
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 665
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 666
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    goto :goto_0

    :cond_1c
    return-void
.end method

.method private blacklist validateKey(Ljava/lang/String;)V
    .registers 4

    .line 693
    sget-object p0, Lcom/android/okhttp/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 694
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    .line 695
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 647
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    if-eqz v0, :cond_b

    goto :goto_47

    .line 652
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_38

    aget-object v4, v0, v3

    .line 653
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v5

    if-eqz v5, :cond_35

    .line 654
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V

    goto :goto_35

    :catchall_33
    move-exception v0

    goto :goto_4b

    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 657
    :cond_38
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    .line 658
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    const/4 v0, 0x0

    .line 659
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    .line 660
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_33

    .line 661
    monitor-exit p0

    return-void

    .line 648
    :cond_47
    :goto_47
    :try_start_47
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_33

    .line 649
    monitor-exit p0

    return-void

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_33

    throw v0
.end method

.method public blacklist delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->close()V

    .line 677
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v0, p0}, Lcom/android/okhttp/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public blacklist edit(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 448
    invoke-direct {p0, p1, v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized blacklist evictAll()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 685
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 687
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 688
    invoke-direct {p0, v3}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :catchall_24
    move-exception v0

    goto :goto_28

    .line 690
    :cond_26
    monitor-exit p0

    return-void

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_24

    throw v0
.end method

.method public declared-synchronized blacklist flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 638
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 640
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 641
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    .line 642
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    .line 643
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public declared-synchronized blacklist get(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 424
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 426
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 427
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 429
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_53

    .line 431
    :cond_1c
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_4f

    if-nez v0, :cond_24

    .line 432
    monitor-exit p0

    return-object v1

    .line 434
    :cond_24
    :try_start_24
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 435
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 436
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 437
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_4f

    goto :goto_51

    :catchall_4f
    move-exception p1

    goto :goto_55

    .line 440
    :cond_51
    :goto_51
    monitor-exit p0

    return-object v0

    .line 429
    :cond_53
    :goto_53
    monitor-exit p0

    return-object v1

    :goto_55
    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_4f

    throw p1
.end method

.method public blacklist getDirectory()Ljava/io/File;
    .registers 1

    .line 484
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method public declared-synchronized blacklist getMaxSize()J
    .registers 3

    monitor-enter p0

    .line 492
    :try_start_1
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist initialize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 205
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-eqz v0, :cond_7

    .line 206
    monitor-exit p0

    return-void

    .line 210
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 212
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 213
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_2e

    :catchall_23
    move-exception v0

    goto :goto_7c

    .line 215
    :cond_25
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 220
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_23

    const/4 v1, 0x1

    if-eqz v0, :cond_75

    .line 222
    :try_start_39
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->readJournal()V

    .line 223
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->processJournal()V

    .line 224
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_41} :catch_43
    .catchall {:try_start_39 .. :try_end_41} :catchall_23

    .line 225
    monitor-exit p0

    return-void

    :catch_43
    move-exception v0

    .line 227
    :try_start_44
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", removing"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->delete()V

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    .line 234
    :cond_75
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V

    .line 236
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_7a
    .catchall {:try_start_44 .. :try_end_7a} :catchall_23

    .line 237
    monitor-exit p0

    return-void

    :goto_7c
    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_23

    throw v0
.end method

.method public declared-synchronized blacklist isClosed()Z
    .registers 2

    monitor-enter p0

    .line 627
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist remove(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 594
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 596
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 597
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1d

    if-nez p1, :cond_17

    .line 599
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 600
    :cond_17
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return p1

    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public declared-synchronized blacklist setMaxSize(J)V
    .registers 3

    monitor-enter p0

    .line 500
    :try_start_1
    iput-wide p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    .line 501
    iget-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    if-eqz p1, :cond_11

    .line 502
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_13

    .line 504
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 512
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 513
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist snapshots()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 716
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 717
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$3;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/DiskLruCache$3;-><init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

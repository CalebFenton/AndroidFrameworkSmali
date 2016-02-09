.class public final Lcom/android/okhttp/internal/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/DiskLruCache$Snapshot;,
        Lcom/android/okhttp/internal/DiskLruCache$Editor;,
        Lcom/android/okhttp/internal/DiskLruCache$Entry;,
        Lcom/android/okhttp/internal/DiskLruCache$1;,
        Lcom/android/okhttp/internal/DiskLruCache$2;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_SINK:Lcom/android/okhttp/okio/Sink;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private closed:Z

.field private final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

.field private hasJournalErrors:Z

.field private initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Lcom/android/okhttp/okio/BufferedSink;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static synthetic -get0()Lcom/android/okhttp/okio/Sink;
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/internal/DiskLruCache;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/DiskLruCache;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/okhttp/internal/DiskLruCache;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    .locals 0
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p2, "success"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/okhttp/internal/DiskLruCache;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/okhttp/internal/DiskLruCache;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lcom/android/okhttp/internal/DiskLruCache;->-assertionsDisabled:Z

    #@b
    .line 95
    const-string/jumbo v0, "[a-z0-9_-]{1,120}"

    #@e
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lcom/android/okhttp/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    #@14
    .line 810
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$2;

    #@16
    invoke-direct {v0}, Lcom/android/okhttp/internal/DiskLruCache$2;-><init>()V

    #@19
    sput-object v0, Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;

    #@1b
    .line 88
    return-void

    #@1c
    :cond_0
    const/4 v0, 0x1

    #@1d
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 7
    .param p1, "fileSystem"    # Lcom/android/okhttp/internal/io/FileSystem;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "appVersion"    # I
    .param p4, "valueCount"    # I
    .param p5, "maxSize"    # J
    .param p7, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 149
    iput-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    #@7
    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    #@9
    const/4 v1, 0x0

    #@a
    const/high16 v2, 0x3f400000    # 0.75f

    #@c
    const/4 v3, 0x1

    #@d
    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #@10
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@12
    .line 164
    iput-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    #@14
    .line 168
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$1;

    #@16
    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/DiskLruCache$1;-><init>(Lcom/android/okhttp/internal/DiskLruCache;)V

    #@19
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    #@1b
    .line 189
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@1d
    .line 190
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    #@1f
    .line 191
    iput p3, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    #@21
    .line 192
    new-instance v0, Ljava/io/File;

    #@23
    const-string/jumbo v1, "journal"

    #@26
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@29
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    #@2b
    .line 193
    new-instance v0, Ljava/io/File;

    #@2d
    const-string/jumbo v1, "journal.tmp"

    #@30
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@33
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    #@35
    .line 194
    new-instance v0, Ljava/io/File;

    #@37
    const-string/jumbo v1, "journal.bkp"

    #@3a
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3d
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    #@3f
    .line 195
    iput p4, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    #@41
    .line 196
    iput-wide p5, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    #@43
    .line 197
    iput-object p7, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    #@45
    .line 188
    return-void
.end method

.method private declared-synchronized checkNotClosed()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 630
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "cache is closed"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 629
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 516
    :try_start_0
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@4
    move-result-object v2

    #@5
    .line 517
    .local v2, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@8
    move-result-object v8

    #@9
    if-eq v8, p1, :cond_0

    #@b
    .line 518
    new-instance v8, Ljava/lang/IllegalStateException;

    #@d
    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    #@10
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .end local v2    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    #@12
    monitor-exit p0

    #@13
    throw v8

    #@14
    .line 522
    .restart local v2    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_1

    #@16
    :try_start_1
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_3

    #@1c
    .line 535
    :cond_1
    const/4 v3, 0x0

    #@1d
    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    #@1f
    if-ge v3, v8, :cond_7

    #@21
    .line 536
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    #@24
    move-result-object v8

    #@25
    aget-object v1, v8, v3

    #@27
    .line 537
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_6

    #@29
    .line 538
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@2b
    invoke-interface {v8, v1}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_2

    #@31
    .line 539
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    #@34
    move-result-object v8

    #@35
    aget-object v0, v8, v3

    #@37
    .line 540
    .local v0, "clean":Ljava/io/File;
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@39
    invoke-interface {v8, v1, v0}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    #@3c
    .line 541
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    #@3f
    move-result-object v8

    #@40
    aget-wide v6, v8, v3

    #@42
    .line 542
    .local v6, "oldLength":J
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@44
    invoke-interface {v8, v0}, Lcom/android/okhttp/internal/io/FileSystem;->size(Ljava/io/File;)J

    #@47
    move-result-wide v4

    #@48
    .line 543
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    #@4b
    move-result-object v8

    #@4c
    aput-wide v4, v8, v3

    #@4e
    .line 544
    iget-wide v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    #@50
    sub-long/2addr v8, v6

    #@51
    add-long/2addr v8, v4

    #@52
    iput-wide v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    #@54
    .line 535
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_0

    #@57
    .line 523
    .end local v1    # "dirty":Ljava/io/File;
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    #@58
    .restart local v3    # "i":I
    :goto_2
    iget v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    #@5a
    if-ge v3, v8, :cond_1

    #@5c
    .line 524
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Editor;)[Z

    #@5f
    move-result-object v8

    #@60
    aget-boolean v8, v8, v3

    #@62
    if-nez v8, :cond_4

    #@64
    .line 525
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V

    #@67
    .line 526
    new-instance v8, Ljava/lang/IllegalStateException;

    #@69
    new-instance v9, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v10, "Newly created entry didn\'t create value for index "

    #@71
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v9

    #@79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v9

    #@7d
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@80
    throw v8

    #@81
    .line 528
    :cond_4
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@83
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    #@86
    move-result-object v9

    #@87
    aget-object v9, v9, v3

    #@89
    invoke-interface {v8, v9}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    #@8c
    move-result v8

    #@8d
    if-nez v8, :cond_5

    #@8f
    .line 529
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@92
    monitor-exit p0

    #@93
    .line 530
    return-void

    #@94
    .line 523
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@96
    goto :goto_2

    #@97
    .line 547
    .restart local v1    # "dirty":Ljava/io/File;
    :cond_6
    :try_start_2
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@99
    invoke-interface {v8, v1}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    #@9c
    goto :goto_1

    #@9d
    .line 551
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7
    iget v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    #@9f
    add-int/lit8 v8, v8, 0x1

    #@a1
    iput v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    #@a3
    .line 552
    const/4 v8, 0x0

    #@a4
    invoke-static {v2, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@a7
    .line 553
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    #@aa
    move-result v8

    #@ab
    or-int/2addr v8, p2

    #@ac
    if-eqz v8, :cond_b

    #@ae
    .line 554
    const/4 v8, 0x1

    #@af
    invoke-static {v2, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set1(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z

    #@b2
    .line 555
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@b4
    const-string/jumbo v9, "CLEAN"

    #@b7
    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@ba
    move-result-object v8

    #@bb
    const/16 v9, 0x20

    #@bd
    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@c0
    .line 556
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@c2
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    #@c5
    move-result-object v9

    #@c6
    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@c9
    .line 557
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@cb
    invoke-virtual {v2, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V

    #@ce
    .line 558
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@d0
    const/16 v9, 0xa

    #@d2
    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@d5
    .line 559
    if-eqz p2, :cond_8

    #@d7
    .line 560
    iget-wide v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    #@d9
    const-wide/16 v10, 0x1

    #@db
    add-long/2addr v10, v8

    #@dc
    iput-wide v10, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    #@de
    invoke-static {v2, v8, v9}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set2(Lcom/android/okhttp/internal/DiskLruCache$Entry;J)J

    #@e1
    .line 568
    :cond_8
    :goto_3
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@e3
    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    #@e6
    .line 570
    iget-wide v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    #@e8
    iget-wide v10, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    #@ea
    cmp-long v8, v8, v10

    #@ec
    if-gtz v8, :cond_9

    #@ee
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    #@f1
    move-result v8

    #@f2
    if-eqz v8, :cond_a

    #@f4
    .line 571
    :cond_9
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    #@f6
    iget-object v9, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    #@f8
    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@fb
    :cond_a
    monitor-exit p0

    #@fc
    .line 515
    return-void

    #@fd
    .line 563
    :cond_b
    :try_start_3
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@ff
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    #@102
    move-result-object v9

    #@103
    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@106
    .line 564
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@108
    const-string/jumbo v9, "REMOVE"

    #@10b
    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@10e
    move-result-object v8

    #@10f
    const/16 v9, 0x20

    #@111
    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@114
    .line 565
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@116
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    #@119
    move-result-object v9

    #@11a
    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@11d
    .line 566
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@11f
    const/16 v9, 0xa

    #@121
    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@124
    goto :goto_3
.end method

.method public static create(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/android/okhttp/internal/DiskLruCache;
    .locals 12
    .param p0, "fileSystem"    # Lcom/android/okhttp/internal/io/FileSystem;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    #@0
    .prologue
    .line 248
    const-wide/16 v2, 0x0

    #@2
    cmp-long v0, p4, v2

    #@4
    if-gtz v0, :cond_0

    #@6
    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "maxSize <= 0"

    #@b
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 251
    :cond_0
    if-gtz p3, :cond_1

    #@11
    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "valueCount <= 0"

    #@16
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 256
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@1c
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@1e
    .line 257
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@20
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@23
    const-string/jumbo v0, "OkHttp DiskLruCache"

    #@26
    const/4 v2, 0x1

    #@27
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    #@2a
    move-result-object v8

    #@2b
    .line 256
    const/4 v2, 0x0

    #@2c
    const/4 v3, 0x1

    #@2d
    const-wide/16 v4, 0x3c

    #@2f
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@32
    .line 259
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Lcom/android/okhttp/internal/DiskLruCache;

    #@34
    move-object v4, p0

    #@35
    move-object v5, p1

    #@36
    move v6, p2

    #@37
    move v7, p3

    #@38
    move-wide/from16 v8, p4

    #@3a
    move-object v10, v1

    #@3b
    invoke-direct/range {v3 .. v10}, Lcom/android/okhttp/internal/DiskLruCache;-><init>(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    #@3e
    return-object v3
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    #@5
    .line 453
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    #@8
    .line 454
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    #@b
    .line 455
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@d
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@13
    .line 456
    .local v1, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    #@15
    cmp-long v2, p2, v2

    #@17
    if-eqz v2, :cond_1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 457
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get6(Lcom/android/okhttp/internal/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-wide v2

    #@1f
    cmp-long v2, v2, p2

    #@21
    if-eqz v2, :cond_1

    #@23
    :cond_0
    monitor-exit p0

    #@24
    .line 458
    return-object v4

    #@25
    .line 460
    :cond_1
    if-eqz v1, :cond_2

    #@27
    :try_start_1
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-object v2

    #@2b
    if-eqz v2, :cond_2

    #@2d
    monitor-exit p0

    #@2e
    .line 461
    return-object v4

    #@2f
    .line 465
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@31
    const-string/jumbo v3, "DIRTY"

    #@34
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@37
    move-result-object v2

    #@38
    const/16 v3, 0x20

    #@3a
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@3d
    move-result-object v2

    #@3e
    invoke-interface {v2, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@41
    move-result-object v2

    #@42
    const/16 v3, 0xa

    #@44
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@47
    .line 466
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@49
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    #@4c
    .line 468
    iget-boolean v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    if-eqz v2, :cond_3

    #@50
    monitor-exit p0

    #@51
    .line 469
    return-object v4

    #@52
    .line 472
    :cond_3
    if-nez v1, :cond_4

    #@54
    .line 473
    :try_start_3
    new-instance v1, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@56
    .end local v1    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    const/4 v2, 0x0

    #@57
    invoke-direct {v1, p0, p1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V

    #@5a
    .line 474
    .restart local v1    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@5c
    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 476
    :cond_4
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@61
    const/4 v2, 0x0

    #@62
    invoke-direct {v0, p0, v1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    #@65
    .line 477
    .local v0, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@68
    monitor-exit p0

    #@69
    .line 478
    return-object v0

    #@6a
    .end local v0    # "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    #@6b
    monitor-exit p0

    #@6c
    throw v2
.end method

.method private journalRebuildRequired()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 580
    const/16 v0, 0x7d0

    #@3
    .line 581
    .local v0, "redundantOpCompactThreshold":I
    iget v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    #@5
    const/16 v3, 0x7d0

    #@7
    if-lt v2, v3, :cond_0

    #@9
    .line 582
    iget v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    #@b
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@d
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    #@10
    move-result v3

    #@11
    if-lt v2, v3, :cond_0

    #@13
    const/4 v1, 0x1

    #@14
    .line 581
    :cond_0
    return v1
.end method

.method private newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@2
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    #@4
    invoke-interface {v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    #@7
    move-result-object v1

    #@8
    .line 303
    .local v1, "fileSink":Lcom/android/okhttp/okio/Sink;
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$3;

    #@a
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/DiskLruCache$3;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/okio/Sink;)V

    #@d
    .line 309
    .local v0, "faultHidingSink":Lcom/android/okhttp/okio/Sink;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@10
    move-result-object v2

    #@11
    return-object v2
.end method

.method private processJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 356
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@3
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    #@5
    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    #@8
    .line 357
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@a
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/internal/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_3

    #@18
    .line 358
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@1e
    .line 359
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@21
    move-result-object v3

    #@22
    if-nez v3, :cond_1

    #@24
    .line 360
    const/4 v2, 0x0

    #@25
    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    #@27
    if-ge v2, v3, :cond_0

    #@29
    .line 361
    iget-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    #@2b
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    #@2e
    move-result-object v3

    #@2f
    aget-wide v6, v3, v2

    #@31
    add-long/2addr v4, v6

    #@32
    iput-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    #@34
    .line 360
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_1

    #@37
    .line 364
    .end local v2    # "t":I
    :cond_1
    invoke-static {v0, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@3a
    .line 365
    const/4 v2, 0x0

    #@3b
    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    #@3d
    if-ge v2, v3, :cond_2

    #@3f
    .line 366
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@41
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    #@44
    move-result-object v4

    #@45
    aget-object v4, v4, v2

    #@47
    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    #@4a
    .line 367
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@4c
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    #@4f
    move-result-object v4

    #@50
    aget-object v4, v4, v2

    #@52
    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    #@55
    .line 365
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_2

    #@58
    .line 369
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@5b
    goto :goto_0

    #@5c
    .line 355
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@2
    iget-object v9, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    #@4
    invoke-interface {v8, v9}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    #@7
    move-result-object v8

    #@8
    invoke-static {v8}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@b
    move-result-object v5

    #@c
    .line 265
    .local v5, "source":Lcom/android/okhttp/okio/BufferedSource;
    :try_start_0
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 266
    .local v4, "magic":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    .line 267
    .local v7, "version":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 268
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    .line 269
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 270
    .local v1, "blank":Ljava/lang/String;
    const-string/jumbo v8, "libcore.io.DiskLruCache"

    #@23
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_0

    #@29
    .line 271
    const-string/jumbo v8, "1"

    #@2c
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v8

    #@30
    if-eqz v8, :cond_0

    #@32
    .line 272
    iget v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    #@34
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v8

    #@3c
    if-eqz v8, :cond_0

    #@3e
    .line 273
    iget v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    #@40
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_0

    #@4a
    .line 274
    const-string/jumbo v8, ""

    #@4d
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    move-result v8

    #@51
    if-eqz v8, :cond_0

    #@53
    .line 279
    const/4 v3, 0x0

    #@54
    .line 282
    .local v3, "lineCount":I
    :goto_0
    :try_start_1
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@57
    move-result-object v8

    #@58
    invoke-direct {p0, v8}, Lcom/android/okhttp/internal/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    .line 283
    add-int/lit8 v3, v3, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 275
    .end local v3    # "lineCount":I
    :cond_0
    :try_start_2
    new-instance v8, Ljava/io/IOException;

    #@60
    new-instance v9, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v10, "unexpected journal header: ["

    #@68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    const-string/jumbo v10, ", "

    #@73
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    const-string/jumbo v10, ", "

    #@7e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v9

    #@86
    .line 276
    const-string/jumbo v10, ", "

    #@89
    .line 275
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v9

    #@8d
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    .line 276
    const-string/jumbo v10, "]"

    #@94
    .line 275
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v9

    #@98
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a0
    .line 296
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v8

    #@a1
    .line 297
    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@a4
    .line 296
    throw v8

    #@a5
    .line 284
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v3    # "lineCount":I
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@a6
    .line 288
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_3
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@a8
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    #@ab
    move-result v8

    #@ac
    sub-int v8, v3, v8

    #@ae
    iput v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    #@b0
    .line 291
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    #@b3
    move-result v8

    #@b4
    if-nez v8, :cond_1

    #@b6
    .line 292
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b9
    .line 297
    :goto_1
    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@bc
    .line 262
    return-void

    #@bd
    .line 294
    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;

    #@c0
    move-result-object v8

    #@c1
    iput-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c3
    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, -0x1

    #@4
    .line 313
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v1

    #@8
    .line 314
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    #@a
    .line 315
    new-instance v6, Ljava/io/IOException;

    #@c
    new-instance v7, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v8, "unexpected journal line: "

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v6

    #@24
    .line 318
    :cond_0
    add-int/lit8 v3, v1, 0x1

    #@26
    .line 319
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    #@29
    move-result v5

    #@2a
    .line 321
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_1

    #@2c
    .line 322
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 323
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v6, "REMOVE"

    #@33
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@36
    move-result v6

    #@37
    if-ne v1, v6, :cond_2

    #@39
    const-string/jumbo v6, "REMOVE"

    #@3c
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3f
    move-result v6

    #@40
    if-eqz v6, :cond_2

    #@42
    .line 324
    iget-object v6, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@44
    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 325
    return-void

    #@48
    .line 328
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    .line 331
    .restart local v2    # "key":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@4e
    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@54
    .line 332
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    if-nez v0, :cond_3

    #@56
    .line 333
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@58
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-direct {v0, p0, v2, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V

    #@5b
    .line 334
    .restart local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    iget-object v6, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@5d
    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 337
    :cond_3
    if-eq v5, v7, :cond_5

    #@62
    const-string/jumbo v6, "CLEAN"

    #@65
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@68
    move-result v6

    #@69
    if-ne v1, v6, :cond_5

    #@6b
    const-string/jumbo v6, "CLEAN"

    #@6e
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@71
    move-result v6

    #@72
    if-eqz v6, :cond_5

    #@74
    .line 338
    add-int/lit8 v6, v5, 0x1

    #@76
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    const-string/jumbo v7, " "

    #@7d
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    .line 339
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    #@82
    invoke-static {v0, v6}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set1(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z

    #@85
    .line 340
    invoke-static {v0, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@88
    .line 341
    invoke-static {v0, v4}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-wrap0(Lcom/android/okhttp/internal/DiskLruCache$Entry;[Ljava/lang/String;)V

    #@8b
    .line 312
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    #@8c
    .line 342
    :cond_5
    if-ne v5, v7, :cond_6

    #@8e
    const-string/jumbo v6, "DIRTY"

    #@91
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@94
    move-result v6

    #@95
    if-ne v1, v6, :cond_6

    #@97
    const-string/jumbo v6, "DIRTY"

    #@9a
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9d
    move-result v6

    #@9e
    if-eqz v6, :cond_6

    #@a0
    .line 343
    new-instance v6, Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@a2
    invoke-direct {v6, p0, v0, v8}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    #@a5
    invoke-static {v0, v6}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@a8
    goto :goto_0

    #@a9
    .line 344
    :cond_6
    if-ne v5, v7, :cond_7

    #@ab
    const-string/jumbo v6, "READ"

    #@ae
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@b1
    move-result v6

    #@b2
    if-ne v1, v6, :cond_7

    #@b4
    const-string/jumbo v6, "READ"

    #@b7
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ba
    move-result v6

    #@bb
    if-nez v6, :cond_4

    #@bd
    .line 347
    :cond_7
    new-instance v6, Ljava/io/IOException;

    #@bf
    new-instance v7, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v8, "unexpected journal line: "

    #@c7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v7

    #@d3
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d6
    throw v6
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 379
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 380
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@7
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    #@a
    .line 383
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@c
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    #@e
    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    move-result-object v2

    #@16
    .line 385
    .local v2, "writer":Lcom/android/okhttp/okio/BufferedSink;
    :try_start_1
    const-string/jumbo v3, "libcore.io.DiskLruCache"

    #@19
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@1c
    move-result-object v3

    #@1d
    const/16 v4, 0xa

    #@1f
    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@22
    .line 386
    const-string/jumbo v3, "1"

    #@25
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@28
    move-result-object v3

    #@29
    const/16 v4, 0xa

    #@2b
    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@2e
    .line 387
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    #@30
    int-to-long v4, v3

    #@31
    invoke-interface {v2, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    #@34
    move-result-object v3

    #@35
    const/16 v4, 0xa

    #@37
    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@3a
    .line 388
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    #@3c
    int-to-long v4, v3

    #@3d
    invoke-interface {v2, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    #@40
    move-result-object v3

    #@41
    const/16 v4, 0xa

    #@43
    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@46
    .line 389
    const/16 v3, 0xa

    #@48
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@4b
    .line 391
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@4d
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@50
    move-result-object v3

    #@51
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v1

    #@55
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_2

    #@5b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@61
    .line 392
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@64
    move-result-object v3

    #@65
    if-eqz v3, :cond_1

    #@67
    .line 393
    const-string/jumbo v3, "DIRTY"

    #@6a
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@6d
    move-result-object v3

    #@6e
    const/16 v4, 0x20

    #@70
    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@73
    .line 394
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@7a
    .line 395
    const/16 v3, 0xa

    #@7c
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7f
    goto :goto_0

    #@80
    .line 403
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@81
    .line 404
    :try_start_2
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    #@84
    .line 403
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@85
    .end local v2    # "writer":Lcom/android/okhttp/okio/BufferedSink;
    :catchall_1
    move-exception v3

    #@86
    monitor-exit p0

    #@87
    throw v3

    #@88
    .line 397
    .restart local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v2    # "writer":Lcom/android/okhttp/okio/BufferedSink;
    :cond_1
    :try_start_3
    const-string/jumbo v3, "CLEAN"

    #@8b
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@8e
    move-result-object v3

    #@8f
    const/16 v4, 0x20

    #@91
    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@94
    .line 398
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    #@97
    move-result-object v3

    #@98
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@9b
    .line 399
    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V

    #@9e
    .line 400
    const/16 v3, 0xa

    #@a0
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a3
    goto :goto_0

    #@a4
    .line 404
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_2
    :try_start_4
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    #@a7
    .line 407
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@a9
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    #@ab
    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    #@ae
    move-result v3

    #@af
    if-eqz v3, :cond_3

    #@b1
    .line 408
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@b3
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    #@b5
    iget-object v5, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    #@b7
    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    #@ba
    .line 410
    :cond_3
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@bc
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    #@be
    iget-object v5, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    #@c0
    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    #@c3
    .line 411
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@c5
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    #@c7
    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    #@ca
    .line 413
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;

    #@cd
    move-result-object v3

    #@ce
    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@d0
    .line 414
    const/4 v3, 0x0

    #@d1
    iput-boolean v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@d3
    monitor-exit p0

    #@d4
    .line 378
    return-void
.end method

.method private removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    .locals 7
    .param p1, "entry"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 603
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 604
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1, v6}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)Z

    #@e
    .line 607
    :cond_0
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    #@11
    if-ge v0, v1, :cond_1

    #@13
    .line 608
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@15
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    #@18
    move-result-object v2

    #@19
    aget-object v2, v2, v0

    #@1b
    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    #@1e
    .line 609
    iget-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    #@20
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    #@23
    move-result-object v1

    #@24
    aget-wide v4, v1, v0

    #@26
    sub-long/2addr v2, v4

    #@27
    iput-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    #@29
    .line 610
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    #@2c
    move-result-object v1

    #@2d
    const-wide/16 v2, 0x0

    #@2f
    aput-wide v2, v1, v0

    #@31
    .line 607
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 613
    :cond_1
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    #@36
    add-int/lit8 v1, v1, 0x1

    #@38
    iput v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    #@3a
    .line 614
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@3c
    const-string/jumbo v2, "REMOVE"

    #@3f
    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@42
    move-result-object v1

    #@43
    const/16 v2, 0x20

    #@45
    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@48
    move-result-object v1

    #@49
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@50
    move-result-object v1

    #@51
    const/16 v2, 0xa

    #@53
    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@56
    .line 615
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@58
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 617
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_2

    #@65
    .line 618
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    #@67
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    #@69
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@6c
    .line 621
    :cond_2
    return v6
.end method

.method private trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 663
    :goto_0
    iget-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    #@2
    iget-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    #@4
    cmp-long v1, v2, v4

    #@6
    if-lez v1, :cond_0

    #@8
    .line 664
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@a
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@18
    .line 665
    .local v0, "toEvict":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    #@1b
    goto :goto_0

    #@1c
    .line 662
    .end local v0    # "toEvict":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 692
    sget-object v1, Lcom/android/okhttp/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    .line 693
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 694
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "keys must match regex [a-z0-9_-]{1,120}: \""

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, "\""

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 694
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 691
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 646
    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 647
    :cond_0
    const/4 v1, 0x1

    #@a
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 648
    return-void

    #@e
    .line 651
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@10
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@16
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    #@19
    move-result v2

    #@1a
    new-array v2, v2, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@1c
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@22
    const/4 v2, 0x0

    #@23
    array-length v3, v1

    #@24
    :goto_0
    if-ge v2, v3, :cond_3

    #@26
    aget-object v0, v1, v2

    #@28
    .line 652
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@2b
    move-result-object v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 653
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V

    #@35
    .line 651
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 656
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_3
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    #@3b
    .line 657
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@3d
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    #@40
    .line 658
    const/4 v1, 0x0

    #@41
    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@43
    .line 659
    const/4 v1, 0x1

    #@44
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    monitor-exit p0

    #@47
    .line 645
    return-void

    #@48
    :catchall_0
    move-exception v1

    #@49
    monitor-exit p0

    #@4a
    throw v1
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->close()V

    #@3
    .line 676
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@5
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    #@7
    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    #@a
    .line 674
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 447
    const-wide/16 v0, -0x1

    #@2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public declared-synchronized evictAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 684
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    #@4
    .line 686
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@c
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    #@f
    move-result v2

    #@10
    new-array v2, v2, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@12
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@18
    const/4 v2, 0x0

    #@19
    array-length v3, v1

    #@1a
    :goto_0
    if-ge v2, v3, :cond_0

    #@1c
    aget-object v0, v1, v2

    #@1e
    .line 687
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 686
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_0
    monitor-exit p0

    #@25
    .line 683
    return-void

    #@26
    :catchall_0
    move-exception v1

    #@27
    monitor-exit p0

    #@28
    throw v1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 637
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 639
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    #@a
    .line 640
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    #@d
    .line 641
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@f
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 636
    return-void

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 423
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    #@5
    .line 425
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    #@8
    .line 426
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    #@b
    .line 427
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@d
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@13
    .line 428
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    #@15
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 430
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v1

    #@1f
    .line 431
    .local v1, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v1, :cond_1

    #@21
    monitor-exit p0

    #@22
    return-object v3

    #@23
    .end local v1    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_0
    monitor-exit p0

    #@24
    .line 428
    return-object v3

    #@25
    .line 433
    .restart local v1    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    #@27
    add-int/lit8 v2, v2, 0x1

    #@29
    iput v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    #@2b
    .line 434
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    #@2d
    const-string/jumbo v3, "READ"

    #@30
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@33
    move-result-object v2

    #@34
    const/16 v3, 0x20

    #@36
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v2, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@3d
    move-result-object v2

    #@3e
    const/16 v3, 0xa

    #@40
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@43
    .line 435
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_2

    #@49
    .line 436
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    #@4b
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    #@4d
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    :cond_2
    monitor-exit p0

    #@51
    .line 439
    return-object v1

    #@52
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local v1    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :catchall_0
    move-exception v2

    #@53
    monitor-exit p0

    #@54
    throw v2
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 491
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-wide v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method initialize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 202
    sget-boolean v1, Lcom/android/okhttp/internal/DiskLruCache;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    new-instance v1, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v1

    #@11
    .line 204
    :cond_0
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 205
    return-void

    #@16
    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@18
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    #@1a
    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 211
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@22
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    #@24
    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_3

    #@2a
    .line 212
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@2c
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    #@2e
    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    #@31
    .line 219
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@33
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    #@35
    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_4

    #@3b
    .line 221
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->readJournal()V

    #@3e
    .line 222
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->processJournal()V

    #@41
    .line 223
    const/4 v1, 0x1

    #@42
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 224
    return-void

    #@45
    .line 214
    :cond_3
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    #@47
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    #@49
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    #@4b
    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    #@4e
    goto :goto_0

    #@4f
    .line 225
    :catch_0
    move-exception v0

    #@50
    .line 226
    .local v0, "journalIsCorrupt":Ljava/io/IOException;
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@53
    move-result-object v1

    #@54
    new-instance v2, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v3, "DiskLruCache "

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    const-string/jumbo v3, " is corrupt: "

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    .line 227
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    .line 227
    const-string/jumbo v3, ", removing"

    #@78
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    #@83
    .line 228
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->delete()V

    #@86
    .line 229
    const/4 v1, 0x0

    #@87
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    #@89
    .line 233
    .end local v0    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_4
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V

    #@8c
    .line 235
    iput-boolean v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    #@8e
    .line 201
    return-void
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 626
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    #@4
    .line 595
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    #@7
    .line 596
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    #@a
    .line 597
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 598
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    if-nez v0, :cond_0

    #@14
    const/4 v1, 0x0

    #@15
    monitor-exit p0

    #@16
    return v1

    #@17
    .line 599
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v1

    #@1b
    monitor-exit p0

    #@1c
    return v1

    #@1d
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit p0

    #@1f
    throw v1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 3
    .param p1, "maxSize"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 499
    :try_start_0
    iput-wide p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    #@3
    .line 500
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 501
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    #@9
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    #@b
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 498
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 511
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    #@4
    .line 512
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return-wide v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 715
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    #@4
    .line 716
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$4;

    #@6
    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/DiskLruCache$4;-><init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

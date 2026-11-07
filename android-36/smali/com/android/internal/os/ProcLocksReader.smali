.class public Lcom/android/internal/os/ProcLocksReader;
.super Ljava/lang/Object;
.source "ProcLocksReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;
    }
.end annotation


# instance fields
.field private final blacklist mPath:Ljava/lang/String;

.field private blacklist mPids:Landroid/util/IntArray;

.field private blacklist mReader:Lcom/android/internal/util/ProcFileReader;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    .line 41
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    .line 44
    const-string v0, "/proc/locks"

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    .line 41
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    .line 48
    iput-object p1, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist handleBlockingFileLocks(Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;)V
    .registers 9
    .param p1, "callback"    # Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-wide/16 v0, -0x1

    .line 75
    .local v0, "last":J
    const/4 v2, -0x1

    .line 77
    .local v2, "pid":I
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    if-nez v3, :cond_16

    .line 78
    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    goto :goto_1b

    .line 80
    :cond_16
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->rewind()V

    .line 83
    :goto_1b
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V

    .line 84
    :goto_20
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9e

    .line 85
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/ProcFileReader;->nextLong(Z)J

    move-result-wide v5

    .line 86
    .local v5, "id":J
    cmp-long v3, v5, v0

    if-nez v3, :cond_5a

    .line 88
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 89
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 90
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 91
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 93
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 94
    if-lez v2, :cond_54

    .line 95
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    .line 98
    :cond_54
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_20

    .line 101
    :cond_5a
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-le v3, v4, :cond_6c

    .line 102
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;->onBlockingFileLock(Landroid/util/IntArray;)V

    .line 103
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V

    .line 107
    :cond_6c
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 108
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 109
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 111
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 112
    if-lez v2, :cond_97

    .line 113
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-nez v3, :cond_91

    .line 114
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_97

    .line 116
    :cond_91
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/util/IntArray;->set(II)V

    .line 119
    :cond_97
    :goto_97
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 120
    move-wide v0, v5

    goto :goto_20

    .line 124
    .end local v5    # "id":J
    :cond_9e
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-le v3, v4, :cond_ab

    .line 125
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;->onBlockingFileLock(Landroid/util/IntArray;)V

    .line 127
    :cond_ab
    return-void
.end method

.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$FileDescriptorRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private mBlocked:Z

.field private mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .param p1, "quitAllowed"    # Z

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    #@a
    .line 69
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    #@c
    .line 70
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    #@12
    .line 68
    return-void
.end method

.method private dispatchEvents(II)I
    .locals 8
    .param p1, "fd"    # I
    .param p2, "events"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 265
    monitor-enter p0

    #@2
    .line 266
    :try_start_0
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v4

    #@8
    check-cast v4, Landroid/os/MessageQueue$FileDescriptorRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 267
    .local v4, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v4, :cond_0

    #@c
    monitor-exit p0

    #@d
    .line 268
    return v7

    #@e
    .line 271
    :cond_0
    :try_start_1
    iget v3, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 272
    .local v3, "oldWatchedEvents":I
    and-int/2addr p2, v3

    #@11
    .line 273
    if-nez p2, :cond_1

    #@13
    monitor-exit p0

    #@14
    .line 274
    return v3

    #@15
    .line 277
    :cond_1
    :try_start_2
    iget-object v1, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    #@17
    .line 278
    .local v1, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v5, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .local v5, "seq":I
    monitor-exit p0

    #@1a
    .line 283
    iget-object v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    #@1c
    .line 282
    invoke-interface {v1, v6, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    #@1f
    move-result v2

    #@20
    .line 284
    .local v2, "newWatchedEvents":I
    if-eqz v2, :cond_2

    #@22
    .line 285
    or-int/lit8 v2, v2, 0x4

    #@24
    .line 290
    :cond_2
    if-eq v2, v3, :cond_4

    #@26
    .line 291
    monitor-enter p0

    #@27
    .line 292
    :try_start_3
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@2c
    move-result v0

    #@2d
    .line 293
    .local v0, "index":I
    if-ltz v0, :cond_3

    #@2f
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    if-ne v6, v4, :cond_3

    #@37
    .line 294
    iget v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    #@39
    if-ne v6, v5, :cond_3

    #@3b
    .line 295
    iput v2, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    #@3d
    .line 296
    if-nez v2, :cond_3

    #@3f
    .line 297
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@41
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@44
    :cond_3
    monitor-exit p0

    #@45
    .line 304
    .end local v0    # "index":I
    :cond_4
    return v2

    #@46
    .line 265
    .end local v1    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .end local v2    # "newWatchedEvents":I
    .end local v3    # "oldWatchedEvents":I
    .end local v4    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .end local v5    # "seq":I
    :catchall_0
    move-exception v6

    #@47
    monitor-exit p0

    #@48
    throw v6

    #@49
    .line 291
    .restart local v1    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .restart local v2    # "newWatchedEvents":I
    .restart local v3    # "oldWatchedEvents":I
    .restart local v4    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .restart local v5    # "seq":I
    :catchall_1
    move-exception v6

    #@4a
    monitor-exit p0

    #@4b
    throw v6
.end method

.method private dispose()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 85
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 86
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    #@a
    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    #@d
    .line 87
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    #@f
    .line 84
    :cond_0
    return-void
.end method

.method private isPollingLocked()Z
    .locals 2

    #@0
    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    #@6
    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsPolling(J)Z
.end method

.method private native nativePollOnce(JI)V
.end method

.method private static native nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native nativeWake(J)V
.end method

.method private postSyncBarrier(J)I
    .locals 7
    .param p1, "when"    # J

    #@0
    .prologue
    .line 465
    monitor-enter p0

    #@1
    .line 466
    :try_start_0
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    #@3
    add-int/lit8 v4, v3, 0x1

    #@5
    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    #@7
    .line 467
    .local v3, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 468
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->markInUse()V

    #@e
    .line 469
    iput-wide p1, v0, Landroid/os/Message;->when:J

    #@10
    .line 470
    iput v3, v0, Landroid/os/Message;->arg1:I

    #@12
    .line 472
    const/4 v2, 0x0

    #@13
    .line 473
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@15
    .line 474
    .local v1, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    #@17
    cmp-long v4, p1, v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 475
    .end local v2    # "prev":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_0

    #@1d
    iget-wide v4, v1, Landroid/os/Message;->when:J

    #@1f
    cmp-long v4, v4, p1

    #@21
    if-gtz v4, :cond_0

    #@23
    .line 476
    move-object v2, v1

    #@24
    .line 477
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    #@26
    goto :goto_0

    #@27
    .line 480
    .end local v2    # "prev":Landroid/os/Message;
    :cond_0
    if-eqz v2, :cond_1

    #@29
    .line 481
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    #@2b
    .line 482
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :goto_1
    monitor-exit p0

    #@2e
    .line 487
    return v3

    #@2f
    .line 484
    :cond_1
    :try_start_1
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    #@31
    .line 485
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_1

    #@34
    .line 465
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v3    # "token":I
    :catchall_0
    move-exception v4

    #@35
    monitor-exit p0

    #@36
    throw v4
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 733
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v2

    #@5
    .line 734
    .local v2, "now":J
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@7
    .line 735
    .local v1, "p":Landroid/os/Message;
    if-eqz v1, :cond_0

    #@9
    .line 736
    iget-wide v4, v1, Landroid/os/Message;->when:J

    #@b
    cmp-long v4, v4, v2

    #@d
    if-lez v4, :cond_2

    #@f
    .line 737
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    #@12
    .line 732
    :cond_0
    return-void

    #@13
    .line 748
    .local v0, "n":Landroid/os/Message;
    :cond_1
    move-object v1, v0

    #@14
    .line 741
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    #@16
    .line 742
    .restart local v0    # "n":Landroid/os/Message;
    if-nez v0, :cond_3

    #@18
    .line 743
    return-void

    #@19
    .line 745
    :cond_3
    iget-wide v4, v0, Landroid/os/Message;->when:J

    #@1b
    cmp-long v4, v4, v2

    #@1d
    if-lez v4, :cond_1

    #@1f
    .line 750
    iput-object v6, v1, Landroid/os/Message;->next:Landroid/os/Message;

    #@21
    .line 752
    :goto_0
    move-object v1, v0

    #@22
    .line 753
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    #@24
    .line 754
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    #@27
    .line 755
    if-eqz v0, :cond_0

    #@29
    goto :goto_0
.end method

.method private removeAllMessagesLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 723
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@3
    .line 724
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_0

    #@5
    .line 725
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    #@7
    .line 726
    .local v0, "n":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    #@a
    .line 727
    move-object v1, v0

    #@b
    goto :goto_0

    #@c
    .line 729
    .end local v0    # "n":Landroid/os/Message;
    :cond_0
    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@e
    .line 722
    return-void
.end method

.method private updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 224
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    #@4
    move-result v0

    #@5
    .line 226
    .local v0, "fdNum":I
    const/4 v1, -0x1

    #@6
    .line 227
    .local v1, "index":I
    const/4 v2, 0x0

    #@7
    .line 228
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 229
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@10
    move-result v1

    #@11
    .line 230
    if-ltz v1, :cond_0

    #@13
    .line 231
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    #@1b
    .line 232
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-eqz v2, :cond_0

    #@1d
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    #@1f
    if-ne v3, p2, :cond_0

    #@21
    .line 233
    return-void

    #@22
    .line 238
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :cond_0
    if-eqz p2, :cond_4

    #@24
    .line 239
    or-int/lit8 p2, p2, 0x4

    #@26
    .line 240
    if-nez v2, :cond_3

    #@28
    .line 241
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@2a
    if-nez v3, :cond_1

    #@2c
    .line 242
    new-instance v3, Landroid/util/SparseArray;

    #@2e
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@31
    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@33
    .line 244
    :cond_1
    new-instance v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    #@35
    invoke-direct {v2, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    #@38
    .line 245
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@3a
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    .line 251
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :goto_0
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    #@3f
    invoke-static {v4, v5, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    #@42
    .line 223
    :cond_2
    :goto_1
    return-void

    #@43
    .line 247
    :cond_3
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    #@45
    .line 248
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    #@47
    .line 249
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    #@49
    add-int/lit8 v3, v3, 0x1

    #@4b
    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    #@4d
    goto :goto_0

    #@4e
    .line 252
    :cond_4
    if-eqz v2, :cond_2

    #@50
    .line 253
    iput v4, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    #@52
    .line 254
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    #@54
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@57
    goto :goto_1
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    #@0
    .prologue
    .line 116
    if-nez p1, :cond_0

    #@2
    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Can\'t add a null IdleHandler"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 119
    :cond_0
    monitor-enter p0

    #@c
    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 115
    return-void

    #@13
    .line 119
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    #@0
    .prologue
    .line 188
    if-nez p1, :cond_0

    #@2
    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "fd must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 191
    :cond_0
    if-nez p3, :cond_1

    #@d
    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "listener must not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 195
    :cond_1
    monitor-enter p0

    #@17
    .line 196
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 187
    return-void

    #@1c
    .line 195
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 761
    monitor-enter p0

    #@1
    .line 762
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v2

    #@5
    .line 763
    .local v2, "now":J
    const/4 v1, 0x0

    #@6
    .line 764
    .local v1, "n":I
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@8
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    #@a
    .line 765
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    const-string/jumbo v5, "Message "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, ": "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v0, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@34
    .line 766
    add-int/lit8 v1, v1, 0x1

    #@36
    .line 764
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    #@38
    goto :goto_0

    #@39
    .line 768
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    const-string/jumbo v5, "(Total messages: "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    const-string/jumbo v5, ", polling="

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    #@57
    move-result v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 769
    const-string/jumbo v5, ", quitting="

    #@5f
    .line 768
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 769
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    #@65
    .line 768
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    .line 769
    const-string/jumbo v5, ")"

    #@6c
    .line 768
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    monitor-exit p0

    #@78
    .line 760
    return-void

    #@79
    .line 761
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "n":I
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    #@7a
    monitor-exit p0

    #@7b
    throw v4
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    #@0
    .prologue
    .line 534
    iget-object v4, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 535
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v5, "Message must have a target."

    #@9
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 537
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 538
    new-instance v4, Ljava/lang/IllegalStateException;

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    const-string/jumbo v6, " This message is already in use."

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 541
    :cond_1
    monitor-enter p0

    #@2e
    .line 542
    :try_start_0
    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    #@30
    if-eqz v4, :cond_2

    #@32
    .line 543
    new-instance v0, Ljava/lang/IllegalStateException;

    #@34
    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    const-string/jumbo v5, " sending message to a Handler on a dead thread"

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    .line 543
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4d
    .line 545
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "MessageQueue"

    #@50
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    .line 546
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    .line 547
    const/4 v4, 0x0

    #@5b
    monitor-exit p0

    #@5c
    return v4

    #@5d
    .line 550
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    #@60
    .line 551
    iput-wide p2, p1, Landroid/os/Message;->when:J

    #@62
    .line 552
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@64
    .line 554
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_3

    #@66
    const-wide/16 v4, 0x0

    #@68
    cmp-long v4, p2, v4

    #@6a
    if-nez v4, :cond_5

    #@6c
    .line 556
    :cond_3
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    #@6e
    .line 557
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@70
    .line 558
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    #@72
    .line 580
    :goto_0
    if-eqz v1, :cond_4

    #@74
    .line 581
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    #@76
    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@79
    :cond_4
    monitor-exit p0

    #@7a
    .line 584
    const/4 v4, 0x1

    #@7b
    return v4

    #@7c
    .line 554
    :cond_5
    :try_start_2
    iget-wide v4, v2, Landroid/os/Message;->when:J

    #@7e
    cmp-long v4, p2, v4

    #@80
    if-ltz v4, :cond_3

    #@82
    .line 563
    iget-boolean v4, p0, Landroid/os/MessageQueue;->mBlocked:Z

    #@84
    if-eqz v4, :cond_8

    #@86
    iget-object v4, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    #@88
    if-nez v4, :cond_8

    #@8a
    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    #@8d
    move-result v1

    #@8e
    .line 566
    :cond_6
    :goto_1
    move-object v3, v2

    #@8f
    .line 567
    .local v3, "prev":Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    #@91
    .line 568
    if-eqz v2, :cond_7

    #@93
    iget-wide v4, v2, Landroid/os/Message;->when:J

    #@95
    cmp-long v4, p2, v4

    #@97
    if-gez v4, :cond_9

    #@99
    .line 575
    :cond_7
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    #@9b
    .line 576
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9d
    goto :goto_0

    #@9e
    .line 541
    .end local v2    # "p":Landroid/os/Message;
    .end local v3    # "prev":Landroid/os/Message;
    :catchall_0
    move-exception v4

    #@9f
    monitor-exit p0

    #@a0
    throw v4

    #@a1
    .line 563
    .restart local v2    # "p":Landroid/os/Message;
    :cond_8
    const/4 v1, 0x0

    #@a2
    .local v1, "needWake":Z
    goto :goto_1

    #@a3
    .line 571
    .end local v1    # "needWake":Z
    .restart local v3    # "prev":Landroid/os/Message;
    :cond_9
    if-eqz v1, :cond_6

    #@a5
    :try_start_3
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a8
    move-result v4

    #@a9
    if-eqz v4, :cond_6

    #@ab
    .line 572
    const/4 v1, 0x0

    #@ac
    .restart local v1    # "needWake":Z
    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 74
    return-void

    #@7
    .line 77
    :catchall_0
    move-exception v0

    #@8
    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 77
    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 588
    if-nez p1, :cond_0

    #@3
    .line 589
    return v2

    #@4
    .line 592
    :cond_0
    monitor-enter p0

    #@5
    .line 593
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@7
    .line 594
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_3

    #@9
    .line 595
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@b
    if-ne v1, p1, :cond_2

    #@d
    iget v1, v0, Landroid/os/Message;->what:I

    #@f
    if-ne v1, p2, :cond_2

    #@11
    if-eqz p3, :cond_1

    #@13
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-ne v1, p3, :cond_2

    #@17
    .line 596
    :cond_1
    const/4 v1, 0x1

    #@18
    monitor-exit p0

    #@19
    return v1

    #@1a
    .line 598
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    :cond_3
    monitor-exit p0

    #@1e
    .line 600
    return v2

    #@1f
    .line 592
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@20
    monitor-exit p0

    #@21
    throw v1
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 605
    if-nez p1, :cond_0

    #@3
    .line 606
    return v2

    #@4
    .line 609
    :cond_0
    monitor-enter p0

    #@5
    .line 610
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@7
    .line 611
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_3

    #@9
    .line 612
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@b
    if-ne v1, p1, :cond_2

    #@d
    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@f
    if-ne v1, p2, :cond_2

    #@11
    if-eqz p3, :cond_1

    #@13
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-ne v1, p3, :cond_2

    #@17
    .line 613
    :cond_1
    const/4 v1, 0x1

    #@18
    monitor-exit p0

    #@19
    return v1

    #@1a
    .line 615
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    :cond_3
    monitor-exit p0

    #@1e
    .line 617
    return v2

    #@1f
    .line 609
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@20
    monitor-exit p0

    #@21
    throw v1
.end method

.method public isIdle()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 99
    monitor-enter p0

    #@2
    .line 100
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5
    move-result-wide v0

    #@6
    .line 101
    .local v0, "now":J
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@8
    if-eqz v3, :cond_0

    #@a
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@c
    iget-wide v4, v3, Landroid/os/Message;->when:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    cmp-long v3, v0, v4

    #@10
    if-gez v3, :cond_1

    #@12
    :cond_0
    :goto_0
    monitor-exit p0

    #@13
    return v2

    #@14
    :cond_1
    const/4 v2, 0x0

    #@15
    goto :goto_0

    #@16
    .line 99
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    #@17
    monitor-exit p0

    #@18
    throw v2
.end method

.method public isPolling()Z
    .locals 1

    #@0
    .prologue
    .line 151
    monitor-enter p0

    #@1
    .line 152
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    .line 151
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method next()Landroid/os/Message;
    .locals 18

    #@0
    .prologue
    .line 311
    move-object/from16 v0, p0

    #@2
    iget-wide v12, v0, Landroid/os/MessageQueue;->mPtr:J

    #@4
    .line 312
    .local v12, "ptr":J
    const-wide/16 v14, 0x0

    #@6
    cmp-long v14, v12, v14

    #@8
    if-nez v14, :cond_0

    #@a
    .line 313
    const/4 v14, 0x0

    #@b
    return-object v14

    #@c
    .line 316
    :cond_0
    const/4 v7, -0x1

    #@d
    .line 317
    .local v7, "pendingIdleHandlerCount":I
    const/4 v6, 0x0

    #@e
    .line 319
    .local v6, "nextPollTimeoutMillis":I
    :goto_0
    if-eqz v6, :cond_1

    #@10
    .line 320
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    #@13
    .line 323
    :cond_1
    move-object/from16 v0, p0

    #@15
    invoke-direct {v0, v12, v13, v6}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    #@18
    .line 325
    monitor-enter p0

    #@19
    .line 327
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1c
    move-result-wide v8

    #@1d
    .line 328
    .local v8, "now":J
    const/4 v10, 0x0

    #@1e
    .line 329
    .local v10, "prevMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@20
    iget-object v5, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@22
    .line 330
    .local v5, "msg":Landroid/os/Message;
    if-eqz v5, :cond_3

    #@24
    iget-object v14, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    #@26
    if-nez v14, :cond_3

    #@28
    .line 333
    .end local v10    # "prevMsg":Landroid/os/Message;
    :cond_2
    move-object v10, v5

    #@29
    .line 334
    .local v10, "prevMsg":Landroid/os/Message;
    iget-object v5, v5, Landroid/os/Message;->next:Landroid/os/Message;

    #@2b
    .line 335
    if-eqz v5, :cond_3

    #@2d
    invoke-virtual {v5}, Landroid/os/Message;->isAsynchronous()Z

    #@30
    move-result v14

    #@31
    if-eqz v14, :cond_2

    #@33
    .line 337
    .end local v10    # "prevMsg":Landroid/os/Message;
    :cond_3
    if-eqz v5, :cond_6

    #@35
    .line 338
    iget-wide v14, v5, Landroid/os/Message;->when:J

    #@37
    cmp-long v14, v8, v14

    #@39
    if-gez v14, :cond_4

    #@3b
    .line 340
    iget-wide v14, v5, Landroid/os/Message;->when:J

    #@3d
    sub-long/2addr v14, v8

    #@3e
    const-wide/32 v16, 0x7fffffff

    #@41
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    #@44
    move-result-wide v14

    #@45
    long-to-int v6, v14

    #@46
    .line 360
    :goto_1
    move-object/from16 v0, p0

    #@48
    iget-boolean v14, v0, Landroid/os/MessageQueue;->mQuitting:Z

    #@4a
    if-eqz v14, :cond_7

    #@4c
    .line 361
    invoke-direct/range {p0 .. p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 362
    const/4 v14, 0x0

    #@50
    monitor-exit p0

    #@51
    return-object v14

    #@52
    .line 343
    :cond_4
    const/4 v14, 0x0

    #@53
    :try_start_1
    move-object/from16 v0, p0

    #@55
    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    #@57
    .line 344
    if-eqz v10, :cond_5

    #@59
    .line 345
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    #@5b
    iput-object v14, v10, Landroid/os/Message;->next:Landroid/os/Message;

    #@5d
    .line 349
    :goto_2
    const/4 v14, 0x0

    #@5e
    iput-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    #@60
    .line 351
    invoke-virtual {v5}, Landroid/os/Message;->markInUse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@63
    monitor-exit p0

    #@64
    .line 352
    return-object v5

    #@65
    .line 347
    :cond_5
    :try_start_2
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    #@67
    move-object/from16 v0, p0

    #@69
    iput-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6b
    goto :goto_2

    #@6c
    .line 325
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "now":J
    :catchall_0
    move-exception v14

    #@6d
    monitor-exit p0

    #@6e
    throw v14

    #@6f
    .line 356
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "now":J
    :cond_6
    const/4 v6, -0x1

    #@70
    goto :goto_1

    #@71
    .line 368
    :cond_7
    if-gez v7, :cond_9

    #@73
    .line 369
    :try_start_3
    move-object/from16 v0, p0

    #@75
    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@77
    if-eqz v14, :cond_8

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@7d
    iget-wide v14, v14, Landroid/os/Message;->when:J

    #@7f
    cmp-long v14, v8, v14

    #@81
    if-gez v14, :cond_9

    #@83
    .line 370
    :cond_8
    move-object/from16 v0, p0

    #@85
    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    #@87
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@8a
    move-result v7

    #@8b
    .line 372
    :cond_9
    if-gtz v7, :cond_a

    #@8d
    .line 374
    const/4 v14, 0x1

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@92
    monitor-exit p0

    #@93
    goto/16 :goto_0

    #@95
    .line 378
    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    #@97
    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    #@99
    if-nez v14, :cond_b

    #@9b
    .line 379
    const/4 v14, 0x4

    #@9c
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    #@9f
    move-result v14

    #@a0
    new-array v14, v14, [Landroid/os/MessageQueue$IdleHandler;

    #@a2
    move-object/from16 v0, p0

    #@a4
    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    #@a6
    .line 381
    :cond_b
    move-object/from16 v0, p0

    #@a8
    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    #@aa
    move-object/from16 v0, p0

    #@ac
    iget-object v15, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    #@ae
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b1
    move-result-object v14

    #@b2
    check-cast v14, [Landroid/os/MessageQueue$IdleHandler;

    #@b4
    move-object/from16 v0, p0

    #@b6
    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b8
    monitor-exit p0

    #@b9
    .line 386
    const/4 v2, 0x0

    #@ba
    .local v2, "i":I
    :goto_3
    if-ge v2, v7, :cond_d

    #@bc
    .line 387
    move-object/from16 v0, p0

    #@be
    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    #@c0
    aget-object v3, v14, v2

    #@c2
    .line 388
    .local v3, "idler":Landroid/os/MessageQueue$IdleHandler;
    move-object/from16 v0, p0

    #@c4
    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    #@c6
    const/4 v15, 0x0

    #@c7
    aput-object v15, v14, v2

    #@c9
    .line 390
    const/4 v4, 0x0

    #@ca
    .line 392
    .local v4, "keep":Z
    :try_start_5
    invoke-interface {v3}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    #@cd
    move-result v4

    #@ce
    .line 397
    .end local v4    # "keep":Z
    :goto_4
    if-nez v4, :cond_c

    #@d0
    .line 398
    monitor-enter p0

    #@d1
    .line 399
    :try_start_6
    move-object/from16 v0, p0

    #@d3
    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    #@d5
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@d8
    monitor-exit p0

    #@d9
    .line 386
    :cond_c
    add-int/lit8 v2, v2, 0x1

    #@db
    goto :goto_3

    #@dc
    .line 393
    .restart local v4    # "keep":Z
    :catch_0
    move-exception v11

    #@dd
    .line 394
    .local v11, "t":Ljava/lang/Throwable;
    const-string/jumbo v14, "MessageQueue"

    #@e0
    const-string/jumbo v15, "IdleHandler threw exception"

    #@e3
    invoke-static {v14, v15, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e6
    goto :goto_4

    #@e7
    .line 398
    .end local v4    # "keep":Z
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v14

    #@e8
    monitor-exit p0

    #@e9
    throw v14

    #@ea
    .line 405
    .end local v3    # "idler":Landroid/os/MessageQueue$IdleHandler;
    :cond_d
    const/4 v7, 0x0

    #@eb
    .line 409
    const/4 v6, 0x0

    #@ec
    goto/16 :goto_0
.end method

.method public postSyncBarrier()I
    .locals 2

    #@0
    .prologue
    .line 459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method quit(Z)V
    .locals 2
    .param p1, "safe"    # Z

    #@0
    .prologue
    .line 414
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 415
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Main thread not allowed to quit."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 418
    :cond_0
    monitor-enter p0

    #@e
    .line 419
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-eqz v0, :cond_1

    #@12
    monitor-exit p0

    #@13
    .line 420
    return-void

    #@14
    .line 422
    :cond_1
    const/4 v0, 0x1

    #@15
    :try_start_1
    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    #@17
    .line 424
    if-eqz p1, :cond_2

    #@19
    .line 425
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    #@1c
    .line 431
    :goto_0
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    #@1e
    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 413
    return-void

    #@23
    .line 427
    :cond_2
    :try_start_2
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    goto :goto_0

    #@27
    .line 418
    :catchall_0
    move-exception v0

    #@28
    monitor-exit p0

    #@29
    throw v0
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 690
    if-nez p1, :cond_0

    #@2
    .line 691
    return-void

    #@3
    .line 694
    :cond_0
    monitor-enter p0

    #@4
    .line 695
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@6
    .line 698
    .local v2, "p":Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_2

    #@8
    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    #@a
    if-ne v3, p1, :cond_2

    #@c
    .line 699
    if-eqz p2, :cond_1

    #@e
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    if-ne v3, p2, :cond_2

    #@12
    .line 700
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    #@14
    .line 701
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@16
    .line 702
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    #@19
    .line 703
    move-object v2, v0

    #@1a
    goto :goto_0

    #@1b
    .line 707
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    #@1d
    .line 708
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    #@1f
    .line 709
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    #@21
    .line 710
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@23
    if-ne v3, p1, :cond_4

    #@25
    if-eqz p2, :cond_3

    #@27
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    if-ne v3, p2, :cond_4

    #@2b
    .line 711
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    #@2d
    .line 712
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    #@30
    .line 713
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    goto :goto_1

    #@33
    .line 694
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    #@34
    monitor-exit p0

    #@35
    throw v3

    #@36
    .line 717
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    #@37
    goto :goto_1

    #@38
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    #@39
    .line 689
    return-void
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    #@0
    .prologue
    .line 134
    monitor-enter p0

    #@1
    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 133
    return-void

    #@8
    .line 134
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 622
    if-nez p1, :cond_0

    #@2
    .line 623
    return-void

    #@3
    .line 626
    :cond_0
    monitor-enter p0

    #@4
    .line 627
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@6
    .line 630
    .local v2, "p":Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_2

    #@8
    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    #@a
    if-ne v3, p1, :cond_2

    #@c
    iget v3, v2, Landroid/os/Message;->what:I

    #@e
    if-ne v3, p2, :cond_2

    #@10
    .line 631
    if-eqz p3, :cond_1

    #@12
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    if-ne v3, p3, :cond_2

    #@16
    .line 632
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    #@18
    .line 633
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@1a
    .line 634
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    #@1d
    .line 635
    move-object v2, v0

    #@1e
    goto :goto_0

    #@1f
    .line 639
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    #@21
    .line 640
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    #@23
    .line 641
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    #@25
    .line 642
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@27
    if-ne v3, p1, :cond_4

    #@29
    iget v3, v0, Landroid/os/Message;->what:I

    #@2b
    if-ne v3, p2, :cond_4

    #@2d
    .line 643
    if-eqz p3, :cond_3

    #@2f
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31
    if-ne v3, p3, :cond_4

    #@33
    .line 644
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    #@35
    .line 645
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    #@38
    .line 646
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    goto :goto_1

    #@3b
    .line 626
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    #@3c
    monitor-exit p0

    #@3d
    throw v3

    #@3e
    .line 650
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    #@3f
    goto :goto_1

    #@40
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    #@41
    .line 621
    return-void
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 656
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 657
    :cond_0
    return-void

    #@5
    .line 660
    :cond_1
    monitor-enter p0

    #@6
    .line 661
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@8
    .line 664
    .local v2, "p":Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_3

    #@a
    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    #@c
    if-ne v3, p1, :cond_3

    #@e
    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@10
    if-ne v3, p2, :cond_3

    #@12
    .line 665
    if-eqz p3, :cond_2

    #@14
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    if-ne v3, p3, :cond_3

    #@18
    .line 666
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    #@1a
    .line 667
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@1c
    .line 668
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    #@1f
    .line 669
    move-object v2, v0

    #@20
    goto :goto_0

    #@21
    .line 673
    .end local v0    # "n":Landroid/os/Message;
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    #@23
    .line 674
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    #@25
    .line 675
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_5

    #@27
    .line 676
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@29
    if-ne v3, p1, :cond_5

    #@2b
    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@2d
    if-ne v3, p2, :cond_5

    #@2f
    .line 677
    if-eqz p3, :cond_4

    #@31
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    if-ne v3, p3, :cond_5

    #@35
    .line 678
    :cond_4
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    #@37
    .line 679
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    #@3a
    .line 680
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    goto :goto_1

    #@3d
    .line 660
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    #@3e
    monitor-exit p0

    #@3f
    throw v3

    #@40
    .line 684
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_5
    move-object v2, v0

    #@41
    goto :goto_1

    #@42
    .end local v0    # "n":Landroid/os/Message;
    :cond_6
    monitor-exit p0

    #@43
    .line 655
    return-void
.end method

.method public removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 213
    if-nez p1, :cond_0

    #@2
    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "fd must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 217
    :cond_0
    monitor-enter p0

    #@c
    .line 218
    const/4 v0, 0x0

    #@d
    const/4 v1, 0x0

    #@e
    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 212
    return-void

    #@13
    .line 217
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public removeSyncBarrier(I)V
    .locals 6
    .param p1, "token"    # I

    #@0
    .prologue
    .line 504
    monitor-enter p0

    #@1
    .line 505
    const/4 v2, 0x0

    #@2
    .line 506
    .local v2, "prev":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@4
    .line 507
    .end local v2    # "prev":Landroid/os/Message;
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    #@6
    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    #@8
    if-nez v3, :cond_0

    #@a
    iget v3, v1, Landroid/os/Message;->arg1:I

    #@c
    if-eq v3, p1, :cond_1

    #@e
    .line 508
    :cond_0
    move-object v2, v1

    #@f
    .line 509
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    #@11
    goto :goto_0

    #@12
    .line 511
    .end local v2    # "prev":Landroid/os/Message;
    :cond_1
    if-nez v1, :cond_2

    #@14
    .line 512
    new-instance v3, Ljava/lang/IllegalStateException;

    #@16
    const-string/jumbo v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    #@19
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 504
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit p0

    #@1f
    throw v3

    #@20
    .line 516
    .restart local v1    # "p":Landroid/os/Message;
    :cond_2
    if-eqz v2, :cond_4

    #@22
    .line 517
    :try_start_1
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    #@24
    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    #@26
    .line 518
    const/4 v0, 0x0

    #@27
    .line 523
    .local v0, "needWake":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    #@2a
    .line 527
    if-eqz v0, :cond_3

    #@2c
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    if-eqz v3, :cond_7

    #@30
    :cond_3
    :goto_2
    monitor-exit p0

    #@31
    .line 501
    return-void

    #@32
    .line 520
    .end local v0    # "needWake":Z
    :cond_4
    :try_start_2
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    #@34
    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@36
    .line 521
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@38
    if-eqz v3, :cond_5

    #@3a
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    #@3c
    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    #@3e
    if-eqz v3, :cond_6

    #@40
    :cond_5
    const/4 v0, 0x1

    #@41
    .restart local v0    # "needWake":Z
    goto :goto_1

    #@42
    .end local v0    # "needWake":Z
    :cond_6
    const/4 v0, 0x0

    #@43
    .restart local v0    # "needWake":Z
    goto :goto_1

    #@44
    .line 528
    :cond_7
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    #@46
    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    goto :goto_2
.end method

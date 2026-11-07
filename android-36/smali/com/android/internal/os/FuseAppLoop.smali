.class public Lcom/android/internal/os/FuseAppLoop;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/FuseAppLoop$BytesMap;,
        Lcom/android/internal/os/FuseAppLoop$CallbackEntry;,
        Lcom/android/internal/os/FuseAppLoop$Args;,
        Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;,
        Lcom/android/internal/os/FuseAppLoop$UnmountedException;
    }
.end annotation


# static fields
.field private static final greylist-max-o ARGS_POOL_SIZE:I = 0x32

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o FUSE_FSYNC:I = 0x14

.field private static final greylist-max-o FUSE_GETATTR:I = 0x3

.field private static final greylist-max-o FUSE_LOOKUP:I = 0x1

.field private static final greylist-max-o FUSE_MAX_WRITE:I = 0x20000

.field private static final greylist-max-o FUSE_OK:I = 0x0

.field private static final greylist-max-o FUSE_OPEN:I = 0xe

.field private static final greylist-max-o FUSE_READ:I = 0xf

.field private static final greylist-max-o FUSE_RELEASE:I = 0x12

.field private static final greylist-max-o FUSE_WRITE:I = 0x10

.field private static final greylist-max-o MIN_INODE:I = 0x2

.field public static final greylist-max-o ROOT_INODE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FuseAppLoop"

.field private static final greylist-max-o sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final greylist-max-o mArgsPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/os/FuseAppLoop$Args;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

.field private final greylist-max-o mCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/FuseAppLoop$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInstance:J

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMountPointId:I

.field private greylist-max-o mNextInode:I

.field private final greylist-max-o mThread:Ljava/lang/Thread;


# direct methods
.method public static synthetic blacklist $r8$lambda$3Zdnny2txgddSCyL57ulZnRAeEg(Lcom/android/internal/os/FuseAppLoop;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/FuseAppLoop;->lambda$new$0()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    const-string v0, "FuseAppLoop"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/FuseAppLoop;->DEBUG:Z

    .line 46
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$1;

    invoke-direct {v0}, Lcom/android/internal/os/FuseAppLoop$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V
    .registers 6
    .param p1, "mountPointId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>(Lcom/android/internal/os/FuseAppLoop-IA;)V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 80
    iput p1, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    .line 81
    if-nez p3, :cond_29

    .line 82
    sget-object p3, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 84
    :cond_29
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/FuseAppLoop;->native_new(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 85
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/FuseAppLoop;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    .line 93
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method private static greylist-max-o checkInode(J)I
    .registers 9
    .param p0, "inode"    # J

    .line 329
    const-wide/32 v4, 0x7fffffff

    const-string v6, "checkInode"

    const-wide/16 v2, 0x2

    move-wide v0, p0

    .end local p0    # "inode":J
    .local v0, "inode":J
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 330
    long-to-int p0, v0

    return p0
.end method

.method private greylist-max-o getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .registers 7
    .param p1, "inode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 297
    .local v0, "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    if-eqz v0, :cond_f

    .line 300
    return-object v0

    .line 298
    :cond_f
    new-instance v1, Landroid/system/ErrnoException;

    const-string v2, "getCallbackEntryOrThrowLocked"

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {v1, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static greylist-max-o getError(Ljava/lang/Exception;)I
    .registers 3
    .param p0, "error"    # Ljava/lang/Exception;

    .line 285
    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_f

    .line 286
    move-object v0, p0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    .line 287
    .local v0, "errno":I
    sget v1, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v0, v1, :cond_f

    .line 288
    neg-int v1, v0

    return v1

    .line 291
    .end local v0    # "errno":I
    :cond_f
    sget v0, Landroid/system/OsConstants;->EBADF:I

    neg-int v0, v0

    return v0
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 4

    .line 86
    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/FuseAppLoop;->native_start(J)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_8
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/FuseAppLoop;->native_delete(J)V

    .line 89
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 90
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->clear()V

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private greylist-max-r onCommand(IJJJI[B)V
    .registers 15
    .param p1, "command"    # I
    .param p2, "unique"    # J
    .param p4, "inode"    # J
    .param p6, "offset"    # J
    .param p8, "size"    # I
    .param p9, "data"    # [B

    .line 238
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 242
    new-instance v1, Lcom/android/internal/os/FuseAppLoop$Args;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>(Lcom/android/internal/os/FuseAppLoop-IA;)V

    .local v1, "args":Lcom/android/internal/os/FuseAppLoop$Args;
    goto :goto_1a

    .line 244
    .end local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    :cond_12
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 246
    .restart local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    :goto_1a
    iput-wide p2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    .line 247
    iput-wide p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    .line 248
    iput-wide p6, v1, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    .line 249
    iput p8, v1, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    .line 250
    iput-object p9, v1, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    .line 251
    invoke-direct {p0, p4, p5}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 252
    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v2, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v3, v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    .line 253
    const/4 v4, 0x0

    invoke-static {v3, p1, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 252
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 258
    .end local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    goto :goto_52

    .line 254
    .restart local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    :cond_3e
    new-instance v2, Landroid/system/ErrnoException;

    const-string v3, "onCommand"

    sget v4, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "command":I
    .end local p2    # "unique":J
    .end local p4    # "inode":J
    .end local p6    # "offset":J
    .end local p8    # "size":I
    .end local p9    # "data":[B
    throw v2
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_48} :catch_4a
    .catchall {:try_start_3 .. :try_end_48} :catchall_48

    .line 259
    .end local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "command":I
    .restart local p2    # "unique":J
    .restart local p4    # "inode":J
    .restart local p6    # "offset":J
    .restart local p8    # "size":I
    .restart local p9    # "data":[B
    :catchall_48
    move-exception v1

    goto :goto_54

    .line 256
    :catch_4a
    move-exception v1

    .line 257
    .local v1, "error":Ljava/lang/Exception;
    :try_start_4b
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 259
    .end local v1    # "error":Ljava/lang/Exception;
    :goto_52
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_48

    throw v1
.end method

.method private greylist-max-r onOpen(JJ)[B
    .registers 15
    .param p1, "unique"    # J
    .param p3, "inode"    # J

    .line 266
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_3
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v0

    .line 269
    .local v0, "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    iget-boolean v2, v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    if-nez v2, :cond_2a

    .line 272
    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    .line 273
    iget-wide v4, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_15} :catch_40
    .catchall {:try_start_3 .. :try_end_15} :catchall_3a

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    .end local p1    # "unique":J
    .end local p3    # "inode":J
    .local v6, "unique":J
    .local v8, "inode":J
    :try_start_18
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyOpen(JJJ)V

    .line 274
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    .line 275
    iget-object p1, v3, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->startUsing(J)[B

    move-result-object p1
    :try_end_24
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_24} :catch_37
    .catchall {:try_start_18 .. :try_end_24} :catchall_4f

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_4f

    return-object p1

    .line 272
    .end local v6    # "unique":J
    .end local v8    # "inode":J
    .restart local p1    # "unique":J
    .restart local p3    # "inode":J
    :cond_26
    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    .line 279
    .end local v0    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local p1    # "unique":J
    .end local p3    # "inode":J
    .restart local v6    # "unique":J
    .restart local v8    # "inode":J
    goto :goto_4c

    .line 270
    .end local v6    # "unique":J
    .end local v8    # "inode":J
    .restart local v0    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local p1    # "unique":J
    .restart local p3    # "inode":J
    :cond_2a
    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    .end local p1    # "unique":J
    .end local p3    # "inode":J
    .restart local v6    # "unique":J
    .restart local v8    # "inode":J
    :try_start_2d
    new-instance p1, Landroid/system/ErrnoException;

    const-string p2, "onOpen"

    sget p3, Landroid/system/OsConstants;->EMFILE:I

    invoke-direct {p1, p2, p3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .end local v6    # "unique":J
    .end local v8    # "inode":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    throw p1
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_2d .. :try_end_37} :catch_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_4f

    .line 277
    .end local v0    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v6    # "unique":J
    .restart local v8    # "inode":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    :catch_37
    move-exception v0

    move-object p1, v0

    goto :goto_45

    .line 281
    .end local v6    # "unique":J
    .end local v8    # "inode":J
    .restart local p1    # "unique":J
    .restart local p3    # "inode":J
    :catchall_3a
    move-exception v0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move-object p1, v0

    .end local p1    # "unique":J
    .end local p3    # "inode":J
    .restart local v6    # "unique":J
    .restart local v8    # "inode":J
    goto :goto_51

    .line 277
    .end local v6    # "unique":J
    .end local v8    # "inode":J
    .restart local p1    # "unique":J
    .restart local p3    # "inode":J
    :catch_40
    move-exception v0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move-object p1, v0

    .line 278
    .end local p3    # "inode":J
    .restart local v6    # "unique":J
    .restart local v8    # "inode":J
    .local p1, "error":Landroid/system/ErrnoException;
    :goto_45
    :try_start_45
    invoke-static {p1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result p2

    invoke-direct {p0, v6, v7, p2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 280
    .end local p1    # "error":Landroid/system/ErrnoException;
    :goto_4c
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    .line 281
    :catchall_4f
    move-exception v0

    move-object p1, v0

    :goto_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_4f

    throw p1
.end method

.method private greylist-max-o recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .registers 4
    .param p1, "args"    # Lcom/android/internal/os/FuseAppLoop$Args;

    .line 305
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_f

    .line 306
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_f
    return-void
.end method

.method private greylist-max-o replySimpleLocked(JI)V
    .registers 11
    .param p1, "unique"    # J
    .param p3, "result"    # I

    .line 312
    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 313
    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "unique":J
    .end local p3    # "result":I
    .local v4, "unique":J
    .local v6, "result":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    goto :goto_13

    .line 312
    .end local v4    # "unique":J
    .end local v6    # "result":I
    .restart local p1    # "unique":J
    .restart local p3    # "result":I
    :cond_11
    move-wide v4, p1

    move v6, p3

    .line 315
    .end local p1    # "unique":J
    .end local p3    # "result":I
    .restart local v4    # "unique":J
    .restart local v6    # "result":I
    :goto_13
    return-void
.end method


# virtual methods
.method public greylist-max-o getMountPointId()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    return v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 23
    .param p1, "msg"    # Landroid/os/Message;

    .line 150
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    iget-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 151
    .local v11, "args":Lcom/android/internal/os/FuseAppLoop$Args;
    iget-object v12, v11, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 152
    .local v12, "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    iget-wide v8, v11, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    .line 153
    .local v8, "inode":J
    iget-wide v4, v11, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    .line 154
    .local v4, "unique":J
    iget v13, v11, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    .line 155
    .local v13, "size":I
    iget-wide v14, v11, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    .line 156
    .local v14, "offset":J
    iget-object v7, v11, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    .line 159
    .local v7, "data":[B
    :try_start_15
    iget v0, v10, Landroid/os/Message;->what:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_1a4

    sparse-switch v0, :sswitch_data_1c4

    .line 220
    move-object/from16 v18, v7

    move-wide v6, v8

    .end local v7    # "data":[B
    .end local v8    # "inode":J
    .local v6, "inode":J
    .local v18, "data":[B
    :try_start_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1f} :catch_189

    goto/16 :goto_18b

    .line 200
    .end local v6    # "inode":J
    .end local v18    # "data":[B
    .restart local v7    # "data":[B
    .restart local v8    # "inode":J
    :sswitch_21
    :try_start_21
    iget-object v0, v12, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onFsync()V

    .line 201
    iget-object v6, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_ca

    .line 202
    const-wide/16 v16, 0x0

    :try_start_2b
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v2, v16

    if-eqz v0, :cond_3a

    .line 203
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_45

    move-object/from16 v16, v6

    const/4 v6, 0x0

    :try_start_36
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    goto :goto_3c

    .line 202
    :cond_3a
    move-object/from16 v16, v6

    .line 205
    :goto_3c
    invoke-direct {v1, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 206
    monitor-exit v16

    .line 207
    move-object/from16 v18, v7

    move-wide v6, v8

    goto/16 :goto_17f

    .line 206
    :catchall_45
    move-exception v0

    move-object/from16 v16, v6

    :goto_48
    monitor-exit v16
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_4a

    .end local v4    # "unique":J
    .end local v7    # "data":[B
    .end local v8    # "inode":J
    .end local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v13    # "size":I
    .end local v14    # "offset":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_49
    throw v0

    .restart local v4    # "unique":J
    .restart local v7    # "data":[B
    .restart local v8    # "inode":J
    .restart local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v13    # "size":I
    .restart local v14    # "offset":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_4a
    move-exception v0

    goto :goto_48

    .line 209
    :sswitch_4c
    const-wide/16 v16, 0x0

    iget-object v0, v12, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onRelease()V

    .line 210
    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_56} :catch_ca

    .line 211
    move-wide/from16 v18, v4

    .end local v4    # "unique":J
    .local v18, "unique":J
    :try_start_58
    iget-wide v3, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_89

    cmp-long v0, v3, v16

    if-eqz v0, :cond_6e

    .line 212
    move-object v4, v2

    :try_start_5f
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_6a

    const/4 v6, 0x0

    move-object/from16 v16, v4

    move-wide/from16 v4, v18

    .end local v18    # "unique":J
    .restart local v4    # "unique":J
    :try_start_66
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    goto :goto_72

    .line 217
    .end local v4    # "unique":J
    .restart local v18    # "unique":J
    :catchall_6a
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_8c

    .line 211
    :cond_6e
    move-object/from16 v16, v2

    move-wide/from16 v4, v18

    .line 214
    .end local v18    # "unique":J
    .restart local v4    # "unique":J
    :goto_72
    iget-object v0, v1, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {v8, v9}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 215
    iget-object v0, v1, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->stopUsing(J)V

    .line 216
    invoke-direct {v1, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 217
    monitor-exit v16

    .line 218
    move-object/from16 v18, v7

    move-wide v6, v8

    goto/16 :goto_17f

    .line 217
    .end local v4    # "unique":J
    .restart local v18    # "unique":J
    :catchall_89
    move-exception v0

    move-object/from16 v16, v2

    :goto_8c
    move-wide/from16 v4, v18

    .end local v18    # "unique":J
    .restart local v4    # "unique":J
    :goto_8e
    monitor-exit v16
    :try_end_8f
    .catchall {:try_start_66 .. :try_end_8f} :catchall_90

    .end local v4    # "unique":J
    .end local v7    # "data":[B
    .end local v8    # "inode":J
    .end local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v13    # "size":I
    .end local v14    # "offset":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_8f
    throw v0

    .restart local v4    # "unique":J
    .restart local v7    # "data":[B
    .restart local v8    # "inode":J
    .restart local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v13    # "size":I
    .restart local v14    # "offset":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_90
    move-exception v0

    goto :goto_8e

    .line 191
    :sswitch_92
    const-wide/16 v16, 0x0

    iget-object v0, v12, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v14, v15, v13, v7}, Landroid/os/ProxyFileDescriptorCallback;->onWrite(JI[B)I

    move-result v6

    .line 192
    .local v6, "writeSize":I
    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9d} :catch_ca

    .line 193
    move-wide/from16 v18, v4

    .end local v4    # "unique":J
    .restart local v18    # "unique":J
    :try_start_9f
    iget-wide v3, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_c1

    cmp-long v0, v3, v16

    if-eqz v0, :cond_b4

    .line 194
    move-object v4, v2

    :try_start_a6
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_a8
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_b0

    move-object/from16 v16, v4

    move-wide/from16 v4, v18

    .end local v18    # "unique":J
    .restart local v4    # "unique":J
    :try_start_ac
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replyWrite(JJI)V

    goto :goto_b8

    .line 197
    .end local v4    # "unique":J
    .restart local v18    # "unique":J
    :catchall_b0
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_c4

    .line 193
    :cond_b4
    move-object/from16 v16, v2

    move-wide/from16 v4, v18

    .line 196
    .end local v18    # "unique":J
    .restart local v4    # "unique":J
    :goto_b8
    invoke-direct {v1, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 197
    monitor-exit v16

    .line 198
    move-object/from16 v18, v7

    move-wide v6, v8

    goto/16 :goto_17f

    .line 197
    .end local v4    # "unique":J
    .restart local v18    # "unique":J
    :catchall_c1
    move-exception v0

    move-object/from16 v16, v2

    :goto_c4
    move-wide/from16 v4, v18

    .end local v18    # "unique":J
    .restart local v4    # "unique":J
    :goto_c6
    monitor-exit v16
    :try_end_c7
    .catchall {:try_start_ac .. :try_end_c7} :catchall_c8

    .end local v4    # "unique":J
    .end local v7    # "data":[B
    .end local v8    # "inode":J
    .end local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v13    # "size":I
    .end local v14    # "offset":J
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_c7
    throw v0
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_c8} :catch_ca

    .restart local v4    # "unique":J
    .restart local v7    # "data":[B
    .restart local v8    # "inode":J
    .restart local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v13    # "size":I
    .restart local v14    # "offset":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_c8
    move-exception v0

    goto :goto_c6

    .line 222
    .end local v6    # "writeSize":I
    :catch_ca
    move-exception v0

    move-object/from16 v18, v7

    move-wide v6, v8

    goto/16 :goto_1a8

    .line 181
    :sswitch_d0
    const-wide/16 v16, 0x0

    :try_start_d2
    iget-object v0, v12, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v14, v15, v13, v7}, Landroid/os/ProxyFileDescriptorCallback;->onRead(JI[B)I

    move-result v6

    .line 183
    .local v6, "readSize":I
    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_db} :catch_114

    .line 184
    move-wide/from16 v18, v4

    .end local v4    # "unique":J
    .restart local v18    # "unique":J
    :try_start_dd
    iget-wide v3, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_df
    .catchall {:try_start_dd .. :try_end_df} :catchall_105

    cmp-long v0, v3, v16

    if-eqz v0, :cond_f8

    .line 185
    move-object v4, v2

    :try_start_e4
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_e6
    .catchall {:try_start_e4 .. :try_end_e6} :catchall_f4

    move-object/from16 v16, v4

    move-wide/from16 v4, v18

    .end local v18    # "unique":J
    .restart local v4    # "unique":J
    :try_start_ea
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/FuseAppLoop;->native_replyRead(JJI[B)V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_f0

    move-object/from16 v18, v7

    .end local v7    # "data":[B
    .local v18, "data":[B
    goto :goto_fe

    .line 188
    .end local v18    # "data":[B
    .restart local v7    # "data":[B
    :catchall_f0
    move-exception v0

    move-object/from16 v18, v7

    .end local v7    # "data":[B
    .restart local v18    # "data":[B
    goto :goto_10c

    .end local v4    # "unique":J
    .restart local v7    # "data":[B
    .local v18, "unique":J
    :catchall_f4
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_108

    .line 184
    :cond_f8
    move-object/from16 v16, v2

    move-wide/from16 v4, v18

    move-object/from16 v18, v7

    .line 187
    .end local v7    # "data":[B
    .restart local v4    # "unique":J
    .local v18, "data":[B
    :goto_fe
    :try_start_fe
    invoke-direct {v1, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 188
    monitor-exit v16

    .line 189
    move-wide v6, v8

    goto/16 :goto_17f

    .line 188
    .end local v4    # "unique":J
    .restart local v7    # "data":[B
    .local v18, "unique":J
    :catchall_105
    move-exception v0

    move-object/from16 v16, v2

    :goto_108
    move-wide/from16 v4, v18

    move-object/from16 v18, v7

    .end local v7    # "data":[B
    .restart local v4    # "unique":J
    .local v18, "data":[B
    :goto_10c
    monitor-exit v16
    :try_end_10d
    .catchall {:try_start_fe .. :try_end_10d} :catchall_112

    .end local v4    # "unique":J
    .end local v8    # "inode":J
    .end local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v13    # "size":I
    .end local v14    # "offset":J
    .end local v18    # "data":[B
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_10d
    throw v0
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_10e} :catch_10e

    .line 222
    .end local v6    # "readSize":I
    .restart local v4    # "unique":J
    .restart local v8    # "inode":J
    .restart local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v13    # "size":I
    .restart local v14    # "offset":J
    .restart local v18    # "data":[B
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_10e
    move-exception v0

    move-wide v6, v8

    goto/16 :goto_1a8

    .line 188
    .restart local v6    # "readSize":I
    :catchall_112
    move-exception v0

    goto :goto_10c

    .line 222
    .end local v6    # "readSize":I
    .end local v18    # "data":[B
    .restart local v7    # "data":[B
    :catch_114
    move-exception v0

    move-object/from16 v18, v7

    move-wide v6, v8

    .end local v7    # "data":[B
    .restart local v18    # "data":[B
    goto/16 :goto_1a8

    .line 171
    .end local v18    # "data":[B
    .restart local v7    # "data":[B
    :sswitch_11a
    move-object/from16 v18, v7

    const-wide/16 v16, 0x0

    .end local v7    # "data":[B
    .restart local v18    # "data":[B
    :try_start_11e
    iget-object v0, v12, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v2

    .line 172
    .local v2, "fileSize":J
    iget-object v6, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_127} :catch_14e

    .line 173
    move-wide/from16 v19, v2

    .end local v2    # "fileSize":J
    .local v19, "fileSize":J
    :try_start_129
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v2, v16

    if-eqz v0, :cond_13e

    .line 174
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_131
    .catchall {:try_start_129 .. :try_end_131} :catchall_146

    move-object/from16 v16, v6

    move-wide v6, v8

    move-wide/from16 v8, v19

    .end local v19    # "fileSize":J
    .local v6, "inode":J
    .local v8, "fileSize":J
    :try_start_136
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyGetAttr(JJJJ)V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_13a

    .end local v8    # "fileSize":J
    .restart local v19    # "fileSize":J
    goto :goto_141

    .line 177
    .end local v19    # "fileSize":J
    .restart local v8    # "fileSize":J
    :catchall_13a
    move-exception v0

    move-wide/from16 v19, v8

    .end local v8    # "fileSize":J
    .restart local v19    # "fileSize":J
    goto :goto_14a

    .line 173
    .end local v6    # "inode":J
    .local v8, "inode":J
    :cond_13e
    move-object/from16 v16, v6

    move-wide v6, v8

    .line 176
    .end local v8    # "inode":J
    .restart local v6    # "inode":J
    :goto_141
    :try_start_141
    invoke-direct {v1, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 177
    monitor-exit v16

    .line 178
    goto :goto_17f

    .line 177
    .end local v6    # "inode":J
    .restart local v8    # "inode":J
    :catchall_146
    move-exception v0

    move-object/from16 v16, v6

    move-wide v6, v8

    .end local v8    # "inode":J
    .restart local v6    # "inode":J
    :goto_14a
    monitor-exit v16
    :try_end_14b
    .catchall {:try_start_141 .. :try_end_14b} :catchall_14c

    .end local v4    # "unique":J
    .end local v6    # "inode":J
    .end local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v13    # "size":I
    .end local v14    # "offset":J
    .end local v18    # "data":[B
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_14b
    throw v0

    .restart local v4    # "unique":J
    .restart local v6    # "inode":J
    .restart local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v13    # "size":I
    .restart local v14    # "offset":J
    .restart local v18    # "data":[B
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_14c
    move-exception v0

    goto :goto_14a

    .line 222
    .end local v6    # "inode":J
    .end local v19    # "fileSize":J
    .restart local v8    # "inode":J
    :catch_14e
    move-exception v0

    move-wide v6, v8

    .end local v8    # "inode":J
    .restart local v6    # "inode":J
    goto :goto_1a8

    .line 161
    .end local v6    # "inode":J
    .end local v18    # "data":[B
    .restart local v7    # "data":[B
    .restart local v8    # "inode":J
    :sswitch_151
    move-object/from16 v18, v7

    move-wide v6, v8

    const-wide/16 v16, 0x0

    .end local v7    # "data":[B
    .end local v8    # "inode":J
    .restart local v6    # "inode":J
    .restart local v18    # "data":[B
    iget-object v0, v12, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v8

    .line 162
    .local v8, "fileSize":J
    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_15f} :catch_189

    .line 163
    move-wide/from16 v19, v4

    .end local v4    # "unique":J
    .local v19, "unique":J
    :try_start_161
    iget-wide v3, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_163
    .catchall {:try_start_161 .. :try_end_163} :catchall_180

    cmp-long v0, v3, v16

    if-eqz v0, :cond_176

    .line 164
    move-object v4, v2

    :try_start_168
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_16a
    .catchall {:try_start_168 .. :try_end_16a} :catchall_172

    move-object/from16 v16, v4

    move-wide/from16 v4, v19

    .end local v19    # "unique":J
    .restart local v4    # "unique":J
    :try_start_16e
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyLookup(JJJJ)V

    goto :goto_17a

    .line 167
    .end local v4    # "unique":J
    .restart local v19    # "unique":J
    :catchall_172
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_183

    .line 163
    :cond_176
    move-object/from16 v16, v2

    move-wide/from16 v4, v19

    .line 166
    .end local v19    # "unique":J
    .restart local v4    # "unique":J
    :goto_17a
    invoke-direct {v1, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 167
    monitor-exit v16

    .line 168
    nop

    .line 228
    .end local v8    # "fileSize":J
    :goto_17f
    goto :goto_1be

    .line 167
    .end local v4    # "unique":J
    .restart local v8    # "fileSize":J
    .restart local v19    # "unique":J
    :catchall_180
    move-exception v0

    move-object/from16 v16, v2

    :goto_183
    move-wide/from16 v4, v19

    .end local v19    # "unique":J
    .restart local v4    # "unique":J
    :goto_185
    monitor-exit v16
    :try_end_186
    .catchall {:try_start_16e .. :try_end_186} :catchall_187

    .end local v4    # "unique":J
    .end local v6    # "inode":J
    .end local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v13    # "size":I
    .end local v14    # "offset":J
    .end local v18    # "data":[B
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_186
    throw v0

    .restart local v4    # "unique":J
    .restart local v6    # "inode":J
    .restart local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v13    # "size":I
    .restart local v14    # "offset":J
    .restart local v18    # "data":[B
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_187
    move-exception v0

    goto :goto_185

    .line 222
    .end local v8    # "fileSize":J
    :catch_189
    move-exception v0

    goto :goto_1a8

    .line 220
    :goto_18b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown FUSE command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "unique":J
    .end local v6    # "inode":J
    .end local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .end local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .end local v13    # "size":I
    .end local v14    # "offset":J
    .end local v18    # "data":[B
    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1a4} :catch_189

    .line 222
    .restart local v4    # "unique":J
    .restart local v7    # "data":[B
    .local v8, "inode":J
    .restart local v11    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    .restart local v12    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .restart local v13    # "size":I
    .restart local v14    # "offset":J
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_1a4
    move-exception v0

    move-object/from16 v18, v7

    move-wide v6, v8

    .end local v7    # "data":[B
    .end local v8    # "inode":J
    .restart local v6    # "inode":J
    .restart local v18    # "data":[B
    :goto_1a8
    move-object v2, v0

    .line 223
    .local v2, "error":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 224
    :try_start_1ac
    const-string v0, "FuseAppLoop"

    const-string v8, ""

    invoke-static {v0, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    invoke-static {v2}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v0

    invoke-direct {v1, v4, v5, v0}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 226
    invoke-direct {v1, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 227
    monitor-exit v3

    .line 230
    .end local v2    # "error":Ljava/lang/Exception;
    :goto_1be
    const/4 v0, 0x1

    return v0

    .line 227
    .restart local v2    # "error":Ljava/lang/Exception;
    :catchall_1c0
    move-exception v0

    monitor-exit v3
    :try_end_1c2
    .catchall {:try_start_1ac .. :try_end_1c2} :catchall_1c0

    throw v0

    nop

    :sswitch_data_1c4
    .sparse-switch
        0x1 -> :sswitch_151
        0x3 -> :sswitch_11a
        0xf -> :sswitch_d0
        0x10 -> :sswitch_92
        0x12 -> :sswitch_4c
        0x14 -> :sswitch_21
    .end sparse-switch
.end method

.method native greylist-max-o native_delete(J)V
.end method

.method native greylist-max-o native_new(I)J
.end method

.method native greylist-max-o native_replyGetAttr(JJJJ)V
.end method

.method native greylist-max-o native_replyLookup(JJJJ)V
.end method

.method native greylist-max-o native_replyOpen(JJJ)V
.end method

.method native greylist-max-o native_replyRead(JJI[B)V
.end method

.method native greylist-max-o native_replySimple(JJI)V
.end method

.method native greylist-max-o native_replyWrite(JJI)V
.end method

.method native greylist-max-o native_start(J)V
.end method

.method public greylist-max-o registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I
    .registers 10
    .param p1, "callback"    # Landroid/os/ProxyFileDescriptorCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 102
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const v2, 0x7ffffffd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_18

    move v1, v4

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    const-string v2, "Too many opened files."

    .line 101
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_37

    move v3, v4

    :cond_37
    const-string v1, "Handler must be different from the current thread"

    .line 103
    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 106
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_70

    .line 111
    :cond_44
    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 112
    .local v1, "id":I
    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 113
    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    if-gez v2, :cond_52

    .line 114
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 116
    :cond_52
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_44

    .line 117
    nop

    .line 120
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    new-instance v4, Landroid/os/Handler;

    .line 121
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v3, p1, v4}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;-><init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V

    .line 120
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    monitor-exit v0

    return v1

    .line 107
    .end local v1    # "id":I
    :cond_70
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .end local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .end local p1    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v1

    .line 123
    .restart local p0    # "this":Lcom/android/internal/os/FuseAppLoop;
    .restart local p1    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public greylist-max-o unregisterCallback(I)V
    .registers 4
    .param p1, "id"    # I

    .line 127
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 129
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

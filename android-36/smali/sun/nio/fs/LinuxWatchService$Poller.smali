.class Lsun/nio/fs/LinuxWatchService$Poller;
.super Lsun/nio/fs/AbstractPoller;
.source "LinuxWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/LinuxWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Poller"
.end annotation


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x2000

.field private static final blacklist IN_ATTRIB:I = 0x4

.field private static final blacklist IN_CREATE:I = 0x100

.field private static final blacklist IN_DELETE:I = 0x200

.field private static final blacklist IN_IGNORED:I = 0x8000

.field private static final blacklist IN_MODIFY:I = 0x2

.field private static final blacklist IN_MOVED_FROM:I = 0x40

.field private static final blacklist IN_MOVED_TO:I = 0x80

.field private static final blacklist IN_Q_OVERFLOW:I = 0x4000

.field private static final blacklist IN_UNMOUNT:I = 0x2000

.field private static final blacklist OFFSETOF_LEN:I

.field private static final blacklist OFFSETOF_MASK:I

.field private static final blacklist OFFSETOF_NAME:I

.field private static final blacklist OFFSETOF_WD:I

.field private static final blacklist SIZEOF_INOTIFY_EVENT:I

.field private static final blacklist offsets:[I


# instance fields
.field private final blacklist address:J

.field private final blacklist fs:Lsun/nio/fs/UnixFileSystem;

.field private final blacklist guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final blacklist ifd:I

.field private final blacklist socketpair:[I

.field private final blacklist watcher:Lsun/nio/fs/LinuxWatchService;

.field private final blacklist wdToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 158
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$smeventSize()I

    move-result v0

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->SIZEOF_INOTIFY_EVENT:I

    .line 159
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$smeventOffsets()[I

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    .line 160
    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_WD:I

    .line 161
    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_MASK:I

    .line 162
    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_LEN:I

    .line 163
    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_NAME:I

    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/LinuxWatchService;I[I)V
    .registers 8
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "watcher"    # Lsun/nio/fs/LinuxWatchService;
    .param p3, "ifd"    # I
    .param p4, "sp"    # [I

    .line 195
    invoke-direct {p0}, Lsun/nio/fs/AbstractPoller;-><init>()V

    .line 192
    nop

    .line 193
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    .line 196
    iput-object p1, p0, Lsun/nio/fs/LinuxWatchService$Poller;->fs:Lsun/nio/fs/UnixFileSystem;

    .line 197
    iput-object p2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->watcher:Lsun/nio/fs/LinuxWatchService;

    .line 198
    iput p3, p0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    .line 199
    iput-object p4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    .line 201
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$sfgetunsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    .line 203
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private blacklist maskToEventKind(I)Ljava/nio/file/WatchEvent$Kind;
    .registers 3
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;"
        }
    .end annotation

    .line 411
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_7

    .line 412
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 413
    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_e

    .line 414
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 415
    :cond_e
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_15

    .line 416
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 417
    :cond_15
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_1c

    .line 418
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 419
    :cond_1c
    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_23

    .line 420
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 421
    :cond_23
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_2a

    .line 422
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 423
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist processEvent(IILsun/nio/fs/UnixPath;)V
    .registers 9
    .param p1, "wd"    # I
    .param p2, "mask"    # I
    .param p3, "name"    # Lsun/nio/fs/UnixPath;

    .line 431
    and-int/lit16 v0, p2, 0x4000

    if-lez v0, :cond_28

    .line 432
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 433
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    sget-object v3, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    .line 434
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 435
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;>;"
    goto :goto_e

    .line 436
    :cond_27
    return-void

    .line 440
    :cond_28
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    .line 441
    .local v0, "key":Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
    if-nez v0, :cond_37

    .line 442
    return-void

    .line 445
    :cond_37
    const v1, 0x8000

    and-int/2addr v1, p2

    if-lez v1, :cond_4e

    .line 446
    iget-object v1, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->invalidate(Z)V

    .line 448
    invoke-virtual {v0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->signal()V

    .line 449
    return-void

    .line 453
    :cond_4e
    if-nez p3, :cond_51

    .line 454
    return-void

    .line 457
    :cond_51
    invoke-direct {p0, p2}, Lsun/nio/fs/LinuxWatchService$Poller;->maskToEventKind(I)Ljava/nio/file/WatchEvent$Kind;

    move-result-object v1

    .line 458
    .local v1, "kind":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    if-eqz v1, :cond_5a

    .line 459
    invoke-virtual {v0, v1, p3}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 461
    :cond_5a
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 318
    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 319
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 321
    :cond_9
    invoke-virtual {p0}, Lsun/nio/fs/LinuxWatchService$Poller;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 323
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 324
    nop

    .line 325
    return-void

    .line 323
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 324
    throw v0
.end method

.method blacklist implCancelKey(Ljava/nio/file/WatchKey;)V
    .registers 5
    .param p1, "obj"    # Ljava/nio/file/WatchKey;

    .line 290
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    .line 291
    .local v0, "key":Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
    invoke-virtual {v0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 292
    iget-object v1, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-virtual {v0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->descriptor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->invalidate(Z)V

    .line 295
    :cond_1a
    return-void
.end method

.method blacklist implCloseAll()V
    .registers 6

    .line 301
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 303
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 304
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    invoke-virtual {v3, v2}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->invalidate(Z)V

    .line 305
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;>;"
    goto :goto_f

    .line 306
    :cond_26
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 309
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$sfgetunsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    iget-wide v3, p0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    invoke-virtual {v0, v3, v4}, Ljdk/internal/misc/Unsafe;->freeMemory(J)V

    .line 310
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 311
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    aget v0, v0, v2

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 312
    iget v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 313
    return-void
.end method

.method varargs blacklist implRegister(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/lang/Object;
    .registers 12
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    .local p2, "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixPath;

    .line 223
    .local v0, "dir":Lsun/nio/fs/UnixPath;
    const/4 v1, 0x0

    .line 224
    .local v1, "mask":I
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/WatchEvent$Kind;

    .line 225
    .local v3, "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    if-ne v3, v4, :cond_1b

    .line 226
    or-int/lit16 v1, v1, 0x180

    .line 227
    goto :goto_8

    .line 229
    :cond_1b
    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-ne v3, v4, :cond_22

    .line 230
    or-int/lit16 v1, v1, 0x240

    .line 231
    goto :goto_8

    .line 233
    :cond_22
    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne v3, v4, :cond_29

    .line 234
    or-int/lit8 v1, v1, 0x6

    .line 235
    goto :goto_8

    .line 237
    .end local v3    # "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    :cond_29
    goto :goto_8

    .line 240
    :cond_2a
    array-length v2, p3

    if-lez v2, :cond_4b

    .line 241
    array-length v2, p3

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v2, :cond_4b

    aget-object v4, p3, v3

    .line 242
    .local v4, "modifier":Ljava/nio/file/WatchEvent$Modifier;
    if-nez v4, :cond_3b

    .line 243
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    return-object v2

    .line 244
    :cond_3b
    instance-of v5, v4, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    if-eqz v5, :cond_43

    .line 245
    nop

    .line 241
    .end local v4    # "modifier":Ljava/nio/file/WatchEvent$Modifier;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 246
    .restart local v4    # "modifier":Ljava/nio/file/WatchEvent$Modifier;
    :cond_43
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Modifier not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 251
    .end local v4    # "modifier":Ljava/nio/file/WatchEvent$Modifier;
    :cond_4b
    const/4 v2, 0x0

    .line 253
    .local v2, "attrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v3, 0x1

    :try_start_4d
    invoke-static {v0, v3}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v3
    :try_end_51
    .catch Lsun/nio/fs/UnixException; {:try_start_4d .. :try_end_51} :catch_ba

    .line 256
    .end local v2    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .local v3, "attrs":Lsun/nio/fs/UnixFileAttributes;
    nop

    .line 257
    invoke-virtual {v3}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_62

    .line 258
    new-instance v2, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 262
    :cond_62
    const/4 v2, -0x1

    .line 264
    .local v2, "wd":I
    nop

    .line 265
    :try_start_64
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getByteArrayForSysCalls()[B

    move-result-object v4

    invoke-static {v4}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v4
    :try_end_6c
    .catch Lsun/nio/fs/UnixException; {:try_start_64 .. :try_end_6c} :catch_a4

    .line 267
    .local v4, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_6c
    iget v5, p0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v6

    invoke-static {v5, v6, v7, v1}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$sminotifyAddWatch(IJI)I

    move-result v5
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_9e

    move v2, v5

    .line 269
    :try_start_77
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V
    :try_end_7a
    .catch Lsun/nio/fs/UnixException; {:try_start_77 .. :try_end_7a} :catch_a4

    .line 270
    nop

    .line 276
    .end local v4    # "buffer":Lsun/nio/fs/NativeBuffer;
    nop

    .line 279
    iget-object v4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    .line 280
    .local v4, "key":Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
    if-nez v4, :cond_9d

    .line 281
    new-instance v5, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    iget-object v6, p0, Lsun/nio/fs/LinuxWatchService$Poller;->watcher:Lsun/nio/fs/LinuxWatchService;

    iget v7, p0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    invoke-direct {v5, v0, v6, v7, v2}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;-><init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/LinuxWatchService;II)V

    move-object v4, v5

    .line 282
    iget-object v5, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_9d
    return-object v4

    .line 269
    .local v4, "buffer":Lsun/nio/fs/NativeBuffer;
    :catchall_9e
    move-exception v5

    :try_start_9f
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 270
    nop

    .end local v0    # "dir":Lsun/nio/fs/UnixPath;
    .end local v1    # "mask":I
    .end local v2    # "wd":I
    .end local v3    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .end local p0    # "this":Lsun/nio/fs/LinuxWatchService$Poller;
    .end local p1    # "obj":Ljava/nio/file/Path;
    .end local p2    # "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    .end local p3    # "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    throw v5
    :try_end_a4
    .catch Lsun/nio/fs/UnixException; {:try_start_9f .. :try_end_a4} :catch_a4

    .line 271
    .end local v4    # "buffer":Lsun/nio/fs/NativeBuffer;
    .restart local v0    # "dir":Lsun/nio/fs/UnixPath;
    .restart local v1    # "mask":I
    .restart local v2    # "wd":I
    .restart local v3    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .restart local p0    # "this":Lsun/nio/fs/LinuxWatchService$Poller;
    .restart local p1    # "obj":Ljava/nio/file/Path;
    .restart local p2    # "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    .restart local p3    # "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    :catch_a4
    move-exception v4

    .line 272
    .local v4, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4}, Lsun/nio/fs/UnixException;->errno()I

    move-result v5

    sget v6, Lsun/nio/fs/UnixConstants;->ENOSPC:I

    if-ne v5, v6, :cond_b5

    .line 273
    new-instance v5, Ljava/io/IOException;

    const-string v6, "User limit of inotify watches reached"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 275
    :cond_b5
    invoke-virtual {v4, v0}, Lsun/nio/fs/UnixException;->asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;

    move-result-object v5

    return-object v5

    .line 254
    .end local v3    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    .local v2, "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_ba
    move-exception v3

    .line 255
    .local v3, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixException;->asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;

    move-result-object v4

    return-object v4
.end method

.method public whitelist test-api run()V
    .registers 20

    .line 337
    move-object/from16 v1, p0

    :goto_2
    :try_start_2
    iget v0, v1, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    iget-object v2, v1, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v0, v2}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$smpoll(II)I

    move-result v0
    :try_end_d
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_d} :catch_dd

    move v2, v0

    .line 341
    .local v2, "nReady":I
    const/16 v4, 0x2000

    :try_start_10
    iget v0, v1, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    iget-wide v5, v1, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    invoke-static {v0, v5, v6, v4}, Lsun/nio/fs/UnixNativeDispatcher;->read(IJI)I

    move-result v0
    :try_end_18
    .catch Lsun/nio/fs/UnixException; {:try_start_10 .. :try_end_18} :catch_1a

    .line 346
    .local v0, "bytesRead":I
    move v5, v0

    goto :goto_24

    .line 342
    .end local v0    # "bytesRead":I
    :catch_1a
    move-exception v0

    .line 343
    .local v0, "x":Lsun/nio/fs/UnixException;
    :try_start_1b
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v5

    sget v6, Lsun/nio/fs/UnixConstants;->EAGAIN:I
    :try_end_21
    .catch Lsun/nio/fs/UnixException; {:try_start_1b .. :try_end_21} :catch_dd

    if-ne v5, v6, :cond_da

    .line 345
    const/4 v5, 0x0

    .line 349
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    .local v5, "bytesRead":I
    :goto_24
    const/4 v0, 0x1

    if-gt v2, v0, :cond_2b

    if-ne v2, v0, :cond_47

    if-nez v5, :cond_47

    .line 351
    :cond_2b
    :try_start_2b
    iget-object v0, v1, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    aget v0, v0, v3

    iget-wide v6, v1, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    invoke-static {v0, v6, v7, v4}, Lsun/nio/fs/UnixNativeDispatcher;->read(IJI)I

    .line 352
    invoke-virtual {v1}, Lsun/nio/fs/LinuxWatchService$Poller;->processRequests()Z

    move-result v0
    :try_end_38
    .catch Lsun/nio/fs/UnixException; {:try_start_2b .. :try_end_38} :catch_3e

    .line 353
    .local v0, "shutdown":Z
    if-eqz v0, :cond_3d

    .line 354
    nop

    .line 403
    .end local v0    # "shutdown":Z
    .end local v2    # "nReady":I
    .end local v5    # "bytesRead":I
    goto/16 :goto_e1

    .line 358
    .restart local v2    # "nReady":I
    .restart local v5    # "bytesRead":I
    :cond_3d
    goto :goto_47

    .line 355
    :catch_3e
    move-exception v0

    .line 356
    .local v0, "x":Lsun/nio/fs/UnixException;
    :try_start_3f
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EAGAIN:I

    if-ne v3, v4, :cond_d7

    .line 362
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :cond_47
    :goto_47
    const/4 v0, 0x0

    .line 363
    .local v0, "offset":I
    :goto_48
    if-ge v0, v5, :cond_d3

    .line 364
    iget-wide v3, v1, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    int-to-long v6, v0

    add-long/2addr v3, v6

    .line 365
    .local v3, "event":J
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$sfgetunsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v6

    sget v7, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_WD:I

    int-to-long v7, v7

    add-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljdk/internal/misc/Unsafe;->getInt(J)I

    move-result v6

    .line 366
    .local v6, "wd":I
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$sfgetunsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v7

    sget v8, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_MASK:I

    int-to-long v8, v8

    add-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljdk/internal/misc/Unsafe;->getInt(J)I

    move-result v7

    .line 367
    .local v7, "mask":I
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$sfgetunsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v8

    sget v9, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_LEN:I

    int-to-long v9, v9

    add-long/2addr v9, v3

    invoke-virtual {v8, v9, v10}, Ljdk/internal/misc/Unsafe;->getInt(J)I

    move-result v8

    .line 370
    .local v8, "len":I
    const/4 v9, 0x0

    .line 371
    .local v9, "name":Lsun/nio/fs/UnixPath;
    if-lez v8, :cond_c4

    .line 372
    move v10, v8

    .line 376
    .local v10, "actual":I
    :goto_76
    if-lez v10, :cond_90

    .line 377
    sget v11, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_NAME:I

    int-to-long v11, v11

    add-long/2addr v11, v3

    int-to-long v13, v10

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    .line 378
    .local v11, "last":J
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$sfgetunsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v13

    if-eqz v13, :cond_8c

    .line 379
    goto :goto_90

    .line 380
    :cond_8c
    nop

    .end local v11    # "last":J
    add-int/lit8 v10, v10, -0x1

    .line 381
    goto :goto_76

    .line 382
    :cond_90
    :goto_90
    if-lez v10, :cond_bf

    .line 383
    new-array v11, v10, [B

    .line 387
    .local v11, "buf":[B
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_95
    if-ge v12, v10, :cond_b2

    .line 388
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-$$Nest$sfgetunsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v13

    sget v14, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_NAME:I

    int-to-long v14, v14

    add-long/2addr v14, v3

    move/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2    # "nReady":I
    .end local v3    # "event":J
    .local v16, "nReady":I
    .local v17, "event":J
    int-to-long v2, v12

    add-long/2addr v14, v2

    invoke-virtual {v13, v14, v15}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v2

    aput-byte v2, v11, v12

    .line 387
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto :goto_95

    .end local v16    # "nReady":I
    .end local v17    # "event":J
    .restart local v2    # "nReady":I
    .restart local v3    # "event":J
    :cond_b2
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 391
    .end local v2    # "nReady":I
    .end local v3    # "event":J
    .end local v12    # "i":I
    .restart local v16    # "nReady":I
    .restart local v17    # "event":J
    new-instance v2, Lsun/nio/fs/UnixPath;

    iget-object v3, v1, Lsun/nio/fs/LinuxWatchService$Poller;->fs:Lsun/nio/fs/UnixFileSystem;

    invoke-direct {v2, v3, v11}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    move-object v9, v2

    goto :goto_c8

    .line 382
    .end local v11    # "buf":[B
    .end local v16    # "nReady":I
    .end local v17    # "event":J
    .restart local v2    # "nReady":I
    .restart local v3    # "event":J
    :cond_bf
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2    # "nReady":I
    .end local v3    # "event":J
    .restart local v16    # "nReady":I
    .restart local v17    # "event":J
    goto :goto_c8

    .line 371
    .end local v10    # "actual":I
    .end local v16    # "nReady":I
    .end local v17    # "event":J
    .restart local v2    # "nReady":I
    .restart local v3    # "event":J
    :cond_c4
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 396
    .end local v2    # "nReady":I
    .end local v3    # "event":J
    .restart local v16    # "nReady":I
    .restart local v17    # "event":J
    :goto_c8
    invoke-direct {v1, v6, v7, v9}, Lsun/nio/fs/LinuxWatchService$Poller;->processEvent(IILsun/nio/fs/UnixPath;)V

    .line 398
    sget v2, Lsun/nio/fs/LinuxWatchService$Poller;->SIZEOF_INOTIFY_EVENT:I

    add-int/2addr v2, v8

    add-int/2addr v0, v2

    .line 399
    .end local v6    # "wd":I
    .end local v7    # "mask":I
    .end local v8    # "len":I
    .end local v9    # "name":Lsun/nio/fs/UnixPath;
    .end local v17    # "event":J
    move/from16 v2, v16

    goto/16 :goto_48

    .line 363
    .end local v16    # "nReady":I
    .restart local v2    # "nReady":I
    :cond_d3
    move/from16 v16, v2

    .line 400
    .end local v0    # "offset":I
    .end local v2    # "nReady":I
    .end local v5    # "bytesRead":I
    goto/16 :goto_2

    .line 357
    .local v0, "x":Lsun/nio/fs/UnixException;
    .restart local v2    # "nReady":I
    .restart local v5    # "bytesRead":I
    :cond_d7
    move/from16 v16, v2

    .end local v2    # "nReady":I
    .end local p0    # "this":Lsun/nio/fs/LinuxWatchService$Poller;
    .restart local v16    # "nReady":I
    throw v0

    .line 344
    .end local v5    # "bytesRead":I
    .end local v16    # "nReady":I
    .restart local v2    # "nReady":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxWatchService$Poller;
    :cond_da
    move/from16 v16, v2

    .end local v2    # "nReady":I
    .end local p0    # "this":Lsun/nio/fs/LinuxWatchService$Poller;
    .restart local v16    # "nReady":I
    throw v0
    :try_end_dd
    .catch Lsun/nio/fs/UnixException; {:try_start_3f .. :try_end_dd} :catch_dd

    .line 401
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    .end local v16    # "nReady":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxWatchService$Poller;
    :catch_dd
    move-exception v0

    .line 402
    .restart local v0    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->printStackTrace()V

    .line 404
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :goto_e1
    return-void
.end method

.method blacklist wakeup()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-wide v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    invoke-static {v0, v2, v3, v1}, Lsun/nio/fs/UnixNativeDispatcher;->write(IJI)I
    :try_end_a
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_a} :catch_c

    .line 213
    nop

    .line 214
    return-void

    .line 211
    :catch_c
    move-exception v0

    .line 212
    .local v0, "x":Lsun/nio/fs/UnixException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

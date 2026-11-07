.class Lsun/nio/fs/PollingWatchService$PollingWatchKey;
.super Lsun/nio/fs/AbstractWatchKey;
.source "PollingWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/PollingWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollingWatchKey"
.end annotation


# instance fields
.field private blacklist entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/Path;",
            "Lsun/nio/fs/PollingWatchService$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist events:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist fileKey:Ljava/lang/Object;

.field private blacklist poller:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lsun/nio/fs/PollingWatchService;

.field private blacklist tickCount:I

.field private volatile blacklist valid:Z


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService;Ljava/lang/Object;)V
    .registers 15
    .param p2, "dir"    # Ljava/nio/file/Path;
    .param p3, "watcher"    # Lsun/nio/fs/PollingWatchService;
    .param p4, "fileKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    .line 249
    invoke-direct {p0, p2, p3}, Lsun/nio/fs/AbstractWatchKey;-><init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V

    .line 250
    iput-object p4, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->fileKey:Ljava/lang/Object;

    .line 251
    const/4 p1, 0x1

    iput-boolean p1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    .line 253
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    .line 256
    :try_start_14
    invoke-static {p2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_18
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_14 .. :try_end_18} :catch_5b

    .line 257
    .local v1, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_18
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 259
    .local v3, "entry":Ljava/nio/file/Path;
    new-array v4, p1, [Ljava/nio/file/LinkOption;

    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v5, v4, v0

    .line 260
    invoke-static {v3, v4}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v4

    .line 261
    .local v4, "lastModified":J
    iget-object v6, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v7

    new-instance v8, Lsun/nio/fs/PollingWatchService$CacheEntry;

    iget v9, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    invoke-direct {v8, v4, v5, v9}, Lsun/nio/fs/PollingWatchService$CacheEntry;-><init>(JI)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_4f

    .line 262
    nop

    .end local v3    # "entry":Ljava/nio/file/Path;
    .end local v4    # "lastModified":J
    goto :goto_1c

    .line 263
    :cond_48
    if-eqz v1, :cond_4d

    :try_start_4a
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4d
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4a .. :try_end_4d} :catch_5b

    .line 265
    .end local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_4d
    nop

    .line 266
    return-void

    .line 256
    .restart local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_4f
    move-exception p1

    if-eqz v1, :cond_5a

    :try_start_52
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception v0

    :try_start_57
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    .end local p2    # "dir":Ljava/nio/file/Path;
    .end local p3    # "watcher":Lsun/nio/fs/PollingWatchService;
    .end local p4    # "fileKey":Ljava/lang/Object;
    :cond_5a
    :goto_5a
    throw p1
    :try_end_5b
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_57 .. :try_end_5b} :catch_5b

    .line 263
    .end local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p0    # "this":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    .restart local p2    # "dir":Ljava/nio/file/Path;
    .restart local p3    # "watcher":Lsun/nio/fs/PollingWatchService;
    .restart local p4    # "fileKey":Ljava/lang/Object;
    :catch_5b
    move-exception p1

    .line 264
    .local p1, "e":Ljava/nio/file/DirectoryIteratorException;
    invoke-virtual {p1}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public whitelist test-api cancel()V
    .registers 4

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    .line 305
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-static {v0}, Lsun/nio/fs/PollingWatchService;->-$$Nest$fgetmap(Lsun/nio/fs/PollingWatchService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 306
    :try_start_a
    iget-object v1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-static {v1}, Lsun/nio/fs/PollingWatchService;->-$$Nest$fgetmap(Lsun/nio/fs/PollingWatchService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->fileKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1c

    .line 308
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->disable()V

    .line 309
    return-void

    .line 307
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method blacklist disable()V
    .registers 3

    .line 296
    monitor-enter p0

    .line 297
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poller:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    .line 298
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poller:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 299
    :cond_b
    monitor-exit p0

    .line 300
    return-void

    .line 299
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method blacklist enable(Ljava/util/Set;J)V
    .registers 12
    .param p2, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;>;J)V"
        }
    .end annotation

    .line 283
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    monitor-enter p0

    .line 285
    :try_start_1
    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    .line 288
    new-instance v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;

    invoke-direct {v0, p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;-><init>(Lsun/nio/fs/PollingWatchService$PollingWatchKey;)V

    move-object v2, v0

    .line 289
    .local v2, "thunk":Ljava/lang/Runnable;
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-static {v0}, Lsun/nio/fs/PollingWatchService;->-$$Nest$fgetscheduledExecutor(Lsun/nio/fs/PollingWatchService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 290
    move-wide v5, p2

    move-wide v3, p2

    .end local p2    # "period":J
    .local v3, "period":J
    :try_start_13
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    iput-object p2, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poller:Ljava/util/concurrent/ScheduledFuture;

    .line 291
    .end local v2    # "thunk":Ljava/lang/Runnable;
    monitor-exit p0

    .line 292
    return-void

    .line 291
    .end local v3    # "period":J
    .restart local p2    # "period":J
    :catchall_1b
    move-exception v0

    move-wide v3, p2

    move-object p2, v0

    .end local p2    # "period":J
    .restart local v3    # "period":J
    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    throw p2

    :catchall_20
    move-exception v0

    move-object p2, v0

    goto :goto_1e
.end method

.method blacklist fileKey()Ljava/lang/Object;
    .registers 2

    .line 269
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->fileKey:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist invalidate()V
    .registers 2

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    .line 279
    return-void
.end method

.method public whitelist test-api isValid()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    return v0
.end method

.method declared-synchronized blacklist poll()V
    .registers 12

    monitor-enter p0

    .line 316
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_102

    if-nez v0, :cond_7

    .line 317
    monitor-exit p0

    return-void

    .line 321
    :cond_7
    :try_start_7
    iget v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_102

    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_e
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->watchable()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_f9
    .catchall {:try_start_e .. :try_end_16} :catchall_102

    .line 332
    .end local v0    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .local v2, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    nop

    .line 336
    :try_start_17
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1f
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_17 .. :try_end_1f} :catch_b3
    .catchall {:try_start_17 .. :try_end_1f} :catchall_ac

    if-eqz v3, :cond_a8

    :try_start_21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;
    :try_end_27
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_21 .. :try_end_27} :catch_a6
    .catchall {:try_start_21 .. :try_end_27} :catchall_a4

    .line 337
    .local v3, "entry":Ljava/nio/file/Path;
    const-wide/16 v4, 0x0

    .line 339
    .local v4, "lastModified":J
    :try_start_29
    new-array v6, v1, [Ljava/nio/file/LinkOption;

    sget-object v7, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 340
    invoke-static {v3, v6}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v6
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_38} :catch_a1
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_29 .. :try_end_38} :catch_a6
    .catchall {:try_start_29 .. :try_end_38} :catchall_a4

    .line 346
    .end local v4    # "lastModified":J
    .local v6, "lastModified":J
    nop

    .line 349
    :try_start_39
    iget-object v4, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/nio/fs/PollingWatchService$CacheEntry;

    .line 350
    .local v4, "e":Lsun/nio/fs/PollingWatchService$CacheEntry;
    if-nez v4, :cond_7f

    .line 352
    iget-object v5, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Lsun/nio/fs/PollingWatchService$CacheEntry;

    iget v10, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    invoke-direct {v9, v6, v7, v10}, Lsun/nio/fs/PollingWatchService$CacheEntry;-><init>(JI)V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v5, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v8, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 357
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 358
    goto :goto_1b

    .line 364
    :cond_6b
    iget-object v5, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v8, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 365
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    goto :goto_1b

    .line 372
    :cond_7f
    invoke-static {v4}, Lsun/nio/fs/PollingWatchService$CacheEntry;->-$$Nest$fgetlastModified(Lsun/nio/fs/PollingWatchService$CacheEntry;)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_9a

    .line 373
    iget-object v5, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v8, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 374
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    .line 375
    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    .line 374
    invoke-virtual {p0, v5, v8}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 379
    :cond_9a
    iget v5, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    invoke-virtual {v4, v6, v7, v5}, Lsun/nio/fs/PollingWatchService$CacheEntry;->update(JI)V
    :try_end_9f
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_39 .. :try_end_9f} :catch_a6
    .catchall {:try_start_39 .. :try_end_9f} :catchall_a4

    .line 381
    .end local v3    # "entry":Ljava/nio/file/Path;
    .end local v4    # "e":Lsun/nio/fs/PollingWatchService$CacheEntry;
    .end local v6    # "lastModified":J
    goto/16 :goto_1b

    .line 341
    .restart local v3    # "entry":Ljava/nio/file/Path;
    .local v4, "lastModified":J
    :catch_a1
    move-exception v6

    .line 345
    .local v6, "x":Ljava/io/IOException;
    goto/16 :goto_1b

    .line 388
    .end local v3    # "entry":Ljava/nio/file/Path;
    .end local v4    # "lastModified":J
    .end local v6    # "x":Ljava/io/IOException;
    :catchall_a4
    move-exception v0

    goto :goto_ad

    .line 382
    :catch_a6
    move-exception v0

    goto :goto_b4

    .line 389
    :cond_a8
    :try_start_a8
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_b8
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_102

    .line 392
    goto :goto_ba

    .line 388
    .end local p0    # "this":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    :catchall_ac
    move-exception v0

    .line 389
    :goto_ad
    :try_start_ad
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1
    .catchall {:try_start_ad .. :try_end_b0} :catchall_102

    .line 392
    goto :goto_b2

    .line 390
    :catch_b1
    move-exception v1

    .line 393
    :goto_b2
    :try_start_b2
    throw v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_102

    .line 382
    :catch_b3
    move-exception v0

    .line 389
    :goto_b4
    :try_start_b4
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_102

    .line 392
    goto :goto_ba

    .line 390
    :catch_b8
    move-exception v0

    .line 393
    nop

    .line 396
    :goto_ba
    :try_start_ba
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 397
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService$CacheEntry;>;>;"
    :goto_c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 398
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 399
    .local v1, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService$CacheEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/fs/PollingWatchService$CacheEntry;

    .line 400
    .local v3, "entry":Lsun/nio/fs/PollingWatchService$CacheEntry;
    invoke-virtual {v3}, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastTickCount()I

    move-result v4

    iget v5, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    if-eq v4, v5, :cond_f6

    .line 401
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 403
    .local v4, "name":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 404
    iget-object v5, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v6, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 405
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    invoke-virtual {p0, v5, v4}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    :try_end_f6
    .catchall {:try_start_ba .. :try_end_f6} :catchall_102

    .line 408
    .end local v1    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService$CacheEntry;>;"
    .end local v3    # "entry":Lsun/nio/fs/PollingWatchService$CacheEntry;
    .end local v4    # "name":Ljava/nio/file/Path;
    :cond_f6
    goto :goto_c4

    .line 409
    :cond_f7
    monitor-exit p0

    return-void

    .line 327
    .end local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .local v0, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catch_f9
    move-exception v1

    .line 329
    .local v1, "x":Ljava/io/IOException;
    :try_start_fa
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->cancel()V

    .line 330
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signal()V
    :try_end_100
    .catchall {:try_start_fa .. :try_end_100} :catchall_102

    .line 331
    monitor-exit p0

    return-void

    .line 315
    .end local v0    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v1    # "x":Ljava/io/IOException;
    :catchall_102
    move-exception v0

    :try_start_103
    monitor-exit p0
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    throw v0
.end method

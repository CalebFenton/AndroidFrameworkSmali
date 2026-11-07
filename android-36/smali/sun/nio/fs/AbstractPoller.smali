.class abstract Lsun/nio/fs/AbstractPoller;
.super Ljava/lang/Object;
.source "AbstractPoller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractPoller$RequestType;,
        Lsun/nio/fs/AbstractPoller$Request;
    }
.end annotation


# instance fields
.field private final blacklist requestList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lsun/nio/fs/AbstractPoller$Request;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist shutdown:Z


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractPoller;->requestList:Ljava/util/LinkedList;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/AbstractPoller;->shutdown:Z

    .line 52
    return-void
.end method

.method private varargs blacklist invoke(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "type"    # Lsun/nio/fs/AbstractPoller$RequestType;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    new-instance v0, Lsun/nio/fs/AbstractPoller$Request;

    invoke-direct {v0, p1, p2}, Lsun/nio/fs/AbstractPoller$Request;-><init>(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)V

    .line 214
    .local v0, "req":Lsun/nio/fs/AbstractPoller$Request;
    iget-object v1, p0, Lsun/nio/fs/AbstractPoller;->requestList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 215
    :try_start_8
    iget-boolean v2, p0, Lsun/nio/fs/AbstractPoller;->shutdown:Z

    if-nez v2, :cond_2a

    .line 218
    iget-object v2, p0, Lsun/nio/fs/AbstractPoller;->requestList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_30

    .line 222
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPoller;->wakeup()V

    .line 225
    invoke-virtual {v0}, Lsun/nio/fs/AbstractPoller$Request;->awaitResult()Ljava/lang/Object;

    move-result-object v1

    .line 227
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_26

    .line 229
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_22

    .line 231
    return-object v1

    .line 230
    :cond_22
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 228
    :cond_26
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 216
    .end local v1    # "result":Ljava/lang/Object;
    :cond_2a
    :try_start_2a
    new-instance v2, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v2}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    .end local v0    # "req":Lsun/nio/fs/AbstractPoller$Request;
    .end local p0    # "this":Lsun/nio/fs/AbstractPoller;
    .end local p1    # "type":Lsun/nio/fs/AbstractPoller$RequestType;
    .end local p2    # "params":[Ljava/lang/Object;
    throw v2

    .line 219
    .restart local v0    # "req":Lsun/nio/fs/AbstractPoller$Request;
    .restart local p0    # "this":Lsun/nio/fs/AbstractPoller;
    .restart local p1    # "type":Lsun/nio/fs/AbstractPoller$RequestType;
    .restart local p2    # "params":[Ljava/lang/Object;
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_30

    throw v2
.end method


# virtual methods
.method final blacklist cancel(Ljava/nio/file/WatchKey;)V
    .registers 5
    .param p1, "key"    # Ljava/nio/file/WatchKey;

    .line 133
    :try_start_0
    sget-object v0, Lsun/nio/fs/AbstractPoller$RequestType;->CANCEL:Lsun/nio/fs/AbstractPoller$RequestType;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun/nio/fs/AbstractPoller;->invoke(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    .line 137
    nop

    .line 138
    return-void

    .line 134
    :catch_b
    move-exception v0

    .line 136
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method final blacklist close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    sget-object v0, Lsun/nio/fs/AbstractPoller$RequestType;->CLOSE:Lsun/nio/fs/AbstractPoller$RequestType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lsun/nio/fs/AbstractPoller;->invoke(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method abstract blacklist implCancelKey(Ljava/nio/file/WatchKey;)V
.end method

.method abstract blacklist implCloseAll()V
.end method

.method varargs abstract blacklist implRegister(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/lang/Object;
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
.end method

.method blacklist processRequests()Z
    .registers 8

    .line 241
    iget-object v0, p0, Lsun/nio/fs/AbstractPoller;->requestList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 243
    :goto_3
    :try_start_3
    iget-object v1, p0, Lsun/nio/fs/AbstractPoller;->requestList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/nio/fs/AbstractPoller$Request;

    move-object v2, v1

    .local v2, "req":Lsun/nio/fs/AbstractPoller$Request;
    if-eqz v1, :cond_65

    .line 245
    iget-boolean v1, p0, Lsun/nio/fs/AbstractPoller;->shutdown:Z

    if-eqz v1, :cond_1a

    .line 246
    new-instance v1, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v1}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    invoke-virtual {v2, v1}, Lsun/nio/fs/AbstractPoller$Request;->release(Ljava/lang/Object;)V

    .line 249
    :cond_1a
    invoke-virtual {v2}, Lsun/nio/fs/AbstractPoller$Request;->type()Lsun/nio/fs/AbstractPoller$RequestType;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/AbstractPoller$RequestType;->ordinal()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_6c

    .line 284
    new-instance v1, Ljava/io/IOException;

    goto :goto_5c

    .line 277
    :pswitch_2b
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPoller;->implCloseAll()V

    .line 278
    invoke-virtual {v2, v4}, Lsun/nio/fs/AbstractPoller$Request;->release(Ljava/lang/Object;)V

    .line 279
    iput-boolean v3, p0, Lsun/nio/fs/AbstractPoller;->shutdown:Z

    .line 280
    goto :goto_3

    .line 267
    :pswitch_34
    invoke-virtual {v2}, Lsun/nio/fs/AbstractPoller$Request;->parameters()[Ljava/lang/Object;

    move-result-object v1

    .line 268
    .local v1, "params":[Ljava/lang/Object;
    aget-object v3, v1, v5

    check-cast v3, Ljava/nio/file/WatchKey;

    .line 269
    .local v3, "key":Ljava/nio/file/WatchKey;
    invoke-virtual {p0, v3}, Lsun/nio/fs/AbstractPoller;->implCancelKey(Ljava/nio/file/WatchKey;)V

    .line 270
    invoke-virtual {v2, v4}, Lsun/nio/fs/AbstractPoller$Request;->release(Ljava/lang/Object;)V

    .line 271
    goto :goto_3

    .line 254
    .end local v1    # "params":[Ljava/lang/Object;
    .end local v3    # "key":Ljava/nio/file/WatchKey;
    :pswitch_43
    invoke-virtual {v2}, Lsun/nio/fs/AbstractPoller$Request;->parameters()[Ljava/lang/Object;

    move-result-object v1

    .line 255
    .restart local v1    # "params":[Ljava/lang/Object;
    aget-object v4, v1, v5

    check-cast v4, Ljava/nio/file/Path;

    .line 256
    .local v4, "path":Ljava/nio/file/Path;
    aget-object v3, v1, v3

    check-cast v3, Ljava/util/Set;

    .line 258
    .local v3, "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    const/4 v5, 0x2

    aget-object v5, v1, v5

    check-cast v5, [Ljava/nio/file/WatchEvent$Modifier;

    .line 260
    .local v5, "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    invoke-virtual {p0, v4, v3, v5}, Lsun/nio/fs/AbstractPoller;->implRegister(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Lsun/nio/fs/AbstractPoller$Request;->release(Ljava/lang/Object;)V

    .line 261
    goto :goto_3

    .line 284
    .end local v1    # "params":[Ljava/lang/Object;
    .end local v3    # "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    .end local v4    # "path":Ljava/nio/file/Path;
    .end local v5    # "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    :goto_5c
    const-string v3, "request not recognized"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lsun/nio/fs/AbstractPoller$Request;->release(Ljava/lang/Object;)V

    goto :goto_3

    .line 287
    .end local v2    # "req":Lsun/nio/fs/AbstractPoller$Request;
    :cond_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_69

    .line 288
    iget-boolean v0, p0, Lsun/nio/fs/AbstractPoller;->shutdown:Z

    return v0

    .line 287
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_43
        :pswitch_34
        :pswitch_2b
    .end packed-switch
.end method

.method final varargs blacklist register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .registers 9
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    if-eqz p1, :cond_56

    .line 103
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 104
    .local v0, "eventSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/WatchEvent$Kind<*>;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3b

    aget-object v3, p2, v2

    .line 106
    .local v3, "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    if-eq v3, v4, :cond_34

    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-eq v3, v4, :cond_34

    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-ne v3, v4, :cond_1b

    goto :goto_34

    .line 115
    :cond_1b
    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne v3, v4, :cond_20

    .line 116
    goto :goto_38

    .line 119
    :cond_20
    if-nez v3, :cond_2a

    .line 120
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "An element in event set is \'null\'"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_2a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-interface {v3}, Ljava/nio/file/WatchEvent$Kind;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_34
    :goto_34
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    nop

    .line 104
    .end local v3    # "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 123
    :cond_3b
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 125
    sget-object v1, Lsun/nio/fs/AbstractPoller$RequestType;->REGISTER:Lsun/nio/fs/AbstractPoller$RequestType;

    filled-new-array {p1, v0, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lsun/nio/fs/AbstractPoller;->invoke(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/WatchKey;

    return-object v1

    .line 124
    :cond_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No events to register"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "eventSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/WatchEvent$Kind<*>;>;"
    :cond_56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist start()V
    .registers 3

    .line 58
    move-object v0, p0

    .line 59
    .local v0, "thisRunnable":Ljava/lang/Runnable;
    new-instance v1, Lsun/nio/fs/AbstractPoller$1;

    invoke-direct {v1, p0, v0}, Lsun/nio/fs/AbstractPoller$1;-><init>(Lsun/nio/fs/AbstractPoller;Ljava/lang/Runnable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method abstract blacklist wakeup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

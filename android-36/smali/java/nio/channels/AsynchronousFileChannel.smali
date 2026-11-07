.class public abstract Ljava/nio/channels/AsynchronousFileChannel;
.super Ljava/lang/Object;
.source "AsynchronousFileChannel.java"

# interfaces
.implements Ljava/nio/channels/AsynchronousChannel;


# static fields
.field private static final greylist-max-o NO_ATTRIBUTES:[Ljava/nio/file/attribute/FileAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 257
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    sput-object v0, Ljava/nio/channels/AsynchronousFileChannel;->NO_ATTRIBUTES:[Ljava/nio/file/attribute/FileAttribute;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public static varargs whitelist test-api open(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 6
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p2, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/AsynchronousFileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 253
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object v1

    return-object v1
.end method

.method public static varargs whitelist test-api open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 5
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    array-length v0, p1

    if-nez v0, :cond_8

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    goto :goto_10

    .line 308
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 309
    .restart local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 311
    :goto_10
    const/4 v1, 0x0

    sget-object v2, Ljava/nio/channels/AsynchronousFileChannel;->NO_ATTRIBUTES:[Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, v1, v2}, Ljava/nio/channels/AsynchronousFileChannel;->open(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract whitelist test-api force(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api lock()Ljava/util/concurrent/Future;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    .line 567
    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/AsynchronousFileChannel;->lock(JJZ)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public abstract whitelist test-api lock(JJZ)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ)",
            "Ljava/util/concurrent/Future<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api lock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JJZTA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/nio/channels/FileLock;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public final whitelist test-api lock(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/nio/channels/FileLock;",
            "-TA;>;)V"
        }
    .end annotation

    .line 504
    .local p1, "attachment":Ljava/lang/Object;, "TA;"
    .local p2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/FileLock;-TA;>;"
    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/FileLock;-TA;>;"
    .local v6, "attachment":Ljava/lang/Object;, "TA;"
    .local v7, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/FileLock;-TA;>;"
    invoke-virtual/range {v0 .. v7}, Ljava/nio/channels/AsynchronousFileChannel;->lock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V

    .line 505
    return-void
.end method

.method public abstract whitelist test-api read(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api read(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "JTA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api size()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api truncate(J)Ljava/nio/channels/AsynchronousFileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api tryLock()Ljava/nio/channels/FileLock;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/AsynchronousFileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v1

    return-object v1
.end method

.method public abstract whitelist test-api tryLock(JJZ)Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api write(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api write(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "JTA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation
.end method

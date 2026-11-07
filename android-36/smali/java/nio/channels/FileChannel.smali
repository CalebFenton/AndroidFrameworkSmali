.class public abstract Ljava/nio/channels/FileChannel;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "FileChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;
.implements Ljava/nio/channels/GatheringByteChannel;
.implements Ljava/nio/channels/ScatteringByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/FileChannel$MapMode;
    }
.end annotation


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

    .line 296
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    sput-object v0, Ljava/nio/channels/FileChannel;->NO_ATTRIBUTES:[Ljava/nio/file/attribute/FileAttribute;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 162
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    return-void
.end method

.method public static varargs whitelist test-api open(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 5
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 292
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    return-object v1
.end method

.method public static varargs whitelist test-api open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;
    .registers 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    array-length v0, p1

    if-nez v0, :cond_8

    .line 340
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    goto :goto_10

    .line 342
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 343
    .restart local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 345
    :goto_10
    sget-object v1, Ljava/nio/channels/FileChannel;->NO_ATTRIBUTES:[Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

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

.method public final whitelist test-api lock()Ljava/nio/channels/FileLock;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1063
    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v1

    return-object v1
.end method

.method public abstract whitelist test-api lock(JJZ)Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api position()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api position(J)Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api position(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api read(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api read(Ljava/nio/ByteBuffer;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api read([Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/channels/FileChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract whitelist test-api read([Ljava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
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

.method public abstract whitelist test-api transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api truncate(J)Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api tryLock()Ljava/nio/channels/FileLock;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1165
    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

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

.method public abstract whitelist test-api write(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api write(Ljava/nio/ByteBuffer;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api write([Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract whitelist test-api write([Ljava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

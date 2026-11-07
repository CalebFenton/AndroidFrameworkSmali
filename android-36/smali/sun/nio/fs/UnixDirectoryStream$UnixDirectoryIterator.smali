.class Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
.super Ljava/lang/Object;
.source "UnixDirectoryStream.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixDirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnixDirectoryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist atEof:Z

.field private blacklist nextEntry:Ljava/nio/file/Path;

.field private final blacklist stream:Ljava/nio/file/DirectoryStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lsun/nio/fs/UnixDirectoryStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 144
    const-class v0, Lsun/nio/fs/UnixDirectoryStream;

    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixDirectoryStream;Ljava/nio/file/DirectoryStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p2, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    iput-object p1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 p1, 0x0

    iput-boolean p1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    .line 155
    iput-object p2, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->stream:Ljava/nio/file/DirectoryStream;

    .line 156
    return-void
.end method

.method private blacklist isSelfOrParent([B)Z
    .registers 7
    .param p1, "nameAsBytes"    # [B

    .line 160
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_14

    .line 161
    array-length v1, p1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_13

    array-length v1, p1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_14

    aget-byte v1, p1, v3

    if-ne v1, v2, :cond_14

    .line 163
    :cond_13
    return v3

    .line 166
    :cond_14
    return v0
.end method

.method private blacklist readNextEntry()Ljava/nio/file/Path;
    .registers 5

    .line 171
    nop

    .line 174
    :goto_1
    const/4 v0, 0x0

    .line 177
    .local v0, "nameAsBytes":[B
    iget-object v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 179
    :try_start_b
    iget-object v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 180
    iget-object v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixDirectoryStream;->-$$Nest$fgetdp(Lsun/nio/fs/UnixDirectoryStream;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->readdir(J)[B

    move-result-object v1
    :try_end_1d
    .catch Lsun/nio/fs/UnixException; {:try_start_b .. :try_end_1d} :catch_60
    .catchall {:try_start_b .. :try_end_1d} :catchall_5e

    move-object v0, v1

    .line 186
    :cond_1e
    iget-object v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 187
    nop

    .line 190
    if-nez v0, :cond_2f

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    .line 192
    const/4 v1, 0x0

    return-object v1

    .line 196
    :cond_2f
    invoke-direct {p0, v0}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->isSelfOrParent([B)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 197
    iget-object v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixDirectoryStream;->-$$Nest$fgetdir(Lsun/nio/fs/UnixDirectoryStream;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsun/nio/fs/UnixPath;->resolve([B)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 201
    .local v1, "entry":Ljava/nio/file/Path;
    :try_start_3f
    iget-object v2, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixDirectoryStream;->-$$Nest$fgetfilter(Lsun/nio/fs/UnixDirectoryStream;)Ljava/nio/file/DirectoryStream$Filter;

    move-result-object v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixDirectoryStream;->-$$Nest$fgetfilter(Lsun/nio/fs/UnixDirectoryStream;)Ljava/nio/file/DirectoryStream$Filter;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/nio/file/DirectoryStream$Filter;->accept(Ljava/lang/Object;)Z

    move-result v2
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_51} :catch_56

    if-eqz v2, :cond_54

    goto :goto_55

    .line 205
    :cond_54
    goto :goto_5d

    .line 202
    :cond_55
    :goto_55
    return-object v1

    .line 203
    :catch_56
    move-exception v2

    .line 204
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v3, v2}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 207
    .end local v0    # "nameAsBytes":[B
    .end local v1    # "entry":Ljava/nio/file/Path;
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_5d
    :goto_5d
    goto :goto_1

    .line 186
    .restart local v0    # "nameAsBytes":[B
    :catchall_5e
    move-exception v1

    goto :goto_71

    .line 182
    :catch_60
    move-exception v1

    .line 183
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_61
    iget-object v2, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixDirectoryStream;->-$$Nest$fgetdir(Lsun/nio/fs/UnixDirectoryStream;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;

    move-result-object v2

    .line 184
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v3, v2}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    .end local v0    # "nameAsBytes":[B
    .end local p0    # "this":Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
    throw v3
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_5e

    .line 186
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "nameAsBytes":[B
    .restart local p0    # "this":Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
    :goto_71
    iget-object v2, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 187
    throw v1
.end method


# virtual methods
.method public declared-synchronized whitelist test-api hasNext()Z
    .registers 2

    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    if-nez v0, :cond_f

    .line 213
    invoke-direct {p0}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->readNextEntry()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    .line 214
    .end local p0    # "this":Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
    :cond_f
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    monitor-exit p0

    return v0

    .line 211
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 144
    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->next()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist next()Ljava/nio/file/Path;
    .registers 3

    monitor-enter p0

    .line 220
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    if-nez v0, :cond_e

    .line 221
    invoke-direct {p0}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->readNextEntry()Ljava/nio/file/Path;

    move-result-object v0

    .local v0, "result":Ljava/nio/file/Path;
    goto :goto_13

    .line 223
    .end local v0    # "result":Ljava/nio/file/Path;
    .end local p0    # "this":Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
    :cond_e
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    .line 224
    .restart local v0    # "result":Ljava/nio/file/Path;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1d

    .line 226
    :goto_13
    if-eqz v0, :cond_17

    .line 228
    monitor-exit p0

    return-object v0

    .line 227
    .restart local p0    # "this":Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
    :cond_17
    :try_start_17
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 219
    .end local v0    # "result":Ljava/nio/file/Path;
    .end local p0    # "this":Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.class Lsun/nio/fs/UnixFileSystem$2;
.super Ljava/lang/Object;
.source "UnixFileSystem.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixFileSystem;->getFileStores()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/nio/file/FileStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/fs/UnixFileSystem;


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/fs/UnixFileSystem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lsun/nio/fs/UnixFileSystem$2;->this$0:Lsun/nio/fs/UnixFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/FileStore;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;

    iget-object v1, p0, Lsun/nio/fs/UnixFileSystem$2;->this$0:Lsun/nio/fs/UnixFileSystem;

    invoke-direct {v0, v1}, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;-><init>(Lsun/nio/fs/UnixFileSystem;)V

    return-object v0
.end method

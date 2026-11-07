.class Landroid/os/incremental/IncrementalManager$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "IncrementalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/incremental/IncrementalManager;->linkFiles(Landroid/os/incremental/IncrementalStorage;Ljava/io/File;Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$sourceBase:Ljava/nio/file/Path;

.field final synthetic blacklist val$sourceStorage:Landroid/os/incremental/IncrementalStorage;

.field final synthetic blacklist val$targetRelative:Ljava/nio/file/Path;

.field final synthetic blacklist val$targetStorage:Landroid/os/incremental/IncrementalStorage;


# direct methods
.method constructor blacklist <init>(Landroid/os/incremental/IncrementalManager;Ljava/nio/file/Path;Landroid/os/incremental/IncrementalStorage;Ljava/nio/file/Path;Landroid/os/incremental/IncrementalStorage;)V
    .registers 6
    .param p1, "this$0"    # Landroid/os/incremental/IncrementalManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 234
    iput-object p2, p0, Landroid/os/incremental/IncrementalManager$1;->val$sourceBase:Ljava/nio/file/Path;

    iput-object p3, p0, Landroid/os/incremental/IncrementalManager$1;->val$targetStorage:Landroid/os/incremental/IncrementalStorage;

    iput-object p4, p0, Landroid/os/incremental/IncrementalManager$1;->val$targetRelative:Ljava/nio/file/Path;

    iput-object p5, p0, Landroid/os/incremental/IncrementalManager$1;->val$sourceStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Landroid/os/incremental/IncrementalManager$1;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 6
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager$1;->val$sourceBase:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 239
    .local v0, "relativeDir":Ljava/nio/file/Path;
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$1;->val$targetStorage:Landroid/os/incremental/IncrementalStorage;

    iget-object v2, p0, Landroid/os/incremental/IncrementalManager$1;->val$targetRelative:Ljava/nio/file/Path;

    invoke-interface {v2, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/incremental/IncrementalStorage;->makeDirectory(Ljava/lang/String;)V

    .line 240
    sget-object v1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v1
.end method

.method public bridge synthetic whitelist test-api visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Landroid/os/incremental/IncrementalManager$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 8
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager$1;->val$sourceBase:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 247
    .local v0, "relativeFile":Ljava/nio/file/Path;
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$1;->val$sourceStorage:Landroid/os/incremental/IncrementalStorage;

    .line 248
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/os/incremental/IncrementalManager$1;->val$targetStorage:Landroid/os/incremental/IncrementalStorage;

    iget-object v4, p0, Landroid/os/incremental/IncrementalManager$1;->val$targetRelative:Ljava/nio/file/Path;

    .line 249
    invoke-interface {v4, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/incremental/IncrementalStorage;->makeLink(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V

    .line 250
    sget-object v1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v1
.end method

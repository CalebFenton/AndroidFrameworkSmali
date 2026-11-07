.class Ljava/nio/file/Files$2;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$delegate:Ljava/util/Iterator;


# direct methods
.method constructor blacklist <init>(Ljava/util/Iterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3456
    iput-object p1, p0, Ljava/nio/file/Files$2;->val$delegate:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 4

    .line 3460
    :try_start_0
    iget-object v0, p0, Ljava/nio/file/Files$2;->val$delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_6
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3461
    :catch_7
    move-exception v0

    .line 3462
    .local v0, "e":Ljava/nio/file/DirectoryIteratorException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-virtual {v0}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 3456
    invoke-virtual {p0}, Ljava/nio/file/Files$2;->next()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/nio/file/Path;
    .registers 4

    .line 3468
    :try_start_0
    iget-object v0, p0, Ljava/nio/file/Files$2;->val$delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;
    :try_end_8
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3469
    :catch_9
    move-exception v0

    .line 3470
    .local v0, "e":Ljava/nio/file/DirectoryIteratorException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-virtual {v0}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

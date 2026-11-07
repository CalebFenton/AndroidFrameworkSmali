.class public Ljava/nio/file/SimpleFileVisitor;
.super Ljava/lang/Object;
.source "SimpleFileVisitor.java"

# interfaces
.implements Ljava/nio/file/FileVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/nio/file/FileVisitor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 47
    .local p0, "this":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist test-api postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 4
    .param p2, "exc"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/IOException;",
            ")",
            "Ljava/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    .local p0, "this":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<TT;>;"
    .local p1, "dir":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    if-nez p2, :cond_8

    .line 110
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0

    .line 109
    :cond_8
    throw p2
.end method

.method public whitelist test-api preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 4
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ")",
            "Ljava/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    .local p0, "this":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<TT;>;"
    .local p1, "dir":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public whitelist test-api visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 4
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ")",
            "Ljava/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    .local p0, "this":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<TT;>;"
    .local p1, "file":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public whitelist test-api visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 3
    .param p2, "exc"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/IOException;",
            ")",
            "Ljava/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    .local p0, "this":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<TT;>;"
    .local p1, "file":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    throw p2
.end method

.class public interface abstract Ljava/nio/file/attribute/PosixFileAttributeView;
.super Ljava/lang/Object;
.source "PosixFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;
.implements Ljava/nio/file/attribute/FileOwnerAttributeView;


# virtual methods
.method public abstract whitelist test-api name()Ljava/lang/String;
.end method

.method public bridge synthetic whitelist test-api readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-interface {p0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setPermissions(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

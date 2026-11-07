.class public interface abstract Ljava/nio/file/attribute/DosFileAttributeView;
.super Ljava/lang/Object;
.source "DosFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;


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

    .line 88
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api readAttributes()Ljava/nio/file/attribute/DosFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setArchive(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setHidden(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setReadOnly(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setSystem(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

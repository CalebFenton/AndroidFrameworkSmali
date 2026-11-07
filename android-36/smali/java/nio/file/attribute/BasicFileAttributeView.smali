.class public interface abstract Ljava/nio/file/attribute/BasicFileAttributeView;
.super Ljava/lang/Object;
.source "BasicFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/FileAttributeView;


# virtual methods
.method public abstract whitelist test-api name()Ljava/lang/String;
.end method

.method public abstract whitelist test-api readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

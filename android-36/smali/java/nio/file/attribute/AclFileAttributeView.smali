.class public interface abstract Ljava/nio/file/attribute/AclFileAttributeView;
.super Ljava/lang/Object;
.source "AclFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/FileOwnerAttributeView;


# virtual methods
.method public abstract whitelist test-api getAcl()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/attribute/AclEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api name()Ljava/lang/String;
.end method

.method public abstract whitelist test-api setAcl(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/attribute/AclEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.class public interface abstract Ljava/nio/file/attribute/FileOwnerAttributeView;
.super Ljava/lang/Object;
.source "FileOwnerAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/FileAttributeView;


# virtual methods
.method public abstract whitelist test-api getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api name()Ljava/lang/String;
.end method

.method public abstract whitelist test-api setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

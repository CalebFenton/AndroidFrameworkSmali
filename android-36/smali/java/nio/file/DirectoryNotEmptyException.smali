.class public Ljava/nio/file/DirectoryNotEmptyException;
.super Ljava/nio/file/FileSystemException;
.source "DirectoryNotEmptyException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x2a6b773c0727657bL


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "dir"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

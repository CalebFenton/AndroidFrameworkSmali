.class public Ljava/nio/file/NotDirectoryException;
.super Ljava/nio/file/FileSystemException;
.source "NotDirectoryException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x7d0f20c907831c87L


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.class public Ljava/nio/file/FileSystemAlreadyExistsException;
.super Ljava/lang/RuntimeException;
.source "FileSystemAlreadyExistsException.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x4b792561d7523d8cL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.class public Ljava/nio/file/AccessDeniedException;
.super Ljava/nio/file/FileSystemException;
.source "AccessDeniedException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x44993d6bf81c2721L


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "other"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

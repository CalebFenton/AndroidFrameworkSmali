.class public Ljava/nio/file/AtomicMoveNotSupportedException;
.super Ljava/nio/file/FileSystemException;
.source "AtomicMoveNotSupportedException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x4afa75ccc59748dbL


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

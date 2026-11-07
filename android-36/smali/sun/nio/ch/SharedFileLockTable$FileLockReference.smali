.class Lsun/nio/ch/SharedFileLockTable$FileLockReference;
.super Ljava/lang/ref/WeakReference;
.source "FileLockTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SharedFileLockTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLockReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/nio/channels/FileLock;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist fileKey:Lsun/nio/ch/FileKey;


# direct methods
.method constructor blacklist <init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V
    .registers 4
    .param p1, "referent"    # Ljava/nio/channels/FileLock;
    .param p3, "key"    # Lsun/nio/ch/FileKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileLock;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/nio/channels/FileLock;",
            ">;",
            "Lsun/nio/ch/FileKey;",
            ")V"
        }
    .end annotation

    .line 94
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/nio/channels/FileLock;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 95
    iput-object p3, p0, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->fileKey:Lsun/nio/ch/FileKey;

    .line 96
    return-void
.end method


# virtual methods
.method blacklist fileKey()Lsun/nio/ch/FileKey;
    .registers 2

    .line 99
    iget-object v0, p0, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->fileKey:Lsun/nio/ch/FileKey;

    return-object v0
.end method

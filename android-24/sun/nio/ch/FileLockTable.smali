.class abstract Lsun/nio/ch/FileLockTable;
.super Ljava/lang/Object;
.source "FileLockTable.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;
    .locals 1
    .param p0, "channel"    # Ljava/nio/channels/Channel;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    new-instance v0, Lsun/nio/ch/SharedFileLockTable;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/nio/ch/SharedFileLockTable;-><init>(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public abstract add(Ljava/nio/channels/FileLock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/nio/channels/FileLock;)V
.end method

.method public abstract removeAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end method

.method public abstract replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
.end method

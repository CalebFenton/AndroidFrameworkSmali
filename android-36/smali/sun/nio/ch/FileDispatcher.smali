.class abstract Lsun/nio/ch/FileDispatcher;
.super Lsun/nio/ch/NativeDispatcher;
.source "FileDispatcher.java"


# static fields
.field public static final blacklist INTERRUPTED:I = 0x2

.field public static final blacklist LOCKED:I = 0x0

.field public static final blacklist NO_LOCK:I = -0x1

.field public static final blacklist RET_EX_LOCK:I = 0x1


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lsun/nio/ch/NativeDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist canTransferToDirectly(Ljava/nio/channels/SelectableChannel;)Z
.end method

.method abstract blacklist duplicateForMapping(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist force(Ljava/io/FileDescriptor;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist lock(Ljava/io/FileDescriptor;ZJJZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist release(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist size(Ljava/io/FileDescriptor;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist transferToDirectlyNeedsPositionLock()Z
.end method

.method abstract blacklist truncate(Ljava/io/FileDescriptor;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

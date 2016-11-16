.class public Lsun/nio/ch/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;,
        Lsun/nio/ch/FileChannelImpl$Unmapper;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final MAPPED_TRANSFER_SIZE:J = 0x800000L

.field private static final MAP_PV:I = 0x2

.field private static final MAP_RO:I = 0x0

.field private static final MAP_RW:I = 0x1

.field private static final TRANSFER_SIZE:I = 0x2000

.field private static final allocationGranularity:J

.field private static volatile fileSupported:Z

.field private static isSharedFileLockTable:Z

.field private static volatile pipeSupported:Z

.field private static volatile propertyChecked:Z

.field private static volatile transferSupported:Z


# instance fields
.field private final append:Z

.field public final fd:Ljava/io/FileDescriptor;

.field private volatile fileLockTable:Lsun/nio/ch/FileLockTable;

.field private final nd:Lsun/nio/ch/FileDispatcher;

.field private final parent:Ljava/lang/Object;

.field private final path:Ljava/lang/String;

.field private final positionLock:Ljava/lang/Object;

.field private final readable:Z

.field private final threads:Lsun/nio/ch/NativeThreadSet;

.field private final writable:Z


# direct methods
.method static synthetic -wrap0(JJ)I
    .locals 2
    .param p0, "address"    # J
    .param p2, "length"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const-class v0, Lsun/nio/ch/FileChannelImpl;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@c
    .line 409
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    #@e
    .line 414
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    #@10
    .line 419
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    #@12
    .line 1176
    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->initIDs()J

    #@15
    move-result-wide v0

    #@16
    sput-wide v0, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    #@18
    .line 49
    return-void

    #@19
    :cond_0
    move v0, v1

    #@1a
    goto :goto_0
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "readable"    # Z
    .param p4, "writable"    # Z
    .param p5, "append"    # Z
    .param p6, "parent"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    #@3
    .line 74
    new-instance v0, Lsun/nio/ch/NativeThreadSet;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-direct {v0, v1}, Lsun/nio/ch/NativeThreadSet;-><init>(I)V

    #@9
    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@b
    .line 77
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@12
    .line 82
    iput-object p1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@14
    .line 83
    iput-boolean p3, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    #@16
    .line 84
    iput-boolean p4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@18
    .line 85
    iput-boolean p5, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    #@1a
    .line 86
    iput-object p6, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    #@1c
    .line 87
    iput-object p2, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    #@1e
    .line 88
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    #@20
    invoke-direct {v0, p5}, Lsun/nio/ch/FileDispatcherImpl;-><init>(Z)V

    #@23
    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@25
    .line 80
    return-void
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 109
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@8
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@b
    throw v0

    #@c
    .line 107
    :cond_0
    return-void
.end method

.method private fileLockTable()Lsun/nio/ch/FileLockTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 986
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 987
    monitor-enter p0

    #@5
    .line 988
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 989
    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 990
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@11
    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    move-result v0

    #@15
    .line 992
    .local v0, "ti":I
    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@18
    .line 993
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@1a
    invoke-static {p0, v1}, Lsun/nio/ch/FileLockTable;->newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 995
    :try_start_2
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@22
    invoke-virtual {v1, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@25
    .end local v0    # "ti":I
    :cond_0
    :goto_0
    monitor-exit p0

    #@26
    .line 1003
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    #@28
    return-object v1

    #@29
    .line 994
    .restart local v0    # "ti":I
    :catchall_0
    move-exception v1

    #@2a
    .line 995
    :try_start_3
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@2c
    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@2f
    .line 994
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@30
    .line 987
    .end local v0    # "ti":I
    :catchall_1
    move-exception v1

    #@31
    monitor-exit p0

    #@32
    throw v1

    #@33
    .line 998
    :cond_2
    :try_start_4
    new-instance v1, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;

    #@35
    invoke-direct {v1}, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;-><init>()V

    #@38
    iput-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3a
    goto :goto_0
.end method

.method private static native initIDs()J
.end method

.method private static isSharedFileLockTable()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 971
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    #@3
    if-nez v2, :cond_2

    #@5
    .line 972
    const-class v2, Lsun/nio/ch/FileChannelImpl;

    #@7
    monitor-enter v2

    #@8
    .line 973
    :try_start_0
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    #@a
    if-nez v3, :cond_1

    #@c
    .line 975
    new-instance v3, Lsun/security/action/GetPropertyAction;

    #@e
    .line 976
    const-string/jumbo v4, "sun.nio.ch.disableSystemWideOverlappingFileLockCheck"

    #@11
    .line 975
    invoke-direct {v3, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@14
    .line 974
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    .line 977
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@1c
    const-string/jumbo v1, "false"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    :cond_0
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    #@25
    .line 978
    const/4 v1, 0x1

    #@26
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :cond_1
    monitor-exit v2

    #@29
    .line 982
    :cond_2
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    #@2b
    return v1

    #@2c
    .line 972
    :catchall_0
    move-exception v1

    #@2d
    monitor-exit v2

    #@2e
    throw v1
.end method

.method private native map0(IJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;
    .locals 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z
    .param p4, "parent"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 96
    new-instance v0, Lsun/nio/ch/FileChannelImpl;

    #@2
    const/4 v5, 0x0

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move-object v6, p4

    #@8
    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;-><init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V

    #@b
    return-object v0
.end method

.method public static open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;
    .locals 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z
    .param p4, "append"    # Z
    .param p5, "parent"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 104
    new-instance v0, Lsun/nio/ch/FileChannelImpl;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;-><init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V

    #@b
    return-object v0
.end method

.method private native position0(Ljava/io/FileDescriptor;J)J
.end method

.method private readInternal(Ljava/nio/ByteBuffer;J)I
    .locals 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 711
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@8
    invoke-virtual {v3}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@10
    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@13
    move-result v3

    #@14
    :goto_0
    if-nez v3, :cond_1

    #@16
    new-instance v3, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v3

    #@1c
    :cond_0
    move v3, v5

    #@1d
    goto :goto_0

    #@1e
    .line 712
    :cond_1
    const/4 v0, 0x0

    #@1f
    .line 713
    .local v0, "n":I
    const/4 v1, -0x1

    #@20
    .line 714
    .local v1, "ti":I
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    #@22
    invoke-static {v3}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    .line 716
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@29
    .line 717
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@2b
    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@2e
    move-result v1

    #@2f
    .line 718
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v3

    #@33
    if-nez v3, :cond_3

    #@35
    .line 719
    const/4 v3, -0x1

    #@36
    .line 725
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@38
    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@3b
    .line 726
    int-to-long v6, v4

    #@3c
    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@3f
    .line 727
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@42
    .line 728
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@44
    if-nez v4, :cond_2

    #@46
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@49
    move-result v4

    #@4a
    if-nez v4, :cond_2

    #@4c
    new-instance v3, Ljava/lang/AssertionError;

    #@4e
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@51
    throw v3

    #@52
    .line 719
    :cond_2
    return v3

    #@53
    .line 721
    :cond_3
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@55
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@57
    invoke-static {v3, p1, p2, p3, v6}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@5a
    move-result v0

    #@5b
    .line 722
    const/4 v3, -0x3

    #@5c
    if-ne v0, v3, :cond_4

    #@5e
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@61
    move-result v3

    #@62
    if-nez v3, :cond_3

    #@64
    .line 723
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    move-result v6

    #@68
    .line 725
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@6a
    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@6d
    .line 726
    if-lez v0, :cond_6

    #@6f
    move v3, v0

    #@70
    :goto_1
    int-to-long v8, v3

    #@71
    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@74
    .line 727
    if-lez v0, :cond_5

    #@76
    move v4, v5

    #@77
    :cond_5
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@7a
    .line 728
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@7c
    if-nez v3, :cond_7

    #@7e
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@81
    move-result v3

    #@82
    if-nez v3, :cond_7

    #@84
    new-instance v3, Ljava/lang/AssertionError;

    #@86
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@89
    throw v3

    #@8a
    :cond_6
    move v3, v4

    #@8b
    .line 726
    goto :goto_1

    #@8c
    .line 723
    :cond_7
    return v6

    #@8d
    .line 724
    :catchall_0
    move-exception v3

    #@8e
    .line 725
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@90
    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@93
    .line 726
    if-lez v0, :cond_8

    #@95
    move v6, v0

    #@96
    :goto_2
    int-to-long v6, v6

    #@97
    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@9a
    .line 727
    if-lez v0, :cond_9

    #@9c
    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@9f
    .line 728
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@a1
    if-nez v4, :cond_a

    #@a3
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@a6
    move-result v4

    #@a7
    if-nez v4, :cond_a

    #@a9
    new-instance v3, Ljava/lang/AssertionError;

    #@ab
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@ae
    throw v3

    #@af
    :cond_8
    move v6, v4

    #@b0
    .line 726
    goto :goto_2

    #@b1
    :cond_9
    move v5, v4

    #@b2
    .line 727
    goto :goto_3

    #@b3
    .line 724
    :cond_a
    throw v3
.end method

.method private transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 16
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 642
    const-wide/16 v12, 0x2000

    #@2
    move-wide/from16 v0, p4

    #@4
    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    #@7
    move-result-wide v12

    #@8
    long-to-int v3, v12

    #@9
    .line 643
    .local v3, "c":I
    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    #@c
    move-result-object v2

    #@d
    .line 644
    .local v2, "bb":Ljava/nio/ByteBuffer;
    const-wide/16 v8, 0x0

    #@f
    .line 645
    .local v8, "tw":J
    move-wide/from16 v6, p2

    #@11
    .line 647
    .local v6, "pos":J
    :try_start_0
    invoke-static {v2}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    #@14
    .line 648
    :goto_0
    cmp-long v11, v8, p4

    #@16
    if-gez v11, :cond_0

    #@18
    .line 649
    sub-long v12, p4, v8

    #@1a
    const-wide/16 v14, 0x2000

    #@1c
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    #@1f
    move-result-wide v12

    #@20
    long-to-int v11, v12

    #@21
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@24
    .line 652
    move-object/from16 v0, p1

    #@26
    invoke-interface {v0, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v4

    #@2a
    .line 653
    .local v4, "nr":I
    if-gtz v4, :cond_1

    #@2c
    .line 669
    .end local v4    # "nr":I
    :cond_0
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@2f
    .line 663
    return-wide v8

    #@30
    .line 655
    .restart local v4    # "nr":I
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@33
    .line 656
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v2, v6, v7}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    #@38
    move-result v5

    #@39
    .line 657
    .local v5, "nw":I
    int-to-long v12, v5

    #@3a
    add-long/2addr v8, v12

    #@3b
    .line 658
    if-ne v5, v4, :cond_0

    #@3d
    .line 660
    int-to-long v12, v5

    #@3e
    add-long/2addr v6, v12

    #@3f
    .line 661
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 664
    .end local v4    # "nr":I
    .end local v5    # "nw":I
    :catch_0
    move-exception v10

    #@44
    .line 665
    .local v10, "x":Ljava/io/IOException;
    const-wide/16 v12, 0x0

    #@46
    cmp-long v11, v8, v12

    #@48
    if-lez v11, :cond_2

    #@4a
    .line 669
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@4d
    .line 666
    return-wide v8

    #@4e
    .line 667
    :cond_2
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    .line 668
    .end local v10    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    #@50
    .line 669
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@53
    .line 668
    throw v11
.end method

.method private transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J
    .locals 24
    .param p1, "src"    # Lsun/nio/ch/FileChannelImpl;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 602
    move-object/from16 v0, p1

    #@2
    iget-boolean v4, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    #@4
    if-nez v4, :cond_0

    #@6
    .line 603
    new-instance v4, Ljava/nio/channels/NonReadableChannelException;

    #@8
    invoke-direct {v4}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@b
    throw v4

    #@c
    .line 604
    :cond_0
    move-object/from16 v0, p1

    #@e
    iget-object v0, v0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@10
    move-object/from16 v22, v0

    #@12
    monitor-enter v22

    #@13
    .line 605
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lsun/nio/ch/FileChannelImpl;->position()J

    #@16
    move-result-wide v18

    #@17
    .line 606
    .local v18, "pos":J
    invoke-virtual/range {p1 .. p1}, Lsun/nio/ch/FileChannelImpl;->size()J

    #@1a
    move-result-wide v4

    #@1b
    sub-long v4, v4, v18

    #@1d
    move-wide/from16 v0, p4

    #@1f
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@22
    move-result-wide v12

    #@23
    .line 608
    .local v12, "max":J
    move-wide/from16 v20, v12

    #@25
    .line 609
    .local v20, "remaining":J
    move-wide/from16 v6, v18

    #@27
    .line 610
    .local v6, "p":J
    :goto_0
    const-wide/16 v4, 0x0

    #@29
    cmp-long v4, v20, v4

    #@2b
    if-lez v4, :cond_4

    #@2d
    .line 611
    const-wide/32 v4, 0x800000

    #@30
    move-wide/from16 v0, v20

    #@32
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@35
    move-result-wide v8

    #@36
    .line 613
    .local v8, "size":J
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@38
    move-object/from16 v4, p1

    #@3a
    invoke-virtual/range {v4 .. v9}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3d
    move-result-object v10

    #@3e
    .line 615
    .local v10, "bb":Ljava/nio/MappedByteBuffer;
    :try_start_1
    move-object/from16 v0, p0

    #@40
    move-wide/from16 v1, p2

    #@42
    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    #@45
    move-result v4

    #@46
    int-to-long v14, v4

    #@47
    .line 616
    .local v14, "n":J
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@49
    if-nez v4, :cond_2

    #@4b
    const-wide/16 v4, 0x0

    #@4d
    cmp-long v4, v14, v4

    #@4f
    if-lez v4, :cond_1

    #@51
    const/4 v4, 0x1

    #@52
    :goto_1
    if-nez v4, :cond_2

    #@54
    new-instance v4, Ljava/lang/AssertionError;

    #@56
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@59
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .line 620
    .end local v14    # "n":J
    :catch_0
    move-exception v11

    #@5b
    .line 622
    .local v11, "ioe":Ljava/io/IOException;
    cmp-long v4, v20, v12

    #@5d
    if-nez v4, :cond_3

    #@5f
    .line 623
    :try_start_2
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    .line 625
    .end local v11    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@61
    .line 626
    :try_start_3
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    #@64
    .line 625
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@65
    .line 604
    .end local v6    # "p":J
    .end local v8    # "size":J
    .end local v10    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v12    # "max":J
    .end local v18    # "pos":J
    .end local v20    # "remaining":J
    :catchall_1
    move-exception v4

    #@66
    monitor-exit v22

    #@67
    throw v4

    #@68
    .line 616
    .restart local v6    # "p":J
    .restart local v8    # "size":J
    .restart local v10    # "bb":Ljava/nio/MappedByteBuffer;
    .restart local v12    # "max":J
    .restart local v14    # "n":J
    .restart local v18    # "pos":J
    .restart local v20    # "remaining":J
    :cond_1
    const/4 v4, 0x0

    #@69
    goto :goto_1

    #@6a
    .line 617
    :cond_2
    add-long/2addr v6, v14

    #@6b
    .line 618
    add-long p2, p2, v14

    #@6d
    .line 619
    sub-long v20, v20, v14

    #@6f
    .line 626
    :try_start_4
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    #@72
    goto :goto_0

    #@73
    .end local v14    # "n":J
    .restart local v11    # "ioe":Ljava/io/IOException;
    :cond_3
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    #@76
    .line 629
    .end local v8    # "size":J
    .end local v10    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v11    # "ioe":Ljava/io/IOException;
    :cond_4
    sub-long v16, v12, v20

    #@78
    .line 630
    .local v16, "nwritten":J
    add-long v4, v18, v16

    #@7a
    move-object/from16 v0, p1

    #@7c
    invoke-virtual {v0, v4, v5}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@7f
    monitor-exit v22

    #@80
    .line 631
    return-wide v16
.end method

.method private native transferTo0(IJJI)J
.end method

.method private transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J
    .locals 15
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 532
    const/16 v11, 0x2000

    #@2
    move/from16 v0, p3

    #@4
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v3

    #@8
    .line 533
    .local v3, "c":I
    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v2

    #@c
    .line 534
    .local v2, "bb":Ljava/nio/ByteBuffer;
    const-wide/16 v8, 0x0

    #@e
    .line 535
    .local v8, "tw":J
    move-wide/from16 v6, p1

    #@10
    .line 537
    .local v6, "pos":J
    :try_start_0
    invoke-static {v2}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    #@13
    .line 538
    :goto_0
    move/from16 v0, p3

    #@15
    int-to-long v12, v0

    #@16
    cmp-long v11, v8, v12

    #@18
    if-gez v11, :cond_0

    #@1a
    .line 539
    move/from16 v0, p3

    #@1c
    int-to-long v12, v0

    #@1d
    sub-long/2addr v12, v8

    #@1e
    long-to-int v11, v12

    #@1f
    const/16 v12, 0x2000

    #@21
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    #@24
    move-result v11

    #@25
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@28
    .line 540
    invoke-virtual {p0, v2, v6, v7}, Lsun/nio/ch/FileChannelImpl;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v4

    #@2c
    .line 541
    .local v4, "nr":I
    if-gtz v4, :cond_1

    #@2e
    .line 559
    .end local v4    # "nr":I
    :cond_0
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@31
    .line 553
    return-wide v8

    #@32
    .line 543
    .restart local v4    # "nr":I
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@35
    .line 546
    move-object/from16 v0, p4

    #@37
    invoke-interface {v0, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    #@3a
    move-result v5

    #@3b
    .line 547
    .local v5, "nw":I
    int-to-long v12, v5

    #@3c
    add-long/2addr v8, v12

    #@3d
    .line 548
    if-ne v5, v4, :cond_0

    #@3f
    .line 550
    int-to-long v12, v5

    #@40
    add-long/2addr v6, v12

    #@41
    .line 551
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 554
    .end local v4    # "nr":I
    .end local v5    # "nw":I
    :catch_0
    move-exception v10

    #@46
    .line 555
    .local v10, "x":Ljava/io/IOException;
    const-wide/16 v12, 0x0

    #@48
    cmp-long v11, v8, v12

    #@4a
    if-lez v11, :cond_2

    #@4c
    .line 559
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@4f
    .line 556
    return-wide v8

    #@50
    .line 557
    :cond_2
    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    .line 558
    .end local v10    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    #@52
    .line 559
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@55
    .line 558
    throw v11
.end method

.method private transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J
    .locals 11
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 425
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 426
    const-wide/16 v2, -0x4

    #@6
    return-wide v2

    #@7
    .line 428
    :cond_0
    const/4 v7, 0x0

    #@8
    .line 429
    .local v7, "targetFD":Ljava/io/FileDescriptor;
    instance-of v0, p4, Lsun/nio/ch/FileChannelImpl;

    #@a
    if-eqz v0, :cond_3

    #@c
    .line 430
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 431
    const-wide/16 v2, -0x6

    #@12
    return-wide v2

    #@13
    :cond_1
    move-object v0, p4

    #@14
    .line 432
    check-cast v0, Lsun/nio/ch/FileChannelImpl;

    #@16
    iget-object v7, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@18
    .line 439
    .end local v7    # "targetFD":Ljava/io/FileDescriptor;
    :cond_2
    :goto_0
    if-nez v7, :cond_6

    #@1a
    .line 440
    const-wide/16 v2, -0x4

    #@1c
    return-wide v2

    #@1d
    .line 433
    .restart local v7    # "targetFD":Ljava/io/FileDescriptor;
    :cond_3
    instance-of v0, p4, Lsun/nio/ch/SelChImpl;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 435
    instance-of v0, p4, Lsun/nio/ch/SinkChannelImpl;

    #@23
    if-eqz v0, :cond_4

    #@25
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    #@27
    if-eqz v0, :cond_5

    #@29
    :cond_4
    move-object v0, p4

    #@2a
    .line 437
    check-cast v0, Lsun/nio/ch/SelChImpl;

    #@2c
    invoke-interface {v0}, Lsun/nio/ch/SelChImpl;->getFD()Ljava/io/FileDescriptor;

    #@2f
    move-result-object v7

    #@30
    .local v7, "targetFD":Ljava/io/FileDescriptor;
    goto :goto_0

    #@31
    .line 436
    .local v7, "targetFD":Ljava/io/FileDescriptor;
    :cond_5
    const-wide/16 v2, -0x6

    #@33
    return-wide v2

    #@34
    .line 441
    .end local v7    # "targetFD":Ljava/io/FileDescriptor;
    :cond_6
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@36
    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@39
    move-result v1

    #@3a
    .line 442
    .local v1, "thisFDVal":I
    invoke-static {v7}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@3d
    move-result v6

    #@3e
    .line 443
    .local v6, "targetFDVal":I
    if-ne v1, v6, :cond_7

    #@40
    .line 444
    const-wide/16 v2, -0x4

    #@42
    return-wide v2

    #@43
    .line 446
    :cond_7
    const-wide/16 v8, -0x1

    #@45
    .line 447
    .local v8, "n":J
    const/4 v10, -0x1

    #@46
    .line 449
    .local v10, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@49
    .line 450
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@4b
    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@4e
    move-result v10

    #@4f
    .line 451
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    move-result v0

    #@53
    if-nez v0, :cond_8

    #@55
    .line 452
    const-wide/16 v2, -0x1

    #@57
    .line 471
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@59
    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@5c
    .line 472
    const/4 v0, 0x0

    #@5d
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@60
    .line 452
    return-wide v2

    #@61
    .line 453
    :cond_8
    :try_start_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@64
    move-result-object v0

    #@65
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@68
    .line 455
    :cond_9
    int-to-long v4, p3

    #@69
    move-object v0, p0

    #@6a
    move-wide v2, p1

    #@6b
    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;->transferTo0(IJJI)J

    #@6e
    move-result-wide v8

    #@6f
    .line 456
    const-wide/16 v2, -0x3

    #@71
    cmp-long v0, v8, v2

    #@73
    if-nez v0, :cond_a

    #@75
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@78
    move-result v0

    #@79
    if-nez v0, :cond_9

    #@7b
    .line 457
    :cond_a
    const-wide/16 v2, -0x6

    #@7d
    cmp-long v0, v8, v2

    #@7f
    if-nez v0, :cond_e

    #@81
    .line 458
    instance-of v0, p4, Lsun/nio/ch/SinkChannelImpl;

    #@83
    if-eqz v0, :cond_b

    #@85
    .line 459
    const/4 v0, 0x0

    #@86
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    #@88
    .line 460
    :cond_b
    instance-of v0, p4, Lsun/nio/ch/FileChannelImpl;

    #@8a
    if-eqz v0, :cond_c

    #@8c
    .line 461
    const/4 v0, 0x0

    #@8d
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8f
    .line 462
    :cond_c
    const-wide/16 v2, -0x6

    #@91
    .line 471
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@93
    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@96
    .line 472
    const-wide/16 v4, -0x1

    #@98
    cmp-long v0, v8, v4

    #@9a
    if-lez v0, :cond_d

    #@9c
    const/4 v0, 0x1

    #@9d
    :goto_1
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@a0
    .line 462
    return-wide v2

    #@a1
    .line 472
    :cond_d
    const/4 v0, 0x0

    #@a2
    goto :goto_1

    #@a3
    .line 464
    :cond_e
    const-wide/16 v2, -0x4

    #@a5
    cmp-long v0, v8, v2

    #@a7
    if-nez v0, :cond_10

    #@a9
    .line 466
    const/4 v0, 0x0

    #@aa
    :try_start_2
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ac
    .line 467
    const-wide/16 v2, -0x4

    #@ae
    .line 471
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@b0
    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@b3
    .line 472
    const-wide/16 v4, -0x1

    #@b5
    cmp-long v0, v8, v4

    #@b7
    if-lez v0, :cond_f

    #@b9
    const/4 v0, 0x1

    #@ba
    :goto_2
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@bd
    .line 467
    return-wide v2

    #@be
    .line 472
    :cond_f
    const/4 v0, 0x0

    #@bf
    goto :goto_2

    #@c0
    .line 469
    :cond_10
    :try_start_3
    invoke-static {v8, v9}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c3
    move-result-wide v2

    #@c4
    .line 471
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@c6
    invoke-virtual {v0, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@c9
    .line 472
    const-wide/16 v4, -0x1

    #@cb
    cmp-long v0, v8, v4

    #@cd
    if-lez v0, :cond_11

    #@cf
    const/4 v0, 0x1

    #@d0
    :goto_3
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@d3
    .line 469
    return-wide v2

    #@d4
    .line 472
    :cond_11
    const/4 v0, 0x0

    #@d5
    goto :goto_3

    #@d6
    .line 470
    :catchall_0
    move-exception v0

    #@d7
    .line 471
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@d9
    invoke-virtual {v2, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@dc
    .line 472
    const-wide/16 v2, -0x1

    #@de
    cmp-long v2, v8, v2

    #@e0
    if-lez v2, :cond_12

    #@e2
    const/4 v2, 0x1

    #@e3
    :goto_4
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@e6
    .line 470
    throw v0

    #@e7
    .line 472
    :cond_12
    const/4 v2, 0x0

    #@e8
    goto :goto_4
.end method

.method private transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 17
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 483
    move-object/from16 v0, p5

    #@2
    instance-of v11, v0, Lsun/nio/ch/SelChImpl;

    #@4
    .line 484
    .local v11, "isSelChImpl":Z
    move-object/from16 v0, p5

    #@6
    instance-of v2, v0, Lsun/nio/ch/FileChannelImpl;

    #@8
    if-nez v2, :cond_0

    #@a
    move v2, v11

    #@b
    :goto_0
    if-nez v2, :cond_1

    #@d
    .line 485
    const-wide/16 v2, -0x4

    #@f
    return-wide v2

    #@10
    .line 484
    :cond_0
    const/4 v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 488
    :cond_1
    move-wide/from16 v14, p3

    #@14
    .line 489
    .local v14, "remaining":J
    :goto_1
    const-wide/16 v2, 0x0

    #@16
    cmp-long v2, v14, v2

    #@18
    if-lez v2, :cond_4

    #@1a
    .line 490
    const-wide/32 v2, 0x800000

    #@1d
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@20
    move-result-wide v6

    #@21
    .line 492
    .local v6, "size":J
    :try_start_0
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@23
    move-object/from16 v2, p0

    #@25
    move-wide/from16 v4, p1

    #@27
    invoke-virtual/range {v2 .. v7}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@2a
    move-result-object v8

    #@2b
    .line 495
    .local v8, "dbb":Ljava/nio/MappedByteBuffer;
    :try_start_1
    move-object/from16 v0, p5

    #@2d
    invoke-interface {v0, v8}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    #@30
    move-result v12

    #@31
    .line 496
    .local v12, "n":I
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@33
    if-nez v2, :cond_3

    #@35
    if-ltz v12, :cond_2

    #@37
    const/4 v2, 0x1

    #@38
    :goto_2
    if-nez v2, :cond_3

    #@3a
    new-instance v2, Ljava/lang/AssertionError;

    #@3c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@3f
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 504
    .end local v12    # "n":I
    :catchall_0
    move-exception v2

    #@41
    .line 505
    :try_start_2
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    #@44
    .line 504
    throw v2
    :try_end_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@45
    .line 507
    .end local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    :catch_0
    move-exception v9

    #@46
    .line 510
    .local v9, "e":Ljava/nio/channels/ClosedByInterruptException;
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@48
    if-nez v2, :cond_9

    #@4a
    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_8

    #@50
    const/4 v2, 0x0

    #@51
    :goto_3
    if-nez v2, :cond_9

    #@53
    new-instance v2, Ljava/lang/AssertionError;

    #@55
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@58
    throw v2

    #@59
    .line 496
    .end local v9    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .restart local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .restart local v12    # "n":I
    :cond_2
    const/4 v2, 0x0

    #@5a
    goto :goto_2

    #@5b
    .line 497
    :cond_3
    int-to-long v2, v12

    #@5c
    sub-long/2addr v14, v2

    #@5d
    .line 498
    if-eqz v11, :cond_5

    #@5f
    .line 505
    :try_start_3
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@62
    .line 524
    .end local v6    # "size":J
    .end local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .end local v12    # "n":I
    :cond_4
    sub-long v2, p3, v14

    #@64
    return-wide v2

    #@65
    .line 502
    .restart local v6    # "size":J
    .restart local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .restart local v12    # "n":I
    :cond_5
    :try_start_4
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@67
    if-nez v2, :cond_7

    #@69
    if-lez v12, :cond_6

    #@6b
    const/4 v2, 0x1

    #@6c
    :goto_4
    if-nez v2, :cond_7

    #@6e
    new-instance v2, Ljava/lang/AssertionError;

    #@70
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@73
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@74
    :cond_6
    const/4 v2, 0x0

    #@75
    goto :goto_4

    #@76
    .line 503
    :cond_7
    int-to-long v2, v12

    #@77
    add-long p1, p1, v2

    #@79
    .line 505
    :try_start_5
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_5
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@7c
    goto :goto_1

    #@7d
    .line 517
    .end local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .end local v12    # "n":I
    :catch_1
    move-exception v10

    #@7e
    .line 519
    .local v10, "ioe":Ljava/io/IOException;
    cmp-long v2, v14, p3

    #@80
    if-nez v2, :cond_4

    #@82
    .line 520
    throw v10

    #@83
    .line 510
    .end local v10    # "ioe":Ljava/io/IOException;
    .restart local v9    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :cond_8
    const/4 v2, 0x1

    #@84
    goto :goto_3

    #@85
    .line 512
    :cond_9
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    #@88
    .line 516
    :goto_5
    throw v9

    #@89
    .line 513
    :catch_2
    move-exception v13

    #@8a
    .line 514
    .local v13, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v9, v13}, Ljava/nio/channels/ClosedByInterruptException;->addSuppressed(Ljava/lang/Throwable;)V

    #@8d
    goto :goto_5
.end method

.method private static unmap(Ljava/nio/MappedByteBuffer;)V
    .locals 1
    .param p0, "bb"    # Ljava/nio/MappedByteBuffer;

    #@0
    .prologue
    .line 830
    check-cast p0, Lsun/nio/ch/DirectBuffer;

    #@2
    .end local p0    # "bb":Ljava/nio/MappedByteBuffer;
    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    #@5
    move-result-object v0

    #@6
    .line 831
    .local v0, "cl":Lsun/misc/Cleaner;
    if-eqz v0, :cond_0

    #@8
    .line 832
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    #@b
    .line 829
    :cond_0
    return-void
.end method

.method private static native unmap0(JJ)I
.end method

.method private writeInternal(Ljava/nio/ByteBuffer;J)I
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 750
    sget-boolean v5, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@4
    if-nez v5, :cond_1

    #@6
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@8
    invoke-virtual {v5}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@10
    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@13
    move-result v5

    #@14
    :goto_0
    if-nez v5, :cond_1

    #@16
    new-instance v3, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v3

    #@1c
    :cond_0
    move v5, v3

    #@1d
    goto :goto_0

    #@1e
    .line 751
    :cond_1
    const/4 v0, 0x0

    #@1f
    .line 752
    .local v0, "n":I
    const/4 v1, -0x1

    #@20
    .line 753
    .local v1, "ti":I
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    #@22
    invoke-static {v5}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    .line 755
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@29
    .line 756
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@2b
    invoke-virtual {v5}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@2e
    move-result v1

    #@2f
    .line 757
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v5

    #@33
    if-nez v5, :cond_3

    #@35
    .line 758
    const/4 v3, -0x1

    #@36
    .line 764
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@38
    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@3b
    .line 765
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@3e
    .line 766
    int-to-long v4, v4

    #@3f
    invoke-static {v2, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@42
    .line 767
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@44
    if-nez v4, :cond_2

    #@46
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@49
    move-result v4

    #@4a
    if-nez v4, :cond_2

    #@4c
    new-instance v3, Ljava/lang/AssertionError;

    #@4e
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@51
    throw v3

    #@52
    .line 758
    :cond_2
    return v3

    #@53
    .line 760
    :cond_3
    :try_start_1
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@55
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@57
    invoke-static {v5, p1, p2, p3, v6}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@5a
    move-result v0

    #@5b
    .line 761
    const/4 v5, -0x3

    #@5c
    if-ne v0, v5, :cond_4

    #@5e
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@61
    move-result v5

    #@62
    if-nez v5, :cond_3

    #@64
    .line 762
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    move-result v5

    #@68
    .line 764
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@6a
    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@6d
    .line 765
    if-lez v0, :cond_6

    #@6f
    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@72
    .line 766
    if-lez v0, :cond_5

    #@74
    move v4, v0

    #@75
    :cond_5
    int-to-long v6, v4

    #@76
    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@79
    .line 767
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@7b
    if-nez v3, :cond_7

    #@7d
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@80
    move-result v3

    #@81
    if-nez v3, :cond_7

    #@83
    new-instance v3, Ljava/lang/AssertionError;

    #@85
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@88
    throw v3

    #@89
    :cond_6
    move v3, v4

    #@8a
    .line 765
    goto :goto_1

    #@8b
    .line 762
    :cond_7
    return v5

    #@8c
    .line 763
    :catchall_0
    move-exception v5

    #@8d
    .line 764
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@8f
    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@92
    .line 765
    if-lez v0, :cond_9

    #@94
    :goto_2
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@97
    .line 766
    if-lez v0, :cond_8

    #@99
    move v4, v0

    #@9a
    :cond_8
    int-to-long v6, v4

    #@9b
    invoke-static {v2, v6, v7}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@9e
    .line 767
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@a0
    if-nez v3, :cond_a

    #@a2
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@a5
    move-result v3

    #@a6
    if-nez v3, :cond_a

    #@a8
    new-instance v3, Ljava/lang/AssertionError;

    #@aa
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@ad
    throw v3

    #@ae
    :cond_9
    move v3, v4

    #@af
    .line 765
    goto :goto_2

    #@b0
    .line 763
    :cond_a
    throw v5
.end method


# virtual methods
.method public force(Z)V
    .locals 7
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 388
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@6
    .line 389
    const/4 v0, -0x1

    #@7
    .line 390
    .local v0, "rv":I
    const/4 v1, -0x1

    #@8
    .line 392
    .local v1, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@b
    .line 393
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@d
    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@10
    move-result v1

    #@11
    .line 394
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_1

    #@17
    .line 400
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@19
    invoke-virtual {v2, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@1c
    .line 401
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@1f
    .line 402
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@21
    if-nez v2, :cond_0

    #@23
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_0

    #@29
    new-instance v2, Ljava/lang/AssertionError;

    #@2b
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2e
    throw v2

    #@2f
    .line 395
    :cond_0
    return-void

    #@30
    .line 397
    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@32
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@34
    invoke-virtual {v4, v5, p1}, Lsun/nio/ch/FileDispatcher;->force(Ljava/io/FileDescriptor;Z)I

    #@37
    move-result v0

    #@38
    .line 398
    const/4 v4, -0x3

    #@39
    if-ne v0, v4, :cond_2

    #@3b
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    move-result v4

    #@3f
    if-nez v4, :cond_1

    #@41
    .line 400
    :cond_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@43
    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@46
    .line 401
    if-le v0, v6, :cond_3

    #@48
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@4b
    .line 402
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@4d
    if-nez v2, :cond_6

    #@4f
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@52
    move-result v2

    #@53
    if-nez v2, :cond_6

    #@55
    new-instance v2, Ljava/lang/AssertionError;

    #@57
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@5a
    throw v2

    #@5b
    :cond_3
    move v2, v3

    #@5c
    .line 401
    goto :goto_0

    #@5d
    .line 399
    :catchall_0
    move-exception v4

    #@5e
    .line 400
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@60
    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@63
    .line 401
    if-le v0, v6, :cond_4

    #@65
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@68
    .line 402
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@6a
    if-nez v2, :cond_5

    #@6c
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@6f
    move-result v2

    #@70
    if-nez v2, :cond_5

    #@72
    new-instance v2, Ljava/lang/AssertionError;

    #@74
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@77
    throw v2

    #@78
    :cond_4
    move v2, v3

    #@79
    .line 401
    goto :goto_1

    #@7a
    .line 399
    :cond_5
    throw v4

    #@7b
    .line 387
    :cond_6
    return-void
.end method

.method protected implCloseChannel()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 118
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    #@6
    invoke-virtual {v2}, Lsun/nio/ch/FileLockTable;->removeAll()Ljava/util/List;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v9

    #@e
    .local v9, "fl$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v8

    #@18
    check-cast v8, Ljava/nio/channels/FileLock;

    #@1a
    .line 119
    .local v8, "fl":Ljava/nio/channels/FileLock;
    monitor-enter v8

    #@1b
    .line 120
    :try_start_0
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->isValid()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 121
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@23
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@25
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->position()J

    #@28
    move-result-wide v4

    #@29
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->size()J

    #@2c
    move-result-wide v6

    #@2d
    invoke-virtual/range {v2 .. v7}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V

    #@30
    .line 122
    move-object v0, v8

    #@31
    check-cast v0, Lsun/nio/ch/FileLockImpl;

    #@33
    move-object v2, v0

    #@34
    invoke-virtual {v2}, Lsun/nio/ch/FileLockImpl;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    :cond_0
    monitor-exit v8

    #@38
    goto :goto_0

    #@39
    .line 119
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v8

    #@3b
    throw v2

    #@3c
    .line 128
    .end local v8    # "fl":Ljava/nio/channels/FileLock;
    .end local v9    # "fl$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@3e
    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->signalAndWait()V

    #@41
    .line 130
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    #@43
    if-eqz v2, :cond_2

    #@45
    .line 137
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    #@47
    check-cast v2, Ljava/io/Closeable;

    #@49
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    #@4c
    .line 115
    :goto_1
    return-void

    #@4d
    .line 139
    :cond_2
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@4f
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@51
    invoke-virtual {v2, v3}, Lsun/nio/ch/FileDispatcher;->close(Ljava/io/FileDescriptor;)V

    #@54
    goto :goto_1
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 15
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1009
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@3
    .line 1010
    if-eqz p5, :cond_0

    #@5
    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    #@7
    if-eqz v1, :cond_3

    #@9
    .line 1012
    :cond_0
    if-nez p5, :cond_1

    #@b
    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@d
    if-eqz v1, :cond_4

    #@f
    .line 1014
    :cond_1
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    #@11
    move-object v1, p0

    #@12
    move-wide/from16 v2, p1

    #@14
    move-wide/from16 v4, p3

    #@16
    move/from16 v6, p5

    #@18
    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    #@1b
    .line 1015
    .local v0, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    #@1e
    move-result-object v11

    #@1f
    .line 1016
    .local v11, "flt":Lsun/nio/ch/FileLockTable;
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    #@22
    .line 1017
    const/4 v9, 0x0

    #@23
    .line 1018
    .local v9, "completed":Z
    const/4 v13, -0x1

    #@24
    .line 1020
    .local v13, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@27
    .line 1021
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@29
    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@2c
    move-result v13

    #@2d
    .line 1022
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_5

    #@33
    .line 1023
    const/4 v1, 0x0

    #@34
    .line 1039
    if-nez v9, :cond_2

    #@36
    .line 1040
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    #@39
    .line 1041
    :cond_2
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@3b
    invoke-virtual {v3, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@3e
    .line 1043
    :try_start_1
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_0

    #@41
    .line 1023
    return-object v1

    #@42
    .line 1011
    .end local v0    # "fli":Lsun/nio/ch/FileLockImpl;
    .end local v9    # "completed":Z
    .end local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v13    # "ti":I
    :cond_3
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    #@44
    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@47
    throw v1

    #@48
    .line 1013
    :cond_4
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    #@4a
    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@4d
    throw v1

    #@4e
    .line 1044
    .restart local v0    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v9    # "completed":Z
    .restart local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v13    # "ti":I
    :catch_0
    move-exception v10

    #@4f
    .line 1045
    .local v10, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    #@51
    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    #@54
    throw v1

    #@55
    .line 1026
    .end local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :cond_5
    :try_start_2
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@57
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@59
    const/4 v3, 0x1

    #@5a
    move-wide/from16 v4, p1

    #@5c
    move-wide/from16 v6, p3

    #@5e
    move/from16 v8, p5

    #@60
    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    #@63
    move-result v12

    #@64
    .line 1027
    .local v12, "n":I
    const/4 v1, 0x2

    #@65
    if-ne v12, v1, :cond_6

    #@67
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@6a
    move-result v1

    #@6b
    if-nez v1, :cond_5

    #@6d
    .line 1028
    :cond_6
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_a

    #@73
    .line 1029
    const/4 v1, 0x1

    #@74
    if-ne v12, v1, :cond_9

    #@76
    .line 1030
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@78
    if-nez v1, :cond_8

    #@7a
    if-nez p5, :cond_8

    #@7c
    new-instance v1, Ljava/lang/AssertionError;

    #@7e
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@81
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@82
    .line 1038
    .end local v12    # "n":I
    :catchall_0
    move-exception v1

    #@83
    .line 1039
    if-nez v9, :cond_7

    #@85
    .line 1040
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    #@88
    .line 1041
    :cond_7
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@8a
    invoke-virtual {v3, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@8d
    .line 1043
    :try_start_3
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_2

    #@90
    .line 1038
    throw v1

    #@91
    .line 1031
    .restart local v12    # "n":I
    :cond_8
    :try_start_4
    new-instance v2, Lsun/nio/ch/FileLockImpl;

    #@93
    .line 1032
    const/4 v8, 0x0

    #@94
    move-object v3, p0

    #@95
    move-wide/from16 v4, p1

    #@97
    move-wide/from16 v6, p3

    #@99
    .line 1031
    invoke-direct/range {v2 .. v8}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    #@9c
    .line 1033
    .local v2, "fli2":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {v11, v0, v2}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9f
    .line 1034
    move-object v0, v2

    #@a0
    .line 1036
    .end local v2    # "fli2":Lsun/nio/ch/FileLockImpl;
    :cond_9
    const/4 v9, 0x1

    #@a1
    .line 1039
    :cond_a
    if-nez v9, :cond_b

    #@a3
    .line 1040
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    #@a6
    .line 1041
    :cond_b
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@a8
    invoke-virtual {v1, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@ab
    .line 1043
    :try_start_5
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_5
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_1

    #@ae
    .line 1048
    return-object v0

    #@af
    .line 1044
    :catch_1
    move-exception v10

    #@b0
    .line 1045
    .restart local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    #@b2
    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    #@b5
    throw v1

    #@b6
    .line 1044
    .end local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .end local v12    # "n":I
    :catch_2
    move-exception v10

    #@b7
    .line 1045
    .restart local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    #@b9
    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    #@bc
    throw v1
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 38
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 842
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@3
    .line 843
    const-wide/16 v2, 0x0

    #@5
    cmp-long v2, p2, v2

    #@7
    if-gez v2, :cond_0

    #@9
    .line 844
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v3, "Negative position"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 845
    :cond_0
    const-wide/16 v2, 0x0

    #@14
    cmp-long v2, p4, v2

    #@16
    if-gez v2, :cond_1

    #@18
    .line 846
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v3, "Negative size"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 847
    :cond_1
    add-long v2, p2, p4

    #@23
    const-wide/16 v4, 0x0

    #@25
    cmp-long v2, v2, v4

    #@27
    if-gez v2, :cond_2

    #@29
    .line 848
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v3, "Position + size overflow"

    #@2e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 849
    :cond_2
    const-wide/32 v2, 0x7fffffff

    #@35
    cmp-long v2, p4, v2

    #@37
    if-lez v2, :cond_3

    #@39
    .line 850
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3b
    const-string/jumbo v3, "Size exceeds Integer.MAX_VALUE"

    #@3e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2

    #@42
    .line 851
    :cond_3
    const/4 v9, -0x1

    #@43
    .line 852
    .local v9, "imode":I
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@45
    move-object/from16 v0, p1

    #@47
    if-ne v0, v2, :cond_5

    #@49
    .line 853
    const/4 v9, 0x0

    #@4a
    .line 858
    :cond_4
    :goto_0
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@4c
    if-nez v2, :cond_8

    #@4e
    if-ltz v9, :cond_7

    #@50
    const/4 v2, 0x1

    #@51
    :goto_1
    if-nez v2, :cond_8

    #@53
    new-instance v2, Ljava/lang/AssertionError;

    #@55
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@58
    throw v2

    #@59
    .line 854
    :cond_5
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    #@5b
    move-object/from16 v0, p1

    #@5d
    if-ne v0, v2, :cond_6

    #@5f
    .line 855
    const/4 v9, 0x1

    #@60
    goto :goto_0

    #@61
    .line 856
    :cond_6
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    #@63
    move-object/from16 v0, p1

    #@65
    if-ne v0, v2, :cond_4

    #@67
    .line 857
    const/4 v9, 0x2

    #@68
    goto :goto_0

    #@69
    .line 858
    :cond_7
    const/4 v2, 0x0

    #@6a
    goto :goto_1

    #@6b
    .line 859
    :cond_8
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@6d
    move-object/from16 v0, p1

    #@6f
    if-eq v0, v2, :cond_9

    #@71
    move-object/from16 v0, p0

    #@73
    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@75
    if-eqz v2, :cond_a

    #@77
    .line 861
    :cond_9
    move-object/from16 v0, p0

    #@79
    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    #@7b
    if-nez v2, :cond_b

    #@7d
    .line 862
    new-instance v2, Ljava/nio/channels/NonReadableChannelException;

    #@7f
    invoke-direct {v2}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@82
    throw v2

    #@83
    .line 860
    :cond_a
    new-instance v2, Ljava/nio/channels/NonWritableChannelException;

    #@85
    invoke-direct {v2}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@88
    throw v2

    #@89
    .line 864
    :cond_b
    const-wide/16 v16, -0x1

    #@8b
    .line 865
    .local v16, "addr":J
    const/16 v33, -0x1

    #@8d
    .line 867
    .local v33, "ti":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@90
    .line 868
    move-object/from16 v0, p0

    #@92
    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@94
    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@97
    move-result v33

    #@98
    .line 869
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9b
    move-result v2

    #@9c
    if-nez v2, :cond_c

    #@9e
    .line 870
    const/4 v2, 0x0

    #@9f
    .line 950
    move-object/from16 v0, p0

    #@a1
    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@a3
    move/from16 v0, v33

    #@a5
    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@a8
    .line 951
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    #@ab
    move-result v3

    #@ac
    move-object/from16 v0, p0

    #@ae
    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@b1
    .line 870
    return-object v2

    #@b2
    .line 871
    :cond_c
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->size()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b5
    move-result-wide v2

    #@b6
    add-long v4, p2, p4

    #@b8
    cmp-long v2, v2, v4

    #@ba
    if-gez v2, :cond_e

    #@bc
    .line 878
    const/16 v32, 0x0

    #@be
    .line 883
    .local v32, "rv":I
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    #@c0
    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@c2
    move-object/from16 v0, p0

    #@c4
    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@c6
    add-long v4, p2, p4

    #@c8
    invoke-virtual {v2, v3, v4, v5}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cb
    move-result v32

    #@cc
    .line 899
    const/4 v2, -0x3

    #@cd
    move/from16 v0, v32

    #@cf
    if-ne v0, v2, :cond_e

    #@d1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@d4
    move-result v2

    #@d5
    if-nez v2, :cond_d

    #@d7
    .line 901
    .end local v32    # "rv":I
    :cond_e
    :goto_2
    const-wide/16 v2, 0x0

    #@d9
    cmp-long v2, p4, v2

    #@db
    if-nez v2, :cond_11

    #@dd
    .line 902
    const-wide/16 v16, 0x0

    #@df
    .line 904
    new-instance v6, Ljava/io/FileDescriptor;

    #@e1
    invoke-direct {v6}, Ljava/io/FileDescriptor;-><init>()V

    #@e4
    .line 905
    .local v6, "dummy":Ljava/io/FileDescriptor;
    new-instance v2, Ljava/nio/DirectByteBuffer;

    #@e6
    const-wide/16 v4, 0x0

    #@e8
    .line 906
    move-object/from16 v0, p0

    #@ea
    iget-boolean v3, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@ec
    if-eqz v3, :cond_f

    #@ee
    if-nez v9, :cond_10

    #@f0
    :cond_f
    const/4 v8, 0x1

    #@f1
    .line 905
    :goto_3
    const/4 v3, 0x0

    #@f2
    const/4 v7, 0x0

    #@f3
    invoke-direct/range {v2 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@f6
    .line 950
    move-object/from16 v0, p0

    #@f8
    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@fa
    move/from16 v0, v33

    #@fc
    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@ff
    .line 951
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    #@102
    move-result v3

    #@103
    move-object/from16 v0, p0

    #@105
    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@108
    .line 905
    return-object v2

    #@109
    .line 884
    .end local v6    # "dummy":Ljava/io/FileDescriptor;
    .restart local v32    # "rv":I
    :catch_0
    move-exception v31

    #@10a
    .line 890
    .local v31, "r":Ljava/io/IOException;
    :try_start_4
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@110
    invoke-interface {v2, v3}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@113
    move-result-object v2

    #@114
    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    #@116
    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    #@119
    move-result v2

    #@11a
    if-eqz v2, :cond_e

    #@11c
    .line 891
    throw v31
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@11d
    .line 893
    :catch_1
    move-exception v14

    #@11e
    .line 894
    .local v14, "e":Landroid/system/ErrnoException;
    :try_start_5
    invoke-virtual {v14}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@121
    goto :goto_2

    #@122
    .line 949
    .end local v14    # "e":Landroid/system/ErrnoException;
    .end local v31    # "r":Ljava/io/IOException;
    .end local v32    # "rv":I
    :catchall_0
    move-exception v2

    #@123
    .line 950
    move-object/from16 v0, p0

    #@125
    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@127
    move/from16 v0, v33

    #@129
    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@12c
    .line 951
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    #@12f
    move-result v3

    #@130
    move-object/from16 v0, p0

    #@132
    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@135
    .line 949
    throw v2

    #@136
    .line 906
    .restart local v6    # "dummy":Ljava/io/FileDescriptor;
    :cond_10
    const/4 v8, 0x0

    #@137
    goto :goto_3

    #@138
    .line 909
    .end local v6    # "dummy":Ljava/io/FileDescriptor;
    :cond_11
    :try_start_6
    sget-wide v2, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    #@13a
    rem-long v2, p2, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@13c
    long-to-int v0, v2

    #@13d
    move/from16 v30, v0

    #@13f
    .line 910
    .local v30, "pagePosition":I
    move/from16 v0, v30

    #@141
    int-to-long v2, v0

    #@142
    sub-long v10, p2, v2

    #@144
    .line 911
    .local v10, "mapPosition":J
    move/from16 v0, v30

    #@146
    int-to-long v2, v0

    #@147
    add-long v12, p4, v2

    #@149
    .line 914
    .local v12, "mapSize":J
    :try_start_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@14c
    move-result-object v2

    #@14d
    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@150
    move-object/from16 v8, p0

    #@152
    .line 915
    invoke-direct/range {v8 .. v13}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@155
    move-result-wide v16

    #@156
    .line 937
    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    #@158
    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@15a
    move-object/from16 v0, p0

    #@15c
    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@15e
    invoke-virtual {v2, v3}, Lsun/nio/ch/FileDispatcher;->duplicateForMapping(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@161
    move-result-object v21

    #@162
    .line 943
    .local v21, "mfd":Ljava/io/FileDescriptor;
    :try_start_9
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@164
    if-nez v2, :cond_12

    #@166
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    #@169
    move-result v2

    #@16a
    if-nez v2, :cond_12

    #@16c
    new-instance v2, Ljava/lang/AssertionError;

    #@16e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@171
    throw v2

    #@172
    .line 916
    .end local v21    # "mfd":Ljava/io/FileDescriptor;
    :catch_2
    move-exception v34

    #@173
    .line 919
    .local v34, "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@176
    .line 921
    const-wide/16 v2, 0x64

    #@178
    :try_start_a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@17b
    :goto_5
    move-object/from16 v8, p0

    #@17d
    .line 926
    :try_start_b
    invoke-direct/range {v8 .. v13}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@180
    move-result-wide v16

    #@181
    goto :goto_4

    #@182
    .line 922
    :catch_3
    move-exception v35

    #@183
    .line 923
    .local v35, "y":Ljava/lang/InterruptedException;
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@186
    move-result-object v2

    #@187
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@18a
    goto :goto_5

    #@18b
    .line 927
    .end local v35    # "y":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v36

    #@18c
    .line 929
    .local v36, "y":Ljava/lang/OutOfMemoryError;
    new-instance v2, Ljava/io/IOException;

    #@18e
    const-string/jumbo v3, "Map failed"

    #@191
    move-object/from16 v0, v36

    #@193
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@196
    throw v2

    #@197
    .line 938
    .end local v34    # "x":Ljava/lang/OutOfMemoryError;
    .end local v36    # "y":Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v29

    #@198
    .line 939
    .local v29, "ioe":Ljava/io/IOException;
    move-wide/from16 v0, v16

    #@19a
    invoke-static {v0, v1, v12, v13}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    #@19d
    .line 940
    throw v29

    #@19e
    .line 944
    .end local v29    # "ioe":Ljava/io/IOException;
    .restart local v21    # "mfd":Ljava/io/FileDescriptor;
    :cond_12
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@1a0
    if-nez v2, :cond_14

    #@1a2
    sget-wide v2, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    #@1a4
    rem-long v2, v16, v2

    #@1a6
    const-wide/16 v4, 0x0

    #@1a8
    cmp-long v2, v2, v4

    #@1aa
    if-nez v2, :cond_13

    #@1ac
    const/4 v2, 0x1

    #@1ad
    :goto_6
    if-nez v2, :cond_14

    #@1af
    new-instance v2, Ljava/lang/AssertionError;

    #@1b1
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1b4
    throw v2

    #@1b5
    :cond_13
    const/4 v2, 0x0

    #@1b6
    goto :goto_6

    #@1b7
    .line 945
    :cond_14
    move-wide/from16 v0, p4

    #@1b9
    long-to-int v0, v0

    #@1ba
    move/from16 v20, v0

    #@1bc
    .line 946
    .local v20, "isize":I
    new-instance v15, Lsun/nio/ch/FileChannelImpl$Unmapper;

    #@1be
    const/16 v22, 0x0

    #@1c0
    move-wide/from16 v18, v12

    #@1c2
    invoke-direct/range {v15 .. v22}, Lsun/nio/ch/FileChannelImpl$Unmapper;-><init>(JJILjava/io/FileDescriptor;Lsun/nio/ch/FileChannelImpl$Unmapper;)V

    #@1c5
    .line 947
    .local v15, "um":Lsun/nio/ch/FileChannelImpl$Unmapper;
    new-instance v22, Ljava/nio/DirectByteBuffer;

    #@1c7
    move/from16 v0, v30

    #@1c9
    int-to-long v2, v0

    #@1ca
    add-long v24, v16, v2

    #@1cc
    .line 948
    move-object/from16 v0, p0

    #@1ce
    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@1d0
    if-eqz v2, :cond_15

    #@1d2
    if-nez v9, :cond_16

    #@1d4
    :cond_15
    const/16 v28, 0x1

    #@1d6
    :goto_7
    move/from16 v23, v20

    #@1d8
    move-object/from16 v26, v21

    #@1da
    move-object/from16 v27, v15

    #@1dc
    .line 947
    invoke-direct/range {v22 .. v28}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@1df
    .line 950
    move-object/from16 v0, p0

    #@1e1
    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@1e3
    move/from16 v0, v33

    #@1e5
    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@1e8
    .line 951
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    #@1eb
    move-result v2

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    invoke-virtual {v0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@1f1
    .line 947
    return-object v22

    #@1f2
    .line 948
    :cond_16
    const/16 v28, 0x0

    #@1f4
    goto :goto_7
.end method

.method public position()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const-wide/16 v10, -0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 259
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@7
    .line 260
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@9
    monitor-enter v6

    #@a
    .line 261
    const-wide/16 v0, -0x1

    #@c
    .line 262
    .local v0, "p":J
    const/4 v2, -0x1

    #@d
    .line 264
    .local v2, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@10
    .line 265
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@12
    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@15
    move-result v2

    #@16
    .line 266
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_1

    #@1c
    .line 277
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@1e
    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@21
    .line 278
    const/4 v3, 0x0

    #@22
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@25
    .line 279
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@27
    if-nez v3, :cond_0

    #@29
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_0

    #@2f
    new-instance v3, Ljava/lang/AssertionError;

    #@31
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@34
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 260
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v6

    #@37
    throw v3

    #@38
    .line 267
    :cond_0
    const-wide/16 v4, 0x0

    #@3a
    monitor-exit v6

    #@3b
    return-wide v4

    #@3c
    .line 268
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    #@3e
    if-eqz v3, :cond_2

    #@40
    .line 269
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@43
    move-result-object v3

    #@44
    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    #@47
    .line 273
    :cond_2
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    #@49
    if-eqz v3, :cond_4

    #@4b
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@4d
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@4f
    invoke-virtual {v3, v7}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    #@52
    move-result-wide v0

    #@53
    .line 274
    :goto_0
    const-wide/16 v8, -0x3

    #@55
    cmp-long v3, v0, v8

    #@57
    if-nez v3, :cond_3

    #@59
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@5c
    move-result v3

    #@5d
    if-nez v3, :cond_2

    #@5f
    .line 275
    :cond_3
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@62
    move-result-wide v8

    #@63
    .line 277
    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@65
    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@68
    .line 278
    cmp-long v3, v0, v10

    #@6a
    if-lez v3, :cond_5

    #@6c
    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@6f
    .line 279
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@71
    if-nez v3, :cond_6

    #@73
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@76
    move-result v3

    #@77
    if-nez v3, :cond_6

    #@79
    new-instance v3, Ljava/lang/AssertionError;

    #@7b
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@7e
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7f
    .line 273
    :cond_4
    :try_start_4
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@81
    const-wide/16 v8, -0x1

    #@83
    invoke-direct {p0, v3, v8, v9}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@86
    move-result-wide v0

    #@87
    goto :goto_0

    #@88
    :cond_5
    move v4, v5

    #@89
    .line 278
    goto :goto_1

    #@8a
    :cond_6
    monitor-exit v6

    #@8b
    .line 275
    return-wide v8

    #@8c
    .line 276
    :catchall_1
    move-exception v3

    #@8d
    .line 277
    :try_start_5
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@8f
    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@92
    .line 278
    cmp-long v7, v0, v10

    #@94
    if-lez v7, :cond_7

    #@96
    :goto_2
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@99
    .line 279
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@9b
    if-nez v4, :cond_8

    #@9d
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@a0
    move-result v4

    #@a1
    if-nez v4, :cond_8

    #@a3
    new-instance v3, Ljava/lang/AssertionError;

    #@a5
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@a8
    throw v3

    #@a9
    :cond_7
    move v4, v5

    #@aa
    .line 278
    goto :goto_2

    #@ab
    .line 276
    :cond_8
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 13
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, -0x1

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 285
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@7
    .line 286
    const-wide/16 v6, 0x0

    #@9
    cmp-long v3, p1, v6

    #@b
    if-gez v3, :cond_0

    #@d
    .line 287
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@12
    throw v3

    #@13
    .line 288
    :cond_0
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@15
    monitor-enter v6

    #@16
    .line 289
    const-wide/16 v0, -0x1

    #@18
    .line 290
    .local v0, "p":J
    const/4 v2, -0x1

    #@19
    .line 292
    .local v2, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@1c
    .line 293
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@1e
    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@21
    move-result v2

    #@22
    .line 294
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_2

    #@28
    .line 302
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@2a
    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@2d
    .line 303
    const/4 v3, 0x0

    #@2e
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@31
    .line 304
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@33
    if-nez v3, :cond_1

    #@35
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@38
    move-result v3

    #@39
    if-nez v3, :cond_1

    #@3b
    new-instance v3, Ljava/lang/AssertionError;

    #@3d
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@40
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .line 288
    :catchall_0
    move-exception v3

    #@42
    monitor-exit v6

    #@43
    throw v3

    #@44
    .line 295
    :cond_1
    const/4 v3, 0x0

    #@45
    monitor-exit v6

    #@46
    return-object v3

    #@47
    .line 296
    :cond_2
    :try_start_2
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@4a
    move-result-object v3

    #@4b
    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    #@4e
    .line 298
    :cond_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@50
    invoke-direct {p0, v3, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    #@53
    move-result-wide v0

    #@54
    .line 299
    const-wide/16 v8, -0x3

    #@56
    cmp-long v3, v0, v8

    #@58
    if-nez v3, :cond_4

    #@5a
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5d
    move-result v3

    #@5e
    if-nez v3, :cond_3

    #@60
    .line 302
    :cond_4
    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@62
    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@65
    .line 303
    cmp-long v3, v0, v10

    #@67
    if-lez v3, :cond_5

    #@69
    :goto_0
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@6c
    .line 304
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@6e
    if-nez v3, :cond_6

    #@70
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@73
    move-result v3

    #@74
    if-nez v3, :cond_6

    #@76
    new-instance v3, Ljava/lang/AssertionError;

    #@78
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@7b
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7c
    :cond_5
    move v4, v5

    #@7d
    .line 303
    goto :goto_0

    #@7e
    :cond_6
    monitor-exit v6

    #@7f
    .line 300
    return-object p0

    #@80
    .line 301
    :catchall_1
    move-exception v3

    #@81
    .line 302
    :try_start_4
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@83
    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@86
    .line 303
    cmp-long v7, v0, v10

    #@88
    if-lez v7, :cond_7

    #@8a
    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@8d
    .line 304
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@8f
    if-nez v4, :cond_8

    #@91
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@94
    move-result v4

    #@95
    if-nez v4, :cond_8

    #@97
    new-instance v3, Ljava/lang/AssertionError;

    #@99
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@9c
    throw v3

    #@9d
    :cond_7
    move v4, v5

    #@9e
    .line 303
    goto :goto_1

    #@9f
    .line 301
    :cond_8
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 145
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@5
    .line 146
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    #@7
    if-nez v3, :cond_0

    #@9
    .line 147
    new-instance v3, Ljava/nio/channels/NonReadableChannelException;

    #@b
    invoke-direct {v3}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@e
    throw v3

    #@f
    .line 148
    :cond_0
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@11
    monitor-enter v7

    #@12
    .line 149
    const/4 v0, 0x0

    #@13
    .line 150
    .local v0, "n":I
    const/4 v1, -0x1

    #@14
    .line 151
    .local v1, "ti":I
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    #@16
    invoke-static {v3}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v2

    #@1a
    .line 153
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@1d
    .line 154
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@1f
    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@22
    move-result v1

    #@23
    .line 155
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_2

    #@29
    .line 162
    :try_start_2
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@2b
    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@2e
    .line 163
    int-to-long v8, v4

    #@2f
    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@32
    .line 164
    const/4 v3, 0x0

    #@33
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@36
    .line 165
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@38
    if-nez v3, :cond_1

    #@3a
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@3d
    move-result v3

    #@3e
    if-nez v3, :cond_1

    #@40
    new-instance v3, Ljava/lang/AssertionError;

    #@42
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@45
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 148
    .end local v2    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    #@47
    monitor-exit v7

    #@48
    throw v3

    #@49
    .restart local v2    # "traceContext":Ljava/lang/Object;
    :cond_1
    monitor-exit v7

    #@4a
    .line 156
    return v4

    #@4b
    .line 158
    :cond_2
    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@4d
    const-wide/16 v8, -0x1

    #@4f
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@51
    invoke-static {v3, p1, v8, v9, v6}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@54
    move-result v0

    #@55
    .line 159
    const/4 v3, -0x3

    #@56
    if-ne v0, v3, :cond_3

    #@58
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@5b
    move-result v3

    #@5c
    if-nez v3, :cond_2

    #@5e
    .line 160
    :cond_3
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@61
    move-result v6

    #@62
    .line 162
    :try_start_4
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@64
    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@67
    .line 163
    if-lez v0, :cond_4

    #@69
    move v3, v0

    #@6a
    :goto_0
    int-to-long v8, v3

    #@6b
    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@6e
    .line 164
    if-lez v0, :cond_5

    #@70
    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@73
    .line 165
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@75
    if-nez v3, :cond_6

    #@77
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@7a
    move-result v3

    #@7b
    if-nez v3, :cond_6

    #@7d
    new-instance v3, Ljava/lang/AssertionError;

    #@7f
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@82
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@83
    :cond_4
    move v3, v4

    #@84
    .line 163
    goto :goto_0

    #@85
    :cond_5
    move v5, v4

    #@86
    .line 164
    goto :goto_1

    #@87
    :cond_6
    monitor-exit v7

    #@88
    .line 160
    return v6

    #@89
    .line 161
    :catchall_1
    move-exception v3

    #@8a
    .line 162
    :try_start_5
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@8c
    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@8f
    .line 163
    if-lez v0, :cond_8

    #@91
    move v6, v0

    #@92
    :goto_2
    int-to-long v8, v6

    #@93
    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@96
    .line 164
    if-lez v0, :cond_7

    #@98
    move v4, v5

    #@99
    :cond_7
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@9c
    .line 165
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@9e
    if-nez v4, :cond_9

    #@a0
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@a3
    move-result v4

    #@a4
    if-nez v4, :cond_9

    #@a6
    new-instance v3, Ljava/lang/AssertionError;

    #@a8
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@ab
    throw v3

    #@ac
    :cond_8
    move v6, v4

    #@ad
    .line 163
    goto :goto_2

    #@ae
    .line 161
    :cond_9
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 694
    if-nez p1, :cond_0

    #@2
    .line 695
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 696
    :cond_0
    const-wide/16 v0, 0x0

    #@a
    cmp-long v0, p2, v0

    #@c
    if-gez v0, :cond_1

    #@e
    .line 697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "Negative position"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 698
    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 699
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    #@1d
    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@20
    throw v0

    #@21
    .line 700
    :cond_2
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@24
    .line 701
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@26
    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 702
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@2e
    monitor-enter v0

    #@2f
    .line 703
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v1

    #@33
    monitor-exit v0

    #@34
    return v1

    #@35
    .line 702
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v0

    #@37
    throw v1

    #@38
    .line 706
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I

    #@3b
    move-result v0

    #@3c
    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 9
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    if-ltz p2, :cond_0

    #@2
    if-gez p3, :cond_1

    #@4
    .line 174
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v4

    #@a
    .line 173
    :cond_1
    array-length v4, p1

    #@b
    sub-int/2addr v4, p3

    #@c
    if-gt p2, v4, :cond_0

    #@e
    .line 175
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@11
    .line 176
    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    #@13
    if-nez v4, :cond_2

    #@15
    .line 177
    new-instance v4, Ljava/nio/channels/NonReadableChannelException;

    #@17
    invoke-direct {v4}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@1a
    throw v4

    #@1b
    .line 178
    :cond_2
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@1d
    monitor-enter v8

    #@1e
    .line 179
    const-wide/16 v0, 0x0

    #@20
    .line 180
    .local v0, "n":J
    const/4 v2, -0x1

    #@21
    .line 181
    .local v2, "ti":I
    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    #@23
    invoke-static {v4}, Lsun/misc/IoTrace;->fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v3

    #@27
    .line 183
    .local v3, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@2a
    .line 184
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@2c
    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@2f
    move-result v2

    #@30
    .line 185
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    move-result v4

    #@34
    if-nez v4, :cond_4

    #@36
    .line 192
    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@38
    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@3b
    .line 193
    const-wide/16 v4, 0x0

    #@3d
    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@40
    .line 194
    const/4 v4, 0x0

    #@41
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@44
    .line 195
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@46
    if-nez v4, :cond_3

    #@48
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@4b
    move-result v4

    #@4c
    if-nez v4, :cond_3

    #@4e
    new-instance v4, Ljava/lang/AssertionError;

    #@50
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@53
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    .line 178
    .end local v3    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    #@55
    monitor-exit v8

    #@56
    throw v4

    #@57
    .line 186
    .restart local v3    # "traceContext":Ljava/lang/Object;
    :cond_3
    const-wide/16 v4, 0x0

    #@59
    monitor-exit v8

    #@5a
    return-wide v4

    #@5b
    .line 188
    :cond_4
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@5d
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@5f
    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    #@62
    move-result-wide v0

    #@63
    .line 189
    const-wide/16 v4, -0x3

    #@65
    cmp-long v4, v0, v4

    #@67
    if-nez v4, :cond_5

    #@69
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@6c
    move-result v4

    #@6d
    if-nez v4, :cond_4

    #@6f
    .line 190
    :cond_5
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@72
    move-result-wide v6

    #@73
    .line 192
    :try_start_4
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@75
    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@78
    .line 193
    const-wide/16 v4, 0x0

    #@7a
    cmp-long v4, v0, v4

    #@7c
    if-lez v4, :cond_6

    #@7e
    move-wide v4, v0

    #@7f
    :goto_0
    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@82
    .line 194
    const-wide/16 v4, 0x0

    #@84
    cmp-long v4, v0, v4

    #@86
    if-lez v4, :cond_7

    #@88
    const/4 v4, 0x1

    #@89
    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@8c
    .line 195
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@8e
    if-nez v4, :cond_8

    #@90
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@93
    move-result v4

    #@94
    if-nez v4, :cond_8

    #@96
    new-instance v4, Ljava/lang/AssertionError;

    #@98
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@9b
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9c
    .line 193
    :cond_6
    const-wide/16 v4, 0x0

    #@9e
    goto :goto_0

    #@9f
    .line 194
    :cond_7
    const/4 v4, 0x0

    #@a0
    goto :goto_1

    #@a1
    :cond_8
    monitor-exit v8

    #@a2
    .line 190
    return-wide v6

    #@a3
    .line 191
    :catchall_1
    move-exception v4

    #@a4
    .line 192
    :try_start_5
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@a6
    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@a9
    .line 193
    const-wide/16 v6, 0x0

    #@ab
    cmp-long v5, v0, v6

    #@ad
    if-lez v5, :cond_9

    #@af
    move-wide v6, v0

    #@b0
    :goto_2
    invoke-static {v3, v6, v7}, Lsun/misc/IoTrace;->fileReadEnd(Ljava/lang/Object;J)V

    #@b3
    .line 194
    const-wide/16 v6, 0x0

    #@b5
    cmp-long v5, v0, v6

    #@b7
    if-lez v5, :cond_a

    #@b9
    const/4 v5, 0x1

    #@ba
    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@bd
    .line 195
    sget-boolean v5, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@bf
    if-nez v5, :cond_b

    #@c1
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@c4
    move-result v5

    #@c5
    if-nez v5, :cond_b

    #@c7
    new-instance v4, Ljava/lang/AssertionError;

    #@c9
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@cc
    throw v4

    #@cd
    .line 193
    :cond_9
    const-wide/16 v6, 0x0

    #@cf
    goto :goto_2

    #@d0
    .line 194
    :cond_a
    const/4 v5, 0x0

    #@d1
    goto :goto_3

    #@d2
    .line 191
    :cond_b
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method release(Lsun/nio/ch/FileLockImpl;)V
    .locals 7
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1091
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@5
    move-result v6

    #@6
    .line 1093
    .local v6, "ti":I
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@9
    .line 1094
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@b
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@d
    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->position()J

    #@10
    move-result-wide v2

    #@11
    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->size()J

    #@14
    move-result-wide v4

    #@15
    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1096
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@1a
    invoke-virtual {v0, v6}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@1d
    .line 1098
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@1f
    if-nez v0, :cond_1

    #@21
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    #@23
    if-eqz v0, :cond_0

    #@25
    const/4 v0, 0x1

    #@26
    :goto_0
    if-nez v0, :cond_1

    #@28
    new-instance v0, Ljava/lang/AssertionError;

    #@2a
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@2d
    throw v0

    #@2e
    .line 1095
    :catchall_0
    move-exception v0

    #@2f
    .line 1096
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@31
    invoke-virtual {v1, v6}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@34
    .line 1095
    throw v0

    #@35
    .line 1098
    :cond_0
    const/4 v0, 0x0

    #@36
    goto :goto_0

    #@37
    .line 1099
    :cond_1
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    #@39
    invoke-virtual {v0, p1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    #@3c
    .line 1090
    return-void
.end method

.method public size()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const-wide/16 v10, -0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 310
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@7
    .line 311
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@9
    monitor-enter v6

    #@a
    .line 312
    const-wide/16 v0, -0x1

    #@c
    .line 313
    .local v0, "s":J
    const/4 v2, -0x1

    #@d
    .line 315
    .local v2, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@10
    .line 316
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@12
    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@15
    move-result v2

    #@16
    .line 317
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_1

    #@1c
    .line 324
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@1e
    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@21
    .line 325
    const/4 v3, 0x0

    #@22
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@25
    .line 326
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@27
    if-nez v3, :cond_0

    #@29
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_0

    #@2f
    new-instance v3, Ljava/lang/AssertionError;

    #@31
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@34
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 311
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v6

    #@37
    throw v3

    #@38
    :cond_0
    monitor-exit v6

    #@39
    .line 318
    return-wide v10

    #@3a
    .line 320
    :cond_1
    :try_start_2
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@3c
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@3e
    invoke-virtual {v3, v7}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    #@41
    move-result-wide v0

    #@42
    .line 321
    const-wide/16 v8, -0x3

    #@44
    cmp-long v3, v0, v8

    #@46
    if-nez v3, :cond_2

    #@48
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@4b
    move-result v3

    #@4c
    if-nez v3, :cond_1

    #@4e
    .line 322
    :cond_2
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@51
    move-result-wide v8

    #@52
    .line 324
    :try_start_3
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@54
    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@57
    .line 325
    cmp-long v3, v0, v10

    #@59
    if-lez v3, :cond_3

    #@5b
    :goto_0
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@5e
    .line 326
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@60
    if-nez v3, :cond_4

    #@62
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@65
    move-result v3

    #@66
    if-nez v3, :cond_4

    #@68
    new-instance v3, Ljava/lang/AssertionError;

    #@6a
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@6d
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6e
    :cond_3
    move v4, v5

    #@6f
    .line 325
    goto :goto_0

    #@70
    :cond_4
    monitor-exit v6

    #@71
    .line 322
    return-wide v8

    #@72
    .line 323
    :catchall_1
    move-exception v3

    #@73
    .line 324
    :try_start_4
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@75
    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@78
    .line 325
    cmp-long v7, v0, v10

    #@7a
    if-lez v7, :cond_5

    #@7c
    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@7f
    .line 326
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@81
    if-nez v4, :cond_6

    #@83
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@86
    move-result v4

    #@87
    if-nez v4, :cond_6

    #@89
    new-instance v3, Ljava/lang/AssertionError;

    #@8b
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@8e
    throw v3

    #@8f
    :cond_5
    move v4, v5

    #@90
    .line 325
    goto :goto_1

    #@91
    .line 323
    :cond_6
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 6
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 677
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@5
    .line 678
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 679
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@d
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@10
    throw v0

    #@11
    .line 680
    :cond_0
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@13
    if-nez v0, :cond_1

    #@15
    .line 681
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    #@17
    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 682
    :cond_1
    cmp-long v0, p2, v2

    #@1d
    if-ltz v0, :cond_2

    #@1f
    cmp-long v0, p4, v2

    #@21
    if-gez v0, :cond_3

    #@23
    .line 683
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@28
    throw v0

    #@29
    .line 684
    :cond_3
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    #@2c
    move-result-wide v0

    #@2d
    cmp-long v0, p2, v0

    #@2f
    if-lez v0, :cond_4

    #@31
    .line 685
    return-wide v2

    #@32
    .line 686
    :cond_4
    instance-of v0, p1, Lsun/nio/ch/FileChannelImpl;

    #@34
    if-eqz v0, :cond_5

    #@36
    move-object v1, p1

    #@37
    .line 687
    check-cast v1, Lsun/nio/ch/FileChannelImpl;

    #@39
    move-object v0, p0

    #@3a
    move-wide v2, p2

    #@3b
    move-wide v4, p4

    #@3c
    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J

    #@3f
    move-result-wide v0

    #@40
    return-wide v0

    #@41
    .line 690
    :cond_5
    invoke-direct/range {p0 .. p5}, Lsun/nio/ch/FileChannelImpl;->transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J

    #@44
    move-result-wide v0

    #@45
    return-wide v0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 17
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 567
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@3
    .line 568
    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_0

    #@9
    .line 569
    new-instance v5, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v5}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v5

    #@f
    .line 570
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget-boolean v5, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    #@13
    if-nez v5, :cond_1

    #@15
    .line 571
    new-instance v5, Ljava/nio/channels/NonReadableChannelException;

    #@17
    invoke-direct {v5}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@1a
    throw v5

    #@1b
    .line 572
    :cond_1
    move-object/from16 v0, p5

    #@1d
    instance-of v5, v0, Lsun/nio/ch/FileChannelImpl;

    #@1f
    if-eqz v5, :cond_2

    #@21
    move-object/from16 v5, p5

    #@23
    .line 573
    check-cast v5, Lsun/nio/ch/FileChannelImpl;

    #@25
    iget-boolean v5, v5, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@27
    if-eqz v5, :cond_4

    #@29
    .line 575
    :cond_2
    const-wide/16 v6, 0x0

    #@2b
    cmp-long v5, p1, v6

    #@2d
    if-ltz v5, :cond_3

    #@2f
    const-wide/16 v6, 0x0

    #@31
    cmp-long v5, p3, v6

    #@33
    if-gez v5, :cond_5

    #@35
    .line 576
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@37
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@3a
    throw v5

    #@3b
    .line 574
    :cond_4
    new-instance v5, Ljava/nio/channels/NonWritableChannelException;

    #@3d
    invoke-direct {v5}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@40
    throw v5

    #@41
    .line 577
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    #@44
    move-result-wide v14

    #@45
    .line 578
    .local v14, "sz":J
    cmp-long v5, p1, v14

    #@47
    if-lez v5, :cond_6

    #@49
    .line 579
    const-wide/16 v6, 0x0

    #@4b
    return-wide v6

    #@4c
    .line 580
    :cond_6
    const-wide/32 v6, 0x7fffffff

    #@4f
    move-wide/from16 v0, p3

    #@51
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@54
    move-result-wide v6

    #@55
    long-to-int v4, v6

    #@56
    .line 581
    .local v4, "icount":I
    sub-long v6, v14, p1

    #@58
    int-to-long v8, v4

    #@59
    cmp-long v5, v6, v8

    #@5b
    if-gez v5, :cond_7

    #@5d
    .line 582
    sub-long v6, v14, p1

    #@5f
    long-to-int v4, v6

    #@60
    .line 587
    :cond_7
    move-object/from16 v0, p0

    #@62
    move-wide/from16 v1, p1

    #@64
    move-object/from16 v3, p5

    #@66
    invoke-direct {v0, v1, v2, v4, v3}, Lsun/nio/ch/FileChannelImpl;->transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J

    #@69
    move-result-wide v12

    #@6a
    .local v12, "n":J
    const-wide/16 v6, 0x0

    #@6c
    cmp-long v5, v12, v6

    #@6e
    if-ltz v5, :cond_8

    #@70
    .line 588
    return-wide v12

    #@71
    .line 591
    :cond_8
    int-to-long v8, v4

    #@72
    move-object/from16 v5, p0

    #@74
    move-wide/from16 v6, p1

    #@76
    move-object/from16 v10, p5

    #@78
    invoke-direct/range {v5 .. v10}, Lsun/nio/ch/FileChannelImpl;->transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J

    #@7b
    move-result-wide v12

    #@7c
    const-wide/16 v6, 0x0

    #@7e
    cmp-long v5, v12, v6

    #@80
    if-ltz v5, :cond_9

    #@82
    .line 592
    return-wide v12

    #@83
    .line 595
    :cond_9
    move-object/from16 v0, p0

    #@85
    move-wide/from16 v1, p1

    #@87
    move-object/from16 v3, p5

    #@89
    invoke-direct {v0, v1, v2, v4, v3}, Lsun/nio/ch/FileChannelImpl;->transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J

    #@8c
    move-result-wide v6

    #@8d
    return-wide v6
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 13
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, -0x3

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, -0x1

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 332
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@8
    .line 333
    const-wide/16 v8, 0x0

    #@a
    cmp-long v4, p1, v8

    #@c
    if-gez v4, :cond_0

    #@e
    .line 334
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v4

    #@14
    .line 340
    :cond_0
    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@16
    if-nez v4, :cond_1

    #@18
    .line 341
    new-instance v4, Ljava/nio/channels/NonWritableChannelException;

    #@1a
    invoke-direct {v4}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@1d
    throw v4

    #@1e
    .line 342
    :cond_1
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@20
    monitor-enter v7

    #@21
    .line 343
    const/4 v2, -0x1

    #@22
    .line 344
    .local v2, "rv":I
    const-wide/16 v0, -0x1

    #@24
    .line 345
    .local v0, "p":J
    const/4 v3, -0x1

    #@25
    .line 347
    .local v3, "ti":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@28
    .line 348
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@2a
    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@2d
    move-result v3

    #@2e
    .line 349
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_3

    #@34
    .line 380
    :try_start_1
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@36
    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@39
    .line 381
    const/4 v4, 0x0

    #@3a
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@3d
    .line 382
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@3f
    if-nez v4, :cond_2

    #@41
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_2

    #@47
    new-instance v4, Ljava/lang/AssertionError;

    #@49
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@4c
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 342
    :catchall_0
    move-exception v4

    #@4e
    monitor-exit v7

    #@4f
    throw v4

    #@50
    :cond_2
    monitor-exit v7

    #@51
    .line 350
    return-object v11

    #@52
    .line 354
    :cond_3
    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@54
    const-wide/16 v8, -0x1

    #@56
    invoke-direct {p0, v4, v8, v9}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    #@59
    move-result-wide v0

    #@5a
    .line 355
    const-wide/16 v8, -0x3

    #@5c
    cmp-long v4, v0, v8

    #@5e
    if-nez v4, :cond_4

    #@60
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@63
    move-result v4

    #@64
    if-nez v4, :cond_3

    #@66
    .line 356
    :cond_4
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@69
    move-result v4

    #@6a
    if-nez v4, :cond_6

    #@6c
    .line 380
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@6e
    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@71
    .line 381
    const/4 v4, 0x0

    #@72
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@75
    .line 382
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@77
    if-nez v4, :cond_5

    #@79
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@7c
    move-result v4

    #@7d
    if-nez v4, :cond_5

    #@7f
    new-instance v4, Ljava/lang/AssertionError;

    #@81
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@84
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    :cond_5
    monitor-exit v7

    #@86
    .line 357
    return-object v11

    #@87
    .line 358
    :cond_6
    :try_start_4
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@89
    if-nez v4, :cond_8

    #@8b
    const-wide/16 v8, 0x0

    #@8d
    cmp-long v4, v0, v8

    #@8f
    if-ltz v4, :cond_7

    #@91
    move v4, v5

    #@92
    :goto_0
    if-nez v4, :cond_8

    #@94
    new-instance v4, Ljava/lang/AssertionError;

    #@96
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@99
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@9a
    .line 379
    :catchall_1
    move-exception v4

    #@9b
    .line 380
    :try_start_5
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@9d
    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@a0
    .line 381
    if-le v2, v10, :cond_12

    #@a2
    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@a5
    .line 382
    sget-boolean v5, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@a7
    if-nez v5, :cond_13

    #@a9
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@ac
    move-result v5

    #@ad
    if-nez v5, :cond_13

    #@af
    new-instance v4, Ljava/lang/AssertionError;

    #@b1
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@b4
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b5
    :cond_7
    move v4, v6

    #@b6
    .line 358
    goto :goto_0

    #@b7
    .line 362
    :cond_8
    :try_start_6
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    #@ba
    move-result-wide v8

    #@bb
    cmp-long v4, p1, v8

    #@bd
    if-gez v4, :cond_d

    #@bf
    .line 365
    :cond_9
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@c1
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@c3
    invoke-virtual {v4, v8, p1, p2}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    #@c6
    move-result v2

    #@c7
    .line 366
    if-ne v2, v12, :cond_a

    #@c9
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@cc
    move-result v4

    #@cd
    if-nez v4, :cond_9

    #@cf
    .line 367
    :cond_a
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@d2
    move-result v4

    #@d3
    if-nez v4, :cond_d

    #@d5
    .line 380
    :try_start_7
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@d7
    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@da
    .line 381
    if-le v2, v10, :cond_b

    #@dc
    :goto_2
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@df
    .line 382
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@e1
    if-nez v4, :cond_c

    #@e3
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@e6
    move-result v4

    #@e7
    if-nez v4, :cond_c

    #@e9
    new-instance v4, Ljava/lang/AssertionError;

    #@eb
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@ee
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@ef
    :cond_b
    move v5, v6

    #@f0
    .line 381
    goto :goto_2

    #@f1
    :cond_c
    monitor-exit v7

    #@f2
    .line 368
    return-object v11

    #@f3
    .line 373
    :cond_d
    cmp-long v4, v0, p1

    #@f5
    if-lez v4, :cond_e

    #@f7
    .line 374
    move-wide v0, p1

    #@f8
    .line 376
    :cond_e
    :try_start_8
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@fa
    invoke-direct {p0, v4, v0, v1}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    #@fd
    move-result-wide v8

    #@fe
    long-to-int v2, v8

    #@ff
    .line 377
    if-ne v2, v12, :cond_f

    #@101
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@104
    move-result v4

    #@105
    if-nez v4, :cond_e

    #@107
    .line 380
    :cond_f
    :try_start_9
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@109
    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@10c
    .line 381
    if-le v2, v10, :cond_10

    #@10e
    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@111
    .line 382
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@113
    if-nez v4, :cond_11

    #@115
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@118
    move-result v4

    #@119
    if-nez v4, :cond_11

    #@11b
    new-instance v4, Ljava/lang/AssertionError;

    #@11d
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@120
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@121
    :cond_10
    move v5, v6

    #@122
    .line 381
    goto :goto_3

    #@123
    :cond_11
    monitor-exit v7

    #@124
    .line 378
    return-object p0

    #@125
    :cond_12
    move v5, v6

    #@126
    .line 381
    goto/16 :goto_1

    #@128
    .line 379
    :cond_13
    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->truncate(J)Ljava/nio/channels/FileChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 13
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1054
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@3
    .line 1055
    if-eqz p5, :cond_0

    #@5
    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 1057
    :cond_0
    if-nez p5, :cond_1

    #@b
    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@d
    if-eqz v1, :cond_3

    #@f
    .line 1059
    :cond_1
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    #@11
    move-object v1, p0

    #@12
    move-wide v2, p1

    #@13
    move-wide/from16 v4, p3

    #@15
    move/from16 v6, p5

    #@17
    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    #@1a
    .line 1060
    .local v0, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    #@1d
    move-result-object v10

    #@1e
    .line 1061
    .local v10, "flt":Lsun/nio/ch/FileLockTable;
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    #@21
    .line 1064
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@23
    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@26
    move-result v12

    #@27
    .line 1067
    .local v12, "ti":I
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@2a
    .line 1068
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@2c
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2e
    const/4 v3, 0x0

    #@2f
    move-wide v4, p1

    #@30
    move-wide/from16 v6, p3

    #@32
    move/from16 v8, p5

    #@34
    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    move-result v11

    #@38
    .line 1073
    .local v11, "result":I
    const/4 v1, -0x1

    #@39
    if-ne v11, v1, :cond_4

    #@3b
    .line 1074
    :try_start_1
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 1075
    const/4 v1, 0x0

    #@3f
    .line 1086
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@41
    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@44
    .line 1075
    return-object v1

    #@45
    .line 1056
    .end local v0    # "fli":Lsun/nio/ch/FileLockImpl;
    .end local v10    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v11    # "result":I
    .end local v12    # "ti":I
    :cond_2
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    #@47
    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@4a
    throw v1

    #@4b
    .line 1058
    :cond_3
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    #@4d
    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@50
    throw v1

    #@51
    .line 1069
    .restart local v0    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v10    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v12    # "ti":I
    :catch_0
    move-exception v9

    #@52
    .line 1070
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    #@55
    .line 1071
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    .line 1085
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@57
    .line 1086
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@59
    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@5c
    .line 1085
    throw v1

    #@5d
    .line 1077
    .restart local v11    # "result":I
    :cond_4
    const/4 v1, 0x1

    #@5e
    if-ne v11, v1, :cond_6

    #@60
    .line 1078
    :try_start_3
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@62
    if-nez v1, :cond_5

    #@64
    if-nez p5, :cond_5

    #@66
    new-instance v1, Ljava/lang/AssertionError;

    #@68
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@6b
    throw v1

    #@6c
    .line 1079
    :cond_5
    new-instance v2, Lsun/nio/ch/FileLockImpl;

    #@6e
    .line 1080
    const/4 v8, 0x0

    #@6f
    move-object v3, p0

    #@70
    move-wide v4, p1

    #@71
    move-wide/from16 v6, p3

    #@73
    .line 1079
    invoke-direct/range {v2 .. v8}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    #@76
    .line 1081
    .local v2, "fli2":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {v10, v0, v2}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@79
    .line 1086
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@7b
    invoke-virtual {v1, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@7e
    .line 1082
    return-object v2

    #@7f
    .line 1086
    .end local v2    # "fli2":Lsun/nio/ch/FileLockImpl;
    :cond_6
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@81
    invoke-virtual {v1, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@84
    .line 1084
    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 201
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@5
    .line 202
    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@7
    if-nez v4, :cond_0

    #@9
    .line 203
    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    #@b
    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@e
    throw v3

    #@f
    .line 204
    :cond_0
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@11
    monitor-enter v6

    #@12
    .line 205
    const/4 v0, 0x0

    #@13
    .line 206
    .local v0, "n":I
    const/4 v1, -0x1

    #@14
    .line 207
    .local v1, "ti":I
    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    #@16
    invoke-static {v4}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v2

    #@1a
    .line 209
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@1d
    .line 210
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@1f
    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@22
    move-result v1

    #@23
    .line 211
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@26
    move-result v4

    #@27
    if-nez v4, :cond_2

    #@29
    .line 218
    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@2b
    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@2e
    .line 219
    const/4 v4, 0x0

    #@2f
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@32
    .line 220
    int-to-long v4, v3

    #@33
    invoke-static {v2, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@36
    .line 221
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@38
    if-nez v4, :cond_1

    #@3a
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@3d
    move-result v4

    #@3e
    if-nez v4, :cond_1

    #@40
    new-instance v3, Ljava/lang/AssertionError;

    #@42
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@45
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 204
    .end local v2    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    #@47
    monitor-exit v6

    #@48
    throw v3

    #@49
    .restart local v2    # "traceContext":Ljava/lang/Object;
    :cond_1
    monitor-exit v6

    #@4a
    .line 212
    return v3

    #@4b
    .line 214
    :cond_2
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@4d
    const-wide/16 v8, -0x1

    #@4f
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@51
    invoke-static {v4, p1, v8, v9, v7}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@54
    move-result v0

    #@55
    .line 215
    const/4 v4, -0x3

    #@56
    if-ne v0, v4, :cond_3

    #@58
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@5b
    move-result v4

    #@5c
    if-nez v4, :cond_2

    #@5e
    .line 216
    :cond_3
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@61
    move-result v4

    #@62
    .line 218
    :try_start_4
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@64
    invoke-virtual {v7, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@67
    .line 219
    if-lez v0, :cond_5

    #@69
    :goto_0
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@6c
    .line 220
    if-lez v0, :cond_4

    #@6e
    move v3, v0

    #@6f
    :cond_4
    int-to-long v8, v3

    #@70
    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@73
    .line 221
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@75
    if-nez v3, :cond_6

    #@77
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@7a
    move-result v3

    #@7b
    if-nez v3, :cond_6

    #@7d
    new-instance v3, Ljava/lang/AssertionError;

    #@7f
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@82
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@83
    :cond_5
    move v5, v3

    #@84
    .line 219
    goto :goto_0

    #@85
    :cond_6
    monitor-exit v6

    #@86
    .line 216
    return v4

    #@87
    .line 217
    :catchall_1
    move-exception v4

    #@88
    .line 218
    :try_start_5
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@8a
    invoke-virtual {v7, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@8d
    .line 219
    if-lez v0, :cond_8

    #@8f
    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@92
    .line 220
    if-lez v0, :cond_7

    #@94
    move v3, v0

    #@95
    :cond_7
    int-to-long v8, v3

    #@96
    invoke-static {v2, v8, v9}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@99
    .line 221
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@9b
    if-nez v3, :cond_9

    #@9d
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@a0
    move-result v3

    #@a1
    if-nez v3, :cond_9

    #@a3
    new-instance v3, Ljava/lang/AssertionError;

    #@a5
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@a8
    throw v3

    #@a9
    :cond_8
    move v5, v3

    #@aa
    .line 219
    goto :goto_1

    #@ab
    .line 217
    :cond_9
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 733
    if-nez p1, :cond_0

    #@2
    .line 734
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 735
    :cond_0
    const-wide/16 v0, 0x0

    #@a
    cmp-long v0, p2, v0

    #@c
    if-gez v0, :cond_1

    #@e
    .line 736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "Negative position"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 737
    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 738
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    #@1d
    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@20
    throw v0

    #@21
    .line 739
    :cond_2
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@24
    .line 740
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@26
    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 741
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@2e
    monitor-enter v0

    #@2f
    .line 742
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v1

    #@33
    monitor-exit v0

    #@34
    return v1

    #@35
    .line 741
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v0

    #@37
    throw v1

    #@38
    .line 745
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I

    #@3b
    move-result v0

    #@3c
    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 9
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    if-ltz p2, :cond_0

    #@2
    if-gez p3, :cond_1

    #@4
    .line 230
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v4

    #@a
    .line 229
    :cond_1
    array-length v4, p1

    #@b
    sub-int/2addr v4, p3

    #@c
    if-gt p2, v4, :cond_0

    #@e
    .line 231
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    #@11
    .line 232
    iget-boolean v4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    #@13
    if-nez v4, :cond_2

    #@15
    .line 233
    new-instance v4, Ljava/nio/channels/NonWritableChannelException;

    #@17
    invoke-direct {v4}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@1a
    throw v4

    #@1b
    .line 234
    :cond_2
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    #@1d
    monitor-enter v8

    #@1e
    .line 235
    const-wide/16 v0, 0x0

    #@20
    .line 236
    .local v0, "n":J
    const/4 v2, -0x1

    #@21
    .line 237
    .local v2, "ti":I
    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    #@23
    invoke-static {v4}, Lsun/misc/IoTrace;->fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v3

    #@27
    .line 239
    .local v3, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    #@2a
    .line 240
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@2c
    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    #@2f
    move-result v2

    #@30
    .line 241
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    move-result v4

    #@34
    if-nez v4, :cond_4

    #@36
    .line 248
    :try_start_2
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@38
    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@3b
    .line 249
    const-wide/16 v4, 0x0

    #@3d
    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@40
    .line 250
    const/4 v4, 0x0

    #@41
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@44
    .line 251
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@46
    if-nez v4, :cond_3

    #@48
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@4b
    move-result v4

    #@4c
    if-nez v4, :cond_3

    #@4e
    new-instance v4, Ljava/lang/AssertionError;

    #@50
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@53
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    .line 234
    .end local v3    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    #@55
    monitor-exit v8

    #@56
    throw v4

    #@57
    .line 242
    .restart local v3    # "traceContext":Ljava/lang/Object;
    :cond_3
    const-wide/16 v4, 0x0

    #@59
    monitor-exit v8

    #@5a
    return-wide v4

    #@5b
    .line 244
    :cond_4
    :try_start_3
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@5d
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    #@5f
    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    #@62
    move-result-wide v0

    #@63
    .line 245
    const-wide/16 v4, -0x3

    #@65
    cmp-long v4, v0, v4

    #@67
    if-nez v4, :cond_5

    #@69
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    #@6c
    move-result v4

    #@6d
    if-nez v4, :cond_4

    #@6f
    .line 246
    :cond_5
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@72
    move-result-wide v6

    #@73
    .line 248
    :try_start_4
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@75
    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@78
    .line 249
    const-wide/16 v4, 0x0

    #@7a
    cmp-long v4, v0, v4

    #@7c
    if-lez v4, :cond_6

    #@7e
    move-wide v4, v0

    #@7f
    :goto_0
    invoke-static {v3, v4, v5}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@82
    .line 250
    const-wide/16 v4, 0x0

    #@84
    cmp-long v4, v0, v4

    #@86
    if-lez v4, :cond_7

    #@88
    const/4 v4, 0x1

    #@89
    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@8c
    .line 251
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@8e
    if-nez v4, :cond_8

    #@90
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@93
    move-result v4

    #@94
    if-nez v4, :cond_8

    #@96
    new-instance v4, Ljava/lang/AssertionError;

    #@98
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@9b
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9c
    .line 249
    :cond_6
    const-wide/16 v4, 0x0

    #@9e
    goto :goto_0

    #@9f
    .line 250
    :cond_7
    const/4 v4, 0x0

    #@a0
    goto :goto_1

    #@a1
    :cond_8
    monitor-exit v8

    #@a2
    .line 246
    return-wide v6

    #@a3
    .line 247
    :catchall_1
    move-exception v4

    #@a4
    .line 248
    :try_start_5
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    #@a6
    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    #@a9
    .line 249
    const-wide/16 v6, 0x0

    #@ab
    cmp-long v5, v0, v6

    #@ad
    if-lez v5, :cond_9

    #@af
    move-wide v6, v0

    #@b0
    :goto_2
    invoke-static {v3, v6, v7}, Lsun/misc/IoTrace;->fileWriteEnd(Ljava/lang/Object;J)V

    #@b3
    .line 250
    const-wide/16 v6, 0x0

    #@b5
    cmp-long v5, v0, v6

    #@b7
    if-lez v5, :cond_a

    #@b9
    const/4 v5, 0x1

    #@ba
    :goto_3
    invoke-virtual {p0, v5}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    #@bd
    .line 251
    sget-boolean v5, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    #@bf
    if-nez v5, :cond_b

    #@c1
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@c4
    move-result v5

    #@c5
    if-nez v5, :cond_b

    #@c7
    new-instance v4, Ljava/lang/AssertionError;

    #@c9
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@cc
    throw v4

    #@cd
    .line 249
    :cond_9
    const-wide/16 v6, 0x0

    #@cf
    goto :goto_2

    #@d0
    .line 250
    :cond_a
    const/4 v5, 0x0

    #@d1
    goto :goto_3

    #@d2
    .line 247
    :cond_b
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

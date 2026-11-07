.class public Lsun/nio/ch/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/FileChannelImpl$Unmapper;,
        Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist MAPPED_TRANSFER_SIZE:J = 0x800000L

.field private static final blacklist MAP_PV:I = 0x2

.field private static final blacklist MAP_RO:I = 0x0

.field private static final blacklist MAP_RW:I = 0x1

.field private static final blacklist TRANSFER_SIZE:I = 0x2000

.field private static final blacklist allocationGranularity:J

.field private static final blacklist fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

.field private static volatile blacklist fileSupported:Z

.field private static blacklist isSharedFileLockTable:Z

.field private static volatile blacklist pipeSupported:Z

.field private static volatile blacklist propertyChecked:Z

.field private static volatile blacklist transferSupported:Z


# instance fields
.field public final blacklist fd:Ljava/io/FileDescriptor;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private volatile blacklist fileLockTable:Lsun/nio/ch/FileLockTable;

.field private final blacklist guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final blacklist nd:Lsun/nio/ch/FileDispatcher;

.field private final blacklist parent:Ljava/lang/Object;

.field private final blacklist path:Ljava/lang/String;

.field private final blacklist positionLock:Ljava/lang/Object;

.field private final blacklist readable:Z

.field private final blacklist threads:Lsun/nio/ch/NativeThreadSet;

.field private final blacklist writable:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smunmap0(JJ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 61
    nop

    .line 66
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaIOFileDescriptorAccess()Ljdk/internal/access/JavaIOFileDescriptorAccess;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/FileChannelImpl;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    .line 447
    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    .line 452
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    .line 457
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    .line 1290
    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->initIDs()J

    move-result-wide v0

    sput-wide v0, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    .line 1291
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "readable"    # Z
    .param p4, "writable"    # Z
    .param p5, "parent"    # Ljava/lang/Object;

    .line 106
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 95
    new-instance v0, Lsun/nio/ch/NativeThreadSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsun/nio/ch/NativeThreadSet;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    .line 101
    nop

    .line 102
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 107
    iput-object p1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 108
    iput-boolean p3, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    .line 109
    iput-boolean p4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    .line 110
    iput-object p5, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    .line 112
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    .line 114
    if-eqz p1, :cond_39

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 115
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 118
    :cond_39
    return-void
.end method

.method private blacklist ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    return-void

    .line 130
    :cond_7
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method private blacklist fileLockTable()Lsun/nio/ch/FileLockTable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_3b

    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_5
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_36

    .line 1100
    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1101
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_38

    .line 1103
    .local v0, "ti":I
    :try_start_15
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1104
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p0, v1}, Lsun/nio/ch/FileLockTable;->newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_27

    .line 1106
    :try_start_20
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1107
    nop

    .line 1108
    .end local v0    # "ti":I
    goto :goto_36

    .line 1106
    .restart local v0    # "ti":I
    :catchall_27
    move-exception v1

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1107
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    throw v1

    .line 1109
    .end local v0    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    :cond_2f
    new-instance v0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;

    invoke-direct {v0}, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    .line 1112
    :cond_36
    :goto_36
    monitor-exit p0

    goto :goto_3b

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_38

    throw v0

    .line 1114
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    return-object v0
.end method

.method private static native blacklist initIDs()J
.end method

.method private static blacklist isSharedFileLockTable()Z
    .registers 4

    .line 1082
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    if-nez v0, :cond_30

    .line 1083
    const-class v0, Lsun/nio/ch/FileChannelImpl;

    monitor-enter v0

    .line 1084
    :try_start_7
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    if-nez v1, :cond_2b

    .line 1085
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string v2, "sun.nio.ch.disableSystemWideOverlappingFileLockCheck"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1088
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_26

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_26

    :cond_24
    const/4 v3, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    move v3, v2

    :goto_27
    sput-boolean v3, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    .line 1089
    sput-boolean v2, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    .line 1091
    .end local v1    # "value":Ljava/lang/String;
    :cond_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v1

    .line 1093
    :cond_30
    :goto_30
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    return v0
.end method

.method private native blacklist map0(IJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static blacklist open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z
    .param p4, "parent"    # Ljava/lang/Object;

    .line 125
    new-instance v0, Lsun/nio/ch/FileChannelImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "readable":Z
    .end local p3    # "writable":Z
    .end local p4    # "parent":Ljava/lang/Object;
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "path":Ljava/lang/String;
    .local v3, "readable":Z
    .local v4, "writable":Z
    .local v5, "parent":Ljava/lang/Object;
    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;-><init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)V

    return-object v0
.end method

.method private native blacklist position0(Ljava/io/FileDescriptor;J)J
.end method

.method private blacklist readInternal(Ljava/nio/ByteBuffer;J)I
    .registers 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    nop

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, "n":I
    const/4 v1, -0x1

    .line 785
    .local v1, "ti":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 786
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v4

    move v1, v4

    .line 787
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_49

    if-nez v4, :cond_25

    .line 788
    nop

    .line 794
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 795
    if-lez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 796
    nop

    .line 788
    const/4 v2, -0x1

    return v2

    .line 790
    :cond_25
    :try_start_25
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v4

    move v0, v4

    .line 791
    const/4 v4, -0x3

    if-ne v0, v4, :cond_37

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_25

    .line 792
    :cond_37
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v4
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_49

    .line 794
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 795
    if-lez v0, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    :goto_44
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 796
    nop

    .line 792
    return v4

    .line 794
    :catchall_49
    move-exception v4

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 795
    if-lez v0, :cond_52

    goto :goto_53

    :cond_52
    move v2, v3

    :goto_53
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 796
    nop

    .line 797
    throw v4
.end method

.method private blacklist transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 22
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    move-wide/from16 v1, p4

    const-wide/16 v3, 0x2000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 713
    .local v5, "c":I
    invoke-static {v5}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 714
    .local v6, "bb":Ljava/nio/ByteBuffer;
    const-wide/16 v7, 0x0

    .line 715
    .local v7, "tw":J
    move-wide/from16 v9, p2

    .line 717
    .local v9, "pos":J
    :try_start_11
    invoke-static {v6}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    .line 718
    :goto_14
    cmp-long v0, v7, v1

    if-gez v0, :cond_4c

    .line 719
    sub-long v11, v1, v7

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v0, v11

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_5b
    .catchall {:try_start_11 .. :try_end_22} :catchall_55

    .line 722
    move-object/from16 v11, p1

    :try_start_24
    invoke-interface {v11, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 723
    .local v0, "nr":I
    if-gtz v0, :cond_2d

    .line 724
    move-object/from16 v12, p0

    goto :goto_50

    .line 725
    :cond_2d
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_30} :catch_48
    .catchall {:try_start_24 .. :try_end_30} :catchall_44

    .line 726
    move-object/from16 v12, p0

    :try_start_32
    invoke-virtual {v12, v6, v9, v10}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v13

    .line 727
    .local v13, "nw":I
    int-to-long v14, v13

    add-long/2addr v7, v14

    .line 728
    if-eq v13, v0, :cond_3b

    .line 729
    goto :goto_50

    .line 730
    :cond_3b
    int-to-long v14, v13

    add-long/2addr v9, v14

    .line 731
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_40} :catch_42
    .catchall {:try_start_32 .. :try_end_40} :catchall_6d

    .line 732
    nop

    .end local v0    # "nr":I
    .end local v13    # "nw":I
    goto :goto_14

    .line 734
    :catch_42
    move-exception v0

    goto :goto_60

    .line 739
    :catchall_44
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_6e

    .line 734
    :catch_48
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_60

    .line 718
    :cond_4c
    move-object/from16 v12, p0

    move-object/from16 v11, p1

    .line 733
    :goto_50
    nop

    .line 739
    invoke-static {v6}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 733
    return-wide v7

    .line 739
    :catchall_55
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    goto :goto_6e

    .line 734
    :catch_5b
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    .line 735
    .local v0, "x":Ljava/io/IOException;
    :goto_60
    const-wide/16 v3, 0x0

    cmp-long v3, v7, v3

    if-lez v3, :cond_6b

    .line 736
    nop

    .line 739
    invoke-static {v6}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 736
    return-wide v7

    .line 737
    :cond_6b
    nop

    .end local v5    # "c":I
    .end local v6    # "bb":Ljava/nio/ByteBuffer;
    .end local v7    # "tw":J
    .end local v9    # "pos":J
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .end local p2    # "position":J
    .end local p4    # "count":J
    :try_start_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 739
    .end local v0    # "x":Ljava/io/IOException;
    .restart local v5    # "c":I
    .restart local v6    # "bb":Ljava/nio/ByteBuffer;
    .restart local v7    # "tw":J
    .restart local v9    # "pos":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .restart local p2    # "position":J
    .restart local p4    # "count":J
    :catchall_6d
    move-exception v0

    :goto_6e
    invoke-static {v6}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 740
    throw v0
.end method

.method private blacklist transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J
    .registers 26
    .param p1, "src"    # Lsun/nio/ch/FileChannelImpl;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    move-object/from16 v1, p1

    iget-boolean v0, v1, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_85

    .line 674
    iget-object v7, v1, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v7

    .line 675
    :try_start_9
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->position()J

    move-result-wide v2

    move-wide v8, v2

    .line 676
    .local v8, "pos":J
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_7c

    sub-long/2addr v2, v8

    move-wide/from16 v10, p4

    :try_start_15
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_7a

    move-wide v12, v2

    .line 678
    .local v12, "max":J
    nop

    .line 679
    .local v2, "remaining":J
    move-wide v4, v8

    move-wide/from16 v14, p2

    .line 680
    .end local p2    # "position":J
    .local v4, "p":J
    .local v14, "position":J
    :goto_1e
    const-wide/16 v16, 0x0

    cmp-long v0, v2, v16

    if-lez v0, :cond_6d

    .line 681
    const-wide/32 v0, 0x800000

    :try_start_27
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide/from16 v16, v0

    .line 683
    .local v16, "size":J
    move-wide/from16 v18, v2

    .end local v2    # "remaining":J
    .local v18, "remaining":J
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_69

    move-object/from16 v1, p1

    move-wide v3, v4

    move-wide/from16 v5, v16

    .end local v4    # "p":J
    .end local v16    # "size":J
    .local v3, "p":J
    .local v5, "size":J
    :try_start_36
    invoke-virtual/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_83

    move-object v2, v0

    .line 685
    .local v2, "bb":Ljava/nio/MappedByteBuffer;
    move-wide/from16 p2, v3

    move-object/from16 v3, p0

    .end local v3    # "p":J
    .local p2, "p":J
    :try_start_3f
    invoke-virtual {v3, v2, v14, v15}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_57
    .catchall {:try_start_3f .. :try_end_43} :catchall_54

    move-object v4, v2

    .end local v2    # "bb":Ljava/nio/MappedByteBuffer;
    .local v4, "bb":Ljava/nio/MappedByteBuffer;
    int-to-long v2, v0

    .line 686
    .local v2, "n":J
    nop

    .line 687
    add-long v16, p2, v2

    .line 688
    .end local p2    # "p":J
    .local v16, "p":J
    add-long/2addr v14, v2

    .line 689
    sub-long v18, v18, v2

    .line 696
    .end local v2    # "n":J
    :try_start_4b
    invoke-static {v4}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 697
    nop

    .line 698
    .end local v4    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v5    # "size":J
    move-wide/from16 v4, v16

    move-wide/from16 v2, v18

    goto :goto_1e

    .line 696
    .end local v16    # "p":J
    .local v2, "bb":Ljava/nio/MappedByteBuffer;
    .restart local v5    # "size":J
    .restart local p2    # "p":J
    :catchall_54
    move-exception v0

    move-object v4, v2

    .end local v2    # "bb":Ljava/nio/MappedByteBuffer;
    .restart local v4    # "bb":Ljava/nio/MappedByteBuffer;
    goto :goto_64

    .line 690
    .end local v4    # "bb":Ljava/nio/MappedByteBuffer;
    .restart local v2    # "bb":Ljava/nio/MappedByteBuffer;
    :catch_57
    move-exception v0

    move-object v4, v2

    .line 692
    .end local v2    # "bb":Ljava/nio/MappedByteBuffer;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v4    # "bb":Ljava/nio/MappedByteBuffer;
    cmp-long v2, v18, v12

    if-eqz v2, :cond_61

    .line 696
    invoke-static {v4}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_83

    .line 694
    goto :goto_71

    .line 693
    :cond_61
    nop

    .end local v4    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v5    # "size":J
    .end local v8    # "pos":J
    .end local v12    # "max":J
    .end local v14    # "position":J
    .end local v18    # "remaining":J
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "src":Lsun/nio/ch/FileChannelImpl;
    .end local p2    # "p":J
    .end local p4    # "count":J
    :try_start_62
    throw v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    .line 696
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v4    # "bb":Ljava/nio/MappedByteBuffer;
    .restart local v5    # "size":J
    .restart local v8    # "pos":J
    .restart local v12    # "max":J
    .restart local v14    # "position":J
    .restart local v18    # "remaining":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "src":Lsun/nio/ch/FileChannelImpl;
    .restart local p2    # "p":J
    .restart local p4    # "count":J
    :catchall_63
    move-exception v0

    :goto_64
    :try_start_64
    invoke-static {v4}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 697
    nop

    .end local v14    # "position":J
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "src":Lsun/nio/ch/FileChannelImpl;
    .end local p4    # "count":J
    throw v0

    .line 702
    .end local v4    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v5    # "size":J
    .end local v8    # "pos":J
    .end local v12    # "max":J
    .end local v18    # "remaining":J
    .end local p2    # "p":J
    .restart local v14    # "position":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "src":Lsun/nio/ch/FileChannelImpl;
    .restart local p4    # "count":J
    :catchall_69
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_81

    .line 680
    .local v2, "remaining":J
    .local v4, "p":J
    .restart local v8    # "pos":J
    .restart local v12    # "max":J
    :cond_6d
    move-wide/from16 v18, v2

    move-wide/from16 p2, v4

    .line 699
    .end local v2    # "remaining":J
    .end local v4    # "p":J
    .restart local v18    # "remaining":J
    .restart local p2    # "p":J
    :goto_71
    sub-long v2, v12, v18

    .line 700
    .local v2, "nwritten":J
    add-long v4, v8, v2

    invoke-virtual {v1, v4, v5}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 701
    monitor-exit v7

    return-wide v2

    .line 702
    .end local v2    # "nwritten":J
    .end local v8    # "pos":J
    .end local v12    # "max":J
    .end local v14    # "position":J
    .end local v18    # "remaining":J
    .local p2, "position":J
    :catchall_7a
    move-exception v0

    goto :goto_7f

    :catchall_7c
    move-exception v0

    move-wide/from16 v10, p4

    :goto_7f
    move-wide/from16 v14, p2

    .end local p2    # "position":J
    .restart local v14    # "position":J
    :goto_81
    monitor-exit v7
    :try_end_82
    .catchall {:try_start_64 .. :try_end_82} :catchall_83

    throw v0

    :catchall_83
    move-exception v0

    goto :goto_81

    .line 673
    .end local v14    # "position":J
    .restart local p2    # "position":J
    :cond_85
    move-wide/from16 v10, p4

    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method private native blacklist transferTo0(Ljava/io/FileDescriptor;JJLjava/io/FileDescriptor;)J
.end method

.method private blacklist transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J
    .registers 16
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    const/16 v0, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 603
    .local v1, "c":I
    invoke-static {v1}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 604
    .local v2, "bb":Ljava/nio/ByteBuffer;
    const-wide/16 v3, 0x0

    .line 605
    .local v3, "tw":J
    move-wide v5, p1

    .line 607
    .local v5, "pos":J
    :try_start_d
    invoke-static {v2}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    .line 608
    :goto_10
    int-to-long v7, p3

    cmp-long v7, v3, v7

    if-gez v7, :cond_39

    .line 609
    int-to-long v7, p3

    sub-long/2addr v7, v3

    long-to-int v7, v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 610
    invoke-virtual {p0, v2, v5, v6}, Lsun/nio/ch/FileChannelImpl;->read(Ljava/nio/ByteBuffer;J)I

    move-result v7

    .line 611
    .local v7, "nr":I
    if-gtz v7, :cond_26

    .line 612
    goto :goto_39

    .line 613
    :cond_26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 616
    invoke-interface {p4, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 617
    .local v8, "nw":I
    int-to-long v9, v8

    add-long/2addr v3, v9

    .line 618
    if-eq v8, v7, :cond_32

    .line 619
    goto :goto_39

    .line 620
    :cond_32
    int-to-long v9, v8

    add-long/2addr v5, v9

    .line 621
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_40
    .catchall {:try_start_d .. :try_end_37} :catchall_3e

    .line 622
    nop

    .end local v7    # "nr":I
    .end local v8    # "nw":I
    goto :goto_10

    .line 623
    :cond_39
    :goto_39
    nop

    .line 629
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 623
    return-wide v3

    .line 629
    :catchall_3e
    move-exception v0

    goto :goto_4e

    .line 624
    :catch_40
    move-exception v0

    .line 625
    .local v0, "x":Ljava/io/IOException;
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_4c

    .line 626
    nop

    .line 629
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 626
    return-wide v3

    .line 627
    :cond_4c
    nop

    .end local v1    # "c":I
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "tw":J
    .end local v5    # "pos":J
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "position":J
    .end local p3    # "icount":I
    .end local p4    # "target":Ljava/nio/channels/WritableByteChannel;
    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_3e

    .line 629
    .end local v0    # "x":Ljava/io/IOException;
    .restart local v1    # "c":I
    .restart local v2    # "bb":Ljava/nio/ByteBuffer;
    .restart local v3    # "tw":J
    .restart local v5    # "pos":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "position":J
    .restart local p3    # "icount":I
    .restart local p4    # "target":Ljava/nio/channels/WritableByteChannel;
    :goto_4e
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 630
    throw v0
.end method

.method private blacklist transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J
    .registers 19
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    move-object/from16 v5, p4

    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    const-wide/16 v1, -0x4

    if-nez v0, :cond_9

    .line 503
    return-wide v1

    .line 505
    :cond_9
    const/4 v0, 0x0

    .line 506
    .local v0, "targetFD":Ljava/io/FileDescriptor;
    instance-of v3, v5, Lsun/nio/ch/FileChannelImpl;

    const-wide/16 v6, -0x6

    if-eqz v3, :cond_1c

    .line 507
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    if-nez v3, :cond_15

    .line 508
    return-wide v6

    .line 509
    :cond_15
    move-object v3, v5

    check-cast v3, Lsun/nio/ch/FileChannelImpl;

    iget-object v0, v3, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v6, v0

    goto :goto_3f

    .line 510
    :cond_1c
    instance-of v3, v5, Lsun/nio/ch/SelChImpl;

    if-eqz v3, :cond_3e

    .line 512
    instance-of v3, v5, Lsun/nio/ch/SinkChannelImpl;

    if-eqz v3, :cond_29

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    if-nez v3, :cond_29

    .line 513
    return-wide v6

    .line 517
    :cond_29
    move-object v3, v5

    check-cast v3, Ljava/nio/channels/SelectableChannel;

    .line 518
    .local v3, "sc":Ljava/nio/channels/SelectableChannel;
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v4, v3}, Lsun/nio/ch/FileDispatcher;->canTransferToDirectly(Ljava/nio/channels/SelectableChannel;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 519
    return-wide v6

    .line 521
    :cond_35
    move-object v4, v5

    check-cast v4, Lsun/nio/ch/SelChImpl;

    invoke-interface {v4}, Lsun/nio/ch/SelChImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v6, v0

    goto :goto_3f

    .line 510
    .end local v3    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_3e
    move-object v6, v0

    .line 524
    .end local v0    # "targetFD":Ljava/io/FileDescriptor;
    .local v6, "targetFD":Ljava/io/FileDescriptor;
    :goto_3f
    if-nez v6, :cond_42

    .line 525
    return-wide v1

    .line 526
    :cond_42
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v7

    .line 527
    .local v7, "thisFDVal":I
    invoke-static {v6}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v8

    .line 528
    .local v8, "targetFDVal":I
    if-ne v7, v8, :cond_4f

    .line 529
    return-wide v1

    .line 531
    :cond_4f
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->transferToDirectlyNeedsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 532
    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v9

    .line 533
    :try_start_5a
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->position()J

    move-result-wide v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_72

    move-wide v10, v0

    .line 535
    .local v10, "pos":J
    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    :try_start_63
    invoke-direct/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->transferToDirectlyInternal(JILjava/nio/channels/WritableByteChannel;Ljava/io/FileDescriptor;)J

    move-result-wide v12
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_6c

    .line 538
    :try_start_67
    invoke-virtual {p0, v10, v11}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    monitor-exit v9

    .line 535
    return-wide v12

    .line 538
    :catchall_6c
    move-exception v0

    invoke-virtual {p0, v10, v11}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 539
    nop

    .end local v6    # "targetFD":Ljava/io/FileDescriptor;
    .end local v7    # "thisFDVal":I
    .end local v8    # "targetFDVal":I
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "position":J
    .end local p3    # "icount":I
    .end local p4    # "target":Ljava/nio/channels/WritableByteChannel;
    throw v0

    .line 540
    .end local v10    # "pos":J
    .restart local v6    # "targetFD":Ljava/io/FileDescriptor;
    .restart local v7    # "thisFDVal":I
    .restart local v8    # "targetFDVal":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "position":J
    .restart local p3    # "icount":I
    .restart local p4    # "target":Ljava/nio/channels/WritableByteChannel;
    :catchall_72
    move-exception v0

    monitor-exit v9
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_72

    throw v0

    .line 542
    :cond_75
    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->transferToDirectlyInternal(JILjava/nio/channels/WritableByteChannel;Ljava/io/FileDescriptor;)J

    move-result-wide v9

    return-wide v9
.end method

.method private blacklist transferToDirectlyInternal(JILjava/nio/channels/WritableByteChannel;Ljava/io/FileDescriptor;)J
    .registers 22
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .param p5, "targetFD"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    move-object/from16 v1, p0

    move-object/from16 v8, p4

    .line 467
    const-wide/16 v2, -0x1

    .line 468
    .local v2, "n":J
    const/4 v4, -0x1

    .line 470
    .local v4, "ti":I
    const/4 v9, 0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    :try_start_b
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 471
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_a1

    move v13, v0

    .line 472
    .end local v4    # "ti":I
    .local v13, "ti":I
    :try_start_15
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_9e

    if-nez v0, :cond_2b

    .line 473
    nop

    .line 493
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 494
    cmp-long v0, v2, v10

    if-lez v0, :cond_26

    goto :goto_27

    :cond_26
    move v9, v12

    :goto_27
    invoke-virtual {v1, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 473
    return-wide v10

    .line 475
    :cond_2b
    :try_start_2b
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_9e

    move-wide v14, v2

    .line 477
    .end local v2    # "n":J
    .local v14, "n":J
    :cond_33
    :try_start_33
    iget-object v2, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    move/from16 v3, p3

    int-to-long v5, v3

    move-wide/from16 v3, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lsun/nio/ch/FileChannelImpl;->transferTo0(Ljava/io/FileDescriptor;JJLjava/io/FileDescriptor;)J

    move-result-wide v5

    move-wide v14, v5

    .line 478
    const-wide/16 v2, -0x3

    cmp-long v0, v14, v2

    if-nez v0, :cond_4d

    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_33

    .line 479
    :cond_4d
    const-wide/16 v2, -0x6

    cmp-long v0, v14, v2

    if-nez v0, :cond_6f

    .line 480
    instance-of v0, v8, Lsun/nio/ch/SinkChannelImpl;

    if-eqz v0, :cond_59

    .line 481
    sput-boolean v12, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    .line 482
    :cond_59
    instance-of v0, v8, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_5f

    .line 483
    sput-boolean v12, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z
    :try_end_5f
    .catchall {:try_start_33 .. :try_end_5f} :catchall_9a

    .line 484
    :cond_5f
    nop

    .line 493
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 494
    cmp-long v0, v14, v10

    if-lez v0, :cond_6a

    goto :goto_6b

    :cond_6a
    move v9, v12

    :goto_6b
    invoke-virtual {v1, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 484
    return-wide v2

    .line 486
    :cond_6f
    const-wide/16 v2, -0x4

    cmp-long v0, v14, v2

    if-nez v0, :cond_87

    .line 488
    :try_start_75
    sput-boolean v12, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_9a

    .line 489
    nop

    .line 493
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 494
    cmp-long v0, v14, v10

    if-lez v0, :cond_82

    goto :goto_83

    :cond_82
    move v9, v12

    :goto_83
    invoke-virtual {v1, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 489
    return-wide v2

    .line 491
    :cond_87
    :try_start_87
    invoke-static {v14, v15}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v2
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_9a

    .line 493
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 494
    cmp-long v0, v14, v10

    if-lez v0, :cond_95

    goto :goto_96

    :cond_95
    move v9, v12

    :goto_96
    invoke-virtual {v1, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 491
    return-wide v2

    .line 493
    :catchall_9a
    move-exception v0

    move v4, v13

    move-wide v2, v14

    goto :goto_a2

    .end local v14    # "n":J
    .restart local v2    # "n":J
    :catchall_9e
    move-exception v0

    move v4, v13

    goto :goto_a2

    .end local v13    # "ti":I
    .restart local v4    # "ti":I
    :catchall_a1
    move-exception v0

    :goto_a2
    iget-object v5, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v4}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 494
    cmp-long v5, v2, v10

    if-lez v5, :cond_ac

    goto :goto_ad

    :cond_ac
    move v9, v12

    :goto_ad
    invoke-virtual {v1, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 495
    throw v0
.end method

.method private blacklist transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 16
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    instance-of v1, p5, Lsun/nio/ch/SelChImpl;

    .line 554
    .local v1, "isSelChImpl":Z
    instance-of v0, p5, Lsun/nio/ch/FileChannelImpl;

    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 555
    const-wide/16 v2, -0x4

    return-wide v2

    .line 558
    :cond_b
    move-wide v2, p3

    move-wide v6, p1

    .line 559
    .end local p1    # "position":J
    .local v2, "remaining":J
    .local v6, "position":J
    :goto_d
    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-lez p1, :cond_53

    .line 560
    const-wide/32 p1, 0x800000

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 562
    .local v8, "size":J
    :try_start_1a
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1
    :try_end_21
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1a .. :try_end_21} :catch_46
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_3e

    .line 565
    .local p1, "dbb":Ljava/nio/MappedByteBuffer;
    :try_start_21
    invoke-interface {p5, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_37

    .line 566
    .local p2, "n":I
    nop

    .line 567
    int-to-long v4, p2

    sub-long/2addr v2, v4

    .line 568
    if-eqz v1, :cond_2e

    .line 575
    :try_start_2a
    invoke-static {p1}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 570
    goto :goto_53

    .line 572
    :cond_2e
    nop

    .line 573
    int-to-long v4, p2

    add-long/2addr v6, v4

    .line 575
    .end local p2    # "n":I
    invoke-static {p1}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 576
    nop

    .line 592
    .end local p1    # "dbb":Ljava/nio/MappedByteBuffer;
    nop

    .line 593
    .end local v8    # "size":J
    goto :goto_d

    .line 575
    .restart local v8    # "size":J
    .restart local p1    # "dbb":Ljava/nio/MappedByteBuffer;
    :catchall_37
    move-exception v0

    move-object p2, v0

    invoke-static {p1}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 576
    nop

    .end local v1    # "isSelChImpl":Z
    .end local v2    # "remaining":J
    .end local v6    # "position":J
    .end local v8    # "size":J
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p3    # "count":J
    .end local p5    # "target":Ljava/nio/channels/WritableByteChannel;
    throw p2
    :try_end_3e
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2a .. :try_end_3e} :catch_46
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3e} :catch_3e

    .line 587
    .end local p1    # "dbb":Ljava/nio/MappedByteBuffer;
    .restart local v1    # "isSelChImpl":Z
    .restart local v2    # "remaining":J
    .restart local v6    # "position":J
    .restart local v8    # "size":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p3    # "count":J
    .restart local p5    # "target":Ljava/nio/channels/WritableByteChannel;
    :catch_3e
    move-exception v0

    move-object p1, v0

    .line 589
    .local p1, "ioe":Ljava/io/IOException;
    cmp-long p2, v2, p3

    if-eqz p2, :cond_45

    .line 591
    goto :goto_53

    .line 590
    :cond_45
    throw p1

    .line 577
    .end local p1    # "ioe":Ljava/io/IOException;
    :catch_46
    move-exception v0

    move-object p1, v0

    .line 580
    .local p1, "e":Ljava/nio/channels/ClosedByInterruptException;
    nop

    .line 582
    :try_start_49
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    .line 585
    goto :goto_52

    .line 583
    :catchall_4d
    move-exception v0

    move-object p2, v0

    .line 584
    .local p2, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {p1, p2}, Ljava/nio/channels/ClosedByInterruptException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 586
    .end local p2    # "suppressed":Ljava/lang/Throwable;
    :goto_52
    throw p1

    .line 594
    .end local v8    # "size":J
    .end local p1    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :cond_53
    :goto_53
    sub-long p1, p3, v2

    return-wide p1
.end method

.method private static blacklist unmap(Ljava/nio/MappedByteBuffer;)V
    .registers 2
    .param p0, "bb"    # Ljava/nio/MappedByteBuffer;

    .line 896
    move-object v0, p0

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v0

    .line 897
    .local v0, "cl":Lsun/misc/Cleaner;
    if-eqz v0, :cond_c

    .line 898
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 899
    :cond_c
    return-void
.end method

.method private static native greylist unmap0(JJ)I
.end method

.method private blacklist writeInternal(Ljava/nio/ByteBuffer;J)I
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    nop

    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, "n":I
    const/4 v1, -0x1

    .line 822
    .local v1, "ti":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 823
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v4

    move v1, v4

    .line 824
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_49

    if-nez v4, :cond_25

    .line 825
    nop

    .line 831
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 832
    if-lez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 833
    nop

    .line 825
    const/4 v2, -0x1

    return v2

    .line 827
    :cond_25
    :try_start_25
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v4

    move v0, v4

    .line 828
    const/4 v4, -0x3

    if-ne v0, v4, :cond_37

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_25

    .line 829
    :cond_37
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v4
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_49

    .line 831
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 832
    if-lez v0, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    :goto_44
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 833
    nop

    .line 829
    return v4

    .line 831
    :catchall_49
    move-exception v4

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 832
    if-lez v0, :cond_52

    goto :goto_53

    :cond_52
    move v2, v3

    :goto_53
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 833
    nop

    .line 834
    throw v4
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 174
    :cond_9
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 176
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 177
    nop

    .line 178
    return-void

    .line 176
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 177
    throw v0
.end method

.method public whitelist test-api force(Z)V
    .registers 9
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 427
    const/4 v0, -0x1

    .line 428
    .local v0, "rv":I
    const/4 v1, -0x1

    .line 430
    .local v1, "ti":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :try_start_8
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 431
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v5

    move v1, v5

    .line 432
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_46

    if-nez v5, :cond_26

    .line 438
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 439
    if-le v0, v4, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 440
    nop

    .line 433
    return-void

    .line 435
    :cond_26
    :try_start_26
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v5, v6, p1}, Lsun/nio/ch/FileDispatcher;->force(Ljava/io/FileDescriptor;Z)I

    move-result v5

    move v0, v5

    .line 436
    const/4 v5, -0x3

    if-ne v0, v5, :cond_38

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_46

    if-nez v5, :cond_26

    .line 438
    :cond_38
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 439
    if-le v0, v4, :cond_40

    goto :goto_41

    :cond_40
    move v2, v3

    :goto_41
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 440
    nop

    .line 442
    return-void

    .line 438
    :catchall_46
    move-exception v5

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 439
    if-le v0, v4, :cond_4f

    goto :goto_50

    :cond_4f
    move v2, v3

    :goto_50
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 440
    nop

    .line 441
    throw v5
.end method

.method protected whitelist test-api implCloseChannel()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 140
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-eqz v0, :cond_40

    .line 141
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v0}, Lsun/nio/ch/FileLockTable;->removeAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/FileLock;

    .line 142
    .local v1, "fl":Ljava/nio/channels/FileLock;
    monitor-enter v1

    .line 143
    :try_start_20
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 144
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V

    .line 145
    move-object v2, v1

    check-cast v2, Lsun/nio/ch/FileLockImpl;

    invoke-virtual {v2}, Lsun/nio/ch/FileLockImpl;->invalidate()V

    .line 147
    :cond_3b
    monitor-exit v1

    .line 148
    .end local v1    # "fl":Ljava/nio/channels/FileLock;
    goto :goto_13

    .line 147
    .restart local v1    # "fl":Ljava/nio/channels/FileLock;
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_3d

    throw v0

    .line 152
    .end local v1    # "fl":Ljava/nio/channels/FileLock;
    :cond_40
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->signalAndWait()V

    .line 154
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    if-eqz v0, :cond_51

    .line 161
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_58

    .line 163
    :cond_51
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/FileDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 166
    :goto_58
    return-void
.end method

.method public whitelist test-api lock(JJZ)Ljava/nio/channels/FileLock;
    .registers 20
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1120
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1121
    if-eqz p5, :cond_10

    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_a

    goto :goto_10

    .line 1122
    :cond_a
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 1123
    :cond_10
    :goto_10
    if-nez p5, :cond_1d

    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_17

    goto :goto_1d

    .line 1124
    :cond_17
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 1125
    :cond_1d
    :goto_1d
    new-instance v1, Lsun/nio/ch/FileLockImpl;

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 1126
    .local v1, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    move-result-object v11

    .line 1127
    .local v11, "flt":Lsun/nio/ch/FileLockTable;
    invoke-virtual {v11, v1}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    .line 1128
    const/4 v12, 0x0

    .line 1129
    .local v12, "completed":Z
    const/4 v3, -0x1

    .line 1131
    .local v3, "ti":I
    :try_start_31
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 1132
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_a3

    move v13, v0

    .line 1133
    .end local v3    # "ti":I
    .local v13, "ti":I
    :try_start_3b
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_a0

    if-nez v0, :cond_59

    .line 1134
    nop

    .line 1150
    if-nez v12, :cond_47

    .line 1151
    invoke-virtual {v11, v1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1152
    :cond_47
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1154
    :try_start_4c
    invoke-virtual {p0, v12}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_4f
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4c .. :try_end_4f} :catch_52

    .line 1157
    nop

    .line 1134
    const/4 v0, 0x0

    return-object v0

    .line 1155
    :catch_52
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v3, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v3}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v3

    .line 1137
    .end local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :cond_59
    :try_start_59
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x1

    move-wide v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v0

    .line 1138
    .local v0, "n":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_70

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_59

    .line 1139
    :cond_70
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 1140
    const/4 v3, 0x1

    if-ne v0, v3, :cond_89

    .line 1141
    nop

    .line 1142
    new-instance v2, Lsun/nio/ch/FileLockImpl;

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    move-object v3, v2

    .line 1144
    .local v3, "fli2":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {v11, v1, v3}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_88
    .catchall {:try_start_59 .. :try_end_88} :catchall_a0

    .line 1145
    move-object v1, v3

    .line 1147
    .end local v3    # "fli2":Lsun/nio/ch/FileLockImpl;
    :cond_89
    const/4 v12, 0x1

    .line 1150
    .end local v0    # "n":I
    :cond_8a
    if-nez v12, :cond_8f

    .line 1151
    invoke-virtual {v11, v1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1152
    :cond_8f
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1154
    :try_start_94
    invoke-virtual {p0, v12}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_97
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_94 .. :try_end_97} :catch_99

    .line 1157
    nop

    .line 1159
    return-object v1

    .line 1155
    :catch_99
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v3, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v3}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v3

    .line 1150
    .end local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catchall_a0
    move-exception v0

    move v3, v13

    goto :goto_a4

    .end local v13    # "ti":I
    .local v3, "ti":I
    :catchall_a3
    move-exception v0

    :goto_a4
    if-nez v12, :cond_a9

    .line 1151
    invoke-virtual {v11, v1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1152
    :cond_a9
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1154
    :try_start_ae
    invoke-virtual {p0, v12}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_b1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_ae .. :try_end_b1} :catch_b3

    .line 1157
    nop

    .line 1158
    throw v0

    .line 1155
    :catch_b3
    move-exception v0

    .line 1156
    .restart local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v4, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v4}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v4
.end method

.method public whitelist test-api map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 38
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    invoke-direct {v1}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 909
    if-eqz v7, :cond_211

    .line 911
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_209

    .line 913
    cmp-long v0, v8, v2

    if-ltz v0, :cond_201

    .line 915
    add-long v4, p2, v8

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1f9

    .line 917
    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v8, v4

    if-gtz v0, :cond_1f1

    .line 920
    const/4 v0, -0x1

    .line 921
    .local v0, "imode":I
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v7, v4, :cond_2a

    .line 922
    const/4 v0, 0x0

    move v4, v0

    goto :goto_39

    .line 923
    :cond_2a
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v7, v4, :cond_31

    .line 924
    const/4 v0, 0x1

    move v4, v0

    goto :goto_39

    .line 925
    :cond_31
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v7, v4, :cond_38

    .line 926
    const/4 v0, 0x2

    move v4, v0

    goto :goto_39

    .line 925
    :cond_38
    move v4, v0

    .line 927
    .end local v0    # "imode":I
    .local v4, "imode":I
    :goto_39
    nop

    .line 928
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-eq v7, v0, :cond_49

    iget-boolean v0, v1, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_43

    goto :goto_49

    .line 929
    :cond_43
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 930
    :cond_49
    :goto_49
    iget-boolean v0, v1, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_1eb

    .line 933
    const-wide/16 v10, -0x1

    .line 934
    .local v10, "addr":J
    const/4 v5, -0x1

    .line 936
    .local v5, "ti":I
    :try_start_50
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 937
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_1db

    move v12, v0

    .line 938
    .end local v5    # "ti":I
    .local v12, "ti":I
    :try_start_5a
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_1d6

    const/4 v5, 0x0

    if-nez v0, :cond_6f

    .line 939
    nop

    .line 1031
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1032
    invoke-static {v10, v11}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v0

    invoke-virtual {v1, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 939
    return-object v5

    .line 943
    :cond_6f
    :try_start_6f
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v6, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v6}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v13
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_1d6

    .line 944
    .local v13, "filesize":J
    const-wide/16 v15, -0x3

    cmp-long v0, v13, v15

    if-nez v0, :cond_8a

    :try_start_7d
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_84

    if-nez v0, :cond_6f

    goto :goto_8a

    .line 1031
    .end local v13    # "filesize":J
    :catchall_84
    move-exception v0

    move/from16 v18, v4

    move v5, v12

    goto/16 :goto_1de

    .line 945
    .restart local v13    # "filesize":J
    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_1d6

    if-nez v0, :cond_9e

    .line 946
    nop

    .line 1031
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1032
    invoke-static {v10, v11}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v0

    invoke-virtual {v1, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 946
    return-object v5

    .line 948
    :cond_9e
    add-long v15, p2, v8

    cmp-long v0, v13, v15

    if-gez v0, :cond_db

    .line 949
    :try_start_a4
    iget-boolean v0, v1, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_d3

    .line 955
    :goto_a8
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v6, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-wide v15, v2

    add-long v2, p2, v8

    invoke-virtual {v0, v6, v2, v3}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    move-result v0

    .line 956
    .local v0, "rv":I
    const/4 v2, -0x3

    if-ne v0, v2, :cond_bf

    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_bd

    goto :goto_bf

    :cond_bd
    move-wide v2, v15

    goto :goto_a8

    .line 957
    :cond_bf
    :goto_bf
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2
    :try_end_c3
    .catchall {:try_start_a4 .. :try_end_c3} :catchall_84

    if-nez v2, :cond_dc

    .line 958
    nop

    .line 1031
    iget-object v2, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1032
    invoke-static {v10, v11}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v2

    invoke-virtual {v1, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 958
    return-object v5

    .line 950
    .end local v0    # "rv":I
    :cond_d3
    :try_start_d3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Channel not open for writing - cannot extend file to required size"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "imode":I
    .end local v10    # "addr":J
    .end local v12    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .end local p2    # "position":J
    .end local p4    # "size":J
    throw v0

    .line 948
    .restart local v4    # "imode":I
    .restart local v10    # "addr":J
    .restart local v12    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .restart local p2    # "position":J
    .restart local p4    # "size":J
    :cond_db
    move-wide v15, v2

    .line 960
    :cond_dc
    cmp-long v0, v8, v15

    const/16 v16, 0x1

    if-nez v0, :cond_10f

    .line 961
    const-wide/16 v10, 0x0

    .line 963
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object/from16 v21, v0

    .line 971
    .local v21, "dummy":Ljava/io/FileDescriptor;
    new-instance v17, Ljava/nio/DirectByteBuffer;

    iget-boolean v0, v1, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_f7

    if-nez v4, :cond_f4

    goto :goto_f7

    :cond_f4
    const/16 v23, 0x0

    goto :goto_f9

    :cond_f7
    :goto_f7
    move/from16 v23, v16

    :goto_f9
    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v17 .. v23}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_102
    .catchall {:try_start_d3 .. :try_end_102} :catchall_84

    .line 1031
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1032
    invoke-static {v10, v11}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v0

    invoke-virtual {v1, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 971
    return-object v17

    .line 975
    .end local v21    # "dummy":Ljava/io/FileDescriptor;
    :cond_10f
    :try_start_10f
    sget-wide v2, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    rem-long v2, p2, v2
    :try_end_113
    .catchall {:try_start_10f .. :try_end_113} :catchall_1d6

    long-to-int v2, v2

    .line 976
    .local v2, "pagePosition":I
    int-to-long v5, v2

    sub-long v5, p2, v5

    .line 977
    .local v5, "mapPosition":J
    int-to-long v0, v2

    add-long v20, v8, v0

    .line 980
    .local v20, "mapSize":J
    :try_start_11a
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V
    :try_end_121
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11a .. :try_end_121} :catch_144
    .catchall {:try_start_11a .. :try_end_121} :catchall_13b

    .line 982
    move-object/from16 v1, p0

    move v15, v2

    move v2, v4

    move-wide v3, v5

    move-wide/from16 v5, v20

    .end local v4    # "imode":I
    .end local v20    # "mapSize":J
    .local v2, "imode":I
    .local v3, "mapPosition":J
    .local v5, "mapSize":J
    .local v15, "pagePosition":I
    :try_start_128
    invoke-direct/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J

    move-result-wide v17
    :try_end_12c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_128 .. :try_end_12c} :catch_139
    .catchall {:try_start_128 .. :try_end_12c} :catchall_131

    .line 998
    .end local v10    # "addr":J
    .local v17, "addr":J
    move-object/from16 v1, p0

    move-wide/from16 v18, v17

    goto :goto_164

    .line 1031
    .end local v3    # "mapPosition":J
    .end local v5    # "mapSize":J
    .end local v13    # "filesize":J
    .end local v15    # "pagePosition":I
    .end local v17    # "addr":J
    .restart local v10    # "addr":J
    :catchall_131
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v18, v2

    move v5, v12

    goto/16 :goto_1de

    .line 983
    .restart local v3    # "mapPosition":J
    .restart local v5    # "mapSize":J
    .restart local v13    # "filesize":J
    .restart local v15    # "pagePosition":I
    :catch_139
    move-exception v0

    goto :goto_14a

    .line 1031
    .end local v2    # "imode":I
    .end local v3    # "mapPosition":J
    .end local v5    # "mapSize":J
    .end local v13    # "filesize":J
    .end local v15    # "pagePosition":I
    .restart local v4    # "imode":I
    :catchall_13b
    move-exception v0

    move v2, v4

    move-object/from16 v1, p0

    move/from16 v18, v2

    move v5, v12

    .end local v4    # "imode":I
    .restart local v2    # "imode":I
    goto/16 :goto_1de

    .line 983
    .local v2, "pagePosition":I
    .restart local v4    # "imode":I
    .local v5, "mapPosition":J
    .restart local v13    # "filesize":J
    .restart local v20    # "mapSize":J
    :catch_144
    move-exception v0

    move v15, v2

    move v2, v4

    move-wide v3, v5

    move-wide/from16 v5, v20

    .end local v4    # "imode":I
    .end local v20    # "mapSize":J
    .local v2, "imode":I
    .restart local v3    # "mapPosition":J
    .local v5, "mapSize":J
    .restart local v15    # "pagePosition":I
    :goto_14a
    move-object/from16 v17, v0

    .line 986
    .local v17, "x":Ljava/lang/OutOfMemoryError;
    :try_start_14c
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_1cf

    .line 988
    const-wide/16 v0, 0x64

    :try_start_151
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_154
    .catch Ljava/lang/InterruptedException; {:try_start_151 .. :try_end_154} :catch_155
    .catchall {:try_start_151 .. :try_end_154} :catchall_131

    .line 991
    goto :goto_15d

    .line 989
    :catch_155
    move-exception v0

    .line 990
    .local v0, "y":Ljava/lang/InterruptedException;
    :try_start_156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_15d
    .catchall {:try_start_156 .. :try_end_15d} :catchall_1cf

    .line 993
    .end local v0    # "y":Ljava/lang/InterruptedException;
    :goto_15d
    move-object/from16 v1, p0

    :try_start_15f
    invoke-direct/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J

    move-result-wide v18
    :try_end_163
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15f .. :try_end_163} :catch_1bf
    .catchall {:try_start_15f .. :try_end_163} :catchall_1bd

    .line 997
    .end local v10    # "addr":J
    .local v18, "addr":J
    nop

    .line 1004
    .end local v17    # "x":Ljava/lang/OutOfMemoryError;
    :goto_164
    :try_start_164
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v10, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v10}, Lsun/nio/ch/FileDispatcher;->duplicateForMapping(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v23
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_16c} :catch_1b1
    .catchall {:try_start_164 .. :try_end_16c} :catchall_1aa

    move-object/from16 v29, v23

    .line 1008
    .local v29, "mfd":Ljava/io/FileDescriptor;
    nop

    .line 1010
    nop

    .line 1011
    nop

    .line 1012
    long-to-int v0, v8

    .line 1013
    .local v0, "isize":I
    :try_start_172
    new-instance v30, Lsun/nio/ch/FileChannelImpl$Unmapper;

    const/16 v24, 0x0

    move/from16 v22, v0

    move-wide/from16 v20, v5

    move-object/from16 v23, v29

    move-object/from16 v17, v30

    .end local v0    # "isize":I
    .end local v5    # "mapSize":J
    .end local v29    # "mfd":Ljava/io/FileDescriptor;
    .restart local v20    # "mapSize":J
    .local v22, "isize":I
    .local v23, "mfd":Ljava/io/FileDescriptor;
    invoke-direct/range {v17 .. v24}, Lsun/nio/ch/FileChannelImpl$Unmapper;-><init>(JJILjava/io/FileDescriptor;Lsun/nio/ch/FileChannelImpl-IA;)V
    :try_end_181
    .catchall {:try_start_172 .. :try_end_181} :catchall_1aa

    move-wide/from16 v10, v18

    move/from16 v26, v22

    .line 1028
    .end local v18    # "addr":J
    .end local v20    # "mapSize":J
    .end local v22    # "isize":I
    .end local v23    # "mfd":Ljava/io/FileDescriptor;
    .restart local v5    # "mapSize":J
    .restart local v10    # "addr":J
    .local v26, "isize":I
    .restart local v29    # "mfd":Ljava/io/FileDescriptor;
    .local v30, "um":Lsun/nio/ch/FileChannelImpl$Unmapper;
    :try_start_185
    new-instance v25, Ljava/nio/DirectByteBuffer;
    :try_end_187
    .catchall {:try_start_185 .. :try_end_187} :catchall_1bd

    move/from16 v18, v2

    move-wide/from16 v19, v3

    .end local v2    # "imode":I
    .end local v3    # "mapPosition":J
    .local v18, "imode":I
    .local v19, "mapPosition":J
    int-to-long v2, v15

    add-long v27, v10, v2

    :try_start_18e
    iget-boolean v0, v1, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_198

    if-nez v18, :cond_195

    goto :goto_198

    :cond_195
    const/16 v31, 0x0

    goto :goto_19a

    :cond_198
    :goto_198
    move/from16 v31, v16

    :goto_19a
    invoke-direct/range {v25 .. v31}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_19d
    .catchall {:try_start_18e .. :try_end_19d} :catchall_1cc

    .line 1031
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1032
    invoke-static {v10, v11}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v0

    invoke-virtual {v1, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 1028
    return-object v25

    .line 1031
    .end local v5    # "mapSize":J
    .end local v10    # "addr":J
    .end local v13    # "filesize":J
    .end local v15    # "pagePosition":I
    .end local v19    # "mapPosition":J
    .end local v26    # "isize":I
    .end local v29    # "mfd":Ljava/io/FileDescriptor;
    .end local v30    # "um":Lsun/nio/ch/FileChannelImpl$Unmapper;
    .restart local v2    # "imode":I
    .local v18, "addr":J
    :catchall_1aa
    move-exception v0

    move-wide/from16 v10, v18

    move/from16 v18, v2

    move v5, v12

    .end local v2    # "imode":I
    .restart local v10    # "addr":J
    .local v18, "imode":I
    goto :goto_1de

    .line 1005
    .end local v10    # "addr":J
    .restart local v2    # "imode":I
    .restart local v3    # "mapPosition":J
    .restart local v5    # "mapSize":J
    .restart local v13    # "filesize":J
    .restart local v15    # "pagePosition":I
    .local v18, "addr":J
    :catch_1b1
    move-exception v0

    move-wide/from16 v10, v18

    move/from16 v18, v2

    move-wide/from16 v19, v3

    .line 1006
    .end local v2    # "imode":I
    .end local v3    # "mapPosition":J
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v10    # "addr":J
    .local v18, "imode":I
    .restart local v19    # "mapPosition":J
    :try_start_1b8
    invoke-static {v10, v11, v5, v6}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    .line 1007
    nop

    .end local v10    # "addr":J
    .end local v12    # "ti":I
    .end local v18    # "imode":I
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .end local p2    # "position":J
    .end local p4    # "size":J
    throw v0

    .line 1031
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v5    # "mapSize":J
    .end local v13    # "filesize":J
    .end local v15    # "pagePosition":I
    .end local v19    # "mapPosition":J
    .restart local v2    # "imode":I
    .restart local v10    # "addr":J
    .restart local v12    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .restart local p2    # "position":J
    .restart local p4    # "size":J
    :catchall_1bd
    move-exception v0

    goto :goto_1d2

    .line 994
    .restart local v3    # "mapPosition":J
    .restart local v5    # "mapSize":J
    .restart local v13    # "filesize":J
    .restart local v15    # "pagePosition":I
    .restart local v17    # "x":Ljava/lang/OutOfMemoryError;
    :catch_1bf
    move-exception v0

    move/from16 v18, v2

    move-wide/from16 v19, v3

    .line 996
    .end local v2    # "imode":I
    .end local v3    # "mapPosition":J
    .local v0, "y":Ljava/lang/OutOfMemoryError;
    .restart local v18    # "imode":I
    .restart local v19    # "mapPosition":J
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Map failed"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v10    # "addr":J
    .end local v12    # "ti":I
    .end local v18    # "imode":I
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .end local p2    # "position":J
    .end local p4    # "size":J
    throw v2
    :try_end_1cc
    .catchall {:try_start_1b8 .. :try_end_1cc} :catchall_1cc

    .line 1031
    .end local v0    # "y":Ljava/lang/OutOfMemoryError;
    .end local v5    # "mapSize":J
    .end local v13    # "filesize":J
    .end local v15    # "pagePosition":I
    .end local v17    # "x":Ljava/lang/OutOfMemoryError;
    .end local v19    # "mapPosition":J
    .restart local v10    # "addr":J
    .restart local v12    # "ti":I
    .restart local v18    # "imode":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .restart local p2    # "position":J
    .restart local p4    # "size":J
    :catchall_1cc
    move-exception v0

    move v5, v12

    goto :goto_1de

    .end local v18    # "imode":I
    .restart local v2    # "imode":I
    :catchall_1cf
    move-exception v0

    move-object/from16 v1, p0

    :goto_1d2
    move/from16 v18, v2

    move v5, v12

    .end local v2    # "imode":I
    .restart local v18    # "imode":I
    goto :goto_1de

    .end local v18    # "imode":I
    .restart local v4    # "imode":I
    :catchall_1d6
    move-exception v0

    move/from16 v18, v4

    move v5, v12

    .end local v4    # "imode":I
    .restart local v18    # "imode":I
    goto :goto_1de

    .end local v12    # "ti":I
    .end local v18    # "imode":I
    .restart local v4    # "imode":I
    .local v5, "ti":I
    :catchall_1db
    move-exception v0

    move/from16 v18, v4

    .end local v4    # "imode":I
    .restart local v18    # "imode":I
    :goto_1de
    iget-object v2, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v5}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1032
    invoke-static {v10, v11}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v2

    invoke-virtual {v1, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 1033
    throw v0

    .line 931
    .end local v5    # "ti":I
    .end local v10    # "addr":J
    .end local v18    # "imode":I
    .restart local v4    # "imode":I
    :cond_1eb
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 918
    .end local v4    # "imode":I
    :cond_1f1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Size exceeds Integer.MAX_VALUE"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_1f9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Position + size overflow"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative size"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative position"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_211
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Mode is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api position()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 289
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    const-wide/16 v1, -0x1

    .line 291
    .local v1, "p":J
    const/4 v3, -0x1

    .line 293
    .local v3, "ti":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    :try_start_d
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 294
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v8

    move v3, v8

    .line 295
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_73

    if-nez v8, :cond_30

    .line 296
    nop

    .line 311
    :try_start_1e
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 312
    cmp-long v6, v1, v6

    if-lez v6, :cond_28

    goto :goto_29

    :cond_28
    move v4, v5

    :goto_29
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 313
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_85

    .line 296
    const-wide/16 v4, 0x0

    return-wide v4

    .line 297
    :cond_30
    :try_start_30
    sget-object v8, Lsun/nio/ch/FileChannelImpl;->fdAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v8, v9}, Ljdk/internal/access/JavaIOFileDescriptorAccess;->getAppend(Ljava/io/FileDescriptor;)Z

    move-result v8

    .line 301
    .local v8, "append":Z
    if-eqz v8, :cond_41

    .line 302
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v9

    invoke-interface {v9}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 307
    :cond_41
    if-eqz v8, :cond_4c

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v10, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v9, v10}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v9

    goto :goto_52

    :cond_4c
    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v9, v6, v7}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v9

    :goto_52
    move-wide v1, v9

    .line 308
    const-wide/16 v9, -0x3

    cmp-long v9, v1, v9

    if-nez v9, :cond_5f

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v9

    if-nez v9, :cond_41

    .line 309
    :cond_5f
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v9
    :try_end_63
    .catchall {:try_start_30 .. :try_end_63} :catchall_73

    .line 311
    :try_start_63
    iget-object v11, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v11, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 312
    cmp-long v6, v1, v6

    if-lez v6, :cond_6d

    goto :goto_6e

    :cond_6d
    move v4, v5

    :goto_6e
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 313
    monitor-exit v0

    .line 309
    return-wide v9

    .line 311
    .end local v8    # "append":Z
    :catchall_73
    move-exception v8

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 312
    cmp-long v6, v1, v6

    if-lez v6, :cond_7e

    goto :goto_7f

    :cond_7e
    move v4, v5

    :goto_7f
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 313
    nop

    .line 314
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    throw v8

    .line 315
    .end local v1    # "p":J
    .end local v3    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_63 .. :try_end_87} :catchall_85

    throw v1
.end method

.method public whitelist test-api position(J)Ljava/nio/channels/FileChannel;
    .registers 13
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 320
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_75

    .line 322
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    const-wide/16 v1, -0x1

    .line 324
    .local v1, "p":J
    const/4 v3, -0x1

    .line 326
    .local v3, "ti":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    :try_start_13
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 327
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v8

    move v3, v8

    .line 328
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_60

    if-nez v8, :cond_35

    .line 329
    nop

    .line 339
    :try_start_24
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 340
    cmp-long v6, v1, v6

    if-lez v6, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v5

    :goto_2f
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 341
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_72

    .line 329
    const/4 v0, 0x0

    return-object v0

    .line 333
    :cond_35
    :try_start_35
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v8

    invoke-interface {v8}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 335
    :cond_3c
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v8, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v8

    move-wide v1, v8

    .line 336
    const-wide/16 v8, -0x3

    cmp-long v8, v1, v8

    if-nez v8, :cond_4f

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_60

    if-nez v8, :cond_3c

    .line 337
    :cond_4f
    nop

    .line 339
    :try_start_50
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 340
    cmp-long v6, v1, v6

    if-lez v6, :cond_5a

    goto :goto_5b

    :cond_5a
    move v4, v5

    :goto_5b
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 341
    monitor-exit v0

    .line 337
    return-object p0

    .line 339
    :catchall_60
    move-exception v8

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 340
    cmp-long v6, v1, v6

    if-lez v6, :cond_6b

    goto :goto_6c

    :cond_6b
    move v4, v5

    :goto_6c
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 341
    nop

    .line 342
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "newPosition":J
    throw v8

    .line 343
    .end local v1    # "p":J
    .end local v3    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "newPosition":J
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_72

    throw v1

    .line 321
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api position(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 183
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_66

    .line 185
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "n":I
    const/4 v2, -0x1

    .line 189
    .local v2, "ti":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_e
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 190
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v5

    move v2, v5

    .line 191
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_53

    if-nez v5, :cond_2d

    .line 192
    nop

    .line 198
    :try_start_1f
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 199
    if-lez v1, :cond_27

    goto :goto_28

    :cond_27
    move v3, v4

    :goto_28
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 200
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_63

    .line 192
    return v4

    .line 194
    :cond_2d
    :try_start_2d
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    const-wide/16 v7, -0x1

    invoke-static {v5, p1, v7, v8, v6}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v5

    move v1, v5

    .line 195
    const/4 v5, -0x3

    if-ne v1, v5, :cond_41

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 196
    :cond_41
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v5
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_53

    .line 198
    :try_start_45
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 199
    if-lez v1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v4

    :goto_4e
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 200
    monitor-exit v0

    .line 196
    return v5

    .line 198
    :catchall_53
    move-exception v5

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 199
    if-lez v1, :cond_5c

    goto :goto_5d

    :cond_5c
    move v3, v4

    :goto_5d
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 200
    nop

    .line 201
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    throw v5

    .line 202
    .end local v1    # "n":I
    .end local v2    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_45 .. :try_end_65} :catchall_63

    throw v1

    .line 184
    :cond_66
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;J)I
    .registers 6
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    if-eqz p1, :cond_36

    .line 766
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2e

    .line 768
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_28

    .line 770
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 771
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 772
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_1a
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 774
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v1

    .line 776
    :cond_23
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 769
    :cond_28
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 767
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api read([Ljava/nio/ByteBuffer;II)J
    .registers 15
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    if-ltz p2, :cond_7e

    if-ltz p3, :cond_7e

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_7e

    .line 210
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 211
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_78

    .line 213
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    const-wide/16 v1, 0x0

    .line 215
    .local v1, "n":J
    const/4 v3, -0x1

    .line 217
    .local v3, "ti":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :try_start_19
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 218
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v8

    move v3, v8

    .line 219
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_63

    if-nez v8, :cond_3a

    .line 220
    nop

    .line 226
    :try_start_2a
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 227
    cmp-long v8, v1, v6

    if-lez v8, :cond_34

    goto :goto_35

    :cond_34
    move v4, v5

    :goto_35
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 228
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_75

    .line 220
    return-wide v6

    .line 222
    :cond_3a
    :try_start_3a
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v8, p1, p2, p3, v9}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v8

    move-wide v1, v8

    .line 223
    const-wide/16 v8, -0x3

    cmp-long v8, v1, v8

    if-nez v8, :cond_4f

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 224
    :cond_4f
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v8
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_63

    .line 226
    :try_start_53
    iget-object v10, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v10, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 227
    cmp-long v6, v1, v6

    if-lez v6, :cond_5d

    goto :goto_5e

    :cond_5d
    move v4, v5

    :goto_5e
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 228
    monitor-exit v0

    .line 224
    return-wide v8

    .line 226
    :catchall_63
    move-exception v8

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 227
    cmp-long v6, v1, v6

    if-lez v6, :cond_6e

    goto :goto_6f

    :cond_6e
    move v4, v5

    :goto_6f
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 228
    nop

    .line 229
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v8

    .line 230
    .end local v1    # "n":J
    .end local v3    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_53 .. :try_end_77} :catchall_75

    throw v1

    .line 212
    :cond_78
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 209
    :cond_7e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method blacklist release(Lsun/nio/ch/FileLockImpl;)V
    .registers 10
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 1204
    .local v1, "ti":I
    :try_start_6
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1205
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_25

    .line 1207
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1208
    nop

    .line 1209
    nop

    .line 1210
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v0, p1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1211
    return-void

    .line 1207
    :catchall_25
    move-exception v0

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1208
    throw v0
.end method

.method public whitelist test-api size()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 348
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    const-wide/16 v1, -0x1

    .line 350
    .local v1, "s":J
    const/4 v3, -0x1

    .line 352
    .local v3, "ti":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    :try_start_d
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 353
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v8

    move v3, v8

    .line 354
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_57

    if-nez v8, :cond_2e

    .line 355
    nop

    .line 361
    :try_start_1e
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 362
    cmp-long v8, v1, v6

    if-lez v8, :cond_28

    goto :goto_29

    :cond_28
    move v4, v5

    :goto_29
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 363
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_69

    .line 355
    return-wide v6

    .line 357
    :cond_2e
    :try_start_2e
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v8, v9}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v8

    move-wide v1, v8

    .line 358
    const-wide/16 v8, -0x3

    cmp-long v8, v1, v8

    if-nez v8, :cond_43

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 359
    :cond_43
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v8
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_57

    .line 361
    :try_start_47
    iget-object v10, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v10, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 362
    cmp-long v6, v1, v6

    if-lez v6, :cond_51

    goto :goto_52

    :cond_51
    move v4, v5

    :goto_52
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 363
    monitor-exit v0

    .line 359
    return-wide v8

    .line 361
    :catchall_57
    move-exception v8

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 362
    cmp-long v6, v1, v6

    if-lez v6, :cond_62

    goto :goto_63

    :cond_62
    move v4, v5

    :goto_63
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 363
    nop

    .line 364
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    throw v8

    .line 365
    .end local v1    # "s":J
    .end local v3    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_47 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public whitelist test-api transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 13
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 748
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 750
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_43

    .line 752
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3a

    cmp-long v2, p4, v0

    if-ltz v2, :cond_3a

    .line 754
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-lez v2, :cond_20

    .line 755
    return-wide v0

    .line 756
    :cond_20
    instance-of v0, p1, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_31

    .line 757
    move-object v2, p1

    check-cast v2, Lsun/nio/ch/FileChannelImpl;

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .end local p2    # "position":J
    .end local p4    # "count":J
    .local v3, "position":J
    .local v5, "count":J
    invoke-direct/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J

    move-result-wide p2

    move-wide v2, v3

    move-wide v4, v5

    .end local v3    # "position":J
    .end local v5    # "count":J
    .local v2, "position":J
    .local v4, "count":J
    return-wide p2

    .line 760
    .end local v2    # "position":J
    .end local v4    # "count":J
    .restart local p2    # "position":J
    .restart local p4    # "count":J
    :cond_31
    move-wide v2, p2

    move-wide v4, p4

    .end local p2    # "position":J
    .end local p4    # "count":J
    .restart local v2    # "position":J
    .restart local v4    # "count":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .local v1, "src":Ljava/nio/channels/ReadableByteChannel;
    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide p1

    return-wide p1

    .line 752
    .end local v1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .end local v2    # "position":J
    .end local v4    # "count":J
    .restart local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .restart local p2    # "position":J
    .restart local p4    # "count":J
    :cond_3a
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 753
    .end local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .end local p2    # "position":J
    .end local p4    # "count":J
    .restart local v1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .restart local v2    # "position":J
    .restart local v4    # "count":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 751
    .end local v1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .end local v2    # "position":J
    .end local v4    # "count":J
    .restart local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .restart local p2    # "position":J
    .restart local p4    # "count":J
    :cond_43
    move-object v1, p1

    .end local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .restart local v1    # "src":Ljava/nio/channels/ReadableByteChannel;
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1

    .line 749
    .end local v1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .restart local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    :cond_4a
    move-object v1, p1

    .end local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .restart local v1    # "src":Ljava/nio/channels/ReadableByteChannel;
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method

.method public whitelist test-api transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 22
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v6, p3

    move-object/from16 v5, p5

    invoke-direct {v0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 638
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 640
    iget-boolean v3, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v3, :cond_6f

    .line 642
    instance-of v3, v5, Lsun/nio/ch/FileChannelImpl;

    if-eqz v3, :cond_27

    move-object v3, v5

    check-cast v3, Lsun/nio/ch/FileChannelImpl;

    iget-boolean v3, v3, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v3, :cond_21

    goto :goto_27

    .line 644
    :cond_21
    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v3

    .line 645
    :cond_27
    :goto_27
    const-wide/16 v8, 0x0

    cmp-long v3, v1, v8

    if-ltz v3, :cond_69

    cmp-long v3, v6, v8

    if-ltz v3, :cond_69

    .line 647
    invoke-virtual {v0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v10

    .line 648
    .local v10, "sz":J
    cmp-long v3, v1, v10

    if-lez v3, :cond_3a

    .line 649
    return-wide v8

    .line 650
    :cond_3a
    const-wide/32 v3, 0x7fffffff

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 651
    .local v3, "icount":I
    sub-long v12, v10, v1

    int-to-long v14, v3

    cmp-long v4, v12, v14

    if-gez v4, :cond_4e

    .line 652
    sub-long v12, v10, v1

    long-to-int v3, v12

    move v12, v3

    goto :goto_4f

    .line 651
    :cond_4e
    move v12, v3

    .line 657
    .end local v3    # "icount":I
    .local v12, "icount":I
    :goto_4f
    invoke-direct {v0, v1, v2, v12, v5}, Lsun/nio/ch/FileChannelImpl;->transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J

    move-result-wide v3

    move-wide v13, v3

    .local v13, "n":J
    cmp-long v3, v3, v8

    if-ltz v3, :cond_59

    .line 658
    return-wide v13

    .line 661
    :cond_59
    int-to-long v3, v12

    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v3

    move-wide v13, v3

    cmp-long v3, v3, v8

    if-ltz v3, :cond_64

    .line 662
    return-wide v13

    .line 665
    :cond_64
    invoke-direct {v0, v1, v2, v12, v5}, Lsun/nio/ch/FileChannelImpl;->transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J

    move-result-wide v3

    return-wide v3

    .line 646
    .end local v10    # "sz":J
    .end local v12    # "icount":I
    .end local v13    # "n":J
    :cond_69
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 641
    :cond_6f
    new-instance v3, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v3

    .line 639
    :cond_75
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v3
.end method

.method public whitelist test-api truncate(J)Ljava/nio/channels/FileChannel;
    .registers 22
    .param p1, "newSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    invoke-direct {v1}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 370
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_fd

    .line 372
    iget-boolean v0, v1, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_f7

    .line 374
    iget-object v4, v1, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 375
    const/4 v5, -0x1

    .line 376
    .local v5, "rv":I
    const-wide/16 v6, -0x1

    .line 377
    .local v6, "p":J
    const/4 v8, -0x1

    .line 378
    .local v8, "ti":I
    const-wide/16 v9, -0x1

    .line 380
    .local v9, "rp":J
    const/4 v13, -0x1

    :try_start_1b
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 381
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0

    move v8, v0

    .line 382
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_e3

    const/4 v14, 0x0

    if-nez v0, :cond_3c

    .line 383
    nop

    .line 418
    :try_start_2d
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 419
    if-le v5, v13, :cond_36

    const/4 v11, 0x1

    goto :goto_37

    :cond_36
    const/4 v11, 0x0

    :goto_37
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 420
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_f4

    .line 383
    return-object v14

    .line 388
    :cond_3c
    :try_start_3c
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v15, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v15}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v15

    .line 389
    .local v15, "size":J
    const-wide/16 v17, -0x3

    cmp-long v0, v15, v17

    if-nez v0, :cond_50

    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 390
    :cond_50
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_e3

    if-nez v0, :cond_66

    .line 391
    nop

    .line 418
    :try_start_57
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 419
    if-le v5, v13, :cond_60

    const/4 v11, 0x1

    goto :goto_61

    :cond_60
    const/4 v11, 0x0

    :goto_61
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 420
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_f4

    .line 391
    return-object v14

    .line 395
    :cond_66
    :try_start_66
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v11, -0x1

    invoke-direct {v1, v0, v11, v12}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v11

    move-wide v6, v11

    .line 396
    cmp-long v0, v6, v17

    if-nez v0, :cond_79

    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_66

    .line 397
    :cond_79
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_e3

    if-nez v0, :cond_8f

    .line 398
    nop

    .line 418
    :try_start_80
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 419
    if-le v5, v13, :cond_89

    const/4 v11, 0x1

    goto :goto_8a

    :cond_89
    const/4 v11, 0x0

    :goto_8a
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 420
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_f4

    .line 398
    return-object v14

    .line 399
    :cond_8f
    nop

    .line 402
    cmp-long v0, v2, v15

    if-gez v0, :cond_bc

    .line 404
    :cond_94
    :try_start_94
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v11, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v11, v2, v3}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    move-result v0

    move v5, v0

    .line 405
    const/4 v0, -0x3

    if-ne v5, v0, :cond_a6

    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_94

    .line 406
    :cond_a6
    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_aa
    .catchall {:try_start_94 .. :try_end_aa} :catchall_e3

    if-nez v0, :cond_bc

    .line 407
    nop

    .line 418
    :try_start_ad
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 419
    if-le v5, v13, :cond_b6

    const/4 v11, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v11, 0x0

    :goto_b7
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 420
    monitor-exit v4
    :try_end_bb
    .catchall {:try_start_ad .. :try_end_bb} :catchall_f4

    .line 407
    return-object v14

    .line 411
    :cond_bc
    cmp-long v0, v6, v2

    if-lez v0, :cond_c2

    .line 412
    move-wide/from16 v6, p1

    .line 414
    :cond_c2
    :try_start_c2
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v1, v0, v6, v7}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v11

    move-wide v9, v11

    .line 415
    cmp-long v0, v9, v17

    if-nez v0, :cond_d3

    invoke-virtual {v1}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_d1
    .catchall {:try_start_c2 .. :try_end_d1} :catchall_e3

    if-nez v0, :cond_c2

    .line 416
    :cond_d3
    nop

    .line 418
    :try_start_d4
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 419
    if-le v5, v13, :cond_dd

    const/4 v11, 0x1

    goto :goto_de

    :cond_dd
    const/4 v11, 0x0

    :goto_de
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 420
    monitor-exit v4

    .line 416
    return-object v1

    .line 418
    .end local v15    # "size":J
    :catchall_e3
    move-exception v0

    iget-object v11, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v11, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 419
    if-le v5, v13, :cond_ed

    const/4 v11, 0x1

    goto :goto_ee

    :cond_ed
    const/4 v11, 0x0

    :goto_ee
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 420
    nop

    .line 421
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "newSize":J
    throw v0

    .line 422
    .end local v5    # "rv":I
    .end local v6    # "p":J
    .end local v8    # "ti":I
    .end local v9    # "rp":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "newSize":J
    :catchall_f4
    move-exception v0

    monitor-exit v4
    :try_end_f6
    .catchall {:try_start_d4 .. :try_end_f6} :catchall_f4

    throw v0

    .line 373
    :cond_f7
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 371
    :cond_fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Negative size"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 19
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1165
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1166
    if-eqz p5, :cond_10

    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_a

    goto :goto_10

    .line 1167
    :cond_a
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 1168
    :cond_10
    :goto_10
    if-nez p5, :cond_1d

    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_17

    goto :goto_1d

    .line 1169
    :cond_17
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 1170
    :cond_1d
    :goto_1d
    new-instance v1, Lsun/nio/ch/FileLockImpl;

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 1171
    .local v1, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    move-result-object v11

    .line 1172
    .local v11, "flt":Lsun/nio/ch/FileLockTable;
    invoke-virtual {v11, v1}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    .line 1175
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v12

    .line 1178
    .local v12, "ti":I
    :try_start_35
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1179
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    move-wide v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v0
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_46} :catch_77
    .catchall {:try_start_35 .. :try_end_46} :catchall_75

    .line 1183
    .local v0, "result":I
    nop

    .line 1184
    const/4 v3, -0x1

    if-ne v0, v3, :cond_55

    .line 1185
    :try_start_4a
    invoke-virtual {v11, v1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_75

    .line 1186
    nop

    .line 1197
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1186
    const/4 v3, 0x0

    return-object v3

    .line 1188
    :cond_55
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6e

    .line 1189
    nop

    .line 1190
    :try_start_59
    new-instance v2, Lsun/nio/ch/FileLockImpl;

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    move-object v3, v2

    .line 1192
    .local v3, "fli2":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {v11, v1, v3}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_75

    .line 1193
    nop

    .line 1197
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1193
    return-object v3

    .line 1195
    .end local v3    # "fli2":Lsun/nio/ch/FileLockImpl;
    :cond_6e
    nop

    .line 1197
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1195
    return-object v1

    .line 1197
    .end local v0    # "result":I
    :catchall_75
    move-exception v0

    goto :goto_7d

    .line 1180
    :catch_77
    move-exception v0

    .line 1181
    .local v0, "e":Ljava/io/IOException;
    :try_start_78
    invoke-virtual {v11, v1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1182
    nop

    .end local v1    # "fli":Lsun/nio/ch/FileLockImpl;
    .end local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v12    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "position":J
    .end local p3    # "size":J
    .end local p5    # "shared":Z
    throw v0
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_75

    .line 1197
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v12    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "position":J
    .restart local p3    # "size":J
    .restart local p5    # "shared":Z
    :goto_7d
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1198
    throw v0
.end method

.method public whitelist test-api write(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 235
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_66

    .line 237
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "n":I
    const/4 v2, -0x1

    .line 241
    .local v2, "ti":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_e
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 242
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v5

    move v2, v5

    .line 243
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_53

    if-nez v5, :cond_2d

    .line 244
    nop

    .line 250
    :try_start_1f
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 251
    if-lez v1, :cond_27

    goto :goto_28

    :cond_27
    move v3, v4

    :goto_28
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 252
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_63

    .line 244
    return v4

    .line 246
    :cond_2d
    :try_start_2d
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    const-wide/16 v7, -0x1

    invoke-static {v5, p1, v7, v8, v6}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v5

    move v1, v5

    .line 247
    const/4 v5, -0x3

    if-ne v1, v5, :cond_41

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 248
    :cond_41
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v5
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_53

    .line 250
    :try_start_45
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 251
    if-lez v1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v4

    :goto_4e
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 252
    monitor-exit v0

    .line 248
    return v5

    .line 250
    :catchall_53
    move-exception v5

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 251
    if-lez v1, :cond_5c

    goto :goto_5d

    :cond_5c
    move v3, v4

    :goto_5d
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 252
    nop

    .line 253
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    throw v5

    .line 254
    .end local v1    # "n":I
    .end local v2    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_45 .. :try_end_65} :catchall_63

    throw v1

    .line 236
    :cond_66
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
.end method

.method public whitelist test-api write(Ljava/nio/ByteBuffer;J)I
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    if-eqz p1, :cond_36

    .line 803
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2e

    .line 805
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_28

    .line 807
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 808
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 809
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_1a
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 811
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v1

    .line 813
    :cond_23
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 806
    :cond_28
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 804
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api write([Ljava/nio/ByteBuffer;II)J
    .registers 15
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    if-ltz p2, :cond_7e

    if-ltz p3, :cond_7e

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_7e

    .line 262
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 263
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_78

    .line 265
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    const-wide/16 v1, 0x0

    .line 267
    .local v1, "n":J
    const/4 v3, -0x1

    .line 269
    .local v3, "ti":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :try_start_19
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 270
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v8

    move v3, v8

    .line 271
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_63

    if-nez v8, :cond_3a

    .line 272
    nop

    .line 278
    :try_start_2a
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 279
    cmp-long v8, v1, v6

    if-lez v8, :cond_34

    goto :goto_35

    :cond_34
    move v4, v5

    :goto_35
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 280
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_75

    .line 272
    return-wide v6

    .line 274
    :cond_3a
    :try_start_3a
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v8, p1, p2, p3, v9}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v8

    move-wide v1, v8

    .line 275
    const-wide/16 v8, -0x3

    cmp-long v8, v1, v8

    if-nez v8, :cond_4f

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 276
    :cond_4f
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v8
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_63

    .line 278
    :try_start_53
    iget-object v10, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v10, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 279
    cmp-long v6, v1, v6

    if-lez v6, :cond_5d

    goto :goto_5e

    :cond_5d
    move v4, v5

    :goto_5e
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 280
    monitor-exit v0

    .line 276
    return-wide v8

    .line 278
    :catchall_63
    move-exception v8

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 279
    cmp-long v6, v1, v6

    if-lez v6, :cond_6e

    goto :goto_6f

    :cond_6e
    move v4, v5

    :goto_6f
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 280
    nop

    .line 281
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v8

    .line 282
    .end local v1    # "n":J
    .end local v3    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_53 .. :try_end_77} :catchall_75

    throw v1

    .line 264
    :cond_78
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 261
    :cond_7e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

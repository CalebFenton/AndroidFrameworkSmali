.class Lsun/nio/ch/FileChannelImpl$Unmapper;
.super Ljava/lang/Object;
.source "FileChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Unmapper"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static volatile count:I

.field private static final nd:Lsun/nio/ch/NativeDispatcher;

.field static volatile totalCapacity:J

.field static volatile totalSize:J


# instance fields
.field private volatile address:J

.field private final cap:I

.field private final fd:Ljava/io/FileDescriptor;

.field private final size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/FileChannelImpl$Unmapper;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->-assertionsDisabled:Z

    #@b
    .line 778
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    #@d
    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    #@10
    sput-object v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->nd:Lsun/nio/ch/NativeDispatcher;

    #@12
    .line 774
    return-void

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method private constructor <init>(JJILjava/io/FileDescriptor;)V
    .locals 7
    .param p1, "address"    # J
    .param p3, "size"    # J
    .param p5, "cap"    # I
    .param p6, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 793
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_1

    #@7
    const-wide/16 v0, 0x0

    #@9
    cmp-long v0, p1, v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    if-nez v0, :cond_1

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    :cond_0
    const/4 v0, 0x0

    #@17
    goto :goto_0

    #@18
    .line 794
    :cond_1
    iput-wide p1, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    #@1a
    .line 795
    iput-wide p3, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    #@1c
    .line 796
    iput p5, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->cap:I

    #@1e
    .line 797
    iput-object p6, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    #@20
    .line 799
    const-class v1, Lsun/nio/ch/FileChannelImpl$Unmapper;

    #@22
    monitor-enter v1

    #@23
    .line 800
    :try_start_0
    sget v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    sput v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    #@29
    .line 801
    sget-wide v2, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    #@2b
    add-long/2addr v2, p3

    #@2c
    sput-wide v2, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    #@2e
    .line 802
    sget-wide v2, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    #@30
    int-to-long v4, p5

    #@31
    add-long/2addr v2, v4

    #@32
    sput-wide v2, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit v1

    #@35
    .line 791
    return-void

    #@36
    .line 799
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0
.end method

.method synthetic constructor <init>(JJILjava/io/FileDescriptor;Lsun/nio/ch/FileChannelImpl$Unmapper;)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # J
    .param p5, "cap"    # I
    .param p6, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lsun/nio/ch/FileChannelImpl$Unmapper;-><init>(JJILjava/io/FileDescriptor;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 807
    iget-wide v2, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    #@4
    cmp-long v1, v2, v6

    #@6
    if-nez v1, :cond_0

    #@8
    .line 808
    return-void

    #@9
    .line 809
    :cond_0
    iget-wide v2, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    #@b
    iget-wide v4, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    #@d
    invoke-static {v2, v3, v4, v5}, Lsun/nio/ch/FileChannelImpl;->-wrap0(JJ)I

    #@10
    .line 810
    iput-wide v6, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    #@12
    .line 813
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    #@14
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 815
    :try_start_0
    sget-object v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->nd:Lsun/nio/ch/NativeDispatcher;

    #@1c
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    #@1e
    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 821
    :cond_1
    :goto_0
    const-class v2, Lsun/nio/ch/FileChannelImpl$Unmapper;

    #@23
    monitor-enter v2

    #@24
    .line 822
    :try_start_1
    sget v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    #@26
    add-int/lit8 v1, v1, -0x1

    #@28
    sput v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    #@2a
    .line 823
    sget-wide v4, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    #@2c
    iget-wide v6, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    #@2e
    sub-long/2addr v4, v6

    #@2f
    sput-wide v4, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    #@31
    .line 824
    sget-wide v4, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    #@33
    iget v1, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->cap:I

    #@35
    int-to-long v6, v1

    #@36
    sub-long/2addr v4, v6

    #@37
    sput-wide v4, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    monitor-exit v2

    #@3a
    .line 806
    return-void

    #@3b
    .line 821
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v2

    #@3d
    throw v1

    #@3e
    .line 816
    :catch_0
    move-exception v0

    #@3f
    .local v0, "ignore":Ljava/io/IOException;
    goto :goto_0
.end method

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
.field static final synthetic blacklist $assertionsDisabled:Z

.field static volatile blacklist count:I

.field private static final blacklist nd:Lsun/nio/ch/NativeDispatcher;

.field static volatile blacklist totalCapacity:J

.field static volatile blacklist totalSize:J


# instance fields
.field private volatile blacklist address:J

.field private final blacklist cap:I

.field private final blacklist fd:Ljava/io/FileDescriptor;

.field private final blacklist size:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 840
    const-class v0, Lsun/nio/ch/FileChannelImpl;

    .line 844
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    sput-object v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->nd:Lsun/nio/ch/NativeDispatcher;

    return-void
.end method

.method private constructor blacklist <init>(JJILjava/io/FileDescriptor;)V
    .registers 12
    .param p1, "address"    # J
    .param p3, "size"    # J
    .param p5, "cap"    # I
    .param p6, "fd"    # Ljava/io/FileDescriptor;

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    nop

    .line 860
    iput-wide p1, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    .line 861
    iput-wide p3, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    .line 862
    iput p5, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->cap:I

    .line 863
    iput-object p6, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    .line 865
    const-class v0, Lsun/nio/ch/FileChannelImpl$Unmapper;

    monitor-enter v0

    .line 866
    :try_start_f
    sget v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    .line 867
    sget-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    add-long/2addr v1, p3

    sput-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    .line 868
    sget-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    int-to-long v3, p5

    add-long/2addr v1, v3

    sput-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    .line 869
    monitor-exit v0

    .line 870
    return-void

    .line 869
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_22

    throw v1
.end method

.method synthetic constructor blacklist <init>(JJILjava/io/FileDescriptor;Lsun/nio/ch/FileChannelImpl-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lsun/nio/ch/FileChannelImpl$Unmapper;-><init>(JJILjava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 873
    iget-wide v0, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 874
    return-void

    .line 875
    :cond_9
    iget-wide v0, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    iget-wide v4, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    invoke-static {v0, v1, v4, v5}, Lsun/nio/ch/FileChannelImpl;->-$$Nest$smunmap0(JJ)I

    .line 876
    iput-wide v2, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    .line 879
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 881
    :try_start_1a
    sget-object v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_22

    .line 884
    goto :goto_23

    .line 882
    :catch_22
    move-exception v0

    .line 887
    :cond_23
    :goto_23
    const-class v0, Lsun/nio/ch/FileChannelImpl$Unmapper;

    monitor-enter v0

    .line 888
    :try_start_26
    sget v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    .line 889
    sget-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    iget-wide v3, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    sub-long/2addr v1, v3

    sput-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    .line 890
    sget-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    iget v3, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->cap:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    sput-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    .line 891
    monitor-exit v0

    .line 892
    return-void

    .line 891
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.class Lsun/nio/ch/AllocatedNativeObject;
.super Lsun/nio/ch/NativeObject;
.source "AllocatedNativeObject.java"


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "pageAligned"    # Z

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lsun/nio/ch/NativeObject;-><init>(IZ)V

    #@3
    .line 52
    return-void
.end method


# virtual methods
.method declared-synchronized free()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 60
    :try_start_0
    iget-wide v0, p0, Lsun/nio/ch/AllocatedNativeObject;->allocationAddress:J

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 61
    sget-object v0, Lsun/nio/ch/AllocatedNativeObject;->unsafe:Lsun/misc/Unsafe;

    #@b
    iget-wide v2, p0, Lsun/nio/ch/AllocatedNativeObject;->allocationAddress:J

    #@d
    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->freeMemory(J)V

    #@10
    .line 62
    const-wide/16 v0, 0x0

    #@12
    iput-wide v0, p0, Lsun/nio/ch/AllocatedNativeObject;->allocationAddress:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit p0

    #@15
    .line 59
    return-void

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

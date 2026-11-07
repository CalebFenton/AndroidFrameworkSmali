.class Lsun/nio/ch/AllocatedNativeObject;
.super Lsun/nio/ch/NativeObject;
.source "AllocatedNativeObject.java"


# direct methods
.method constructor blacklist <init>(IZ)V
    .registers 3
    .param p1, "size"    # I
    .param p2, "pageAligned"    # Z

    .line 53
    invoke-direct {p0, p1, p2}, Lsun/nio/ch/NativeObject;-><init>(IZ)V

    .line 54
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist free()V
    .registers 7

    monitor-enter p0

    .line 60
    :try_start_1
    iget-wide v0, p0, Lsun/nio/ch/AllocatedNativeObject;->allocationAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 61
    sget-object v0, Lsun/nio/ch/AllocatedNativeObject;->unsafe:Ljdk/internal/misc/Unsafe;

    iget-wide v4, p0, Lsun/nio/ch/AllocatedNativeObject;->allocationAddress:J

    invoke-virtual {v0, v4, v5}, Ljdk/internal/misc/Unsafe;->freeMemory(J)V

    .line 62
    iput-wide v2, p0, Lsun/nio/ch/AllocatedNativeObject;->allocationAddress:J
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 64
    .end local p0    # "this":Lsun/nio/ch/AllocatedNativeObject;
    :cond_12
    monitor-exit p0

    return-void

    .line 59
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

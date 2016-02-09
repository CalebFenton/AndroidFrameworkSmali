.class Ljava/nio/MemoryBlock$MemoryMappedBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryMappedBlock"
.end annotation


# direct methods
.method private constructor <init>(JJ)V
    .locals 7
    .param p1, "address"    # J
    .param p3, "byteCount"    # J

    #@0
    .prologue
    .line 39
    const/4 v6, 0x0

    #@1
    move-object v1, p0

    #@2
    move-wide v2, p1

    #@3
    move-wide v4, p3

    #@4
    invoke-direct/range {v1 .. v6}, Ljava/nio/MemoryBlock;-><init>(JJLjava/nio/MemoryBlock;)V

    #@7
    .line 38
    return-void
.end method

.method synthetic constructor <init>(JJLjava/nio/MemoryBlock$MemoryMappedBlock;)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "byteCount"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock$MemoryMappedBlock;-><init>(JJ)V

    #@3
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/nio/MemoryBlock$MemoryMappedBlock;->free()V

    #@3
    .line 55
    return-void
.end method

.method public free()V
    .locals 6

    #@0
    .prologue
    .line 43
    iget-wide v2, p0, Ljava/nio/MemoryBlock$MemoryMappedBlock;->address:J

    #@2
    const-wide/16 v4, 0x0

    #@4
    cmp-long v1, v2, v4

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 45
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@a
    iget-wide v2, p0, Ljava/nio/MemoryBlock$MemoryMappedBlock;->address:J

    #@c
    iget-wide v4, p0, Ljava/nio/MemoryBlock$MemoryMappedBlock;->size:J

    #@e
    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 52
    :cond_0
    invoke-super {p0}, Ljava/nio/MemoryBlock;->free()V

    #@14
    .line 42
    return-void

    #@15
    .line 46
    :catch_0
    move-exception v0

    #@16
    .line 49
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1b
    throw v1
.end method

.class Ljava/nio/MemoryBlock$UnmanagedBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmanagedBlock"
.end annotation


# direct methods
.method private constructor <init>(JJ)V
    .locals 7
    .param p1, "address"    # J
    .param p3, "byteCount"    # J

    #@0
    .prologue
    .line 91
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
    .line 90
    return-void
.end method

.method synthetic constructor <init>(JJLjava/nio/MemoryBlock$UnmanagedBlock;)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "byteCount"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock$UnmanagedBlock;-><init>(JJ)V

    #@3
    return-void
.end method

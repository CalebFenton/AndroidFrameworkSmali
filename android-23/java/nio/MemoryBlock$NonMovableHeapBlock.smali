.class Ljava/nio/MemoryBlock$NonMovableHeapBlock;
.super Ljava/nio/MemoryBlock;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/MemoryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonMovableHeapBlock"
.end annotation


# instance fields
.field private array:[B


# direct methods
.method private constructor <init>([BJJ)V
    .locals 8
    .param p1, "array"    # [B
    .param p2, "address"    # J
    .param p4, "byteCount"    # J

    #@0
    .prologue
    .line 71
    const/4 v6, 0x0

    #@1
    move-object v1, p0

    #@2
    move-wide v2, p2

    #@3
    move-wide v4, p4

    #@4
    invoke-direct/range {v1 .. v6}, Ljava/nio/MemoryBlock;-><init>(JJLjava/nio/MemoryBlock;)V

    #@7
    .line 72
    iput-object p1, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    #@9
    .line 70
    return-void
.end method

.method synthetic constructor <init>([BJJLjava/nio/MemoryBlock$NonMovableHeapBlock;)V
    .locals 0
    .param p1, "array"    # [B
    .param p2, "address"    # J
    .param p4, "byteCount"    # J

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BJJ)V

    #@3
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    #@2
    return-object v0
.end method

.method public free()V
    .locals 1

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;->array:[B

    #@3
    .line 81
    invoke-super {p0}, Ljava/nio/MemoryBlock;->free()V

    #@6
    .line 79
    return-void
.end method

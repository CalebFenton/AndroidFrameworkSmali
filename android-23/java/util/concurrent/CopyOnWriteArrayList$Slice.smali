.class Ljava/util/concurrent/CopyOnWriteArrayList$Slice;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Slice"
.end annotation


# instance fields
.field private final expectedElements:[Ljava/lang/Object;

.field private final from:I

.field private final to:I


# direct methods
.method static synthetic -get0(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)[Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->expectedElements:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    #@2
    return v0
.end method

.method static synthetic -get2(Ljava/util/concurrent/CopyOnWriteArrayList$Slice;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    #@2
    return v0
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0
    .param p1, "expectedElements"    # [Ljava/lang/Object;
    .param p2, "from"    # I
    .param p3, "to"    # I

    #@0
    .prologue
    .line 657
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.Slice;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 658
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->expectedElements:[Ljava/lang/Object;

    #@5
    .line 659
    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    #@7
    .line 660
    iput p3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    #@9
    .line 657
    return-void
.end method


# virtual methods
.method checkConcurrentModification([Ljava/lang/Object;)V
    .locals 1
    .param p1, "snapshot"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 683
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.Slice;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->expectedElements:[Ljava/lang/Object;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 684
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@6
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 682
    :cond_0
    return-void
.end method

.method checkElementIndex(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 667
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.Slice;"
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    #@4
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    #@6
    sub-int/2addr v0, v1

    #@7
    if-lt p1, v0, :cond_1

    #@9
    .line 668
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "index="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, ", size="

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    #@24
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    #@26
    sub-int/2addr v2, v3

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 666
    :cond_1
    return-void
.end method

.method checkPositionIndex(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 677
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Slice;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>.Slice;"
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    #@4
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    #@6
    sub-int/2addr v0, v1

    #@7
    if-le p1, v0, :cond_1

    #@9
    .line 678
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "index="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, ", size="

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->to:I

    #@24
    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Slice;->from:I

    #@26
    sub-int/2addr v2, v3

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 676
    :cond_1
    return-void
.end method

.class final Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;
.super Ljava/lang/StackStreamFactory$FrameBuffer;
.source "StackStreamFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LiveStackFrameBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/StackStreamFactory$FrameBuffer<",
        "Ljava/lang/LiveStackFrameInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist stackFrames:[Ljava/lang/LiveStackFrameInfo;

.field final synthetic blacklist this$0:Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 782
    const-class v0, Ljava/lang/StackStreamFactory;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;I)V
    .registers 7
    .param p1, "this$0"    # Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;
    .param p2, "initialBatchSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 784
    .local p0, "this":Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;, "Ljava/lang/StackStreamFactory$LiveStackInfoTraverser<TT;>.LiveStackFrameBuffer;"
    iput-object p1, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->this$0:Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;

    .line 785
    invoke-direct {p0, p2}, Ljava/lang/StackStreamFactory$FrameBuffer;-><init>(I)V

    .line 786
    new-array v0, p2, [Ljava/lang/LiveStackFrameInfo;

    iput-object v0, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->stackFrames:[Ljava/lang/LiveStackFrameInfo;

    .line 787
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_a
    if-ge v0, p2, :cond_1a

    .line 788
    iget-object v1, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->stackFrames:[Ljava/lang/LiveStackFrameInfo;

    new-instance v2, Ljava/lang/LiveStackFrameInfo;

    iget-object v3, p1, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;->walker:Ljava/lang/StackWalker;

    invoke-direct {v2, v3}, Ljava/lang/LiveStackFrameInfo;-><init>(Ljava/lang/StackWalker;)V

    aput-object v2, v1, v0

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 790
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method


# virtual methods
.method final blacklist at(I)Ljava/lang/Class;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 833
    .local p0, "this":Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;, "Ljava/lang/StackStreamFactory$LiveStackInfoTraverser<TT;>.LiveStackFrameBuffer;"
    iget-object v0, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->stackFrames:[Ljava/lang/LiveStackFrameInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/LiveStackFrameInfo;->declaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method blacklist frames()[Ljava/lang/LiveStackFrameInfo;
    .registers 2

    .line 794
    .local p0, "this":Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;, "Ljava/lang/StackStreamFactory$LiveStackInfoTraverser<TT;>.LiveStackFrameBuffer;"
    iget-object v0, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->stackFrames:[Ljava/lang/LiveStackFrameInfo;

    return-object v0
.end method

.method bridge synthetic blacklist frames()[Ljava/lang/Object;
    .registers 2

    .line 782
    .local p0, "this":Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;, "Ljava/lang/StackStreamFactory$LiveStackInfoTraverser<TT;>.LiveStackFrameBuffer;"
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->frames()[Ljava/lang/LiveStackFrameInfo;

    move-result-object v0

    return-object v0
.end method

.method blacklist nextStackFrame()Ljava/lang/LiveStackFrameInfo;
    .registers 4

    .line 822
    .local p0, "this":Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;, "Ljava/lang/StackStreamFactory$LiveStackInfoTraverser<TT;>.LiveStackFrameBuffer;"
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 826
    iget-object v0, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->stackFrames:[Ljava/lang/LiveStackFrameInfo;

    iget v1, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->origin:I

    aget-object v0, v0, v1

    .line 827
    .local v0, "frame":Ljava/lang/LiveStackFrameInfo;
    iget v1, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->origin:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->origin:I

    .line 828
    return-object v0

    .line 823
    .end local v0    # "frame":Ljava/lang/LiveStackFrameInfo;
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->origin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->fence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic blacklist nextStackFrame()Ljava/lang/Object;
    .registers 2

    .line 782
    .local p0, "this":Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;, "Ljava/lang/StackStreamFactory$LiveStackInfoTraverser<TT;>.LiveStackFrameBuffer;"
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->nextStackFrame()Ljava/lang/LiveStackFrameInfo;

    move-result-object v0

    return-object v0
.end method

.method blacklist resize(II)V
    .registers 8
    .param p1, "startIndex"    # I
    .param p2, "elements"    # I

    .line 799
    .local p0, "this":Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;, "Ljava/lang/StackStreamFactory$LiveStackInfoTraverser<TT;>.LiveStackFrameBuffer;"
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 802
    nop

    .line 805
    add-int v0, p1, p2

    .line 806
    .local v0, "size":I
    iget-object v1, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->stackFrames:[Ljava/lang/LiveStackFrameInfo;

    array-length v1, v1

    if-ge v1, v0, :cond_18

    .line 807
    new-array v1, v0, [Ljava/lang/LiveStackFrameInfo;

    .line 809
    .local v1, "newFrames":[Ljava/lang/LiveStackFrameInfo;
    iget-object v2, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->stackFrames:[Ljava/lang/LiveStackFrameInfo;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iput-object v1, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->stackFrames:[Ljava/lang/LiveStackFrameInfo;

    .line 813
    .end local v1    # "newFrames":[Ljava/lang/LiveStackFrameInfo;
    :cond_18
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->startIndex()I

    move-result v1

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_2e

    .line 814
    iget-object v2, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->stackFrames:[Ljava/lang/LiveStackFrameInfo;

    new-instance v3, Ljava/lang/LiveStackFrameInfo;

    iget-object v4, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->this$0:Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;

    iget-object v4, v4, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;->walker:Ljava/lang/StackWalker;

    invoke-direct {v3, v4}, Ljava/lang/LiveStackFrameInfo;-><init>(Ljava/lang/StackWalker;)V

    aput-object v3, v2, v1

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 817
    .end local v1    # "i":I
    :cond_2e
    iput v0, p0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser$LiveStackFrameBuffer;->currentBatchSize:I

    .line 818
    return-void

    .line 800
    .end local v0    # "size":I
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "inactive frame buffer can\'t be resized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

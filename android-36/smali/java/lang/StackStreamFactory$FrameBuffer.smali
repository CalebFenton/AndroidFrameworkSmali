.class abstract Ljava/lang/StackStreamFactory$FrameBuffer;
.super Ljava/lang/Object;
.source "StackStreamFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackStreamFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FrameBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final blacklist START_POS:I = 0x2


# instance fields
.field blacklist currentBatchSize:I

.field blacklist fence:I

.field blacklist origin:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 6
    .param p1, "initialBatchSize"    # I

    .line 861
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    const/16 v0, 0x8

    if-lt p1, v0, :cond_10

    .line 866
    const/4 v0, 0x2

    iput v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    .line 867
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    .line 868
    iput p1, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->currentBatchSize:I

    .line 869
    return-void

    .line 863
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < minimum batch size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method abstract blacklist at(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method final blacklist check(I)V
    .registers 6
    .param p1, "skipFrames"    # I

    .line 1017
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    add-int/lit8 v0, p1, 0x2

    .line 1018
    .local v0, "index":I
    iget v1, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    if-ne v1, v0, :cond_7

    .line 1022
    return-void

    .line 1020
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "origin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final blacklist curBatchFrameCount()I
    .registers 2

    .line 928
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->currentBatchSize:I

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method abstract blacklist frames()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TF;"
        }
    .end annotation
.end method

.method final blacklist freeze()V
    .registers 2

    .line 942
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    .line 943
    iput v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    .line 944
    return-void
.end method

.method final blacklist get()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 975
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$FrameBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 978
    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    invoke-virtual {p0, v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->at(I)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 976
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist getIndex()I
    .registers 2

    .line 985
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    return v0
.end method

.method final blacklist isActive()Z
    .registers 3

    .line 951
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    if-lez v0, :cond_16

    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    if-eqz v0, :cond_14

    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    iget v1, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    if-lt v0, v1, :cond_14

    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    iget v1, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->currentBatchSize:I

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method final blacklist isEmpty()Z
    .registers 3

    .line 935
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    iget v1, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    if-ge v0, v1, :cond_12

    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method final blacklist next()Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 958
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$FrameBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 961
    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    invoke-virtual {p0, v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->at(I)Ljava/lang/Class;

    move-result-object v0

    .line 962
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    .line 963
    sget-boolean v1, Ljava/lang/StackStreamFactory;->isDebug:Z

    if-eqz v1, :cond_37

    .line 964
    iget v1, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    add-int/lit8 v1, v1, -0x1

    .line 965
    .local v1, "index":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 966
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 965
    const-string v4, "  next frame at %d: %s (origin %d fence %d)%n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 968
    .end local v1    # "index":I
    :cond_37
    return-object v0

    .line 959
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_38
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist nextStackFrame()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 922
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract blacklist resize(II)V
.end method

.method final blacklist setBatch(III)V
    .registers 9
    .param p1, "depth"    # I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 993
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    if-lez p2, :cond_3a

    if-lez p3, :cond_3a

    .line 997
    iput p2, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    .line 998
    iput p3, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    .line 999
    if-nez p1, :cond_39

    iget v0, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    if-lez v0, :cond_39

    .line 1001
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_f
    iget v1, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->fence:I

    if-ge v0, v1, :cond_39

    .line 1002
    invoke-virtual {p0, v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->at(I)Ljava/lang/Class;

    move-result-object v1

    .line 1003
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v2, Ljava/lang/StackStreamFactory;->isDebug:Z

    if-eqz v2, :cond_2a

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  frame %d: %s%n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1004
    :cond_2a
    invoke-static {v1}, Ljava/lang/StackStreamFactory;->-$$Nest$smfilterStackWalkImpl(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1005
    iget v2, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/lang/StackStreamFactory$FrameBuffer;->origin:I

    .line 1001
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1011
    .end local v0    # "i":I
    :cond_39
    return-void

    .line 994
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist startIndex()I
    .registers 2

    .line 915
    .local p0, "this":Ljava/lang/StackStreamFactory$FrameBuffer;, "Ljava/lang/StackStreamFactory$FrameBuffer<TF;>;"
    const/4 v0, 0x2

    return v0
.end method

.class final Ljava/util/stream/Nodes$FixedNodeBuilder;
.super Ljava/util/stream/Nodes$ArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$ArrayNode<",
        "TT;>;",
        "Ljava/util/stream/Node$Builder<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1211
    const-class v0, Ljava/util/stream/Nodes;

    return-void
.end method

.method constructor blacklist <init>(JLjava/util/function/IntFunction;)V
    .registers 4
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)V"
        }
    .end annotation

    .line 1216
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ArrayNode;-><init>(JLjava/util/function/IntFunction;)V

    .line 1217
    nop

    .line 1218
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1238
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1239
    iget-object v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    aput-object p1, v0, v1

    .line 1244
    return-void

    .line 1241
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    .line 1242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1241
    const-string v2, "Accept exceeded fixed size of %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 1230
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 1233
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1234
    return-void

    .line 1231
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1232
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1231
    const-string v2, "Begin size %d is not equal to fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist build()Ljava/util/stream/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 1222
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 1225
    return-object p0

    .line 1223
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1223
    const-string v2, "Current size %d is less than fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist end()V
    .registers 4

    .line 1248
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 1251
    return-void

    .line 1249
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1249
    const-string v2, "End size %d is less than fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1255
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    sub-int/2addr v0, v1

    .line 1256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1255
    const-string v1, "FixedNodeBuilder[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

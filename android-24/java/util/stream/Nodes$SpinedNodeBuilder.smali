.class final Ljava/util/stream/Nodes$SpinedNodeBuilder;
.super Ljava/util/stream/SpinedBuffer;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node;
.implements Ljava/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpinedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/SpinedBuffer",
        "<TT;>;",
        "Ljava/util/stream/Node",
        "<TT;>;",
        "Ljava/util/stream/Node$Builder",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    #@b
    .line 1246
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1251
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;-><init>()V

    #@3
    .line 1249
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@6
    .line 1251
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1276
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@6
    if-nez v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/AssertionError;

    #@a
    const-string/jumbo v1, "not building"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@10
    throw v0

    #@11
    .line 1277
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    #@14
    .line 1275
    return-void
.end method

.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1295
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "arrayFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "during building"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1296
    :cond_1
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    const/4 v1, 0x1

    #@1
    .line 1268
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    if-nez v0, :cond_1

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    const-string/jumbo v1, "was already building"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@14
    throw v0

    #@15
    :cond_0
    move v0, v1

    #@16
    goto :goto_0

    #@17
    .line 1269
    :cond_1
    iput-boolean v1, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@19
    .line 1270
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->clear()V

    #@1c
    .line 1271
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer;->ensureCapacity(J)V

    #@1f
    .line 1267
    return-void
.end method

.method public build()Ljava/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1301
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "during building"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1302
    :cond_1
    return-object p0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 2
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1289
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "during building"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1290
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    #@19
    .line 1288
    return-void
.end method

.method public end()V
    .locals 2

    #@0
    .prologue
    .line 1282
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@6
    if-nez v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/AssertionError;

    #@a
    const-string/jumbo v1, "was not building"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@10
    throw v0

    #@11
    .line 1283
    :cond_0
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@14
    .line 1281
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1261
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "during building"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1262
    :cond_1
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

    #@19
    .line 1260
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1255
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "during building"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1256
    :cond_1
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

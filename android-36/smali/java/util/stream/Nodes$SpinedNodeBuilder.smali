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
        "Ljava/util/stream/SpinedBuffer<",
        "TT;>;",
        "Ljava/util/stream/Node<",
        "TT;>;",
        "Ljava/util/stream/Node$Builder<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist building:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1263
    const-class v0, Ljava/util/stream/Nodes;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 1268
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;-><init>()V

    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1268
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1293
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    nop

    .line 1294
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 1295
    return-void
.end method

.method public blacklist asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1312
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "arrayFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    nop

    .line 1313
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 1285
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1286
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1287
    invoke-virtual {p0}, Ljava/util/stream/Nodes$SpinedNodeBuilder;->clear()V

    .line 1288
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$SpinedNodeBuilder;->ensureCapacity(J)V

    .line 1289
    return-void
.end method

.method public blacklist build()Ljava/util/stream/Node;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 1318
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1319
    return-object p0
.end method

.method public blacklist copyInto([Ljava/lang/Object;I)V
    .registers 3
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 1306
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    nop

    .line 1307
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    .line 1308
    return-void
.end method

.method public blacklist end()V
    .registers 2

    .line 1299
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1300
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1302
    return-void
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1278
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    nop

    .line 1279
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

    .line 1280
    return-void
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1272
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1273
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

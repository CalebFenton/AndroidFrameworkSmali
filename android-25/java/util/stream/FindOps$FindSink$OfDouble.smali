.class final Ljava/util/stream/FindOps$FindSink$OfDouble;
.super Ljava/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/FindOps$FindSink",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/OptionalDouble;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 228
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfDouble;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfDouble;"
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 233
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfDouble;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfDouble;"
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    #@7
    .line 231
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Double;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Double;

    #@0
    .prologue
    .line 177
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfDouble;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 237
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfDouble;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfDouble;->get()Ljava/util/OptionalDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()Ljava/util/OptionalDouble;
    .locals 2

    #@0
    .prologue
    .line 238
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfDouble;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfDouble;"
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink;->hasValue:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    #@6
    check-cast v0, Ljava/lang/Double;

    #@8
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@b
    move-result-wide v0

    #@c
    invoke-static {v0, v1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    #@f
    move-result-object v0

    #@10
    :goto_0
    return-object v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

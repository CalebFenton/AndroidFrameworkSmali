.class final Ljava/util/stream/FindOps$FindSink$OfInt;
.super Ljava/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/FindOps$FindSink",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/OptionalInt;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 198
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfInt;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfInt;"
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 203
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfInt;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfInt;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    #@7
    .line 201
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 177
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfInt;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 207
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfInt;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfInt;->get()Ljava/util/OptionalInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()Ljava/util/OptionalInt;
    .locals 1

    #@0
    .prologue
    .line 208
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfInt;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfInt;"
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink;->hasValue:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v0

    #@c
    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

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

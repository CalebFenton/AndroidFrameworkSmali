.class final Ljava/util/stream/FindOps$FindSink$OfLong;
.super Ljava/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/FindOps$FindSink",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/OptionalLong;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 213
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfLong;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfLong;"
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 218
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfLong;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfLong;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    #@7
    .line 216
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Long;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 177
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfLong;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 222
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfLong;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfLong;->get()Ljava/util/OptionalLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()Ljava/util/OptionalLong;
    .locals 2

    #@0
    .prologue
    .line 223
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfLong;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfLong;"
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink;->hasValue:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    #@6
    check-cast v0, Ljava/lang/Long;

    #@8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v0

    #@c
    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

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

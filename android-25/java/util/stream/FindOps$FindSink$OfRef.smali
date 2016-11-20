.class final Ljava/util/stream/FindOps$FindSink$OfRef;
.super Ljava/util/stream/FindOps$FindSink;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/FindOps$FindSink",
        "<TT;",
        "Ljava/util/Optional",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 190
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfRef;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 192
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfRef;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfRef<TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfRef;->get()Ljava/util/Optional;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfRef;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfRef<TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink;->hasValue:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    #@6
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

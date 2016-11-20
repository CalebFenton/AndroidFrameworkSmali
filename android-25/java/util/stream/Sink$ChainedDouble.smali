.class public abstract Ljava/util/stream/Sink$ChainedDouble;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChainedDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field protected final downstream:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink",
            "<-TE_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/stream/Sink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-TE_OUT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 344
    .local p0, "this":Ljava/util/stream/Sink$ChainedDouble;, "Ljava/util/stream/Sink<TT;>.ChainedDouble<TE_OUT;>;"
    .local p1, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TE_OUT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 345
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/stream/Sink;

    #@9
    iput-object v0, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@b
    .line 344
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 229
    .local p0, "this":Ljava/util/stream/Sink$ChainedDouble;, "Ljava/util/stream/Sink<TT;>.ChainedDouble<TE_OUT;>;"
    check-cast p1, Ljava/lang/Double;

    #@2
    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    #@5
    return-void
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    #@0
    .prologue
    .line 350
    .local p0, "this":Ljava/util/stream/Sink$ChainedDouble;, "Ljava/util/stream/Sink<TT;>.ChainedDouble<TE_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->begin(J)V

    #@5
    .line 349
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    #@0
    .prologue
    .line 360
    .local p0, "this":Ljava/util/stream/Sink$ChainedDouble;, "Ljava/util/stream/Sink<TT;>.ChainedDouble<TE_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@2
    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public end()V
    .locals 1

    #@0
    .prologue
    .line 355
    .local p0, "this":Ljava/util/stream/Sink$ChainedDouble;, "Ljava/util/stream/Sink<TT;>.ChainedDouble<TE_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    #@2
    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    #@5
    .line 354
    return-void
.end method

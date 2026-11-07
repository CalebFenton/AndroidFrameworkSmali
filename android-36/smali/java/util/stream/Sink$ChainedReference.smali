.class public abstract Ljava/util/stream/Sink$ChainedReference;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChainedReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Sink<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final greylist-max-o downstream:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink<",
            "-TE_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/stream/Sink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "-TE_OUT;>;)V"
        }
    .end annotation

    .line 252
    .local p0, "this":Ljava/util/stream/Sink$ChainedReference;, "Ljava/util/stream/Sink$ChainedReference<TT;TE_OUT;>;"
    .local p1, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TE_OUT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Sink;

    iput-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    .line 254
    return-void
.end method


# virtual methods
.method public greylist-max-o begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 258
    .local p0, "this":Ljava/util/stream/Sink$ChainedReference;, "Ljava/util/stream/Sink$ChainedReference<TT;TE_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->begin(J)V

    .line 259
    return-void
.end method

.method public greylist-max-o cancellationRequested()Z
    .registers 2

    .line 268
    .local p0, "this":Ljava/util/stream/Sink$ChainedReference;, "Ljava/util/stream/Sink$ChainedReference<TT;TE_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o end()V
    .registers 2

    .line 263
    .local p0, "this":Ljava/util/stream/Sink$ChainedReference;, "Ljava/util/stream/Sink$ChainedReference<TT;TE_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    .line 264
    return-void
.end method

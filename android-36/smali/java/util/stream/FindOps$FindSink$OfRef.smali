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
        "Ljava/util/stream/FindOps$FindSink<",
        "TT;",
        "Ljava/util/Optional<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field static final blacklist OP_FIND_ANY:Ljava/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/TerminalOp<",
            "**>;"
        }
    .end annotation
.end field

.field static final blacklist OP_FIND_FIRST:Ljava/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/TerminalOp<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 197
    new-instance v0, Ljava/util/stream/FindOps$FindOp;

    sget-object v2, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 198
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Ljava/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Ljava/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljava/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Ljava/util/stream/FindOps$FindSink$OfRef;->OP_FIND_FIRST:Ljava/util/stream/TerminalOp;

    .line 201
    new-instance v1, Ljava/util/stream/FindOps$FindOp;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 202
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Ljava/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Ljava/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljava/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Ljava/util/stream/FindOps$FindSink$OfRef;->OP_FIND_ANY:Ljava/util/stream/TerminalOp;

    .line 201
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 191
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfRef;, "Ljava/util/stream/FindOps$FindSink$OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 191
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfRef;, "Ljava/util/stream/FindOps$FindSink$OfRef<TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfRef;->get()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfRef;, "Ljava/util/stream/FindOps$FindSink$OfRef<TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink$OfRef;->hasValue:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink$OfRef;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

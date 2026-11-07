.class Ljava/util/stream/Stream$1;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Stream;->iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist prev:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist started:Z

.field final synthetic blacklist val$f:Ljava/util/function/UnaryOperator;

.field final synthetic blacklist val$seed:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;)V
    .registers 6
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1455
    iput-object p4, p0, Ljava/util/stream/Stream$1;->val$f:Ljava/util/function/UnaryOperator;

    iput-object p5, p0, Ljava/util/stream/Stream$1;->val$seed:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1461
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    iget-boolean v0, p0, Ljava/util/stream/Stream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 1464
    iget-object v0, p0, Ljava/util/stream/Stream$1;->val$f:Ljava/util/function/UnaryOperator;

    iget-object v2, p0, Ljava/util/stream/Stream$1;->prev:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "t":Ljava/lang/Object;, "TT;"
    goto :goto_15

    .line 1466
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_11
    iget-object v0, p0, Ljava/util/stream/Stream$1;->val$seed:Ljava/lang/Object;

    .line 1467
    .restart local v0    # "t":Ljava/lang/Object;, "TT;"
    iput-boolean v1, p0, Ljava/util/stream/Stream$1;->started:Z

    .line 1469
    :goto_15
    iput-object v0, p0, Ljava/util/stream/Stream$1;->prev:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1470
    return v1
.end method

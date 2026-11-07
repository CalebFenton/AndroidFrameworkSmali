.class public interface abstract Ljava/util/function/Consumer;
.super Ljava/lang/Object;
.source "Consumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$Q_zMx_zAe1OiUreM0xDZCWBmTh8(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/Consumer;->lambda$andThen$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$andThen$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 3
    .param p1, "after"    # Ljava/util/function/Consumer;
    .param p2, "t"    # Ljava/lang/Object;

    .line 65
    .local p0, "this":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public whitelist test-api andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .local p1, "after":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/function/Consumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/Consumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object v0
.end method

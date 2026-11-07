.class public interface abstract Ljava/util/function/BiConsumer;
.super Ljava/lang/Object;
.source "BiConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$btF9XaHaHWE1A5ltpKF-m2A2YnE(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/BiConsumer;->lambda$andThen$0(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$andThen$0(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "after"    # Ljava/util/function/BiConsumer;
    .param p2, "l"    # Ljava/lang/Object;
    .param p3, "r"    # Ljava/lang/Object;

    .line 71
    .local p0, "this":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT;TU;>;"
    invoke-interface {p0, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V"
        }
    .end annotation
.end method

.method public whitelist test-api andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava/util/function/BiConsumer<",
            "TT;TU;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT;TU;>;"
    .local p1, "after":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/function/BiConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/BiConsumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

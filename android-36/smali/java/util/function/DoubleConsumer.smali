.class public interface abstract Ljava/util/function/DoubleConsumer;
.super Ljava/lang/Object;
.source "DoubleConsumer.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$Gj0atWaa3kfNgwxLvjQQd46WTqY(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;D)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/function/DoubleConsumer;->lambda$andThen$0(Ljava/util/function/DoubleConsumer;D)V

    return-void
.end method

.method private synthetic blacklist lambda$andThen$0(Ljava/util/function/DoubleConsumer;D)V
    .registers 4
    .param p1, "after"    # Ljava/util/function/DoubleConsumer;
    .param p2, "t"    # D

    .line 65
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api accept(D)V
.end method

.method public whitelist test-api andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 3
    .param p1, "after"    # Ljava/util/function/DoubleConsumer;

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/function/DoubleConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/DoubleConsumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)V

    return-object v0
.end method

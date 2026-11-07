.class public interface abstract Ljava/util/function/IntConsumer;
.super Ljava/lang/Object;
.source "IntConsumer.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$iLtxQh6jeJbOS7bKV7_uoG6XE30(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/function/IntConsumer;->lambda$andThen$0(Ljava/util/function/IntConsumer;I)V

    return-void
.end method

.method private synthetic blacklist lambda$andThen$0(Ljava/util/function/IntConsumer;I)V
    .registers 3
    .param p1, "after"    # Ljava/util/function/IntConsumer;
    .param p2, "t"    # I

    .line 65
    invoke-interface {p0, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    invoke-interface {p1, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api accept(I)V
.end method

.method public whitelist test-api andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 3
    .param p1, "after"    # Ljava/util/function/IntConsumer;

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/function/IntConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/IntConsumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method

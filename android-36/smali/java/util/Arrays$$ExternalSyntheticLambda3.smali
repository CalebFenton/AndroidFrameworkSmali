.class public final synthetic Ljava/util/Arrays$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:[I

.field public final synthetic blacklist f$1:Ljava/util/function/IntUnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>([ILjava/util/function/IntUnaryOperator;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Arrays$$ExternalSyntheticLambda3;->f$0:[I

    iput-object p2, p0, Ljava/util/Arrays$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/IntUnaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/Arrays$$ExternalSyntheticLambda3;->f$0:[I

    iget-object v1, p0, Ljava/util/Arrays$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/IntUnaryOperator;

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->lambda$parallelSetAll$1([ILjava/util/function/IntUnaryOperator;I)V

    return-void
.end method

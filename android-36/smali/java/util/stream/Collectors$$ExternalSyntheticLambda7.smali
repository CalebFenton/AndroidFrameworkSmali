.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Supplier;

.field public final synthetic blacklist f$1:Ljava/util/function/Supplier;

.field public final synthetic blacklist f$2:Ljava/util/function/BiConsumer;

.field public final synthetic blacklist f$3:Ljava/util/function/BiConsumer;

.field public final synthetic blacklist f$4:Ljava/util/function/BinaryOperator;

.field public final synthetic blacklist f$5:Ljava/util/function/BinaryOperator;

.field public final synthetic blacklist f$6:Ljava/util/function/Function;

.field public final synthetic blacklist f$7:Ljava/util/function/Function;

.field public final synthetic blacklist f$8:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V
    .registers 10

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$0:Ljava/util/function/Supplier;

    iput-object p2, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$1:Ljava/util/function/Supplier;

    iput-object p3, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$2:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$3:Ljava/util/function/BiConsumer;

    iput-object p5, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$4:Ljava/util/function/BinaryOperator;

    iput-object p6, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$5:Ljava/util/function/BinaryOperator;

    iput-object p7, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$6:Ljava/util/function/Function;

    iput-object p8, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$7:Ljava/util/function/Function;

    iput-object p9, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$8:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 10

    .line 0
    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$0:Ljava/util/function/Supplier;

    iget-object v1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$1:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$2:Ljava/util/function/BiConsumer;

    iget-object v3, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$3:Ljava/util/function/BiConsumer;

    iget-object v4, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$4:Ljava/util/function/BinaryOperator;

    iget-object v5, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$5:Ljava/util/function/BinaryOperator;

    iget-object v6, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$6:Ljava/util/function/Function;

    iget-object v7, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$7:Ljava/util/function/Function;

    iget-object v8, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda7;->f$8:Ljava/util/function/BiFunction;

    invoke-static/range {v0 .. v8}, Ljava/util/stream/Collectors;->lambda$teeing0$76(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/util/stream/Collectors$1PairBox;

    move-result-object v0

    return-object v0
.end method

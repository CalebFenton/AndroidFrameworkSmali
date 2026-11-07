.class public final synthetic Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/DoubleUnaryOperator;

.field public final synthetic blacklist f$1:Ljava/util/function/DoubleUnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/DoubleUnaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsDouble(D)D
    .registers 5

    .line 0
    iget-object v0, p0, Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/DoubleUnaryOperator;

    iget-object v1, p0, Ljava/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/DoubleUnaryOperator;

    invoke-static {v0, v1, p1, p2}, Ljava/util/function/DoubleUnaryOperator;->$r8$lambda$Pe8EKXL8iJflQjvnMknOPr7zB4A(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide p1

    return-wide p1
.end method

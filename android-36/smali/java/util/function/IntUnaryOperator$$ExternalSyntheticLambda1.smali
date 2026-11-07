.class public final synthetic Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/IntUnaryOperator;

.field public final synthetic blacklist f$1:Ljava/util/function/IntUnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntUnaryOperator;

    iput-object p2, p0, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/IntUnaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(I)I
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntUnaryOperator;

    iget-object v1, p0, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/IntUnaryOperator;

    invoke-static {v0, v1, p1}, Ljava/util/function/IntUnaryOperator;->$r8$lambda$-qFBMXVS2EdK-VxRa8rpRgFSK-M(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;I)I

    move-result p1

    return p1
.end method

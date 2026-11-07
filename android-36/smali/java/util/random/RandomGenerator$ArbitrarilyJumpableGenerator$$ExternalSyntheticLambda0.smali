.class public final synthetic Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

.field public final synthetic blacklist f$1:D


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;D)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    iput-wide p2, p0, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator$$ExternalSyntheticLambda0;->f$1:D

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator$$ExternalSyntheticLambda0;->f$0:Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    iget-wide v1, p0, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator$$ExternalSyntheticLambda0;->f$1:D

    invoke-static {v0, v1, v2}, Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;->$r8$lambda$72_v8qsFyOoAuHx7pbBfIk5q_p4(Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;D)Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;

    move-result-object v0

    return-object v0
.end method

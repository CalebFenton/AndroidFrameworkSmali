.class public final synthetic Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/random/RandomGenerator;

.field public final synthetic blacklist f$1:D

.field public final synthetic blacklist f$2:D


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/random/RandomGenerator;DD)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda1;->f$0:Ljava/util/random/RandomGenerator;

    iput-wide p2, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda1;->f$1:D

    iput-wide p4, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda1;->f$2:D

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsDouble()D
    .registers 6

    .line 0
    iget-object v0, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda1;->f$0:Ljava/util/random/RandomGenerator;

    iget-wide v1, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda1;->f$1:D

    iget-wide v3, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda1;->f$2:D

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/random/RandomGenerator;->$r8$lambda$ZhU5sBO3b66tRebKIG2ucM4u70g(Ljava/util/random/RandomGenerator;DD)D

    move-result-wide v0

    return-wide v0
.end method

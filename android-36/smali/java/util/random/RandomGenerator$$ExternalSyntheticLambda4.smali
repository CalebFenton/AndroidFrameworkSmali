.class public final synthetic Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/random/RandomGenerator;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/random/RandomGenerator;JJ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda4;->f$0:Ljava/util/random/RandomGenerator;

    iput-wide p2, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda4;->f$1:J

    iput-wide p4, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda4;->f$2:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsLong()J
    .registers 6

    .line 0
    iget-object v0, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda4;->f$0:Ljava/util/random/RandomGenerator;

    iget-wide v1, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda4;->f$1:J

    iget-wide v3, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda4;->f$2:J

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/random/RandomGenerator;->$r8$lambda$944g8sl34kpIN52c8BLEwzEyYeU(Ljava/util/random/RandomGenerator;JJ)J

    move-result-wide v0

    return-wide v0
.end method

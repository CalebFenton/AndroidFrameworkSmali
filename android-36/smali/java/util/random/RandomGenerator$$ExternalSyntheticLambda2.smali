.class public final synthetic Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/random/RandomGenerator;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/random/RandomGenerator;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda2;->f$0:Ljava/util/random/RandomGenerator;

    iput p2, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsInt()I
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda2;->f$0:Ljava/util/random/RandomGenerator;

    iget v1, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2}, Ljava/util/random/RandomGenerator;->$r8$lambda$kcr6mJXiADyYhg1zoedWB7KOook(Ljava/util/random/RandomGenerator;II)I

    move-result v0

    return v0
.end method

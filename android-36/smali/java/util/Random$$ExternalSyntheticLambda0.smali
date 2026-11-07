.class public final synthetic Ljava/util/Random$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Random;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Random;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Random$$ExternalSyntheticLambda0;->f$0:Ljava/util/Random;

    iput p2, p0, Ljava/util/Random$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Ljava/util/Random$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsInt()I
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/Random$$ExternalSyntheticLambda0;->f$0:Ljava/util/Random;

    iget v1, p0, Ljava/util/Random$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Ljava/util/Random$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Ljava/util/Random;->$r8$lambda$rp5Szp5H9yFnzaR8EMQ98Oda6UU(Ljava/util/Random;II)I

    move-result v0

    return v0
.end method

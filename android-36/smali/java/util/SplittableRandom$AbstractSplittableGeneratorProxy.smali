.class Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;
.super Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;
.source "SplittableRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/SplittableRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbstractSplittableGeneratorProxy"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/SplittableRandom;


# direct methods
.method private constructor blacklist <init>(Ljava/util/SplittableRandom;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->this$0:Ljava/util/SplittableRandom;

    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/SplittableRandom;Ljava/util/SplittableRandom-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;-><init>(Ljava/util/SplittableRandom;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api nextInt()I
    .registers 2

    .line 227
    iget-object v0, p0, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->this$0:Ljava/util/SplittableRandom;

    invoke-virtual {v0}, Ljava/util/SplittableRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextLong()J
    .registers 3

    .line 232
    iget-object v0, p0, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->this$0:Ljava/util/SplittableRandom;

    invoke-virtual {v0}, Ljava/util/SplittableRandom;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/SplittableRandom;
    .registers 8
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 237
    new-instance v0, Ljava/util/SplittableRandom;

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v1

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/SplittableRandom;->-$$Nest$smmixGamma(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/util/SplittableRandom;-><init>(JJLjava/util/SplittableRandom-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 224
    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/SplittableRandom;

    move-result-object p1

    return-object p1
.end method

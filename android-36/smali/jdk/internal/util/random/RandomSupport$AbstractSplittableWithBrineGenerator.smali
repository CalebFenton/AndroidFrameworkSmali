.class public abstract Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
.super Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;
.source "RandomSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractSplittableWithBrineGenerator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;
    }
.end annotation


# static fields
.field static final blacklist SALT_SHIFT:I = 0x4


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 2352
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;-><init>()V

    .line 2353
    return-void
.end method


# virtual methods
.method blacklist makeSplitsSpliterator(JJLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/Spliterator;
    .registers 20
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ")",
            "Ljava/util/Spliterator<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 2382
    invoke-virtual {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;->nextLong()J

    move-result-wide v0

    .line 2383
    .local v0, "bits":J
    const-wide/16 v2, 0xf

    .line 2384
    .local v2, "multiplier":J
    const/16 v4, 0x3c

    shl-long v5, v2, v4

    move-wide v12, v5

    .line 2385
    .local v12, "salt":J
    :goto_b
    and-long v5, v12, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_20

    .line 2386
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v5

    .line 2387
    .local v5, "digit":J
    const/4 v7, 0x4

    ushr-long v7, v12, v7

    shl-long v9, v5, v4

    or-long v12, v7, v9

    .line 2388
    mul-long/2addr v0, v2

    .line 2389
    .end local v5    # "digit":J
    goto :goto_b

    .line 2392
    :cond_20
    new-instance v5, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;

    move-object v11, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v6, p5

    invoke-direct/range {v5 .. v13}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator$RandomSplitsSpliteratorWithSalt;-><init>(Ljava/util/random/RandomGenerator$SplittableGenerator;JJLjdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;J)V

    return-object v5
.end method

.method public blacklist split(J)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 4
    .param p1, "brine"    # J

    .line 2418
    invoke-virtual {p0, p0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;->split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 4
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 2424
    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;->split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;
.end method

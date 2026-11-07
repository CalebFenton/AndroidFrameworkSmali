.class public abstract Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;
.super Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/random/RandomGenerator$SplittableGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractSplittableGenerator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;,
        Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomDoublesSpliterator;,
        Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomLongsSpliterator;,
        Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomIntsSpliterator;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 2058
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;-><init>()V

    .line 2059
    return-void
.end method


# virtual methods
.method blacklist makeSplitsSpliterator(JJLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/Spliterator;
    .registers 13
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

    .line 2062
    new-instance v0, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;

    move-object v6, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v1, p5

    .end local p1    # "index":J
    .end local p3    # "fence":J
    .end local p5    # "source":Ljava/util/random/RandomGenerator$SplittableGenerator;
    .local v1, "source":Ljava/util/random/RandomGenerator$SplittableGenerator;
    .local v2, "index":J
    .local v4, "fence":J
    invoke-direct/range {v0 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator$RandomSplitsSpliterator;-><init>(Ljava/util/random/RandomGenerator$SplittableGenerator;JJLjava/util/random/RandomGenerator$SplittableGenerator;)V

    return-object v0
.end method

.method public whitelist test-api split()Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 2

    .line 2074
    invoke-virtual {p0, p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;->split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/random/RandomGenerator$SplittableGenerator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api splits()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 2081
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;->splits(JLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api splits(J)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "streamSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 2086
    invoke-virtual {p0, p1, p2, p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;->splits(JLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api splits(JLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;
    .registers 11
    .param p1, "streamSize"    # J
    .param p3, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 2096
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 2097
    const-string v0, "source should be non-null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2099
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .end local p1    # "streamSize":J
    .end local p3    # "source":Ljava/util/random/RandomGenerator$SplittableGenerator;
    .local v4, "streamSize":J
    .local v6, "source":Ljava/util/random/RandomGenerator$SplittableGenerator;
    invoke-virtual/range {v1 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;->makeSplitsSpliterator(JJLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/Spliterator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api splits(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 2091
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;->splits(JLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

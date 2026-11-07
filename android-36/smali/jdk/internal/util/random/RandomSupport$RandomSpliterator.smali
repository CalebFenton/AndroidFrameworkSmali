.class public abstract Ljdk/internal/util/random/RandomSupport$RandomSpliterator;
.super Ljava/lang/Object;
.source "RandomSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RandomSpliterator"
.end annotation


# instance fields
.field public final blacklist fence:J

.field public blacklist index:J


# direct methods
.method public constructor blacklist <init>(JJ)V
    .registers 5
    .param p1, "index"    # J
    .param p3, "fence"    # J

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-wide p1, p0, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;->index:J

    iput-wide p3, p0, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;->fence:J

    .line 926
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 943
    const/16 v0, 0x4540

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 934
    iget-wide v0, p0, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;->fence:J

    iget-wide v2, p0, Ljdk/internal/util/random/RandomSupport$RandomSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.class final Ljava/util/stream/ReduceOps$CountingSink$OfDouble;
.super Ljava/util/stream/ReduceOps$CountingSink;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReduceOps$CountingSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$CountingSink<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 849
    invoke-direct {p0}, Ljava/util/stream/ReduceOps$CountingSink;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 7
    .param p1, "t"    # D

    .line 852
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$CountingSink$OfDouble;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$CountingSink$OfDouble;->count:J

    .line 853
    return-void
.end method

.class final Ljava/util/stream/ReduceOps$CountingSink$OfInt;
.super Ljava/util/stream/ReduceOps$CountingSink;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReduceOps$CountingSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$CountingSink<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 835
    invoke-direct {p0}, Ljava/util/stream/ReduceOps$CountingSink;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 6
    .param p1, "t"    # I

    .line 838
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$CountingSink$OfInt;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$CountingSink$OfInt;->count:J

    .line 839
    return-void
.end method

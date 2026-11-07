.class abstract Ljava/util/stream/ReduceOps$CountingSink;
.super Ljava/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CountingSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/ReduceOps$CountingSink$OfDouble;,
        Ljava/util/stream/ReduceOps$CountingSink$OfLong;,
        Ljava/util/stream/ReduceOps$CountingSink$OfInt;,
        Ljava/util/stream/ReduceOps$CountingSink$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/ReduceOps$Box<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink<",
        "TT;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/ReduceOps$CountingSink<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field blacklist count:J


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 808
    .local p0, "this":Ljava/util/stream/ReduceOps$CountingSink;, "Ljava/util/stream/ReduceOps$CountingSink<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist begin(J)V
    .registers 5
    .param p1, "size"    # J

    .line 815
    .local p0, "this":Ljava/util/stream/ReduceOps$CountingSink;, "Ljava/util/stream/ReduceOps$CountingSink<TT;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$CountingSink;->count:J

    .line 816
    return-void
.end method

.method public bridge synthetic blacklist combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 808
    .local p0, "this":Ljava/util/stream/ReduceOps$CountingSink;, "Ljava/util/stream/ReduceOps$CountingSink<TT;>;"
    check-cast p1, Ljava/util/stream/ReduceOps$CountingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$CountingSink;->combine(Ljava/util/stream/ReduceOps$CountingSink;)V

    return-void
.end method

.method public blacklist combine(Ljava/util/stream/ReduceOps$CountingSink;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ReduceOps$CountingSink<",
            "TT;>;)V"
        }
    .end annotation

    .line 825
    .local p0, "this":Ljava/util/stream/ReduceOps$CountingSink;, "Ljava/util/stream/ReduceOps$CountingSink<TT;>;"
    .local p1, "other":Ljava/util/stream/ReduceOps$CountingSink;, "Ljava/util/stream/ReduceOps$CountingSink<TT;>;"
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$CountingSink;->count:J

    iget-wide v2, p1, Ljava/util/stream/ReduceOps$CountingSink;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$CountingSink;->count:J

    .line 826
    return-void
.end method

.method public blacklist get()Ljava/lang/Long;
    .registers 3

    .line 820
    .local p0, "this":Ljava/util/stream/ReduceOps$CountingSink;, "Ljava/util/stream/ReduceOps$CountingSink<TT;>;"
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$CountingSink;->count:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 808
    .local p0, "this":Ljava/util/stream/ReduceOps$CountingSink;, "Ljava/util/stream/ReduceOps$CountingSink<TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$CountingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

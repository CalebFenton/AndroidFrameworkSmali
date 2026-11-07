.class final Ljava/util/stream/ReduceOps$CountingSink$OfRef;
.super Ljava/util/stream/ReduceOps$CountingSink;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReduceOps$CountingSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/ReduceOps$CountingSink<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 828
    .local p0, "this":Ljava/util/stream/ReduceOps$CountingSink$OfRef;, "Ljava/util/stream/ReduceOps$CountingSink$OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/ReduceOps$CountingSink;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 831
    .local p0, "this":Ljava/util/stream/ReduceOps$CountingSink$OfRef;, "Ljava/util/stream/ReduceOps$CountingSink$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$CountingSink$OfRef;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$CountingSink$OfRef;->count:J

    .line 832
    return-void
.end method

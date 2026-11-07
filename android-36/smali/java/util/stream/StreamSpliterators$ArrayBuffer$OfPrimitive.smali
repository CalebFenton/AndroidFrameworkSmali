.class abstract Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.super Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer;"
    }
.end annotation


# instance fields
.field blacklist index:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1484
    .local p0, "this":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<TT_CONS;>;"
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist forEach(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;J)V"
        }
    .end annotation
.end method

.method blacklist reset()V
    .registers 2

    .line 1489
    .local p0, "this":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<TT_CONS;>;"
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->index:I

    .line 1490
    return-void
.end method

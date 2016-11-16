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
.field index:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1473
    .local p0, "this":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<TT_CONS;>;"
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method abstract forEach(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;J)V"
        }
    .end annotation
.end method

.method reset()V
    .locals 1

    #@0
    .prologue
    .line 1478
    .local p0, "this":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<TT_CONS;>;"
    const/4 v0, 0x0

    #@1
    iput v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->index:I

    #@3
    .line 1477
    return-void
.end method

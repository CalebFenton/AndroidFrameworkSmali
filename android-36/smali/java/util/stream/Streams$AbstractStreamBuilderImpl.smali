.class abstract Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist count:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 293
    .local p0, "this":Ljava/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/stream/Streams-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 316
    .local p0, "this":Ljava/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    const/16 v0, 0x4450

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 311
    .local p0, "this":Ljava/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 306
    .local p0, "this":Ljava/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    const/4 v0, 0x0

    return-object v0
.end method

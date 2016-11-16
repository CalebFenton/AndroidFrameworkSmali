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
        "Ljava/util/Spliterator",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field count:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 301
    .local p0, "this":Ljava/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    invoke-direct {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 324
    .local p0, "this":Ljava/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    const/16 v0, 0x4450

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 319
    .local p0, "this":Ljava/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@2
    neg-int v0, v0

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    int-to-long v0, v0

    #@6
    return-wide v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 314
    .local p0, "this":Ljava/util/stream/Streams$AbstractStreamBuilderImpl;, "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<TT;TS;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

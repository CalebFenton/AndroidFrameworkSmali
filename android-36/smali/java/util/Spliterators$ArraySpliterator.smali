.class final Ljava/util/Spliterators$ArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArraySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o array:[Ljava/lang/Object;

.field private final greylist-max-o characteristics:I

.field private blacklist estimatedSize:J

.field private final greylist-max-o fence:I

.field private greylist-max-o index:I


# direct methods
.method public constructor greylist-max-o <init>([Ljava/lang/Object;I)V
    .registers 5
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "additionalCharacteristics"    # I

    .line 963
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    .line 964
    return-void
.end method

.method public constructor greylist-max-o <init>([Ljava/lang/Object;III)V
    .registers 7
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .line 976
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-object p1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    .line 978
    iput p2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    .line 979
    iput p3, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    .line 980
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    .line 981
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/Spliterators$ArraySpliterator;->estimatedSize:J

    .line 982
    return-void
.end method

.method private constructor blacklist <init>([Ljava/lang/Object;IIIJ)V
    .registers 8
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "characteristics"    # I
    .param p5, "estimatedSize"    # J

    .line 996
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    iput-object p1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    .line 998
    iput p2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    .line 999
    iput p3, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    .line 1000
    and-int/lit16 v0, p4, -0x4041

    iput v0, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    .line 1001
    iput-wide p5, p0, Ljava/util/Spliterators$ArraySpliterator;->estimatedSize:J

    .line 1002
    return-void
.end method

.method synthetic constructor blacklist <init>([Ljava/lang/Object;IIIJLjava/util/Spliterators-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;IIIJ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1047
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 1042
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget-wide v0, p0, Ljava/util/Spliterators$ArraySpliterator;->estimatedSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    iget-wide v0, p0, Ljava/util/Spliterators$ArraySpliterator;->estimatedSize:J

    goto :goto_11

    :cond_b
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    :goto_11
    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1020
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_1e

    .line 1022
    iget-object v0, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    move-object v1, v0

    .local v1, "a":[Ljava/lang/Object;
    array-length v0, v0

    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1d

    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1d

    iput v3, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    if-ge v2, v3, :cond_1d

    .line 1024
    :cond_14
    aget-object v0, v1, v2

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_14

    .line 1026
    .end local v2    # "i":I
    :cond_1d
    return-void

    .line 1021
    .end local v1    # "a":[Ljava/lang/Object;
    .end local v3    # "hi":I
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 1052
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$ArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1053
    const/4 v0, 0x0

    return-object v0

    .line 1054
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1030
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_1d

    .line 1032
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    if-ltz v0, :cond_1b

    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    if-ge v0, v1, :cond_1b

    .line 1033
    iget-object v0, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    aget-object v0, v0, v1

    .line 1034
    .local v0, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1035
    const/4 v1, 0x1

    return v1

    .line 1037
    .end local v0    # "e":Ljava/lang/Object;, "TT;"
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 1031
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1006
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    .local v2, "lo":I
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    add-int/2addr v0, v2

    const/4 v1, 0x1

    ushr-int/lit8 v3, v0, 0x1

    .line 1007
    .local v3, "mid":I
    if-lt v2, v3, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 1008
    :cond_c
    iget-wide v4, p0, Ljava/util/Spliterators$ArraySpliterator;->estimatedSize:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_20

    .line 1009
    new-instance v0, Ljava/util/Spliterators$ArraySpliterator;

    iget-object v1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iput v3, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v0

    .line 1011
    :cond_20
    iget-wide v4, p0, Ljava/util/Spliterators$ArraySpliterator;->estimatedSize:J

    ushr-long v5, v4, v1

    .line 1012
    .local v5, "prefixEstimatedSize":J
    iget-wide v0, p0, Ljava/util/Spliterators$ArraySpliterator;->estimatedSize:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Ljava/util/Spliterators$ArraySpliterator;->estimatedSize:J

    .line 1013
    new-instance v0, Ljava/util/Spliterators$ArraySpliterator;

    iget-object v1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iput v3, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;IIIJ)V

    return-object v0
.end method

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
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 913
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0, p2}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    #@5
    .line 912
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;III)V
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 925
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 926
    iput-object p1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    #@5
    .line 927
    iput p2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    #@7
    .line 928
    iput p3, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    #@9
    .line 929
    or-int/lit8 v0, p4, 0x40

    #@b
    or-int/lit16 v0, v0, 0x4000

    #@d
    iput v0, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    #@f
    .line 925
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 969
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 965
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    #@2
    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-long v0, v0

    #@6
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 944
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 945
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 946
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    #@a
    .local v0, "a":[Ljava/lang/Object;
    array-length v3, v0

    #@b
    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    #@d
    .local v1, "hi":I
    if-lt v3, v1, :cond_2

    #@f
    .line 947
    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    #@11
    .local v2, "i":I
    if-ltz v2, :cond_2

    #@13
    iput v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    #@15
    if-ge v2, v1, :cond_2

    #@17
    .line 948
    :cond_1
    aget-object v3, v0, v2

    #@19
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    if-lt v2, v1, :cond_1

    #@20
    .line 942
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 974
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Ljava/util/Spliterators$ArraySpliterator;->hasCharacteristics(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 975
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 976
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@e
    throw v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v3, 0x0

    #@1
    .line 954
    if-nez p1, :cond_0

    #@3
    .line 955
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 956
    :cond_0
    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    #@b
    if-ltz v1, :cond_1

    #@d
    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    #@f
    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    #@11
    if-ge v1, v2, :cond_1

    #@13
    .line 957
    iget-object v1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    #@15
    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    #@17
    add-int/lit8 v3, v2, 0x1

    #@19
    iput v3, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    #@1b
    aget-object v0, v1, v2

    #@1d
    .line 958
    .local v0, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@20
    .line 959
    const/4 v1, 0x1

    #@21
    return v1

    #@22
    .line 961
    .end local v0    # "e":Ljava/lang/Object;, "TT;"
    :cond_1
    return v3
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 934
    .local p0, "this":Ljava/util/Spliterators$ArraySpliterator;, "Ljava/util/Spliterators$ArraySpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    #@2
    .local v0, "lo":I
    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    #@4
    add-int/2addr v2, v0

    #@5
    ushr-int/lit8 v1, v2, 0x1

    #@7
    .line 935
    .local v1, "mid":I
    if-lt v0, v1, :cond_0

    #@9
    .line 936
    const/4 v2, 0x0

    #@a
    .line 935
    :goto_0
    return-object v2

    #@b
    .line 937
    :cond_0
    new-instance v2, Ljava/util/Spliterators$ArraySpliterator;

    #@d
    iget-object v3, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    #@f
    iput v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    #@11
    iget v4, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    #@13
    invoke-direct {v2, v3, v0, v1, v4}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    #@16
    goto :goto_0
.end method

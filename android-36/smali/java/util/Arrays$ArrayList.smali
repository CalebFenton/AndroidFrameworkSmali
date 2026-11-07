.class Ljava/util/Arrays$ArrayList;
.super Ljava/util/AbstractList;
.source "Arrays.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x265bc3413277f92eL


# instance fields
.field private final greylist a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 4554
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 4555
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 4556
    return-void
.end method

.method private blacklist toArrayPreserveComponentType()[Ljava/lang/Object;
    .registers 2

    .line 4581
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private blacklist toArrayWithoutComponentType()[Ljava/lang/Object;
    .registers 4

    .line 4577
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 4626
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Arrays$ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 4636
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4637
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 4638
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4637
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4640
    :cond_11
    return-void
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4599
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 4611
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 4612
    .local v0, "a":[Ljava/lang/Object;, "[TE;"
    if-nez p1, :cond_11

    .line 4613
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 4614
    aget-object v2, v0, v1

    if-nez v2, :cond_d

    .line 4615
    return v1

    .line 4613
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "i":I
    :cond_10
    goto :goto_21

    .line 4617
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 4618
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4619
    return v1

    .line 4617
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 4621
    .end local v1    # "i":I
    :cond_21
    :goto_21
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 4658
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    new-instance v0, Ljava/util/Arrays$ArrayItr;

    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/Arrays$ArrayItr;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 4644
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4645
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 4646
    .local v0, "a":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 4647
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4646
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4649
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 4604
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 4605
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 4606
    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 4560
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 4653
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4654
    return-void
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 4631
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 4569
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x23

    if-lt v0, v1, :cond_16

    .line 4570
    const-wide/32 v0, 0xc18df2d

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4571
    invoke-direct {p0}, Ljava/util/Arrays$ArrayList;->toArrayWithoutComponentType()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4573
    :cond_16
    invoke-direct {p0}, Ljava/util/Arrays$ArrayList;->toArrayPreserveComponentType()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4587
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/Arrays$ArrayList;->size()I

    move-result v0

    .line 4588
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_12

    .line 4589
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 4590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4589
    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 4591
    :cond_12
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4592
    array-length v1, p1

    if-le v1, v0, :cond_1e

    .line 4593
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 4594
    :cond_1e
    return-object p1
.end method

.class Ljava/util/Collections$UnmodifiableList;
.super Ljava/util/Collections$UnmodifiableCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x3f0dace4a1371f0L


# instance fields
.field final greylist-max-o list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1539
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    .line 1540
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    .line 1541
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 3

    .line 1620
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    instance-of v0, v0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_e

    .line 1621
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_f

    .line 1622
    :cond_e
    move-object v0, p0

    .line 1620
    :goto_f
    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1551
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1559
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1543
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    if-eq p1, p0, :cond_d

    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1546
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1544
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1556
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1557
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1571
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Collections$UnmodifiableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1574
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableList$1;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$UnmodifiableList$1;-><init>(Ljava/util/Collections$UnmodifiableList;I)V

    return-object v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1554
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 1564
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1548
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 1568
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1603
    .local p0, "this":Ljava/util/Collections$UnmodifiableList;, "Ljava/util/Collections$UnmodifiableList<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.class Ljava/util/Collections$EmptyList;
.super Ljava/util/AbstractList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyList"
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
.field private static final whitelist serialVersionUID:J = 0x7ab817b43ca79edeL


# direct methods
.method private constructor greylist <init>()V
    .registers 1

    .line 4859
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Collections-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/Collections$EmptyList;-><init>()V

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 4922
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 4874
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 4876
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4877
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 4892
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 4913
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4914
    return-void
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4888
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 4895
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 4873
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 4866
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
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

    .line 4869
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyListIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 4899
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4900
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 4904
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4905
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 4872
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 4908
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    return-void
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 4917
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 4879
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4882
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    if-lez v0, :cond_7

    .line 4883
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 4884
    :cond_7
    return-object p1
.end method

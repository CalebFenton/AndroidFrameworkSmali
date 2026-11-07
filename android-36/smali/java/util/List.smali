.class public interface abstract Ljava/util/List;
.super Ljava/lang/Object;
.source "List.java"

# interfaces
.implements Ljava/util/SequencedCollection;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/SequencedCollection<",
        "TE;>;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public static whitelist test-api copyOf(Ljava/util/Collection;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1212
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {p0}, Ljava/util/ImmutableCollections;->listCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 940
    sget-object v0, Ljava/util/ImmutableCollections;->EMPTY_LIST:Ljava/util/ImmutableCollections$ListN;

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 956
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$List12;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$List12;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 973
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$List12;

    invoke-direct {v0, p0, p1}, Ljava/util/ImmutableCollections$List12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 991
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ImmutableCollections;->listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1010
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ImmutableCollections;->listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1030
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ImmutableCollections;->listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1051
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ImmutableCollections;->listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1074
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    filled-new-array/range {p0 .. p6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ImmutableCollections;->listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1098
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    .local p7, "e8":Ljava/lang/Object;, "TE;"
    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ImmutableCollections;->listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1123
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    .local p7, "e8":Ljava/lang/Object;, "TE;"
    .local p8, "e9":Ljava/lang/Object;, "TE;"
    filled-new-array/range {p0 .. p8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ImmutableCollections;->listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1149
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    .local p7, "e8":Ljava/lang/Object;, "TE;"
    .local p8, "e9":Ljava/lang/Object;, "TE;"
    .local p9, "e10":Ljava/lang/Object;, "TE;"
    filled-new-array/range {p0 .. p9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ImmutableCollections;->listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api of([Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1181
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_20

    .line 1191
    invoke-static {p0}, Ljava/util/ImmutableCollections;->listFromArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1189
    :pswitch_a
    new-instance v0, Ljava/util/ImmutableCollections$List12;

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v0, v1, v2}, Ljava/util/ImmutableCollections$List12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1187
    :pswitch_15
    new-instance v0, Ljava/util/ImmutableCollections$List12;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$List12;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 1184
    :pswitch_1d
    sget-object v0, Ljava/util/ImmutableCollections;->EMPTY_LIST:Ljava/util/ImmutableCollections$ListN;

    .line 1185
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_15
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public abstract whitelist test-api add(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api add(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api addAll(ILjava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api addAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 815
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 816
    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 829
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    return-void
.end method

.method public abstract whitelist test-api clear()V
.end method

.method public abstract whitelist test-api contains(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api containsAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 843
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 846
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 844
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 861
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 864
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 862
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public abstract whitelist test-api indexOf(Ljava/lang/Object;)I
.end method

.method public abstract whitelist test-api isEmpty()Z
.end method

.method public abstract whitelist test-api iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api lastIndexOf(Ljava/lang/Object;)I
.end method

.method public abstract whitelist test-api listIterator()Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api remove(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api remove(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api removeAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 880
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 883
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 881
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 899
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 902
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 900
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 437
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 439
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 440
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_7

    .line 442
    :cond_19
    return-void
.end method

.method public abstract whitelist test-api retainAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public whitelist test-api reversed()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 923
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/ReverseOrderListView;->of(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 138
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/List;->reversed()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api size()I
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 527
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 528
    .local v0, "a":[Ljava/lang/Object;
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 529
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 530
    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1a

    aget-object v4, v0, v3

    .line 531
    .local v4, "e":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 532
    invoke-interface {v1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 530
    .end local v4    # "e":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 534
    :cond_1a
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

    .line 795
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 796
    new-instance v0, Ljava/util/AbstractList$RandomAccessSpliterator;

    invoke-direct {v0, p0}, Ljava/util/AbstractList$RandomAccessSpliterator;-><init>(Ljava/util/List;)V

    return-object v0

    .line 798
    :cond_a
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api subList(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api toArray()[Ljava/lang/Object;
.end method

.method public abstract whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation
.end method

.class public interface abstract Ljava/util/Set;
.super Ljava/lang/Object;
.source "Set.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public static whitelist test-api copyOf(Ljava/util/Collection;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 729
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p0, Ljava/util/ImmutableCollections$AbstractImmutableSet;

    if-eqz v0, :cond_8

    .line 730
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 731
    :cond_8
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 732
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 734
    :cond_13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 455
    sget-object v0, Ljava/util/ImmutableCollections;->EMPTY_SET:Ljava/util/ImmutableCollections$SetN;

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 470
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$Set12;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$Set12;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 487
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$Set12;

    invoke-direct {v0, p0, p1}, Ljava/util/ImmutableCollections$Set12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 505
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$SetN;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 524
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$SetN;

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 544
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$SetN;

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 565
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$SetN;

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 588
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$SetN;

    filled-new-array/range {p0 .. p6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 612
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    .local p7, "e8":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$SetN;

    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 637
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    .local p7, "e8":Ljava/lang/Object;, "TE;"
    .local p8, "e9":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$SetN;

    filled-new-array/range {p0 .. p8}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 663
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
    new-instance v0, Ljava/util/ImmutableCollections$SetN;

    filled-new-array/range {p0 .. p9}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs whitelist test-api of([Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 696
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_22

    .line 706
    new-instance v0, Ljava/util/ImmutableCollections$SetN;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 704
    :pswitch_b
    new-instance v0, Ljava/util/ImmutableCollections$Set12;

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v0, v1, v2}, Ljava/util/ImmutableCollections$Set12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 702
    :pswitch_16
    new-instance v0, Ljava/util/ImmutableCollections$Set12;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$Set12;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 699
    :pswitch_1e
    sget-object v0, Ljava/util/ImmutableCollections;->EMPTY_SET:Ljava/util/ImmutableCollections$SetN;

    .line 700
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_16
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public abstract whitelist test-api add(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
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

.method public abstract whitelist test-api hashCode()I
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

.method public abstract whitelist test-api retainAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api size()I
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

    .line 441
    .local p0, "this":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
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

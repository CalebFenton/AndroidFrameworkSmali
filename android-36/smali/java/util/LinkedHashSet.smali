.class public Ljava/util/LinkedHashSet;
.super Ljava/util/HashSet;
.source "LinkedHashSet.java"

# interfaces
.implements Ljava/util/SequencedSet;
.implements Ljava/util/Set;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashSet<",
        "TE;>;",
        "Ljava/util/SequencedSet<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x279328a56a22d5e2L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 4

    .line 167
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {p0, v2, v0, v1}, Ljava/util/HashSet;-><init>(IFZ)V

    .line 168
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 159
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/HashSet;-><init>(IFZ)V

    .line 160
    return-void
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 143
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/HashSet;-><init>(IFZ)V

    .line 144
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 181
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/util/HashMap;->calculateHashMapCapacity(I)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/HashSet;-><init>(IFZ)V

    .line 182
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 183
    return-void
.end method

.method public static whitelist test-api newLinkedHashSet(I)Ljava/util/LinkedHashSet;
    .registers 4
    .param p0, "numElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashSet<",
            "TT;>;"
        }
    .end annotation

    .line 222
    if-ltz p0, :cond_c

    .line 225
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/util/HashMap;->calculateHashMapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0

    .line 223
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative number of elements: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 242
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->map()Ljava/util/LinkedHashMap;

    move-result-object v0

    sget-object v1, Ljava/util/LinkedHashSet;->PRESENT:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 254
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->map()Ljava/util/LinkedHashMap;

    move-result-object v0

    sget-object v1, Ljava/util/LinkedHashSet;->PRESENT:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->putLast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 264
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->map()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedKeySet()Ljava/util/SequencedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedSet;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 274
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->map()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedKeySet()Ljava/util/SequencedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedSet;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method blacklist map()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 230
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedHashSet;->map:Ljava/util/HashMap;

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 284
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->map()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedKeySet()Ljava/util/SequencedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedSet;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 294
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->map()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedKeySet()Ljava/util/SequencedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedSet;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 122
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "TE;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet$1ReverseLinkedHashSetView;-><init>(Ljava/util/LinkedHashSet;)V

    return-object v0
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

    .line 206
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    const/16 v0, 0x11

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

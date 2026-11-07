.class Ljava/util/Collections$SequencedSetFromMap;
.super Ljava/util/Collections$SetFromMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/SequencedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequencedSetFromMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SetFromMap<",
        "TE;>;",
        "Ljava/util/SequencedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x36ba0def3a38c2caL


# direct methods
.method constructor blacklist <init>(Ljava/util/SequencedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SequencedMap<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6120
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    .local p1, "map":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TE;Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SetFromMap;-><init>(Ljava/util/Map;)V

    .line 6121
    return-void
.end method

.method private blacklist map()Ljava/util/SequencedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedMap<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 6116
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SetFromMap;->m:Ljava/util/Map;

    check-cast v0, Ljava/util/SequencedMap;

    return-object v0
.end method

.method private blacklist nsee(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;)TE;"
        }
    .end annotation

    .line 6108
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_7

    .line 6111
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6109
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

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

    .line 6128
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/Collections$SequencedSetFromMap;->map()Ljava/util/SequencedMap;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/SequencedMap;->putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 6129
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/Collections$SequencedSetFromMap;->map()Ljava/util/SequencedMap;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/SequencedMap;->putLast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 6130
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    invoke-direct {p0}, Ljava/util/Collections$SequencedSetFromMap;->map()Ljava/util/SequencedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Collections$SequencedSetFromMap;->nsee(Ljava/util/Map$Entry;)Ljava/lang/Object;

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

    .line 6131
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    invoke-direct {p0}, Ljava/util/Collections$SequencedSetFromMap;->map()Ljava/util/SequencedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Collections$SequencedSetFromMap;->nsee(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 6132
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    invoke-direct {p0}, Ljava/util/Collections$SequencedSetFromMap;->map()Ljava/util/SequencedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Collections$SequencedSetFromMap;->nsee(Ljava/util/Map$Entry;)Ljava/lang/Object;

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

    .line 6133
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    invoke-direct {p0}, Ljava/util/Collections$SequencedSetFromMap;->map()Ljava/util/SequencedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Collections$SequencedSetFromMap;->nsee(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 6106
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    invoke-virtual {p0}, Ljava/util/Collections$SequencedSetFromMap;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "TE;>;"
        }
    .end annotation

    .line 6126
    .local p0, "this":Ljava/util/Collections$SequencedSetFromMap;, "Ljava/util/Collections$SequencedSetFromMap<TE;>;"
    new-instance v0, Ljava/util/Collections$SequencedSetFromMap;

    invoke-direct {p0}, Ljava/util/Collections$SequencedSetFromMap;->map()Ljava/util/SequencedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SequencedMap;->reversed()Ljava/util/SequencedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$SequencedSetFromMap;-><init>(Ljava/util/SequencedMap;)V

    return-object v0
.end method

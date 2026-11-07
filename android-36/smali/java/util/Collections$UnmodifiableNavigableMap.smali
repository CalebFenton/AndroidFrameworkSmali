.class Ljava/util/Collections$UnmodifiableNavigableMap;
.super Ljava/util/Collections$UnmodifiableSortedMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSortedMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY_NAVIGABLE_MAP:Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap<",
            "**>;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x436bc6da7e6295e5L


# instance fields
.field private final greylist-max-o nm:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_NAVIGABLE_MAP()Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;
    .registers 1

    sget-object v0, Ljava/util/Collections$UnmodifiableNavigableMap;->EMPTY_NAVIGABLE_MAP:Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2211
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    invoke-direct {v0}, Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;-><init>()V

    sput-object v0, Ljava/util/Collections$UnmodifiableNavigableMap;->EMPTY_NAVIGABLE_MAP:Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/NavigableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 2221
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    iput-object p1, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    return-void
.end method


# virtual methods
.method public whitelist test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2246
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2247
    .local v0, "ceiling":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_e

    .line 2248
    new-instance v1, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v1, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_f

    .line 2249
    :cond_e
    const/4 v1, 0x0

    .line 2247
    :goto_f
    return-object v1
.end method

.method public whitelist test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2225
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2286
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingMap()Ljava/util/NavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2282
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api firstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2263
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2264
    .local v0, "first":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_e

    .line 2265
    new-instance v1, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v1, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_f

    .line 2266
    :cond_e
    const/4 v1, 0x0

    .line 2264
    :goto_f
    return-object v1
.end method

.method public whitelist test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2238
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2239
    .local v0, "floor":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_e

    .line 2240
    new-instance v1, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v1, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_f

    .line 2241
    :cond_e
    const/4 v1, 0x0

    .line 2239
    :goto_f
    return-object v1
.end method

.method public whitelist test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2224
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2294
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2255
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2256
    .local v0, "higher":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_e

    .line 2257
    new-instance v1, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v1, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_f

    .line 2258
    :cond_e
    const/4 v1, 0x0

    .line 2256
    :goto_f
    return-object v1
.end method

.method public whitelist test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2226
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2271
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2272
    .local v0, "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_e

    .line 2273
    new-instance v1, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v1, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_f

    .line 2274
    :cond_e
    const/4 v1, 0x0

    .line 2272
    :goto_f
    return-object v1
.end method

.method public whitelist test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2230
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2231
    .local v0, "lower":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_e

    .line 2232
    new-instance v1, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v1, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_f

    .line 2233
    :cond_e
    const/4 v1, 0x0

    .line 2231
    :goto_f
    return-object v1
.end method

.method public whitelist test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2223
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2284
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2278
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2280
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2289
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 2290
    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 2289
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 4
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2296
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

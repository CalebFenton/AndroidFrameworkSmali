.class public final Ljdk/internal/util/ReferencedKeySet;
.super Ljava/util/AbstractSet;
.source "ReferencedKeySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final blacklist map:Ljdk/internal/util/ReferencedKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljdk/internal/util/ReferencedKeyMap<",
            "TT;",
            "Ljdk/internal/util/ReferenceKey<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljdk/internal/util/ReferencedKeyMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljdk/internal/util/ReferencedKeyMap<",
            "TT;",
            "Ljdk/internal/util/ReferenceKey<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    .local p1, "map":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TT;Ljdk/internal/util/ReferenceKey<TT;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 84
    iput-object p1, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    .line 85
    return-void
.end method

.method private static blacklist create(ZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeySet;
    .registers 3
    .param p0, "isSoft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map<",
            "Ljdk/internal/util/ReferenceKey<",
            "TE;>;",
            "Ljdk/internal/util/ReferenceKey<",
            "TE;>;>;>;)",
            "Ljdk/internal/util/ReferencedKeySet<",
            "TE;>;"
        }
    .end annotation

    .line 102
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<Ljdk/internal/util/ReferenceKey<TE;>;Ljdk/internal/util/ReferenceKey<TE;>;>;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljdk/internal/util/ReferencedKeySet;->create(ZZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeySet;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist create(ZZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeySet;
    .registers 5
    .param p0, "isSoft"    # Z
    .param p1, "useNativeQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map<",
            "Ljdk/internal/util/ReferenceKey<",
            "TE;>;",
            "Ljdk/internal/util/ReferenceKey<",
            "TE;>;>;>;)",
            "Ljdk/internal/util/ReferencedKeySet<",
            "TE;>;"
        }
    .end annotation

    .line 122
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<Ljdk/internal/util/ReferenceKey<TE;>;Ljdk/internal/util/ReferenceKey<TE;>;>;>;"
    new-instance v0, Ljdk/internal/util/ReferencedKeySet;

    invoke-static {p0, p1, p2}, Ljdk/internal/util/ReferencedKeyMap;->create(ZZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeyMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljdk/internal/util/ReferencedKeySet;-><init>(Ljdk/internal/util/ReferencedKeyMap;)V

    return-object v0
.end method

.method public static blacklist createWithNativeQueue(ZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeySet;
    .registers 4
    .param p0, "isSoft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map<",
            "Ljdk/internal/util/ReferenceKey<",
            "TE;>;",
            "Ljdk/internal/util/ReferenceKey<",
            "TE;>;>;>;)",
            "Ljdk/internal/util/ReferencedKeySet<",
            "TE;>;"
        }
    .end annotation

    .line 128
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<Ljdk/internal/util/ReferenceKey<TE;>;Ljdk/internal/util/ReferenceKey<TE;>;>;>;"
    new-instance v0, Ljdk/internal/util/ReferencedKeySet;

    invoke-static {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->createWithNativeQueue(ZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeyMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljdk/internal/util/ReferencedKeySet;-><init>(Ljdk/internal/util/ReferencedKeyMap;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 161
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-static {v0, p1}, Ljdk/internal/util/ReferencedKeyMap;->internAddKey(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 171
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-virtual {v0}, Ljdk/internal/util/ReferencedKeyMap;->clear()V

    .line 172
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 156
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-virtual {v0, p1}, Ljdk/internal/util/ReferencedKeyMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 183
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-virtual {v0, p1}, Ljdk/internal/util/ReferencedKeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdk/internal/util/ReferenceKey;

    .line 185
    .local v0, "key":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<TT;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-interface {v0}, Ljdk/internal/util/ReferenceKey;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public blacklist intern(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 197
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-static {v0, p1}, Ljdk/internal/util/ReferencedKeyMap;->intern(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist intern(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 213
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    .local p2, "interner":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-static {v0, p1, p2}, Ljdk/internal/util/ReferencedKeyMap;->intern(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 150
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-virtual {v0}, Ljdk/internal/util/ReferencedKeyMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-virtual {v0}, Ljdk/internal/util/ReferencedKeyMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 166
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-virtual {v0, p1}, Ljdk/internal/util/ReferencedKeyMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist removeStaleReferences()V
    .registers 2

    .line 135
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-virtual {v0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 136
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 145
    .local p0, "this":Ljdk/internal/util/ReferencedKeySet;, "Ljdk/internal/util/ReferencedKeySet<TT;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeySet;->map:Ljdk/internal/util/ReferencedKeyMap;

    invoke-virtual {v0}, Ljdk/internal/util/ReferencedKeyMap;->size()I

    move-result v0

    return v0
.end method

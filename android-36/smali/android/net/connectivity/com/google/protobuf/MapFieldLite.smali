.class public final Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
.super Ljava/util/LinkedHashMap;
.source "MapFieldLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_MAP_FIELD:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist isMutable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    .line 63
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->makeImmutable()V

    .line 64
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 51
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isMutable:Z

    .line 53
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "mapData":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isMutable:Z

    .line 58
    return-void
.end method

.method static blacklist calculateHashCodeForMap(Ljava/util/Map;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 175
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    .line 176
    .local v0, "result":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    nop

    .line 178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 179
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_9

    .line 180
    :cond_29
    return v0
.end method

.method private static blacklist calculateHashCodeForObject(Ljava/lang/Object;)I
    .registers 2
    .param p0, "a"    # Ljava/lang/Object;

    .line 160
    instance-of v0, p0, [B

    if-eqz v0, :cond_c

    .line 161
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashCode([B)I

    move-result v0

    return v0

    .line 164
    :cond_c
    instance-of v0, p0, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    if-nez v0, :cond_15

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 165
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static blacklist checkForNullKeysAndValues(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 117
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, "key":Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v1    # "key":Ljava/lang/Object;
    goto :goto_8

    .line 121
    :cond_1d
    return-void
.end method

.method private static blacklist copy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 189
    instance-of v0, p0, [B

    if-eqz v0, :cond_d

    .line 190
    move-object v0, p0

    check-cast v0, [B

    .line 191
    .local v0, "data":[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 193
    .end local v0    # "data":[B
    :cond_d
    return-object p0
.end method

.method static blacklist copy(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 203
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 204
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 205
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_d

    .line 207
    :cond_29
    return-object v0
.end method

.method public static blacklist emptyMapField()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 69
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private blacklist ensureMutable()V
    .registers 2

    .line 229
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    return-void

    .line 230
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static blacklist equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 124
    instance-of v0, p0, [B

    if-eqz v0, :cond_13

    instance-of v0, p1, [B

    if-eqz v0, :cond_13

    .line 125
    move-object v0, p0

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 127
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static blacklist equals(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 135
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "b":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 136
    return v0

    .line 138
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    .line 139
    return v3

    .line 141
    :cond_10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 143
    return v3

    .line 145
    :cond_2f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 146
    return v3

    .line 148
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_42
    goto :goto_18

    .line 149
    :cond_43
    return v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 86
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 87
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 88
    return-void
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 156
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 185
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-static {p0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public blacklist isMutable()Z
    .registers 2

    .line 225
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isMutable:Z

    return v0
.end method

.method public blacklist makeImmutable()V
    .registers 2

    .line 220
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isMutable:Z

    .line 221
    return-void
.end method

.method public blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/MapFieldLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "other":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 74
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 75
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->putAll(Ljava/util/Map;)V

    .line 77
    :cond_c
    return-void
.end method

.method public blacklist mutableCopy()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 212
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;-><init>(Ljava/util/Map;)V

    :goto_11
    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 92
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 93
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist put(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 100
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 106
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->checkForNullKeysAndValues(Ljava/util/Map;)V

    .line 107
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 108
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 112
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->ensureMutable()V

    .line 113
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

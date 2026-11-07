.class final Ljava/util/ImmutableCollections$MapN;
.super Ljava/util/ImmutableCollections$AbstractImmutableMap;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ImmutableCollections$MapN$MapNIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final blacklist size:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field final blacklist table:[Ljava/lang/Object;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method varargs constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 10
    .param p1, "input"    # [Ljava/lang/Object;

    .line 1186
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableMap;-><init>()V

    .line 1187
    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_5a

    .line 1190
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ImmutableCollections$MapN;->size:I

    .line 1192
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    .line 1193
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v1, -0x2

    .line 1194
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    .line 1196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    array-length v2, p1

    if-ge v1, v2, :cond_59

    .line 1198
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1200
    .local v2, "k":Ljava/lang/Object;, "TK;"
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1201
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v2}, Ljava/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v4

    .line 1202
    .local v4, "idx":I
    if-gez v4, :cond_40

    .line 1205
    add-int/lit8 v5, v4, 0x1

    neg-int v5, v5

    .line 1206
    .local v5, "dest":I
    iget-object v6, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aput-object v2, v6, v5

    .line 1207
    iget-object v6, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v7, v5, 0x1

    aput-object v3, v6, v7

    .line 1196
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "idx":I
    .end local v5    # "dest":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 1203
    .restart local v2    # "k":Ljava/lang/Object;, "TK;"
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    .restart local v4    # "idx":I
    :cond_40
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1210
    .end local v1    # "i":I
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "idx":I
    :cond_59
    return-void

    .line 1188
    .end local v0    # "len":I
    :cond_5a
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "length is odd"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist probe(Ljava/lang/Object;)I
    .registers 5
    .param p1, "pk"    # Ljava/lang/Object;

    .line 1343
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 1346
    .local v0, "idx":I
    :goto_f
    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1347
    .local v1, "ek":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_19

    .line 1348
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 1349
    :cond_19
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1350
    return v0

    .line 1351
    :cond_20
    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_28

    .line 1352
    const/4 v0, 0x0

    .line 1354
    .end local v1    # "ek":Ljava/lang/Object;, "TK;"
    :cond_28
    goto :goto_f
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1359
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 8

    .line 1364
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$MapN;->size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1365
    .local v0, "array":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    .line 1366
    .local v1, "len":I
    const/4 v2, 0x0

    .line 1367
    .local v2, "dest":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_28

    .line 1368
    iget-object v4, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_25

    .line 1369
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "dest":I
    .local v4, "dest":I
    iget-object v5, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v5, v5, v3

    aput-object v5, v0, v2

    .line 1370
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "dest":I
    .restart local v2    # "dest":I
    iget-object v5, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    aput-object v5, v0, v4

    .line 1367
    :cond_25
    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    .line 1373
    .end local v3    # "i":I
    :cond_28
    new-instance v3, Ljava/util/CollSer;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1214
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    iget v0, p0, Ljava/util/ImmutableCollections$MapN;->size:I

    if-lez v0, :cond_f

    invoke-direct {p0, p1}, Ljava/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1220
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 1222
    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1223
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_17

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1224
    const/4 v2, 0x1

    return v2

    .line 1221
    .end local v1    # "v":Ljava/lang/Object;
    :cond_17
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 1227
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
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

    .line 1317
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN$1;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$MapN$1;-><init>(Ljava/util/ImmutableCollections$MapN;)V

    return-object v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1245
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$MapN;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 1246
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    return-object v1

    .line 1249
    :cond_9
    invoke-direct {p0, p1}, Ljava/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v0

    .line 1250
    .local v0, "i":I
    if-ltz v0, :cond_16

    .line 1251
    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 1253
    :cond_16
    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 1232
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    const/4 v0, 0x0

    .line 1233
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_20

    .line 1234
    iget-object v2, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 1235
    .local v2, "k":Ljava/lang/Object;
    if-eqz v2, :cond_1d

    .line 1236
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 1233
    .end local v2    # "k":Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 1239
    .end local v1    # "i":I
    :cond_20
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1264
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$MapN;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1259
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$MapN;->size:I

    return v0
.end method

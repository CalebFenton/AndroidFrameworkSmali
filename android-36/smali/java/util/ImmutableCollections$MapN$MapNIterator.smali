.class Ljava/util/ImmutableCollections$MapN$MapNIterator;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections$MapN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapNIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private blacklist idx:I

.field private blacklist remaining:I

.field final synthetic blacklist this$0:Ljava/util/ImmutableCollections$MapN;


# direct methods
.method constructor blacklist <init>(Ljava/util/ImmutableCollections$MapN;)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/ImmutableCollections$MapN;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1273
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$MapNIterator;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iput-object p1, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava/util/ImmutableCollections$MapN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1274
    iget v0, p1, Ljava/util/ImmutableCollections$MapN;->size:I

    iput v0, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    .line 1277
    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetSALT32L()J

    move-result-wide v0

    iget-object v2, p1, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    .line 1278
    return-void
.end method

.method private blacklist nextIndex()I
    .registers 3

    .line 1286
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$MapNIterator;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iget v0, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    .line 1287
    .local v0, "idx":I
    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetREVERSE()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1288
    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1e

    .line 1289
    const/4 v0, 0x0

    goto :goto_1e

    .line 1292
    :cond_13
    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_1e

    .line 1293
    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x2

    .line 1296
    :cond_1e
    :goto_1e
    iput v0, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    return v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1282
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$MapNIterator;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iget v0, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1267
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$MapNIterator;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$MapN$MapNIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1301
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$MapNIterator;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iget v0, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    if-lez v0, :cond_2c

    .line 1303
    :goto_4
    iget-object v0, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava/util/ImmutableCollections$MapN;

    iget-object v0, v0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/ImmutableCollections$MapN$MapNIterator;->nextIndex()I

    move-result v1

    move v2, v1

    .local v2, "idx":I
    aget-object v0, v0, v1

    if-nez v0, :cond_12

    goto :goto_4

    .line 1305
    :cond_12
    new-instance v0, Ljava/util/KeyValueHolder;

    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v1, v1, v2

    iget-object v3, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava/util/ImmutableCollections$MapN;

    iget-object v3, v3, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-direct {v0, v1, v3}, Ljava/util/KeyValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1307
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget v1, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    .line 1308
    return-object v0

    .line 1310
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "idx":I
    :cond_2c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

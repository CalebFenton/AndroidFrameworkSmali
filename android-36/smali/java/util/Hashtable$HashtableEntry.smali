.class Ljava/util/Hashtable$HashtableEntry;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashtableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o hash:I

.field final greylist-max-o key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field greylist-max-o next:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor greylist-max-o <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/Hashtable$HashtableEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1391
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1392
    iput p1, p0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    .line 1393
    iput-object p2, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    .line 1394
    iput-object p3, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 1395
    iput-object p4, p0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 1396
    return-void
.end method


# virtual methods
.method protected whitelist test-api clone()Ljava/lang/Object;
    .registers 6

    .line 1400
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    new-instance v0, Ljava/util/Hashtable$HashtableEntry;

    iget v1, p0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    iget-object v2, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 1401
    iget-object v4, p0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    if-nez v4, :cond_e

    const/4 v4, 0x0

    goto :goto_16

    :cond_e
    iget-object v4, p0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    invoke-virtual {v4}, Ljava/util/Hashtable$HashtableEntry;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable$HashtableEntry;

    :goto_16
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    .line 1400
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1424
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1427
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    if-nez v2, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_38

    goto :goto_1f

    :cond_13
    iget-object v2, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    :goto_1f
    iget-object v2, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_2a

    .line 1428
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_38

    goto :goto_36

    :cond_2a
    iget-object v2, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    :goto_36
    const/4 v1, 0x1

    goto :goto_39

    :cond_38
    nop

    .line 1427
    :goto_39
    return v1

    .line 1425
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_3a
    return v1
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1407
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1411
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1432
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v0, p0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1415
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_7

    .line 1418
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 1419
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 1420
    return-object v0

    .line 1416
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1436
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Ljava/util/WeakHashMap$Entry;
.super Ljava/lang/ref/WeakReference;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o hash:I

.field greylist-max-o next:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry<",
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
.method constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/util/WeakHashMap$Entry;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 723
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    .local p5, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 724
    iput-object p2, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 725
    iput p4, p0, Ljava/util/WeakHashMap$Entry;->hash:I

    .line 726
    iput-object p5, p0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 727
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 745
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 747
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 748
    .local v2, "k1":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 749
    .local v3, "k2":Ljava/lang/Object;
    if-eq v2, v3, :cond_1a

    if-eqz v2, :cond_2d

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 750
    :cond_1a
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 751
    .local v4, "v1":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 752
    .local v5, "v2":Ljava/lang/Object;
    if-eq v4, v5, :cond_2e

    if-eqz v4, :cond_2d

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_2e

    .line 755
    .end local v4    # "v1":Ljava/lang/Object;, "TV;"
    .end local v5    # "v2":Ljava/lang/Object;
    :cond_2d
    return v1

    .line 753
    .restart local v4    # "v1":Ljava/lang/Object;, "TV;"
    .restart local v5    # "v2":Ljava/lang/Object;
    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    return v1

    .line 746
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "k1":Ljava/lang/Object;, "TK;"
    .end local v3    # "k2":Ljava/lang/Object;
    .end local v4    # "v1":Ljava/lang/Object;, "TV;"
    .end local v5    # "v2":Ljava/lang/Object;
    :cond_30
    return v1
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 731
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 735
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 759
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 760
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 761
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 739
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 740
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 741
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 765
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

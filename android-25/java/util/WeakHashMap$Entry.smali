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
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field hash:I

.field next:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/util/WeakHashMap$Entry;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 695
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    .local p5, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    .line 696
    iput-object p2, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@5
    .line 697
    iput p4, p0, Ljava/util/WeakHashMap$Entry;->hash:I

    #@7
    .line 698
    iput-object p5, p0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@9
    .line 694
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 717
    instance-of v5, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 718
    return v6

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 719
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 720
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .line 721
    .local v1, "k1":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    .line 722
    .local v2, "k2":Ljava/lang/Object;
    if-eq v1, v2, :cond_1

    #@13
    if-eqz v1, :cond_3

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_3

    #@1b
    .line 723
    :cond_1
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    .line 724
    .local v3, "v1":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    .line 725
    .local v4, "v2":Ljava/lang/Object;
    if-eq v3, v4, :cond_2

    #@25
    if-eqz v3, :cond_3

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_3

    #@2d
    .line 726
    :cond_2
    const/4 v5, 0x1

    #@2e
    return v5

    #@2f
    .line 728
    .end local v3    # "v1":Ljava/lang/Object;, "TV;"
    .end local v4    # "v2":Ljava/lang/Object;
    :cond_3
    return v6
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 703
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 707
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 732
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 733
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getValue()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .line 734
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    #@b
    move v3, v2

    #@c
    .line 735
    :goto_0
    if-nez v1, :cond_1

    #@e
    .line 734
    :goto_1
    xor-int/2addr v2, v3

    #@f
    return v2

    #@10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@13
    move-result v3

    #@14
    goto :goto_0

    #@15
    .line 735
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result v2

    #@19
    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 711
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@2
    .line 712
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@4
    .line 713
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 739
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getValue()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

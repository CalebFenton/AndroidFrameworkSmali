.class Ljava/util/HashMap$HashMapEntry;
.super Ljava/lang/Object;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
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
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 739
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    .local p4, "n":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 740
    iput-object p3, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@5
    .line 741
    iput-object p4, p0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@7
    .line 742
    iput-object p2, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@9
    .line 743
    iput p1, p0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@b
    .line 739
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 761
    instance-of v5, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 762
    return v6

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 763
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 764
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapEntry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .line 765
    .local v1, "k1":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    .line 766
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
    .line 767
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapEntry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    .line 768
    .local v3, "v1":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    .line 769
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
    .line 770
    :cond_2
    const/4 v5, 0x1

    #@2e
    return v5

    #@2f
    .line 772
    .end local v3    # "v1":Ljava/lang/Object;
    .end local v4    # "v2":Ljava/lang/Object;
    :cond_3
    return v6
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 747
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 751
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 776
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapEntry;->getKey()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapEntry;->getValue()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    xor-int/2addr v0, v1

    #@11
    return v0
.end method

.method recordAccess(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 788
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    return-void
.end method

.method recordRemoval(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 795
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 755
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@2
    .line 756
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@4
    .line 757
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 780
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapEntry;->getKey()Ljava/lang/Object;

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
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapEntry;->getValue()Ljava/lang/Object;

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

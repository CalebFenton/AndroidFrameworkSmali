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
.field final hash:I

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
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V
    .locals 0
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 724
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 725
    iput-object p1, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@5
    .line 726
    iput-object p2, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@7
    .line 727
    iput p3, p0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@9
    .line 728
    iput-object p4, p0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@b
    .line 724
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 746
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 747
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 749
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 750
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@f
    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 751
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@1b
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 750
    :cond_1
    return v1
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
    .line 732
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
    .line 736
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 755
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    .line 756
    :goto_0
    iget-object v2, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 755
    :goto_1
    xor-int/2addr v0, v1

    #@b
    return v0

    #@c
    :cond_0
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v0

    #@12
    goto :goto_0

    #@13
    .line 756
    :cond_1
    iget-object v1, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result v1

    #@19
    goto :goto_1
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
    .line 740
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@2
    .line 741
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@4
    .line 742
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 760
    .local p0, "this":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap<TK;TV;>.HashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

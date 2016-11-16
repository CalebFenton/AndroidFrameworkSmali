.class final Ljava/util/TreeMap$TreeMapEntry;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeMapEntry"
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
.field color:Z

.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
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
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap<TK;TV;>.TreeMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 2111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 2102
    iput-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@6
    .line 2103
    iput-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@8
    .line 2105
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    #@b
    .line 2112
    iput-object p1, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@d
    .line 2113
    iput-object p2, p0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@f
    .line 2114
    iput-object p3, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@11
    .line 2111
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap<TK;TV;>.TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 2149
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 2150
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2151
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 2153
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    invoke-static {v2, v3}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    :cond_1
    return v1
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
    .line 2123
    .local p0, "this":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap<TK;TV;>.TreeMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@2
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
    .line 2132
    .local p0, "this":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap<TK;TV;>.TreeMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 2157
    .local p0, "this":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap<TK;TV;>.TreeMapEntry<TK;TV;>;"
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@2
    if-nez v2, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 2158
    .local v0, "keyHash":I
    :goto_0
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@7
    if-nez v2, :cond_1

    #@9
    const/4 v1, 0x0

    #@a
    .line 2159
    .local v1, "valueHash":I
    :goto_1
    xor-int v2, v0, v1

    #@c
    return v2

    #@d
    .line 2157
    .end local v0    # "keyHash":I
    .end local v1    # "valueHash":I
    :cond_0
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@12
    move-result v0

    #@13
    .restart local v0    # "keyHash":I
    goto :goto_0

    #@14
    .line 2158
    :cond_1
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@19
    move-result v1

    #@1a
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
    .line 2143
    .local p0, "this":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap<TK;TV;>.TreeMapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@2
    .line 2144
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@4
    .line 2145
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2163
    .local p0, "this":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap<TK;TV;>.TreeMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

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
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

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

.class public Ljava/util/AbstractMap$SimpleImmutableEntry;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleImmutableEntry"
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
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6310708932e65f81L


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 714
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 715
    iput-object p1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    #@5
    .line 716
    iput-object p2, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    #@7
    .line 714
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 725
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 726
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    #@9
    .line 727
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    #@f
    .line 725
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 784
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 785
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 786
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 787
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    invoke-static {v2, v3}, Ljava/util/AbstractMap;->-wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    #@17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Ljava/util/AbstractMap;->-wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .line 736
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

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
    .line 745
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 804
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    .line 805
    :goto_0
    iget-object v2, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 804
    :goto_1
    xor-int/2addr v0, v1

    #@b
    return v0

    #@c
    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v0

    #@12
    goto :goto_0

    #@13
    .line 805
    :cond_1
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    #@15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result v1

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
    .line 759
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 817
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

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
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

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

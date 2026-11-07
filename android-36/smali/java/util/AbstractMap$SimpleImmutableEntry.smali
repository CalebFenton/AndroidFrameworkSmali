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
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6310708932e65f81L


# instance fields
.field private final greylist-max-o key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final greylist-max-o value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 776
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    iput-object p1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 778
    iput-object p2, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 779
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 787
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 789
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 790
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 851
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_21

    .line 849
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 850
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/AbstractMap;->-$$Nest$smeq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 851
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/AbstractMap;->-$$Nest$smeq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_21
    const/4 v1, 0x0

    .line 849
    :goto_22
    return v1
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 798
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 807
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 868
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 869
    :goto_d
    iget-object v2, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_12

    goto :goto_18

    :cond_12
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_18
    xor-int/2addr v0, v1

    .line 868
    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 824
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 881
    .local p0, "this":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

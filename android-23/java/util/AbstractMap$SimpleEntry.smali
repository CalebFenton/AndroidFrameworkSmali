.class public Ljava/util/AbstractMap$SimpleEntry;
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
    name = "SimpleEntry"
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
.field private static final serialVersionUID:J = -0x75f5135a03a97fe1L


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
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
    .line 120
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    .local p1, "theKey":Ljava/lang/Object;, "TK;"
    .local p2, "theValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 121
    iput-object p1, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    #@5
    .line 122
    iput-object p2, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    #@7
    .line 120
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
    .line 128
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    .local p1, "copyFrom":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 129
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    #@9
    .line 130
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    #@f
    .line 128
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 148
    if-ne p0, p1, :cond_0

    #@4
    .line 149
    return v1

    #@5
    .line 151
    :cond_0
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@7
    if-eqz v3, :cond_6

    #@9
    move-object v0, p1

    #@a
    .line 152
    check-cast v0, Ljava/util/Map$Entry;

    #@c
    .line 153
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    #@e
    if-nez v3, :cond_2

    #@10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    if-nez v3, :cond_3

    #@16
    .line 155
    :cond_1
    iget-object v3, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    #@18
    if-nez v3, :cond_5

    #@1a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    if-nez v3, :cond_4

    #@20
    .line 153
    :goto_0
    return v1

    #@21
    :cond_2
    iget-object v3, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    #@23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_1

    #@2d
    :cond_3
    move v1, v2

    #@2e
    goto :goto_0

    #@2f
    :cond_4
    move v1, v2

    #@30
    .line 155
    goto :goto_0

    #@31
    :cond_5
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    #@33
    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    goto :goto_0

    #@3c
    .line 158
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_6
    return v2
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
    .line 134
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

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
    .line 138
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 162
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    .line 163
    :goto_0
    iget-object v2, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 162
    :goto_1
    xor-int/2addr v0, v1

    #@b
    return v0

    #@c
    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v0

    #@12
    goto :goto_0

    #@13
    .line 163
    :cond_1
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

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
    .line 142
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    #@2
    .line 143
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    #@4
    .line 144
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 167
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

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
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

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

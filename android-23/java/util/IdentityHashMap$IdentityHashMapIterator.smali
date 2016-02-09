.class Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "KT:",
        "Ljava/lang/Object;",
        "VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final associatedMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field

.field canRemove:Z

.field expectedModCount:I

.field private lastPosition:I

.field private position:I

.field final type:Ljava/util/MapEntry$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/MapEntry$Type;Ljava/util/IdentityHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;",
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TE;TKT;TVT;>;"
    .local p1, "value":Ljava/util/MapEntry$Type;, "Ljava/util/MapEntry$Type<TE;TKT;TVT;>;"
    .local p2, "hm":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TKT;TVT;>;"
    const/4 v0, 0x0

    #@1
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 130
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    #@6
    .line 133
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    #@8
    .line 141
    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    #@a
    .line 145
    iput-object p2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    #@c
    .line 146
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->type:Ljava/util/MapEntry$Type;

    #@e
    .line 147
    iget v0, p2, Ljava/util/IdentityHashMap;->modCount:I

    #@10
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    #@12
    .line 144
    return-void
.end method


# virtual methods
.method checkConcurrentMod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TE;TKT;TVT;>;"
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    #@2
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    #@4
    iget v1, v1, Ljava/util/IdentityHashMap;->modCount:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 164
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v0

    #@e
    .line 162
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 151
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TE;TKT;TVT;>;"
    :goto_0
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    #@2
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    #@4
    iget-object v1, v1, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 153
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    #@b
    iget-object v0, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@d
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    #@f
    aget-object v0, v0, v1

    #@11
    if-nez v0, :cond_0

    #@13
    .line 154
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    #@15
    add-int/lit8 v0, v0, 0x2

    #@17
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    #@19
    goto :goto_0

    #@1a
    .line 156
    :cond_0
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 159
    :cond_1
    const/4 v0, 0x0

    #@1d
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TE;TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->checkConcurrentMod()V

    #@3
    .line 170
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->hasNext()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 171
    new-instance v1, Ljava/util/NoSuchElementException;

    #@b
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@e
    throw v1

    #@f
    .line 174
    :cond_0
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    #@11
    .line 175
    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    #@13
    .line 174
    invoke-static {v1, v2}, Ljava/util/IdentityHashMap;->-wrap0(Ljava/util/IdentityHashMap;I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    #@16
    move-result-object v0

    #@17
    .line 176
    .local v0, "result":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap$IdentityHashMapEntry<TKT;TVT;>;"
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    #@19
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    #@1b
    .line 177
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    #@1d
    add-int/lit8 v1, v1, 0x2

    #@1f
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    #@21
    .line 179
    const/4 v1, 0x1

    #@22
    iput-boolean v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    #@24
    .line 180
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->type:Ljava/util/MapEntry$Type;

    #@26
    invoke-interface {v1, v0}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .line 184
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TE;TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->checkConcurrentMod()V

    #@3
    .line 185
    iget-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@c
    throw v0

    #@d
    .line 189
    :cond_0
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    #@10
    .line 190
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    #@12
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    #@14
    iget-object v1, v1, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@16
    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    #@18
    aget-object v1, v1, v2

    #@1a
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 191
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    #@1f
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    #@21
    .line 192
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    #@27
    .line 183
    return-void
.end method

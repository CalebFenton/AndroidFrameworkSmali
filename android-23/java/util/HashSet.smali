.class public Ljava/util/HashSet;
.super Ljava/util/AbstractSet;
.source "HashSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x45bb7a6a694748ccL


# instance fields
.field transient backingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    #@8
    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 50
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    #@5
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    #@8
    .line 49
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 63
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    #@5
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    #@8
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v3, Ljava/util/HashMap;

    #@2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@5
    move-result v2

    #@6
    const/4 v4, 0x6

    #@7
    if-ge v2, v4, :cond_0

    #@9
    const/16 v2, 0xb

    #@b
    :goto_0
    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    #@e
    invoke-direct {p0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    #@11
    .line 76
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    .line 77
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_1

    #@23
    .line 74
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@26
    move-result v2

    #@27
    mul-int/lit8 v2, v2, 0x2

    #@29
    goto :goto_0

    #@2a
    .line 73
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 81
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "backingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<TE;Ljava/util/HashSet<TE;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 82
    iput-object p1, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@5
    .line 81
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v3

    #@7
    .line 201
    .local v3, "length":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    #@a
    move-result v4

    #@b
    .line 202
    .local v4, "loadFactor":F
    invoke-virtual {p0, v3, v4}, Ljava/util/HashSet;->createBackingMap(IF)Ljava/util/HashMap;

    #@e
    move-result-object v5

    #@f
    iput-object v5, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@11
    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@14
    move-result v0

    #@15
    .line 204
    .local v0, "elementCount":I
    move v1, v0

    #@16
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    #@18
    if-ltz v1, :cond_0

    #@1a
    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    .line 206
    .local v2, "key":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@20
    invoke-virtual {v5, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    goto :goto_0

    #@24
    .line 198
    .end local v2    # "key":Ljava/lang/Object;, "TE;"
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 187
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 188
    iget-object v2, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@5
    iget-object v2, v2, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@7
    array-length v2, v2

    #@8
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@b
    .line 189
    const/high16 v2, 0x3f400000    # 0.75f

    #@d
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    #@10
    .line 190
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    #@13
    move-result v2

    #@14
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@17
    .line 191
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    .line 192
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@28
    goto :goto_0

    #@29
    .line 186
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 106
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 105
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 120
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/HashSet;

    #@6
    .line 121
    .local v0, "clone":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v2, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@8
    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/util/HashMap;

    #@e
    iput-object v2, v0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 122
    return-object v0

    #@11
    .line 123
    .end local v0    # "clone":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    :catch_0
    move-exception v1

    #@12
    .line 124
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@17
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 138
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method createBackingMap(IF)Ljava/util/HashMap;
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 211
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    #@5
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 150
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 161
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 173
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 183
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

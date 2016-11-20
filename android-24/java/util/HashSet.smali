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
.field private static final PRESENT:Ljava/lang/Object;

.field static final serialVersionUID:J = -0x45bb7a6a694748ccL


# instance fields
.field private transient map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/util/HashSet;->PRESENT:Ljava/lang/Object;

    #@7
    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 102
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 103
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@a
    .line 102
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 141
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 142
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    #@8
    iput-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@a
    .line 141
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 129
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 130
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    #@8
    iput-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@a
    .line 129
    return-void
.end method

.method constructor <init>(IFZ)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "dummy"    # Z

    #@0
    .prologue
    .line 158
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 159
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    #@8
    iput-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@a
    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 115
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 116
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@8
    move-result v1

    #@9
    int-to-float v1, v1

    #@a
    const/high16 v2, 0x3f400000    # 0.75f

    #@c
    div-float/2addr v1, v2

    #@d
    float-to-int v1, v1

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    const/16 v2, 0x10

    #@12
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v1

    #@16
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@19
    iput-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@1b
    .line 117
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@1e
    .line 115
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 297
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v0

    #@7
    .line 298
    .local v0, "capacity":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    #@a
    move-result v3

    #@b
    .line 299
    .local v3, "loadFactor":F
    instance-of v5, p0, Ljava/util/LinkedHashSet;

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 300
    new-instance v5, Ljava/util/LinkedHashMap;

    #@11
    invoke-direct {v5, v0, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    #@14
    .line 299
    :goto_0
    iput-object v5, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@16
    .line 304
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@19
    move-result v4

    #@1a
    .line 307
    .local v4, "size":I
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    #@1d
    .line 308
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    .line 309
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@23
    sget-object v6, Ljava/util/HashSet;->PRESENT:Ljava/lang/Object;

    #@25
    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 307
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 301
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    #@2d
    invoke-direct {v5, v0, v3}, Ljava/util/HashMap;-><init>(IF)V

    #@30
    goto :goto_0

    #@31
    .line 292
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 276
    iget-object v2, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@5
    invoke-virtual {v2}, Ljava/util/HashMap;->capacity()I

    #@8
    move-result v2

    #@9
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@c
    .line 277
    iget-object v2, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@e
    invoke-virtual {v2}, Ljava/util/HashMap;->loadFactor()F

    #@11
    move-result v2

    #@12
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    #@15
    .line 280
    iget-object v2, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@17
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@1e
    .line 283
    iget-object v2, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@20
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_0

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    .line 284
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@35
    goto :goto_0

    #@36
    .line 271
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 217
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@2
    sget-object v1, Ljava/util/HashSet;->PRESENT:Ljava/lang/Object;

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 241
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 240
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 252
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/HashSet;

    #@6
    .line 253
    .local v1, "newSet":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v2, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@8
    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/util/HashMap;

    #@e
    iput-object v2, v1, Ljava/util/HashSet;->map:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 254
    return-object v1

    #@11
    .line 255
    .end local v1    # "newSet":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    :catch_0
    move-exception v0

    #@12
    .line 256
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@14
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@17
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 201
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 188
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

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
    .line 170
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

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
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 233
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Ljava/util/HashSet;->PRESENT:Ljava/lang/Object;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 179
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 326
    new-instance v0, Ljava/util/HashMap$KeySpliterator;

    #@3
    iget-object v1, p0, Ljava/util/HashSet;->map:Ljava/util/HashMap;

    #@5
    const/4 v3, -0x1

    #@6
    move v4, v2

    #@7
    move v5, v2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$KeySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    #@b
    return-object v0
.end method

.class abstract Ljava/util/TreeMap$NavigableSubMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NavigableSubMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1d2f58f19bdef1f8L


# instance fields
.field fromStart:Z

.field hi:Ljava/lang/Object;

.field hiInclusive:Z

.field lo:Ljava/lang/Object;

.field loInclusive:Z

.field m:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field toEnd:Z


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V
    .locals 3
    .param p3, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p5, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;TK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "from":Ljava/lang/Object;, "TK;"
    .local p4, "to":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1701
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@5
    .line 1702
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@7
    .line 1703
    iput-object p2, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    #@9
    .line 1704
    iput-object p4, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    #@b
    .line 1705
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@d
    if-ne p3, v0, :cond_0

    #@f
    move v0, v1

    #@10
    :goto_0
    iput-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    #@12
    .line 1706
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@14
    if-ne p5, v0, :cond_1

    #@16
    move v0, v1

    #@17
    :goto_1
    iput-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    #@19
    .line 1707
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@1b
    if-ne p3, v0, :cond_2

    #@1d
    move v0, v1

    #@1e
    :goto_2
    iput-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    #@20
    .line 1708
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@22
    if-ne p5, v0, :cond_3

    #@24
    :goto_3
    iput-boolean v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    #@26
    .line 1701
    return-void

    #@27
    :cond_0
    move v0, v2

    #@28
    .line 1705
    goto :goto_0

    #@29
    :cond_1
    move v0, v2

    #@2a
    .line 1706
    goto :goto_1

    #@2b
    :cond_2
    move v0, v2

    #@2c
    .line 1707
    goto :goto_2

    #@2d
    :cond_3
    move v1, v2

    #@2e
    .line 1708
    goto :goto_3
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1712
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 1717
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@6
    .line 1718
    .local v4, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_0
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    #@8
    if-eqz v0, :cond_2

    #@a
    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@c
    .line 1719
    .local v6, "toBound":Ljava/util/TreeMap$Bound;
    :goto_1
    instance-of v0, p0, Ljava/util/TreeMap$DescendingSubMap;

    #@e
    if-eqz v0, :cond_4

    #@10
    const/4 v2, 0x0

    #@11
    .line 1720
    .local v2, "ascending":Z
    :goto_2
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@13
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    #@1a
    iget-object v5, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    #@1c
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@1f
    return-object v0

    #@20
    .line 1717
    .end local v2    # "ascending":Z
    .end local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    .end local v6    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_0
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    #@22
    if-eqz v0, :cond_1

    #@24
    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@26
    .restart local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    goto :goto_0

    #@27
    .end local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    :cond_1
    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@29
    .restart local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    goto :goto_0

    #@2a
    .line 1718
    :cond_2
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    #@2c
    if-eqz v0, :cond_3

    #@2e
    sget-object v6, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@30
    .restart local v6    # "toBound":Ljava/util/TreeMap$Bound;
    goto :goto_1

    #@31
    .end local v6    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_3
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@33
    .restart local v6    # "toBound":Ljava/util/TreeMap$Bound;
    goto :goto_1

    #@34
    .line 1719
    :cond_4
    const/4 v2, 0x1

    #@35
    .restart local v2    # "ascending":Z
    goto :goto_2
.end method

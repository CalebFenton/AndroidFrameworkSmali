.class Ljava/util/TreeMap$SubMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a7e7cbc5dec3d81L


# instance fields
.field fromKey:Ljava/lang/Object;

.field fromStart:Z

.field final synthetic this$0:Ljava/util/TreeMap;

.field toEnd:Z

.field toKey:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    #@0
    .prologue
    .line 1739
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$SubMap;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@5
    return-void
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
    .line 1747
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
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
    .line 1752
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    iget-boolean v0, p0, Ljava/util/TreeMap$SubMap;->fromStart:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@6
    .line 1753
    .local v4, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_0
    iget-boolean v0, p0, Ljava/util/TreeMap$SubMap;->toEnd:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@c
    .line 1754
    .local v6, "toBound":Ljava/util/TreeMap$Bound;
    :goto_1
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@e
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->this$0:Ljava/util/TreeMap;

    #@10
    iget-object v3, p0, Ljava/util/TreeMap$SubMap;->fromKey:Ljava/lang/Object;

    #@12
    iget-object v5, p0, Ljava/util/TreeMap$SubMap;->toKey:Ljava/lang/Object;

    #@14
    const/4 v2, 0x1

    #@15
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@18
    return-object v0

    #@19
    .line 1752
    .end local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    .end local v6    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_0
    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@1b
    .restart local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    goto :goto_0

    #@1c
    .line 1753
    :cond_1
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@1e
    .restart local v6    # "toBound":Ljava/util/TreeMap$Bound;
    goto :goto_1
.end method

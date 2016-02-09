.class public Ljava/util/LinkedHashSet;
.super Ljava/util/HashSet;
.source "LinkedHashSet.java"

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
        "Ljava/util/HashSet",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x279328a56a22d5e2L


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@5
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    #@8
    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 55
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@5
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    #@8
    .line 54
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 68
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    #@5
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    #@8
    .line 67
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
    .line 79
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

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
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@e
    invoke-direct {p0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    #@11
    .line 81
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
    .line 82
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_1

    #@23
    .line 80
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
    .line 78
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
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
    .line 89
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    #@5
    return-object v0
.end method

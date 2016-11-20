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
    .locals 3

    #@0
    .prologue
    .line 154
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    const/16 v0, 0x10

    #@2
    const/high16 v1, 0x3f400000    # 0.75f

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {p0, v0, v1, v2}, Ljava/util/HashSet;-><init>(IFZ)V

    #@8
    .line 153
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 146
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, p1, v0, v1}, Ljava/util/HashSet;-><init>(IFZ)V

    #@6
    .line 145
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 134
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/HashSet;-><init>(IFZ)V

    #@4
    .line 133
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
    .line 168
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x2

    #@6
    const/16 v1, 0xb

    #@8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b
    move-result v0

    #@c
    const/high16 v1, 0x3f400000    # 0.75f

    #@e
    const/4 v2, 0x1

    #@f
    invoke-direct {p0, v0, v1, v2}, Ljava/util/HashSet;-><init>(IFZ)V

    #@12
    .line 169
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    #@15
    .line 167
    return-void
.end method


# virtual methods
.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    .local p0, "this":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    const/16 v0, 0x11

    #@2
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

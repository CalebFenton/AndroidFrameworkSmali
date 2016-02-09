.class Ljava/util/Collections$CheckedSortedMap;
.super Ljava/util/Collections$CheckedMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16332c973afe036eL


# instance fields
.field final sm:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3389
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collections$CheckedMap;)V

    #@4
    .line 3390
    iput-object p1, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    #@6
    .line 3388
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3394
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    #@2
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 3410
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    #@2
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3402
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    #@4
    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/Collections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    #@a
    iget-object v3, p0, Ljava/util/Collections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    #@c
    invoke-direct {v0, v1, v2, v3}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    #@f
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 3414
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    #@2
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3398
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/Collections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    #@a
    iget-object v3, p0, Ljava/util/Collections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    #@c
    invoke-direct {v0, v1, v2, v3}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    #@f
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3406
    .local p0, "this":Ljava/util/Collections$CheckedSortedMap;, "Ljava/util/Collections$CheckedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    #@4
    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/Collections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    #@a
    iget-object v3, p0, Ljava/util/Collections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    #@c
    invoke-direct {v0, v1, v2, v3}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    #@f
    return-object v0
.end method

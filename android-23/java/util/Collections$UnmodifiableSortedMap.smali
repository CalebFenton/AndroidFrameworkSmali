.class Ljava/util/Collections$UnmodifiableSortedMap;
.super Ljava/util/Collections$UnmodifiableMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a37d6d72c5a28f6L


# instance fields
.field private final sm:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1332
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    #@3
    .line 1333
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    #@5
    .line 1331
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
    .line 1337
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

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
    .line 1341
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    #@2
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1345
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "before":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    #@2
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    #@4
    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    #@b
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
    .line 1349
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    #@2
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1353
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "start":Ljava/lang/Object;, "TK;"
    .local p2, "end":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    #@2
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    #@b
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1357
    .local p0, "this":Ljava/util/Collections$UnmodifiableSortedMap;, "Ljava/util/Collections$UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "after":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    #@2
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableSortedMap;->sm:Ljava/util/SortedMap;

    #@4
    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    #@b
    return-object v0
.end method

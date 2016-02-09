.class Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedMap$CheckedEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3321
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntryIterator<TK;TV;>;"
    .local p1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3323
    iput-object p1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->i:Ljava/util/Iterator;

    #@5
    .line 3324
    iput-object p2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->valueType:Ljava/lang/Class;

    #@7
    .line 3322
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 3328
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntryIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->i:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3335
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3336
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntryIterator<TK;TV;>;"
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntry;

    #@2
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->i:Ljava/util/Iterator;

    #@4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/Map$Entry;

    #@a
    iget-object v2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->valueType:Ljava/lang/Class;

    #@c
    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    #@f
    return-object v1
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 3332
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntryIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;->i:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@5
    .line 3331
    return-void
.end method

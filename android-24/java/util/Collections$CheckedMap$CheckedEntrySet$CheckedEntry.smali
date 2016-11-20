.class Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedMap$CheckedEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3330
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3331
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    iput-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    #@b
    .line 3332
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/Class;

    #@11
    iput-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    #@13
    .line 3330
    return-void
.end method

.method private badValueMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3347
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Attempt to insert "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 3348
    const-string/jumbo v1, " value into map with value type "

    #@17
    .line 3347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 3348
    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    #@1d
    .line 3347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3352
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    if-ne p1, p0, :cond_0

    #@2
    .line 3353
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 3354
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 3355
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 3356
    :cond_1
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    #@c
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@e
    .line 3357
    check-cast p1, Ljava/util/Map$Entry;

    #@10
    .line 3356
    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    #@13
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 3335
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    #@2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3336
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    #@2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 3337
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    #@2
    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 3341
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 3343
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    #@c
    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 3342
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    #@13
    invoke-direct {p0, p1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->badValueMsg(Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3338
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

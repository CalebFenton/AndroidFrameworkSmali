.class Ljava/util/Collections$CheckedMap$CheckedEntry;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedMap;
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
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3194
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntry<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3195
    if-nez p1, :cond_0

    #@5
    .line 3196
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "e == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 3198
    :cond_0
    iput-object p1, p0, Ljava/util/Collections$CheckedMap$CheckedEntry;->e:Ljava/util/Map$Entry;

    #@10
    .line 3199
    iput-object p2, p0, Ljava/util/Collections$CheckedMap$CheckedEntry;->valueType:Ljava/lang/Class;

    #@12
    .line 3194
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3215
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntry;->e:Ljava/util/Map$Entry;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
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
    .line 3203
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntry;->e:Ljava/util/Map$Entry;

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
    .line 3207
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntry;->e:Ljava/util/Map$Entry;

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
    .line 3219
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntry;->e:Ljava/util/Map$Entry;

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
    .line 3211
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntry<TK;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntry;->e:Ljava/util/Map$Entry;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntry;->valueType:Ljava/lang/Class;

    #@4
    invoke-static {p1, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

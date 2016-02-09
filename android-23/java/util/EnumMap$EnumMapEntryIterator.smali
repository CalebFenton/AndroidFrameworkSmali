.class Ljava/util/EnumMap$EnumMapEntryIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/EnumMap$EnumMapIterator",
        "<TE;TKT;TVT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 283
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntryIterator<TE;TKT;TVT;>;"
    .local p1, "value":Ljava/util/MapEntry$Type;, "Ljava/util/MapEntry$Type<TE;TKT;TVT;>;"
    .local p2, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    #@3
    .line 282
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 288
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntryIterator<TE;TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EnumMapEntryIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 289
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    .line 291
    :cond_0
    iget v0, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->position:I

    #@e
    add-int/lit8 v1, v0, 0x1

    #@10
    iput v1, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->position:I

    #@12
    iput v0, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->prePosition:I

    #@14
    .line 292
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->type:Ljava/util/MapEntry$Type;

    #@16
    new-instance v1, Ljava/util/EnumMap$Entry;

    #@18
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->enumMap:Ljava/util/EnumMap;

    #@1a
    iget-object v2, v2, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@1c
    iget v3, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->prePosition:I

    #@1e
    aget-object v2, v2, v3

    #@20
    .line 293
    iget-object v3, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->enumMap:Ljava/util/EnumMap;

    #@22
    iget-object v3, v3, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@24
    iget v4, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->prePosition:I

    #@26
    aget-object v3, v3, v4

    #@28
    iget-object v4, p0, Ljava/util/EnumMap$EnumMapEntryIterator;->enumMap:Ljava/util/EnumMap;

    #@2a
    .line 292
    invoke-direct {v1, v2, v3, v4}, Ljava/util/EnumMap$Entry;-><init>(Ljava/lang/Enum;Ljava/lang/Object;Ljava/util/EnumMap;)V

    #@2d
    invoke-interface {v0, v1}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method

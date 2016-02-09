.class Ljava/util/EnumMap$EnumMapValueCollection;
.super Ljava/util/AbstractCollection;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapValueCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TVT;>;"
    }
.end annotation


# instance fields
.field private final enumMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 229
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap<TK;TV;>.EnumMapValueCollection<TKT;TVT;>;"
    .local p1, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 230
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@5
    .line 229
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 235
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap<TK;TV;>.EnumMapValueCollection<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    #@5
    .line 234
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 240
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap<TK;TV;>.EnumMapValueCollection<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TVT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap<TK;TV;>.EnumMapValueCollection<TKT;TVT;>;"
    new-instance v0, Ljava/util/EnumMap$EnumMapIterator;

    #@2
    .line 246
    new-instance v1, Ljava/util/EnumMap$EnumMapValueCollection$1;

    #@4
    invoke-direct {v1, p0}, Ljava/util/EnumMap$EnumMapValueCollection$1;-><init>(Ljava/util/EnumMap$EnumMapValueCollection;)V

    #@7
    .line 250
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@9
    .line 245
    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    #@c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap<TK;TV;>.EnumMapValueCollection<TKT;TVT;>;"
    const/4 v3, 0x1

    #@1
    .line 255
    if-nez p1, :cond_1

    #@3
    .line 256
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@6
    iget v1, v1, Ljava/util/EnumMap;->enumSize:I

    #@8
    if-ge v0, v1, :cond_3

    #@a
    .line 257
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@c
    iget-object v1, v1, Ljava/util/EnumMap;->hasMapping:[Z

    #@e
    aget-boolean v1, v1, v0

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@14
    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@16
    aget-object v1, v1, v0

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 258
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@1c
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@1e
    iget-object v2, v2, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@20
    aget-object v2, v2, v0

    #@22
    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 259
    return v3

    #@26
    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 263
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@2c
    iget v1, v1, Ljava/util/EnumMap;->enumSize:I

    #@2e
    if-ge v0, v1, :cond_3

    #@30
    .line 264
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@32
    iget-object v1, v1, Ljava/util/EnumMap;->hasMapping:[Z

    #@34
    aget-boolean v1, v1, v0

    #@36
    if-eqz v1, :cond_2

    #@38
    .line 265
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@3a
    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@3c
    aget-object v1, v1, v0

    #@3e
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v1

    #@42
    .line 264
    if-eqz v1, :cond_2

    #@44
    .line 266
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@46
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@48
    iget-object v2, v2, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@4a
    aget-object v2, v2, v0

    #@4c
    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 267
    return v3

    #@50
    .line 263
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_1

    #@53
    .line 271
    :cond_3
    const/4 v1, 0x0

    #@54
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 276
    .local p0, "this":Ljava/util/EnumMap$EnumMapValueCollection;, "Ljava/util/EnumMap<TK;TV;>.EnumMapValueCollection<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

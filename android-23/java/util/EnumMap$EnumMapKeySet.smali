.class Ljava/util/EnumMap$EnumMapKeySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TKT;>;"
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
    .line 186
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapKeySet<TKT;TVT;>;"
    .local p1, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 187
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    #@5
    .line 186
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 192
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapKeySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    #@5
    .line 191
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 197
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapKeySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

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
            "<TKT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 202
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapKeySet<TKT;TVT;>;"
    new-instance v0, Ljava/util/EnumMap$EnumMapIterator;

    #@2
    .line 203
    new-instance v1, Ljava/util/EnumMap$EnumMapKeySet$1;

    #@4
    invoke-direct {v1, p0}, Ljava/util/EnumMap$EnumMapKeySet$1;-><init>(Ljava/util/EnumMap$EnumMapKeySet;)V

    #@7
    .line 207
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    #@9
    .line 202
    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    #@c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 212
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapKeySet<TKT;TVT;>;"
    invoke-virtual {p0, p1}, Ljava/util/EnumMap$EnumMapKeySet;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 213
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 214
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 216
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 221
    .local p0, "this":Ljava/util/EnumMap$EnumMapKeySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapKeySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapKeySet;->enumMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.class Ljava/util/EnumMap$EnumMapIterator;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapIterator"
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
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final enumMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field

.field position:I

.field prePosition:I

.field final type:Ljava/util/MapEntry$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V
    .locals 1
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
    .line 133
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TE;TKT;TVT;>;"
    .local p1, "value":Ljava/util/MapEntry$Type;, "Ljava/util/MapEntry$Type<TE;TKT;TVT;>;"
    .local p2, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 125
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    #@6
    .line 127
    const/4 v0, -0x1

    #@7
    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@9
    .line 134
    iput-object p2, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    #@b
    .line 135
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapIterator;->type:Ljava/util/MapEntry$Type;

    #@d
    .line 133
    return-void
.end method

.method private checkStatus()V
    .locals 2

    #@0
    .prologue
    .line 176
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TE;TKT;TVT;>;"
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    #@0
    .prologue
    .line 139
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TE;TKT;TVT;>;"
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    #@2
    iget v0, v1, Ljava/util/EnumMap;->enumSize:I

    #@4
    .line 140
    .local v0, "length":I
    :goto_0
    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    #@6
    if-ge v1, v0, :cond_0

    #@8
    .line 141
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    #@a
    iget-object v1, v1, Ljava/util/EnumMap;->hasMapping:[Z

    #@c
    iget v2, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    #@e
    aget-boolean v1, v1, v2

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 145
    :cond_0
    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    #@14
    if-eq v1, v0, :cond_2

    #@16
    const/4 v1, 0x1

    #@17
    :goto_1
    return v1

    #@18
    .line 140
    :cond_1
    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    iput v1, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    #@1e
    goto :goto_0

    #@1f
    .line 145
    :cond_2
    const/4 v1, 0x0

    #@20
    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 149
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TE;TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EnumMapIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 150
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    .line 152
    :cond_0
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    #@e
    add-int/lit8 v1, v0, 0x1

    #@10
    iput v1, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    #@12
    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@14
    .line 153
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->type:Ljava/util/MapEntry$Type;

    #@16
    new-instance v1, Ljava/util/MapEntry;

    #@18
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    #@1a
    iget-object v2, v2, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@1c
    iget v3, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@1e
    aget-object v2, v2, v3

    #@20
    .line 154
    iget-object v3, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    #@22
    iget-object v3, v3, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@24
    iget v4, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@26
    aget-object v3, v3, v4

    #@28
    .line 153
    invoke-direct {v1, v2, v3}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@2b
    invoke-interface {v0, v1}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .line 158
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TE;TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/EnumMap$EnumMapIterator;->checkStatus()V

    #@3
    .line 159
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    #@5
    iget-object v0, v0, Ljava/util/EnumMap;->hasMapping:[Z

    #@7
    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@9
    aget-boolean v0, v0, v1

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 160
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    #@f
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    #@11
    iget-object v1, v1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@13
    iget v2, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@15
    aget-object v1, v1, v2

    #@17
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 162
    :cond_0
    const/4 v0, -0x1

    #@1b
    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@1d
    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 167
    .local p0, "this":Ljava/util/EnumMap$EnumMapIterator;, "Ljava/util/EnumMap<TK;TV;>.EnumMapIterator<TE;TKT;TVT;>;"
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 168
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 170
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->type:Ljava/util/MapEntry$Type;

    #@c
    .line 171
    new-instance v1, Ljava/util/MapEntry;

    #@e
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    #@10
    iget-object v2, v2, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@12
    iget v3, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@14
    aget-object v2, v2, v3

    #@16
    .line 172
    iget-object v3, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    #@18
    iget-object v3, v3, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@1a
    iget v4, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    #@1c
    aget-object v3, v3, v4

    #@1e
    .line 171
    invoke-direct {v1, v2, v3}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@21
    .line 170
    invoke-interface {v0, v1}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

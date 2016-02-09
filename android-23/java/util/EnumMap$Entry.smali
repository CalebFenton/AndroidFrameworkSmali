.class Ljava/util/EnumMap$Entry;
.super Ljava/util/MapEntry;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/MapEntry",
        "<TKT;TVT;>;"
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

.field private final ordinal:I


# direct methods
.method constructor <init>(Ljava/lang/Enum;Ljava/lang/Object;Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKT;TVT;",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 57
    .local p0, "this":Ljava/util/EnumMap$Entry;, "Ljava/util/EnumMap<TK;TV;>.Entry<TKT;TVT;>;"
    .local p1, "theKey":Ljava/lang/Enum;, "TKT;"
    .local p2, "theValue":Ljava/lang/Object;, "TVT;"
    .local p3, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3
    .line 58
    iput-object p3, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@5
    .line 59
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@b
    .line 56
    return-void
.end method

.method private checkEntryStatus()V
    .locals 2

    #@0
    .prologue
    .line 118
    .local p0, "this":Ljava/util/EnumMap$Entry;, "Ljava/util/EnumMap<TK;TV;>.Entry<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@2
    iget-object v0, v0, Ljava/util/EnumMap;->hasMapping:[Z

    #@4
    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@6
    aget-boolean v0, v0, v1

    #@8
    if-nez v0, :cond_0

    #@a
    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@f
    throw v0

    #@10
    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 64
    .local p0, "this":Ljava/util/EnumMap$Entry;, "Ljava/util/EnumMap<TK;TV;>.Entry<TKT;TVT;>;"
    iget-object v4, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@2
    iget-object v4, v4, Ljava/util/EnumMap;->hasMapping:[Z

    #@4
    iget v5, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@6
    aget-boolean v4, v4, v5

    #@8
    if-nez v4, :cond_0

    #@a
    .line 65
    const/4 v4, 0x0

    #@b
    return v4

    #@c
    .line 67
    :cond_0
    const/4 v2, 0x0

    #@d
    .line 68
    .local v2, "isEqual":Z
    instance-of v4, p1, Ljava/util/Map$Entry;

    #@f
    if-eqz v4, :cond_1

    #@11
    move-object v0, p1

    #@12
    .line 69
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    .line 70
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    .line 71
    .local v1, "enumKey":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/EnumMap$Entry;->key:Ljava/lang/Object;

    #@1a
    check-cast v4, Ljava/lang/Enum;

    #@1c
    invoke-virtual {v4, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    .line 73
    .local v3, "theValue":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@28
    iget-object v4, v4, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@2a
    iget v5, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@2c
    aget-object v4, v4, v5

    #@2e
    if-nez v4, :cond_3

    #@30
    .line 74
    if-nez v3, :cond_2

    #@32
    const/4 v2, 0x1

    #@33
    .line 80
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "enumKey":Ljava/lang/Object;
    .end local v2    # "isEqual":Z
    .end local v3    # "theValue":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v2

    #@34
    .line 74
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v1    # "enumKey":Ljava/lang/Object;
    .restart local v2    # "isEqual":Z
    .restart local v3    # "theValue":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    #@35
    goto :goto_0

    #@36
    .line 76
    :cond_3
    iget-object v4, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@38
    iget-object v4, v4, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@3a
    iget v5, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@3c
    aget-object v4, v4, v5

    #@3e
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v2

    #@42
    .local v2, "isEqual":Z
    goto :goto_0
.end method

.method public getKey()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TKT;"
        }
    .end annotation

    #@0
    .prologue
    .line 92
    .local p0, "this":Ljava/util/EnumMap$Entry;, "Ljava/util/EnumMap<TK;TV;>.Entry<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/EnumMap$Entry;->checkEntryStatus()V

    #@3
    .line 93
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@5
    iget-object v0, v0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@7
    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@9
    aget-object v0, v0, v1

    #@b
    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 91
    .local p0, "this":Ljava/util/EnumMap$Entry;, "Ljava/util/EnumMap<TK;TV;>.Entry<TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap$Entry;->getKey()Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVT;"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    .local p0, "this":Ljava/util/EnumMap$Entry;, "Ljava/util/EnumMap<TK;TV;>.Entry<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/EnumMap$Entry;->checkEntryStatus()V

    #@3
    .line 99
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@5
    iget-object v0, v0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@7
    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@9
    aget-object v0, v0, v1

    #@b
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$Entry;, "Ljava/util/EnumMap<TK;TV;>.Entry<TKT;TVT;>;"
    const/4 v1, 0x0

    #@1
    .line 85
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@3
    iget-object v0, v0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@5
    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@7
    aget-object v0, v0, v2

    #@9
    if-nez v0, :cond_0

    #@b
    move v0, v1

    #@c
    .line 86
    :goto_0
    iget-object v2, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@e
    iget-object v2, v2, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@10
    iget v3, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@12
    aget-object v2, v2, v3

    #@14
    if-nez v2, :cond_1

    #@16
    .line 85
    :goto_1
    xor-int/2addr v0, v1

    #@17
    return v0

    #@18
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@1a
    iget-object v0, v0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@1c
    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@1e
    aget-object v0, v0, v2

    #@20
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    .line 87
    :cond_1
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@27
    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@29
    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@2b
    aget-object v1, v1, v2

    #@2d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@30
    move-result v1

    #@31
    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVT;)TVT;"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p0, "this":Ljava/util/EnumMap$Entry;, "Ljava/util/EnumMap<TK;TV;>.Entry<TKT;TVT;>;"
    .local p1, "value":Ljava/lang/Object;, "TVT;"
    invoke-direct {p0}, Ljava/util/EnumMap$Entry;->checkEntryStatus()V

    #@3
    .line 105
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@5
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@7
    iget-object v1, v1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@9
    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@b
    aget-object v1, v1, v2

    #@d
    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 110
    .local p0, "this":Ljava/util/EnumMap$Entry;, "Ljava/util/EnumMap<TK;TV;>.Entry<TKT;TVT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@4
    iget-object v1, v1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@6
    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@8
    aget-object v1, v1, v2

    #@a
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    .line 111
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 112
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@19
    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@1b
    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@1d
    aget-object v1, v1, v2

    #@1f
    if-nez v1, :cond_0

    #@21
    .line 113
    const-string/jumbo v1, "null"

    #@24
    .line 112
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1

    #@2c
    .line 113
    :cond_0
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    #@2e
    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@30
    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    #@32
    aget-object v1, v1, v2

    #@34
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    goto :goto_0
.end method

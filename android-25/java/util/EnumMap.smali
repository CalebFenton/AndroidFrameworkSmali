.class public Ljava/util/EnumMap;
.super Ljava/util/AbstractMap;
.source "EnumMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$1;,
        Ljava/util/EnumMap$EntryIterator;,
        Ljava/util/EnumMap$EntrySet;,
        Ljava/util/EnumMap$EnumMapIterator;,
        Ljava/util/EnumMap$KeyIterator;,
        Ljava/util/EnumMap$KeySet;,
        Ljava/util/EnumMap$ValueIterator;,
        Ljava/util/EnumMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final NULL:Ljava/lang/Object;

.field private static final ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

.field private static final serialVersionUID:J = 0x65d7df7be907ca1L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient keyUniverse:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private transient size:I

.field private transient vals:[Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/EnumMap;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/EnumMap;->size:I

    #@2
    return v0
.end method

.method static synthetic -get2(Ljava/util/EnumMap;)[Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/util/EnumMap;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/util/EnumMap;->size:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Ljava/util/EnumMap;I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->entryHashCode(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/util/EnumMap$1;

    #@2
    invoke-direct {v0}, Ljava/util/EnumMap$1;-><init>()V

    #@5
    sput-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    #@7
    .line 127
    const/4 v0, 0x0

    #@8
    new-array v0, v0, [Ljava/lang/Enum;

    #@a
    sput-object v0, Ljava/util/EnumMap;->ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

    #@c
    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 135
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 104
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/EnumMap;->size:I

    #@6
    .line 370
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    #@9
    .line 136
    iput-object p1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@b
    .line 137
    invoke-static {p1}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@11
    .line 138
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@13
    array-length v0, v0

    #@14
    new-array v0, v0, [Ljava/lang/Object;

    #@16
    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@18
    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 148
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 104
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/EnumMap;->size:I

    #@6
    .line 370
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    #@9
    .line 149
    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@b
    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@d
    .line 150
    iget-object v0, p1, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@f
    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@11
    .line 151
    iget-object v0, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@13
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Ljava/lang/Object;

    #@19
    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@1b
    .line 152
    iget v0, p1, Ljava/util/EnumMap;->size:I

    #@1d
    iput v0, p0, Ljava/util/EnumMap;->size:I

    #@1f
    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 104
    const/4 v1, 0x0

    #@4
    iput v1, p0, Ljava/util/EnumMap;->size:I

    #@6
    .line 370
    const/4 v1, 0x0

    #@7
    iput-object v1, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    #@9
    .line 168
    instance-of v1, p1, Ljava/util/EnumMap;

    #@b
    if-eqz v1, :cond_0

    #@d
    move-object v0, p1

    #@e
    .line 169
    check-cast v0, Ljava/util/EnumMap;

    #@10
    .line 170
    .local v0, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    iget-object v1, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@12
    iput-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@14
    .line 171
    iget-object v1, v0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@16
    iput-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@18
    .line 172
    iget-object v1, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@1a
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, [Ljava/lang/Object;

    #@20
    iput-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@22
    .line 173
    iget v1, v0, Ljava/util/EnumMap;->size:I

    #@24
    iput v1, p0, Ljava/util/EnumMap;->size:I

    #@26
    .line 167
    .end local v0    # "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    :goto_0
    return-void

    #@27
    .line 175
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_1

    #@2d
    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string/jumbo v2, "Specified map is empty"

    #@32
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 177
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@39
    move-result-object v1

    #@3a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v1

    #@3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Ljava/lang/Enum;

    #@44
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@4a
    .line 178
    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@4c
    invoke-static {v1}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@4f
    move-result-object v1

    #@50
    iput-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@52
    .line 179
    iget-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@54
    array-length v1, v1

    #@55
    new-array v1, v1, [Ljava/lang/Object;

    #@57
    iput-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@59
    .line 180
    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    #@5c
    goto :goto_0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 225
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 226
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@c
    check-cast p1, Ljava/lang/Enum;

    #@e
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@11
    move-result v2

    #@12
    aget-object v1, v1, v2

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    .line 225
    :goto_0
    return v0

    #@19
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method private entryHashCode(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 715
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    #@7
    move-result v0

    #@8
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@a
    aget-object v1, v1, p1

    #@c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@f
    move-result v1

    #@10
    xor-int/2addr v0, v1

    #@11
    return v0
.end method

.method private equals(Ljava/util/EnumMap;)Z
    .locals 7
    .param p1, "em"    # Ljava/util/EnumMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 684
    iget-object v5, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@4
    iget-object v6, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@6
    if-eq v5, v6, :cond_1

    #@8
    .line 685
    iget v5, p0, Ljava/util/EnumMap;->size:I

    #@a
    if-nez v5, :cond_0

    #@c
    iget v5, p1, Ljava/util/EnumMap;->size:I

    #@e
    if-nez v5, :cond_0

    #@10
    :goto_0
    return v3

    #@11
    :cond_0
    move v3, v4

    #@12
    goto :goto_0

    #@13
    .line 688
    :cond_1
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@16
    array-length v5, v5

    #@17
    if-ge v1, v5, :cond_4

    #@19
    .line 689
    iget-object v5, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@1b
    aget-object v2, v5, v1

    #@1d
    .line 690
    .local v2, "ourValue":Ljava/lang/Object;
    iget-object v5, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@1f
    aget-object v0, v5, v1

    #@21
    .line 691
    .local v0, "hisValue":Ljava/lang/Object;
    if-eq v0, v2, :cond_2

    #@23
    .line 692
    if-eqz v0, :cond_3

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_3

    #@2b
    .line 688
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 693
    :cond_3
    return v4

    #@2f
    .line 695
    .end local v0    # "hisValue":Ljava/lang/Object;
    .end local v2    # "ourValue":Ljava/lang/Object;
    :cond_4
    return v3
.end method

.method private static getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;>(",
            "Ljava/lang/Class",
            "<TK;>;)[TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 752
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-static {p0}, Ljava/lang/JavaLangAccess;->getEnumConstantsShared(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private isValidKey(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 313
    if-nez p1, :cond_0

    #@4
    .line 314
    return v2

    #@5
    .line 317
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    .line 318
    .local v0, "keyClass":Ljava/lang/Class;
    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@b
    if-eq v0, v3, :cond_1

    #@d
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@10
    move-result-object v3

    #@11
    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@13
    if-ne v3, v4, :cond_2

    #@15
    :cond_1
    :goto_0
    return v1

    #@16
    :cond_2
    move v1, v2

    #@17
    goto :goto_0
.end method

.method private maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 120
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    sget-object p1, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    #@4
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 794
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 796
    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@5
    invoke-static {v4}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@8
    move-result-object v4

    #@9
    iput-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@b
    .line 797
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@d
    array-length v4, v4

    #@e
    new-array v4, v4, [Ljava/lang/Object;

    #@10
    iput-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@12
    .line 800
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@15
    move-result v2

    #@16
    .line 803
    .local v2, "size":I
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@19
    .line 804
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/Enum;

    #@1f
    .line 805
    .local v1, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    .line 806
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 803
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 791
    .end local v1    # "key":Ljava/lang/Enum;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 297
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 298
    return v3

    #@8
    .line 299
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    #@a
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@d
    move-result v0

    #@e
    .line 300
    .local v0, "index":I
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@14
    aget-object v2, v2, v0

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 301
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@1e
    const/4 v2, 0x0

    #@1f
    aput-object v2, v1, v0

    #@21
    .line 302
    iget v1, p0, Ljava/util/EnumMap;->size:I

    #@23
    add-int/lit8 v1, v1, -0x1

    #@25
    iput v1, p0, Ljava/util/EnumMap;->size:I

    #@27
    .line 303
    const/4 v1, 0x1

    #@28
    return v1

    #@29
    .line 305
    :cond_1
    return v3
.end method

.method private typeCheck(Ljava/lang/Enum;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 740
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 741
    .local v0, "keyClass":Ljava/lang/Class;
    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@e
    if-eq v1, v2, :cond_0

    #@10
    .line 742
    new-instance v1, Ljava/lang/ClassCastException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, " != "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 739
    :cond_0
    return-void
.end method

.method private unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    sget-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 p1, 0x0

    #@5
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 770
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 773
    iget v2, p0, Ljava/util/EnumMap;->size:I

    #@5
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@8
    .line 776
    iget v0, p0, Ljava/util/EnumMap;->size:I

    #@a
    .line 777
    .local v0, "entriesToBeWritten":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-lez v0, :cond_1

    #@d
    .line 778
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@f
    aget-object v2, v2, v1

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 779
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@15
    aget-object v2, v2, v1

    #@17
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1a
    .line 780
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@1c
    aget-object v2, v2, v1

    #@1e
    invoke-direct {p0, v2}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@25
    .line 781
    add-int/lit8 v0, v0, -0x1

    #@27
    .line 777
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 767
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 359
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@6
    .line 360
    const/4 v0, 0x0

    #@7
    iput v0, p0, Ljava/util/EnumMap;->size:I

    #@9
    .line 358
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 724
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Ljava/util/EnumMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 725
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 727
    .local v1, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    .end local v1    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    check-cast v1, Ljava/util/EnumMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 731
    .local v1, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v2, v1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@9
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, [Ljava/lang/Object;

    #@f
    iput-object v2, v1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@11
    .line 732
    const/4 v2, 0x0

    #@12
    iput-object v2, v1, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    #@14
    .line 733
    return-object v1

    #@15
    .line 728
    .end local v1    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :catch_0
    move-exception v0

    #@16
    .line 729
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 221
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@9
    check-cast p1, Ljava/lang/Enum;

    #@b
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@e
    move-result v2

    #@f
    aget-object v1, v1, v2

    #@11
    if-eqz v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 203
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object p1

    #@5
    .line 205
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@7
    array-length v4, v3

    #@8
    move v1, v2

    #@9
    :goto_0
    if-ge v1, v4, :cond_1

    #@b
    aget-object v0, v3, v1

    #@d
    .line 206
    .local v0, "val":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 207
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 209
    .end local v0    # "val":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 464
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    #@3
    .line 465
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    #@5
    .line 466
    return-object v0

    #@6
    .line 468
    :cond_0
    new-instance v1, Ljava/util/EnumMap$EntrySet;

    #@8
    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$EntrySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntrySet;)V

    #@b
    iput-object v1, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    #@d
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v7, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 655
    if-ne p0, p1, :cond_0

    #@4
    .line 656
    return v7

    #@5
    .line 657
    :cond_0
    instance-of v4, p1, Ljava/util/EnumMap;

    #@7
    if-eqz v4, :cond_1

    #@9
    .line 658
    check-cast p1, Ljava/util/EnumMap;

    #@b
    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->equals(Ljava/util/EnumMap;)Z

    #@e
    move-result v4

    #@f
    return v4

    #@10
    .line 659
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljava/util/Map;

    #@12
    if-nez v4, :cond_2

    #@14
    .line 660
    return v5

    #@15
    :cond_2
    move-object v2, p1

    #@16
    .line 662
    check-cast v2, Ljava/util/Map;

    #@18
    .line 663
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget v4, p0, Ljava/util/EnumMap;->size:I

    #@1a
    invoke-interface {v2}, Ljava/util/Map;->size()I

    #@1d
    move-result v6

    #@1e
    if-eq v4, v6, :cond_3

    #@20
    .line 664
    return v5

    #@21
    .line 666
    :cond_3
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@24
    array-length v4, v4

    #@25
    if-ge v0, v4, :cond_7

    #@27
    .line 667
    iget-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@29
    aget-object v4, v4, v0

    #@2b
    if-eqz v4, :cond_6

    #@2d
    .line 668
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@2f
    aget-object v1, v4, v0

    #@31
    .line 669
    .local v1, "key":Ljava/lang/Enum;, "TK;"
    iget-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@33
    aget-object v4, v4, v0

    #@35
    invoke-direct {p0, v4}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    .line 670
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_5

    #@3b
    .line 671
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v4

    #@3f
    if-nez v4, :cond_4

    #@41
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@44
    move-result v4

    #@45
    :goto_1
    if-nez v4, :cond_6

    #@47
    .line 672
    return v5

    #@48
    :cond_4
    move v4, v5

    #@49
    .line 671
    goto :goto_1

    #@4a
    .line 674
    :cond_5
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v4

    #@52
    if-nez v4, :cond_6

    #@54
    .line 675
    return v5

    #@55
    .line 666
    .end local v1    # "key":Ljava/lang/Enum;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    .line 680
    :cond_7
    return v7
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 246
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@8
    check-cast p1, Ljava/lang/Enum;

    #@a
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@d
    move-result v1

    #@e
    aget-object v0, v0, v1

    #@10
    invoke-direct {p0, v0}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    .line 245
    :goto_0
    return-object v0

    #@15
    .line 246
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 703
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 705
    .local v0, "h":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 706
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@9
    aget-object v2, v2, v1

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 707
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->entryHashCode(I)I

    #@10
    move-result v2

    #@11
    add-int/2addr v0, v2

    #@12
    .line 705
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 711
    :cond_1
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 382
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    #@3
    .line 383
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    #@5
    .line 384
    return-object v0

    #@6
    .line 386
    :cond_0
    new-instance v1, Ljava/util/EnumMap$KeySet;

    #@8
    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$KeySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$KeySet;)V

    #@b
    iput-object v1, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    #@d
    return-object v1
.end method

.method public put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 266
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->typeCheck(Ljava/lang/Enum;)V

    #@3
    .line 268
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@6
    move-result v0

    #@7
    .line 269
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@9
    aget-object v1, v2, v0

    #@b
    .line 270
    .local v1, "oldValue":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@d
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    aput-object v3, v2, v0

    #@13
    .line 271
    if-nez v1, :cond_0

    #@15
    .line 272
    iget v2, p0, Ljava/util/EnumMap;->size:I

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    iput v2, p0, Ljava/util/EnumMap;->size:I

    #@1b
    .line 273
    :cond_0
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    return-object v2
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 265
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 333
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v3, p1, Ljava/util/EnumMap;

    #@2
    if-eqz v3, :cond_4

    #@4
    move-object v0, p1

    #@5
    .line 335
    check-cast v0, Ljava/util/EnumMap;

    #@7
    .line 336
    .local v0, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<+TK;+TV;>;"
    iget-object v3, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@9
    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@b
    if-eq v3, v4, :cond_1

    #@d
    .line 337
    invoke-virtual {v0}, Ljava/util/EnumMap;->isEmpty()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 338
    return-void

    #@14
    .line 339
    :cond_0
    new-instance v3, Ljava/lang/ClassCastException;

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    iget-object v5, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    const-string/jumbo v5, " != "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    iget-object v5, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@35
    throw v3

    #@36
    .line 342
    :cond_1
    const/4 v2, 0x0

    #@37
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    #@39
    array-length v3, v3

    #@3a
    if-ge v2, v3, :cond_5

    #@3c
    .line 343
    iget-object v3, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@3e
    aget-object v1, v3, v2

    #@40
    .line 344
    .local v1, "emValue":Ljava/lang/Object;
    if-eqz v1, :cond_3

    #@42
    .line 345
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@44
    aget-object v3, v3, v2

    #@46
    if-nez v3, :cond_2

    #@48
    .line 346
    iget v3, p0, Ljava/util/EnumMap;->size:I

    #@4a
    add-int/lit8 v3, v3, 0x1

    #@4c
    iput v3, p0, Ljava/util/EnumMap;->size:I

    #@4e
    .line 347
    :cond_2
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@50
    aput-object v1, v3, v2

    #@52
    .line 342
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_0

    #@55
    .line 351
    .end local v0    # "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<+TK;+TV;>;"
    .end local v1    # "emValue":Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    #@58
    .line 332
    :cond_5
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 286
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 287
    return-object v3

    #@8
    .line 288
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    #@a
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@d
    move-result v0

    #@e
    .line 289
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@10
    aget-object v1, v2, v0

    #@12
    .line 290
    .local v1, "oldValue":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    #@14
    aput-object v3, v2, v0

    #@16
    .line 291
    if-eqz v1, :cond_1

    #@18
    .line 292
    iget v2, p0, Ljava/util/EnumMap;->size:I

    #@1a
    add-int/lit8 v2, v2, -0x1

    #@1c
    iput v2, p0, Ljava/util/EnumMap;->size:I

    #@1e
    .line 293
    :cond_1
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 192
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget v0, p0, Ljava/util/EnumMap;->size:I

    #@2
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 420
    iget-object v0, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    #@3
    .line 421
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    #@5
    .line 422
    return-object v0

    #@6
    .line 424
    :cond_0
    new-instance v1, Ljava/util/EnumMap$Values;

    #@8
    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$Values;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$Values;)V

    #@b
    iput-object v1, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    #@d
    return-object v1
.end method

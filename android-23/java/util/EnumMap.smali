.class public Ljava/util/EnumMap;
.super Ljava/util/AbstractMap;
.source "EnumMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$Entry;,
        Ljava/util/EnumMap$EnumMapIterator;,
        Ljava/util/EnumMap$EnumMapKeySet;,
        Ljava/util/EnumMap$EnumMapValueCollection;,
        Ljava/util/EnumMap$EnumMapEntryIterator;,
        Ljava/util/EnumMap$EnumMapEntrySet;
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
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65d7df7be907ca1L


# instance fields
.field private transient entrySet:Ljava/util/EnumMap$EnumMapEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap$EnumMapEntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient enumSize:I

.field transient hasMapping:[Z

.field private keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private transient mappingsCount:I

.field transient values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
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
    .line 390
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 49
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    #@6
    .line 391
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    #@9
    .line 390
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
    .line 403
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 49
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    #@6
    .line 404
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V

    #@9
    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 421
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 49
    const/4 v5, 0x0

    #@4
    iput-object v5, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    #@6
    .line 422
    instance-of v5, p1, Ljava/util/EnumMap;

    #@8
    if-eqz v5, :cond_0

    #@a
    move-object v3, p1

    #@b
    .line 424
    check-cast v3, Ljava/util/EnumMap;

    #@d
    .line 425
    .local v3, "enumMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    invoke-direct {p0, v3}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V

    #@10
    .line 421
    .end local v3    # "enumMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    :goto_0
    return-void

    #@11
    .line 427
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_1

    #@17
    .line 428
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v6, "map is empty"

    #@1c
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v5

    #@20
    .line 430
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@23
    move-result-object v5

    #@24
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v4

    #@28
    .line 431
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Ljava/lang/Enum;

    #@2e
    .line 433
    .local v2, "enumKey":Ljava/lang/Enum;, "TK;"
    const-class v5, Ljava/lang/Enum;

    #@30
    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 434
    invoke-virtual {v2}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    #@36
    move-result-object v0

    #@37
    .line 435
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    #@3a
    move-result v5

    #@3b
    if-nez v5, :cond_2

    #@3d
    .line 438
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@40
    move-result-object v0

    #@41
    .line 440
    :cond_2
    move-object v1, v0

    #@42
    .line 441
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    #@45
    .line 442
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->putAllImpl(Ljava/util/Map;)V

    #@48
    goto :goto_0
.end method

.method private initialization(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 737
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    iput-object p1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@2
    .line 738
    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@4
    invoke-static {v1}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@a
    .line 739
    iget-object v1, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@c
    array-length v1, v1

    #@d
    iput v1, p0, Ljava/util/EnumMap;->enumSize:I

    #@f
    .line 742
    iget v1, p0, Ljava/util/EnumMap;->enumSize:I

    #@11
    new-array v0, v1, [Ljava/lang/Object;

    #@13
    .line 743
    .local v0, "valueArray":[Ljava/lang/Object;, "[TV;"
    iput-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@15
    .line 744
    iget v1, p0, Ljava/util/EnumMap;->enumSize:I

    #@17
    new-array v1, v1, [Z

    #@19
    iput-object v1, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@1b
    .line 736
    return-void
.end method

.method private initialization(Ljava/util/EnumMap;)V
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
    .line 728
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "enumMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@2
    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@4
    .line 729
    iget-object v0, p1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@6
    iput-object v0, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    #@8
    .line 730
    iget v0, p1, Ljava/util/EnumMap;->enumSize:I

    #@a
    iput v0, p0, Ljava/util/EnumMap;->enumSize:I

    #@c
    .line 731
    iget-object v0, p1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/lang/Object;

    #@14
    iput-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@16
    .line 732
    iget-object v0, p1, Ljava/util/EnumMap;->hasMapping:[Z

    #@18
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, [Z

    #@1e
    iput-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@20
    .line 733
    iget v0, p1, Ljava/util/EnumMap;->mappingsCount:I

    #@22
    iput v0, p0, Ljava/util/EnumMap;->mappingsCount:I

    #@24
    .line 727
    return-void
.end method

.method private isValidKeyType(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 724
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 748
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    .line 749
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/lang/Enum;

    #@1a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {p0, v2, v3}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    goto :goto_0

    #@22
    .line 747
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method private putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 754
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    #@2
    .line 755
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "key == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 757
    :cond_0
    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@d
    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 758
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v0

    #@14
    .line 759
    .local v0, "keyOrdinal":I
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@16
    aget-boolean v2, v2, v0

    #@18
    if-nez v2, :cond_1

    #@1a
    .line 760
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@1c
    const/4 v3, 0x1

    #@1d
    aput-boolean v3, v2, v0

    #@1f
    .line 761
    iget v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    iput v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    #@25
    .line 763
    :cond_1
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@27
    aget-object v1, v2, v0

    #@29
    .line 764
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@2b
    aput-object p2, v2, v0

    #@2d
    .line 765
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 702
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 703
    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@5
    invoke-direct {p0, v4}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    #@8
    .line 704
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@b
    move-result v0

    #@c
    .line 707
    .local v0, "elementCount":I
    move v2, v0

    #@d
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    #@f
    .line 708
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/Enum;

    #@15
    .line 709
    .local v1, "enumKey":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    .line 710
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v1, v3}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 707
    add-int/lit8 v2, v2, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 701
    .end local v1    # "enumKey":Ljava/lang/Enum;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 715
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 716
    iget v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    #@5
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@8
    .line 717
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/util/Map$Entry;

    #@1c
    .line 718
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@23
    .line 719
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 714
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 454
    iget-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@7
    .line 455
    iget-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@9
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    #@c
    .line 456
    iput v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    #@e
    .line 453
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
    .line 465
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
    .line 467
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/EnumMap;

    #@6
    .line 468
    .local v1, "enumMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {v1, p0}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 469
    return-object v1

    #@a
    .line 470
    .end local v1    # "enumMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :catch_0
    move-exception v0

    #@b
    .line 471
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@10
    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 485
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 486
    check-cast p1, Ljava/lang/Enum;

    #@8
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@b
    move-result v0

    #@c
    .line 487
    .local v0, "keyOrdinal":I
    iget-object v1, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@e
    aget-boolean v1, v1, v0

    #@10
    return v1

    #@11
    .line 489
    .end local v0    # "keyOrdinal":I
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x1

    #@1
    .line 502
    if-nez p1, :cond_1

    #@3
    .line 503
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/EnumMap;->enumSize:I

    #@6
    if-ge v0, v1, :cond_3

    #@8
    .line 504
    iget-object v1, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@a
    aget-boolean v1, v1, v0

    #@c
    if-eqz v1, :cond_0

    #@e
    iget-object v1, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@10
    aget-object v1, v1, v0

    #@12
    if-nez v1, :cond_0

    #@14
    .line 505
    return v2

    #@15
    .line 503
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 509
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    #@19
    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Ljava/util/EnumMap;->enumSize:I

    #@1b
    if-ge v0, v1, :cond_3

    #@1d
    .line 510
    iget-object v1, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@1f
    aget-boolean v1, v1, v0

    #@21
    if-eqz v1, :cond_2

    #@23
    iget-object v1, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@25
    aget-object v1, v1, v0

    #@27
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 511
    return v2

    #@2e
    .line 509
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_1

    #@31
    .line 515
    :cond_3
    const/4 v1, 0x0

    #@32
    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
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
    .line 530
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 531
    new-instance v0, Ljava/util/EnumMap$EnumMapEntrySet;

    #@6
    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapEntrySet;-><init>(Ljava/util/EnumMap;)V

    #@9
    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    #@b
    .line 533
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    #@d
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 549
    if-ne p0, p1, :cond_0

    #@3
    .line 550
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 552
    :cond_0
    instance-of v2, p1, Ljava/util/EnumMap;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 553
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    return v1

    #@e
    :cond_1
    move-object v0, p1

    #@f
    .line 555
    check-cast v0, Ljava/util/EnumMap;

    #@11
    .line 556
    .local v0, "enumMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@13
    iget-object v3, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    #@15
    if-ne v2, v3, :cond_2

    #@17
    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    #@1e
    move-result v3

    #@1f
    if-eq v2, v3, :cond_3

    #@21
    .line 557
    :cond_2
    return v1

    #@22
    .line 559
    :cond_3
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@24
    iget-object v3, v0, Ljava/util/EnumMap;->hasMapping:[Z

    #@26
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_4

    #@2c
    .line 560
    iget-object v1, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@2e
    iget-object v2, v0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@30
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    .line 559
    :cond_4
    return v1
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
    .line 573
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 574
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 576
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    #@a
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@d
    move-result v0

    #@e
    .line 577
    .local v0, "keyOrdinal":I
    iget-object v1, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@10
    aget-object v1, v1, v0

    #@12
    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 592
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 593
    new-instance v0, Ljava/util/EnumMap$EnumMapKeySet;

    #@6
    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapKeySet;-><init>(Ljava/util/EnumMap;)V

    #@9
    iput-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    #@b
    .line 595
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    #@d
    return-object v0
.end method

.method public put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 620
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 619
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 641
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->putAllImpl(Ljava/util/Map;)V

    #@3
    .line 640
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    const/4 v4, 0x0

    #@1
    .line 656
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 657
    return-object v4

    #@8
    .line 659
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    #@a
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@d
    move-result v0

    #@e
    .line 660
    .local v0, "keyOrdinal":I
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@10
    aget-boolean v2, v2, v0

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 661
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    #@16
    const/4 v3, 0x0

    #@17
    aput-boolean v3, v2, v0

    #@19
    .line 662
    iget v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    #@1b
    add-int/lit8 v2, v2, -0x1

    #@1d
    iput v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    #@1f
    .line 664
    :cond_1
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@21
    aget-object v1, v2, v0

    #@23
    .line 665
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    #@25
    aput-object v4, v2, v0

    #@27
    .line 666
    return-object v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 676
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget v0, p0, Ljava/util/EnumMap;->mappingsCount:I

    #@2
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 693
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->valuesCollection:Ljava/util/Collection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 694
    new-instance v0, Ljava/util/EnumMap$EnumMapValueCollection;

    #@6
    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapValueCollection;-><init>(Ljava/util/EnumMap;)V

    #@9
    iput-object v0, p0, Ljava/util/EnumMap;->valuesCollection:Ljava/util/Collection;

    #@b
    .line 696
    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap;->valuesCollection:Ljava/util/Collection;

    #@d
    return-object v0
.end method

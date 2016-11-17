.class public Ljava/util/Hashtable;
.super Ljava/util/Dictionary;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Hashtable$EntrySet;,
        Ljava/util/Hashtable$Enumerator;,
        Ljava/util/Hashtable$HashtableEntry;,
        Ljava/util/Hashtable$KeySet;,
        Ljava/util/Hashtable$ValueCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ENTRIES:I = 0x2

.field private static final KEYS:I = 0x0

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final VALUES:I = 0x1

.field private static final serialVersionUID:J = 0x13bb0f25214ae4b8L


# instance fields
.field private transient count:I

.field private volatile transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private loadFactor:F

.field private transient modCount:I

.field private transient table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private threshold:I

.field private volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/Hashtable;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/Hashtable;->count:I

    #@2
    return v0
.end method

.method static synthetic -get1(Ljava/util/Hashtable;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    #@2
    return v0
.end method

.method static synthetic -get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/util/Hashtable;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/util/Hashtable;->count:I

    #@2
    return p1
.end method

.method static synthetic -set1(Ljava/util/Hashtable;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/util/Hashtable;->modCount:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Ljava/lang/Object;)I
    .locals 1
    .param p0, "k"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/util/Hashtable;I)Ljava/util/Iterator;
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->getIterator(I)Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 215
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/16 v0, 0xb

    #@2
    const/high16 v1, 0x3f400000    # 0.75f

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/Hashtable;-><init>(IF)V

    #@7
    .line 214
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 207
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    #@2
    invoke-direct {p0, p1, v0}, Ljava/util/Hashtable;-><init>(IF)V

    #@5
    .line 206
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const v0, 0x7ffffff8

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    .line 184
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    #@8
    .line 166
    iput v1, p0, Ljava/util/Hashtable;->modCount:I

    #@a
    .line 612
    iput-object v2, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    #@c
    .line 613
    iput-object v2, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    #@e
    .line 614
    iput-object v2, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    #@10
    .line 185
    if-gez p1, :cond_0

    #@12
    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Illegal Capacity: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 188
    :cond_0
    const/4 v1, 0x0

    #@2d
    cmpg-float v1, p2, v1

    #@2f
    if-lez v1, :cond_1

    #@31
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_2

    #@37
    .line 189
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "Illegal Load: "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    .line 191
    :cond_2
    if-nez p1, :cond_3

    #@53
    .line 192
    const/4 p1, 0x1

    #@54
    .line 193
    :cond_3
    iput p2, p0, Ljava/util/Hashtable;->loadFactor:F

    #@56
    .line 194
    new-array v1, p1, [Ljava/util/Hashtable$HashtableEntry;

    #@58
    iput-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@5a
    .line 195
    if-gt p1, v0, :cond_4

    #@5c
    .end local p1    # "initialCapacity":I
    :goto_0
    iput p1, p0, Ljava/util/Hashtable;->threshold:I

    #@5e
    .line 184
    return-void

    #@5f
    .restart local p1    # "initialCapacity":I
    :cond_4
    move p1, v0

    #@60
    .line 195
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 228
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x2

    #@6
    const/16 v1, 0xb

    #@8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b
    move-result v0

    #@c
    const/high16 v1, 0x3f400000    # 0.75f

    #@e
    invoke-direct {p0, v0, v1}, Ljava/util/Hashtable;-><init>(IF)V

    #@11
    .line 229
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    #@14
    .line 227
    return-void
.end method

.method private getEnumeration(I)Ljava/util/Enumeration;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 590
    iget v0, p0, Ljava/util/Hashtable;->count:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 591
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 593
    :cond_0
    new-instance v0, Ljava/util/Hashtable$Enumerator;

    #@c
    invoke-direct {v0, p0, p1, v1}, Ljava/util/Hashtable$Enumerator;-><init>(Ljava/util/Hashtable;IZ)V

    #@f
    return-object v0
.end method

.method private getIterator(I)Ljava/util/Iterator;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 598
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget v0, p0, Ljava/util/Hashtable;->count:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 599
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 601
    :cond_0
    new-instance v0, Ljava/util/Hashtable$Enumerator;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-direct {v0, p0, p1, v1}, Ljava/util/Hashtable$Enumerator;-><init>(Ljava/util/Hashtable;IZ)V

    #@f
    return-object v0
.end method

.method private static hash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "k"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v8, 0x0

    #@1
    .line 993
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 996
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@7
    move-result v4

    #@8
    .line 997
    .local v4, "origlength":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@b
    move-result v0

    #@c
    .line 1003
    .local v0, "elements":I
    int-to-float v6, v0

    #@d
    iget v7, p0, Ljava/util/Hashtable;->loadFactor:F

    #@f
    mul-float/2addr v6, v7

    #@10
    float-to-int v6, v6

    #@11
    div-int/lit8 v7, v0, 0x14

    #@13
    add-int/2addr v6, v7

    #@14
    add-int/lit8 v2, v6, 0x3

    #@16
    .line 1004
    .local v2, "length":I
    if-le v2, v0, :cond_0

    #@18
    and-int/lit8 v6, v2, 0x1

    #@1a
    if-nez v6, :cond_0

    #@1c
    .line 1005
    add-int/lit8 v2, v2, -0x1

    #@1e
    .line 1006
    :cond_0
    if-lez v4, :cond_1

    #@20
    if-le v2, v4, :cond_1

    #@22
    .line 1007
    move v2, v4

    #@23
    .line 1009
    :cond_1
    new-array v3, v2, [Ljava/util/Hashtable$HashtableEntry;

    #@25
    .line 1010
    .local v3, "newTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    int-to-float v6, v2

    #@26
    iget v7, p0, Ljava/util/Hashtable;->loadFactor:F

    #@28
    mul-float/2addr v6, v7

    #@29
    const/high16 v7, 0x4f000000

    #@2b
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    #@2e
    move-result v6

    #@2f
    float-to-int v6, v6

    #@30
    iput v6, p0, Ljava/util/Hashtable;->threshold:I

    #@32
    .line 1011
    iput v8, p0, Ljava/util/Hashtable;->count:I

    #@34
    .line 1014
    :goto_0
    if-lez v0, :cond_2

    #@36
    .line 1015
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    .line 1016
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3d
    move-result-object v5

    #@3e
    .line 1018
    .local v5, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v3, v1, v5}, Ljava/util/Hashtable;->reconstitutionPut([Ljava/util/Hashtable$HashtableEntry;Ljava/lang/Object;Ljava/lang/Object;)V

    #@41
    .line 1014
    add-int/lit8 v0, v0, -0x1

    #@43
    goto :goto_0

    #@44
    .line 1020
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    iput-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@46
    .line 990
    return-void
.end method

.method private reconstitutionPut([Ljava/util/Hashtable$HashtableEntry;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1037
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_0

    #@2
    .line 1038
    new-instance v3, Ljava/io/StreamCorruptedException;

    #@4
    invoke-direct {v3}, Ljava/io/StreamCorruptedException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1042
    :cond_0
    invoke-static {p2}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    .line 1043
    .local v1, "hash":I
    const v3, 0x7fffffff

    #@f
    and-int/2addr v3, v1

    #@10
    array-length v4, p1

    #@11
    rem-int v2, v3, v4

    #@13
    .line 1044
    .local v2, "index":I
    aget-object v0, p1, v2

    #@15
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@17
    .line 1045
    iget v3, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@19
    if-ne v3, v1, :cond_1

    #@1b
    iget-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@1d
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 1046
    new-instance v3, Ljava/io/StreamCorruptedException;

    #@25
    invoke-direct {v3}, Ljava/io/StreamCorruptedException;-><init>()V

    #@28
    throw v3

    #@29
    .line 1044
    :cond_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@2b
    goto :goto_0

    #@2c
    .line 1050
    :cond_2
    aget-object v0, p1, v2

    #@2e
    .line 1051
    new-instance v3, Ljava/util/Hashtable$HashtableEntry;

    #@30
    invoke-direct {v3, v1, p2, p3, v0}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    #@33
    aput-object v3, p1, v2

    #@35
    .line 1052
    iget v3, p0, Ljava/util/Hashtable;->count:I

    #@37
    add-int/lit8 v3, v3, 0x1

    #@39
    iput v3, p0, Ljava/util/Hashtable;->count:I

    #@3b
    .line 1035
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 956
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 958
    .local v1, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    monitor-enter p0

    #@2
    .line 960
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@5
    .line 963
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@7
    array-length v4, v4

    #@8
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@b
    .line 964
    iget v4, p0, Ljava/util/Hashtable;->count:I

    #@d
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@10
    .line 967
    const/4 v3, 0x0

    #@11
    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local v3, "index":I
    :goto_0
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@13
    array-length v4, v4

    #@14
    if-ge v3, v4, :cond_1

    #@16
    .line 968
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@18
    aget-object v0, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move-object v2, v1

    #@1b
    .line 970
    .local v2, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    #@1d
    .line 972
    :try_start_1
    new-instance v1, Ljava/util/Hashtable$HashtableEntry;

    #@1f
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@21
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@23
    const/4 v6, 0x0

    #@24
    invoke-direct {v1, v6, v4, v5, v2}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@27
    .line 973
    .end local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local v1, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    move-object v2, v1

    #@2a
    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    goto :goto_1

    #@2b
    .line 967
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@2d
    move-object v1, v2

    #@2e
    .end local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    goto :goto_0

    #@2f
    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_1
    monitor-exit p0

    #@30
    .line 979
    :goto_2
    if-eqz v1, :cond_2

    #@32
    .line 980
    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@34
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@37
    .line 981
    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@39
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@3c
    .line 982
    iget-object v1, v1, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@3e
    .restart local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    goto :goto_2

    #@3f
    .line 958
    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v3    # "index":I
    :catchall_0
    move-exception v4

    #@40
    :goto_3
    monitor-exit p0

    #@41
    throw v4

    #@42
    .line 955
    .restart local v3    # "index":I
    :cond_2
    return-void

    #@43
    .line 958
    .restart local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_1
    move-exception v4

    #@44
    move-object v1, v2

    #@45
    .end local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 522
    :try_start_0
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@3
    .line 523
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;
    iget v2, p0, Ljava/util/Hashtable;->modCount:I

    #@5
    add-int/lit8 v2, v2, 0x1

    #@7
    iput v2, p0, Ljava/util/Hashtable;->modCount:I

    #@9
    .line 524
    array-length v0, v1

    #@a
    .local v0, "index":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@c
    if-ltz v0, :cond_0

    #@e
    .line 525
    const/4 v2, 0x0

    #@f
    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    goto :goto_0

    #@12
    .end local v0    # "index":I
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v2

    #@13
    monitor-exit p0

    #@14
    throw v2

    #@15
    .line 526
    .restart local v0    # "index":I
    .restart local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :cond_0
    const/4 v2, 0x0

    #@16
    :try_start_1
    iput v2, p0, Ljava/util/Hashtable;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 521
    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 538
    :try_start_0
    invoke-super {p0}, Ljava/util/Dictionary;->clone()Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Ljava/util/Hashtable;

    #@8
    .line 539
    .local v3, "t":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@a
    array-length v4, v4

    #@b
    new-array v4, v4, [Ljava/util/Hashtable$HashtableEntry;

    #@d
    iput-object v4, v3, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@f
    .line 540
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@11
    array-length v1, v4

    #@12
    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    #@14
    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_1

    #@16
    .line 541
    iget-object v6, v3, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@18
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@1a
    aget-object v4, v4, v2

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 542
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@20
    aget-object v4, v4, v2

    #@22
    invoke-virtual {v4}, Ljava/util/Hashtable$HashtableEntry;->clone()Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Ljava/util/Hashtable$HashtableEntry;

    #@28
    .line 541
    :goto_1
    aput-object v4, v6, v2

    #@2a
    move v1, v2

    #@2b
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@2c
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_0
    move-object v4, v5

    #@2d
    .line 542
    goto :goto_1

    #@2e
    .line 544
    :cond_1
    const/4 v4, 0x0

    #@2f
    iput-object v4, v3, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    #@31
    .line 545
    const/4 v4, 0x0

    #@32
    iput-object v4, v3, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    #@34
    .line 546
    const/4 v4, 0x0

    #@35
    iput-object v4, v3, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    #@37
    .line 547
    const/4 v4, 0x0

    #@38
    iput v4, v3, Ljava/util/Hashtable;->modCount:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit p0

    #@3b
    .line 548
    return-object v3

    #@3c
    .line 549
    .end local v2    # "i":I
    .end local v3    # "t":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catch_0
    move-exception v0

    #@3d
    .line 551
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_1
    new-instance v4, Ljava/lang/InternalError;

    #@3f
    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    #@42
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v4

    #@44
    monitor-exit p0

    #@45
    throw v4
.end method

.method public declared-synchronized compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    #@1
    .line 934
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    monitor-enter p0

    #@1
    .line 922
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    #@1
    .line 928
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 296
    if-nez p1, :cond_0

    #@4
    .line 297
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :catchall_0
    move-exception v4

    #@b
    monitor-exit p0

    #@c
    throw v4

    #@d
    .line 300
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@f
    .line 301
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;
    array-length v1, v3

    #@10
    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    #@12
    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_3

    #@14
    .line 302
    aget-object v0, v3, v2

    #@16
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    #@18
    .line 303
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 304
    const/4 v4, 0x1

    #@21
    monitor-exit p0

    #@22
    return v4

    #@23
    .line 302
    :cond_1
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    goto :goto_1

    #@26
    :cond_2
    move v1, v2

    #@27
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@28
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3
    monitor-exit p0

    #@29
    .line 308
    return v5
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 338
    :try_start_0
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@3
    .line 339
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    #@6
    move-result v1

    #@7
    .line 340
    .local v1, "hash":I
    const v4, 0x7fffffff

    #@a
    and-int/2addr v4, v1

    #@b
    array-length v5, v3

    #@c
    rem-int v2, v4, v5

    #@e
    .line 341
    .local v2, "index":I
    aget-object v0, v3, v2

    #@10
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@12
    .line 342
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@14
    if-ne v4, v1, :cond_0

    #@16
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@18
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 343
    const/4 v4, 0x1

    #@1f
    monitor-exit p0

    #@20
    return v4

    #@21
    .line 341
    :cond_0
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 346
    :cond_1
    const/4 v4, 0x0

    #@25
    monitor-exit p0

    #@26
    return v4

    #@27
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v4

    #@28
    monitor-exit p0

    #@29
    throw v4
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 324
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 276
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->getEnumeration(I)Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v0

    #@6
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 672
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 673
    new-instance v0, Ljava/util/Hashtable$EntrySet;

    #@7
    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$EntrySet;)V

    #@a
    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    #@10
    .line 674
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    #@12
    return-object v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v11, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 785
    if-ne p1, p0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 786
    return v11

    #@7
    .line 788
    :cond_0
    :try_start_0
    instance-of v8, p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-nez v8, :cond_1

    #@b
    monitor-exit p0

    #@c
    .line 789
    return v9

    #@d
    .line 790
    :cond_1
    :try_start_1
    move-object v0, p1

    #@e
    check-cast v0, Ljava/util/Map;

    #@10
    move-object v4, v0

    #@11
    .line 791
    .local v4, "t":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@14
    move-result v8

    #@15
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    move-result v10

    #@19
    if-eq v8, v10, :cond_2

    #@1b
    monitor-exit p0

    #@1c
    .line 792
    return v9

    #@1d
    .line 795
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@20
    move-result-object v8

    #@21
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v2

    #@25
    .line 796
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_6

    #@2b
    .line 797
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Ljava/util/Map$Entry;

    #@31
    .line 798
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    .line 799
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@38
    move-result-object v7

    #@39
    .line 800
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-nez v7, :cond_5

    #@3b
    .line 801
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v8

    #@3f
    if-nez v8, :cond_4

    #@41
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    move-result v8

    #@45
    :goto_0
    if-nez v8, :cond_3

    #@47
    monitor-exit p0

    #@48
    .line 802
    return v9

    #@49
    :cond_4
    move v8, v9

    #@4a
    .line 801
    goto :goto_0

    #@4b
    .line 804
    :cond_5
    :try_start_3
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    move-result v8

    #@53
    if-nez v8, :cond_3

    #@55
    monitor-exit p0

    #@56
    .line 805
    return v9

    #@57
    .line 810
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v6

    #@58
    .local v6, "unused":Ljava/lang/NullPointerException;
    monitor-exit p0

    #@59
    .line 811
    return v9

    #@5a
    .line 808
    .end local v6    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    #@5b
    .local v5, "unused":Ljava/lang/ClassCastException;
    monitor-exit p0

    #@5c
    .line 809
    return v9

    #@5d
    .end local v5    # "unused":Ljava/lang/ClassCastException;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_6
    monitor-exit p0

    #@5e
    .line 814
    return v11

    #@5f
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v4    # "t":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception v8

    #@60
    monitor-exit p0

    #@61
    throw v8
.end method

.method public declared-synchronized forEach(Ljava/util/function/BiConsumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    monitor-enter p0

    #@1
    .line 854
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 856
    iget v1, p0, Ljava/util/Hashtable;->modCount:I

    #@6
    .line 858
    .local v1, "expectedModCount":I
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@8
    .line 859
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    const/4 v3, 0x0

    #@9
    array-length v4, v2

    #@a
    :goto_0
    if-ge v3, v4, :cond_2

    #@c
    aget-object v0, v2, v3

    #@e
    .line 860
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_0
    if-eqz v0, :cond_1

    #@10
    .line 861
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@12
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@14
    invoke-interface {p1, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@17
    .line 862
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@19
    .line 864
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    #@1b
    if-eq v1, v5, :cond_0

    #@1d
    .line 865
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@1f
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@22
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "expectedModCount":I
    .end local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_0
    move-exception v3

    #@24
    monitor-exit p0

    #@25
    throw v3

    #@26
    .line 859
    .restart local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .restart local v1    # "expectedModCount":I
    .restart local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_2
    monitor-exit p0

    #@2a
    .line 853
    return-void
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 365
    :try_start_0
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@4
    .line 366
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    #@7
    move-result v1

    #@8
    .line 367
    .local v1, "hash":I
    const v4, 0x7fffffff

    #@b
    and-int/2addr v4, v1

    #@c
    array-length v5, v3

    #@d
    rem-int v2, v4, v5

    #@f
    .line 368
    .local v2, "index":I
    aget-object v0, v3, v2

    #@11
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@13
    .line 369
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@15
    if-ne v4, v1, :cond_0

    #@17
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@19
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 370
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    return-object v4

    #@23
    .line 368
    :cond_0
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    :cond_1
    monitor-exit p0

    #@27
    .line 373
    return-object v6

    #@28
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v4

    #@29
    monitor-exit p0

    #@2a
    throw v4
.end method

.method public declared-synchronized getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    #@1
    .line 896
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 835
    const/4 v1, 0x0

    #@3
    .line 836
    .local v1, "h":I
    :try_start_0
    iget v4, p0, Ljava/util/Hashtable;->count:I

    #@5
    if-eqz v4, :cond_0

    #@7
    iget v4, p0, Ljava/util/Hashtable;->loadFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    const/4 v5, 0x0

    #@a
    cmpg-float v4, v4, v5

    #@c
    if-gez v4, :cond_1

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 837
    return v3

    #@10
    .line 839
    :cond_1
    :try_start_1
    iget v4, p0, Ljava/util/Hashtable;->loadFactor:F

    #@12
    neg-float v4, v4

    #@13
    iput v4, p0, Ljava/util/Hashtable;->loadFactor:F

    #@15
    .line 840
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@17
    .line 841
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;
    array-length v4, v2

    #@18
    :goto_0
    if-ge v3, v4, :cond_3

    #@1a
    aget-object v0, v2, v3

    #@1c
    .line 842
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    #@1e
    .line 843
    invoke-virtual {v0}, Ljava/util/Hashtable$HashtableEntry;->hashCode()I

    #@21
    move-result v5

    #@22
    add-int/2addr v1, v5

    #@23
    .line 844
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@25
    goto :goto_1

    #@26
    .line 841
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 846
    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_3
    iget v3, p0, Ljava/util/Hashtable;->loadFactor:F

    #@2b
    neg-float v3, v3

    #@2c
    iput v3, p0, Ljava/util/Hashtable;->loadFactor:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 848
    return v1

    #@30
    .end local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v3

    #@31
    monitor-exit p0

    #@32
    throw v3
.end method

.method public declared-synchronized isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 248
    :try_start_0
    iget v1, p0, Ljava/util/Hashtable;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 632
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 633
    new-instance v0, Ljava/util/Hashtable$KeySet;

    #@7
    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$KeySet;)V

    #@a
    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    #@10
    .line 634
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    #@12
    return-object v0
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 261
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->getEnumeration(I)Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v0

    #@6
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    monitor-enter p0

    #@1
    .line 940
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const v8, 0x7fffffff

    #@3
    const/4 v7, 0x0

    #@4
    monitor-enter p0

    #@5
    .line 441
    if-nez p2, :cond_0

    #@7
    .line 442
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :catchall_0
    move-exception v5

    #@e
    monitor-exit p0

    #@f
    throw v5

    #@10
    .line 446
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@12
    .line 447
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    #@15
    move-result v1

    #@16
    .line 448
    .local v1, "hash":I
    and-int v5, v1, v8

    #@18
    array-length v6, v4

    #@19
    rem-int v2, v5, v6

    #@1b
    .line 449
    .local v2, "index":I
    aget-object v0, v4, v2

    #@1d
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@1f
    .line 450
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@21
    if-ne v5, v1, :cond_1

    #@23
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@25
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_1

    #@2b
    .line 451
    iget-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@2d
    .line 452
    .local v3, "old":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit p0

    #@30
    .line 453
    return-object v3

    #@31
    .line 449
    .end local v3    # "old":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@33
    goto :goto_0

    #@34
    .line 457
    :cond_2
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    #@36
    add-int/lit8 v5, v5, 0x1

    #@38
    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    #@3a
    .line 458
    iget v5, p0, Ljava/util/Hashtable;->count:I

    #@3c
    iget v6, p0, Ljava/util/Hashtable;->threshold:I

    #@3e
    if-lt v5, v6, :cond_3

    #@40
    .line 460
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    #@43
    .line 462
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@45
    .line 463
    invoke-static {p1}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    #@48
    move-result v1

    #@49
    .line 464
    and-int v5, v1, v8

    #@4b
    array-length v6, v4

    #@4c
    rem-int v2, v5, v6

    #@4e
    .line 468
    :cond_3
    aget-object v0, v4, v2

    #@50
    .line 469
    new-instance v5, Ljava/util/Hashtable$HashtableEntry;

    #@52
    invoke-direct {v5, v1, p1, p2, v0}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    #@55
    aput-object v5, v4, v2

    #@57
    .line 470
    iget v5, p0, Ljava/util/Hashtable;->count:I

    #@59
    add-int/lit8 v5, v5, 0x1

    #@5b
    iput v5, p0, Ljava/util/Hashtable;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    monitor-exit p0

    #@5e
    .line 471
    return-object v7
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    #@1
    .line 514
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/Map$Entry;

    #@15
    .line 515
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    goto :goto_0

    #@21
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@22
    monitor-exit p0

    #@23
    throw v2

    #@24
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    #@25
    .line 513
    return-void
.end method

.method public declared-synchronized putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    #@1
    .line 901
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method protected rehash()V
    .locals 11

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const v10, 0x7ffffff7

    #@3
    .line 392
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@5
    array-length v7, v9

    #@6
    .line 393
    .local v7, "oldCapacity":I
    iget-object v8, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@8
    .line 396
    .local v8, "oldMap":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    shl-int/lit8 v9, v7, 0x1

    #@a
    add-int/lit8 v4, v9, 0x1

    #@c
    .line 397
    .local v4, "newCapacity":I
    sub-int v9, v4, v10

    #@e
    if-lez v9, :cond_1

    #@10
    .line 398
    if-ne v7, v10, :cond_0

    #@12
    .line 400
    return-void

    #@13
    .line 401
    :cond_0
    const v4, 0x7ffffff7

    #@16
    .line 403
    :cond_1
    new-array v5, v4, [Ljava/util/Hashtable$HashtableEntry;

    #@18
    .line 405
    .local v5, "newMap":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v9, p0, Ljava/util/Hashtable;->modCount:I

    #@1a
    add-int/lit8 v9, v9, 0x1

    #@1c
    iput v9, p0, Ljava/util/Hashtable;->modCount:I

    #@1e
    .line 406
    int-to-float v9, v4

    #@1f
    iget v10, p0, Ljava/util/Hashtable;->loadFactor:F

    #@21
    mul-float/2addr v9, v10

    #@22
    const/high16 v10, 0x4f000000

    #@24
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    #@27
    move-result v9

    #@28
    float-to-int v9, v9

    #@29
    iput v9, p0, Ljava/util/Hashtable;->threshold:I

    #@2b
    .line 408
    iput-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@2d
    .line 410
    move v1, v7

    #@2e
    .local v1, "i":I
    move v2, v1

    #@2f
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    #@31
    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    #@33
    .line 411
    aget-object v6, v8, v1

    #@35
    .local v6, "old":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1
    if-eqz v6, :cond_2

    #@37
    .line 412
    move-object v0, v6

    #@38
    .line 413
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v6, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@3a
    .line 415
    iget v9, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@3c
    const v10, 0x7fffffff

    #@3f
    and-int/2addr v9, v10

    #@40
    rem-int v3, v9, v4

    #@42
    .line 416
    .local v3, "index":I
    aget-object v9, v5, v3

    #@44
    iput-object v9, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@46
    .line 417
    aput-object v0, v5, v3

    #@48
    goto :goto_1

    #@49
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v3    # "index":I
    :cond_2
    move v2, v1

    #@4a
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@4b
    .line 391
    .end local v2    # "i":I
    .end local v6    # "old":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v8, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 484
    :try_start_0
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@4
    .line 485
    .local v5, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    #@7
    move-result v1

    #@8
    .line 486
    .local v1, "hash":I
    const v6, 0x7fffffff

    #@b
    and-int/2addr v6, v1

    #@c
    array-length v7, v5

    #@d
    rem-int v2, v6, v7

    #@f
    .line 487
    .local v2, "index":I
    aget-object v0, v5, v2

    #@11
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    #@12
    :goto_0
    if-eqz v0, :cond_2

    #@14
    .line 488
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@16
    if-ne v6, v1, :cond_1

    #@18
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@1a
    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_1

    #@20
    .line 489
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    #@22
    add-int/lit8 v6, v6, 0x1

    #@24
    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    #@26
    .line 490
    if-eqz v4, :cond_0

    #@28
    .line 491
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@2a
    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@2c
    .line 495
    :goto_1
    iget v6, p0, Ljava/util/Hashtable;->count:I

    #@2e
    add-int/lit8 v6, v6, -0x1

    #@30
    iput v6, p0, Ljava/util/Hashtable;->count:I

    #@32
    .line 496
    iget-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@34
    .line 497
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    #@35
    iput-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 498
    return-object v3

    #@39
    .line 493
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    :try_start_1
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@3b
    aput-object v6, v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_1

    #@3e
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v6

    #@3f
    monitor-exit p0

    #@40
    throw v6

    #@41
    .line 487
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :cond_1
    move-object v4, v0

    #@42
    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    goto :goto_0

    #@45
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_2
    monitor-exit p0

    #@46
    .line 501
    return-object v8
.end method

.method public declared-synchronized remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 906
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    #@1
    .line 916
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    #@1
    .line 911
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized replaceAll(Ljava/util/function/BiFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    #@1
    .line 873
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 875
    iget v1, p0, Ljava/util/Hashtable;->modCount:I

    #@6
    .line 877
    .local v1, "expectedModCount":I
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@8
    .line 878
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    #@9
    array-length v4, v2

    #@a
    :goto_0
    if-ge v3, v4, :cond_2

    #@c
    aget-object v0, v2, v3

    #@e
    .line 879
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_0
    if-eqz v0, :cond_1

    #@10
    .line 881
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@12
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@14
    invoke-interface {p1, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    .line 880
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v5

    #@1c
    iput-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@1e
    .line 882
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@20
    .line 884
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    #@22
    if-eq v1, v5, :cond_0

    #@24
    .line 885
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@26
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@29
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "expectedModCount":I
    .end local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit p0

    #@2c
    throw v3

    #@2d
    .line 878
    .restart local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "expectedModCount":I
    .restart local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_0

    #@30
    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_2
    monitor-exit p0

    #@31
    .line 872
    return-void
.end method

.method public declared-synchronized size()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 238
    :try_start_0
    iget v0, p0, Ljava/util/Hashtable;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 566
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    #@4
    move-result v7

    #@5
    add-int/lit8 v4, v7, -0x1

    #@7
    .line 567
    .local v4, "max":I
    const/4 v7, -0x1

    #@8
    if-ne v4, v7, :cond_0

    #@a
    .line 568
    const-string/jumbo v7, "{}"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v7

    #@f
    .line 570
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 571
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@17
    move-result-object v7

    #@18
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v2

    #@1c
    .line 573
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/16 v7, 0x7b

    #@1e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 574
    const/4 v1, 0x0

    #@22
    .line 575
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/util/Map$Entry;

    #@28
    .line 576
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    .line 577
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2f
    move-result-object v6

    #@30
    .line 578
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-ne v3, p0, :cond_1

    #@32
    const-string/jumbo v7, "(this Map)"

    #@35
    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 579
    const/16 v7, 0x3d

    #@3a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 580
    if-ne v6, p0, :cond_2

    #@3f
    const-string/jumbo v7, "(this Map)"

    #@42
    :goto_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 582
    if-ne v1, v4, :cond_3

    #@47
    .line 583
    const/16 v7, 0x7d

    #@49
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    move-result-object v7

    #@51
    monitor-exit p0

    #@52
    return-object v7

    #@53
    .line 578
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    goto :goto_1

    #@58
    .line 580
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5b
    move-result-object v7

    #@5c
    goto :goto_2

    #@5d
    .line 584
    :cond_3
    const-string/jumbo v7, ", "

    #@60
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    .line 574
    add-int/lit8 v1, v1, 0x1

    #@65
    goto :goto_0

    #@66
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "max":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v7

    #@67
    monitor-exit p0

    #@68
    throw v7
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 752
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 753
    new-instance v0, Ljava/util/Hashtable$ValueCollection;

    #@7
    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$ValueCollection;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$ValueCollection;)V

    #@a
    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    #@10
    .line 755
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    #@12
    return-object v0
.end method

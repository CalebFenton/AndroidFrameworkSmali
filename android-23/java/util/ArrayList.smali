.class public Ljava/util/ArrayList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayList$ArrayListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc

.field private static final serialVersionUID:J = 0x7881d21d99c7619dL


# instance fields
.field transient array:[Ljava/lang/Object;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 81
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 82
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@5
    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@7
    .line 81
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 71
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 72
    if-gez p1, :cond_0

    #@5
    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "capacity < 0: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 75
    :cond_0
    if-nez p1, :cond_1

    #@21
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@23
    :goto_0
    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@25
    .line 71
    return-void

    #@26
    .line 75
    :cond_1
    new-array v0, p1, [Ljava/lang/Object;

    #@28
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v4, 0x0

    #@1
    .line 92
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@4
    .line 93
    if-nez p1, :cond_0

    #@6
    .line 94
    new-instance v2, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v3, "collection == null"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 97
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 98
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v2

    #@17
    const-class v3, [Ljava/lang/Object;

    #@19
    if-eq v2, v3, :cond_1

    #@1b
    .line 99
    array-length v2, v0

    #@1c
    new-array v1, v2, [Ljava/lang/Object;

    #@1e
    .line 100
    .local v1, "newArray":[Ljava/lang/Object;
    array-length v2, v0

    #@1f
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@22
    .line 101
    move-object v0, v1

    #@23
    .line 103
    .end local v1    # "newArray":[Ljava/lang/Object;
    :cond_1
    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@25
    .line 104
    array-length v2, v0

    #@26
    iput v2, p0, Ljava/util/ArrayList;->size:I

    #@28
    .line 92
    return-void
.end method

.method private static newCapacity(I)I
    .locals 2
    .param p0, "currentCapacity"    # I

    #@0
    .prologue
    .line 174
    const/4 v1, 0x6

    #@1
    if-ge p0, v1, :cond_0

    #@3
    .line 175
    const/16 v0, 0xc

    #@5
    .line 176
    .local v0, "increment":I
    :goto_0
    add-int v1, p0, v0

    #@7
    return v1

    #@8
    .line 175
    .end local v0    # "increment":I
    :cond_0
    shr-int/lit8 v0, p0, 0x1

    #@a
    .restart local v0    # "increment":I
    goto :goto_0
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
    .line 653
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 654
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v0

    #@7
    .line 655
    .local v0, "cap":I
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 656
    new-instance v2, Ljava/io/InvalidObjectException;

    #@d
    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Capacity: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, " < size: "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    iget v4, p0, Ljava/util/ArrayList;->size:I

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 656
    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 659
    :cond_0
    if-nez v0, :cond_1

    #@34
    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@36
    :goto_0
    iput-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@38
    .line 660
    const/4 v1, 0x0

    #@39
    .local v1, "i":I
    :goto_1
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@3b
    if-ge v1, v2, :cond_2

    #@3d
    .line 661
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@3f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    aput-object v3, v2, v1

    #@45
    .line 660
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_1

    #@48
    .line 659
    .end local v1    # "i":I
    :cond_1
    new-array v2, v0, [Ljava/lang/Object;

    #@4a
    goto :goto_0

    #@4b
    .line 652
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method static throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;
    .locals 3
    .param p0, "index"    # I
    .param p1, "size"    # I

    #@0
    .prologue
    .line 255
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Invalid index "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ", size is "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 645
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 646
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@5
    array-length v1, v1

    #@6
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@9
    .line 647
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 648
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@10
    aget-object v1, v1, v0

    #@12
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@15
    .line 647
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 644
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    #@1
    .line 144
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@3
    .line 145
    .local v0, "a":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@5
    .line 146
    .local v2, "s":I
    if-gt p1, v2, :cond_0

    #@7
    if-gez p1, :cond_1

    #@9
    .line 147
    :cond_0
    invoke-static {p1, v2}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    #@c
    .line 150
    :cond_1
    array-length v3, v0

    #@d
    if-ge v2, v3, :cond_2

    #@f
    .line 151
    add-int/lit8 v3, p1, 0x1

    #@11
    sub-int v4, v2, p1

    #@13
    invoke-static {v0, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 159
    :goto_0
    aput-object p2, v0, p1

    #@18
    .line 160
    add-int/lit8 v3, v2, 0x1

    #@1a
    iput v3, p0, Ljava/util/ArrayList;->size:I

    #@1c
    .line 161
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    #@1e
    add-int/lit8 v3, v3, 0x1

    #@20
    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    #@22
    .line 143
    return-void

    #@23
    .line 154
    :cond_2
    invoke-static {v2}, Ljava/util/ArrayList;->newCapacity(I)I

    #@26
    move-result v3

    #@27
    new-array v1, v3, [Ljava/lang/Object;

    #@29
    .line 155
    .local v1, "newArray":[Ljava/lang/Object;
    invoke-static {v0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c
    .line 156
    add-int/lit8 v3, p1, 0x1

    #@2e
    sub-int v4, v2, p1

    #@30
    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@33
    .line 157
    move-object v0, v1

    #@34
    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@36
    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    #@1
    .line 115
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@3
    .line 116
    .local v0, "a":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@5
    .line 117
    .local v2, "s":I
    array-length v3, v0

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 119
    const/4 v3, 0x6

    #@9
    if-ge v2, v3, :cond_1

    #@b
    .line 120
    const/16 v3, 0xc

    #@d
    .line 118
    :goto_0
    add-int/2addr v3, v2

    #@e
    new-array v1, v3, [Ljava/lang/Object;

    #@10
    .line 121
    .local v1, "newArray":[Ljava/lang/Object;
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@13
    .line 122
    move-object v0, v1

    #@14
    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@16
    .line 124
    .end local v1    # "newArray":[Ljava/lang/Object;
    :cond_0
    aput-object p1, v0, v2

    #@18
    .line 125
    add-int/lit8 v3, v2, 0x1

    #@1a
    iput v3, p0, Ljava/util/ArrayList;->size:I

    #@1c
    .line 126
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    #@1e
    add-int/lit8 v3, v3, 0x1

    #@20
    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    #@22
    .line 127
    const/4 v3, 0x1

    #@23
    return v3

    #@24
    .line 120
    :cond_1
    shr-int/lit8 v3, v2, 0x1

    #@26
    goto :goto_0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v9, 0x0

    #@1
    .line 224
    iget v6, p0, Ljava/util/ArrayList;->size:I

    #@3
    .line 225
    .local v6, "s":I
    if-gt p1, v6, :cond_0

    #@5
    if-gez p1, :cond_1

    #@7
    .line 226
    :cond_0
    invoke-static {p1, v6}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    #@a
    .line 228
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    .line 229
    .local v3, "newPart":[Ljava/lang/Object;
    array-length v4, v3

    #@f
    .line 230
    .local v4, "newPartSize":I
    if-nez v4, :cond_2

    #@11
    .line 231
    return v9

    #@12
    .line 233
    :cond_2
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@14
    .line 234
    .local v0, "a":[Ljava/lang/Object;
    add-int v5, v6, v4

    #@16
    .line 235
    .local v5, "newSize":I
    array-length v7, v0

    #@17
    if-gt v5, v7, :cond_3

    #@19
    .line 236
    add-int v7, p1, v4

    #@1b
    sub-int v8, v6, p1

    #@1d
    invoke-static {v0, p1, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@20
    .line 244
    :goto_0
    invoke-static {v3, v9, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 245
    iput v5, p0, Ljava/util/ArrayList;->size:I

    #@25
    .line 246
    iget v7, p0, Ljava/util/ArrayList;->modCount:I

    #@27
    add-int/lit8 v7, v7, 0x1

    #@29
    iput v7, p0, Ljava/util/ArrayList;->modCount:I

    #@2b
    .line 247
    const/4 v7, 0x1

    #@2c
    return v7

    #@2d
    .line 238
    :cond_3
    add-int/lit8 v7, v5, -0x1

    #@2f
    invoke-static {v7}, Ljava/util/ArrayList;->newCapacity(I)I

    #@32
    move-result v2

    #@33
    .line 239
    .local v2, "newCapacity":I
    new-array v1, v2, [Ljava/lang/Object;

    #@35
    .line 240
    .local v1, "newArray":[Ljava/lang/Object;
    invoke-static {v0, v9, v1, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@38
    .line 241
    add-int v7, p1, v4

    #@3a
    sub-int v8, v6, p1

    #@3c
    invoke-static {v0, p1, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3f
    .line 242
    move-object v0, v1

    #@40
    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@42
    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v8, 0x0

    #@1
    .line 188
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    .line 189
    .local v3, "newPart":[Ljava/lang/Object;
    array-length v4, v3

    #@6
    .line 190
    .local v4, "newPartSize":I
    if-nez v4, :cond_0

    #@8
    .line 191
    return v8

    #@9
    .line 193
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@b
    .line 194
    .local v0, "a":[Ljava/lang/Object;
    iget v6, p0, Ljava/util/ArrayList;->size:I

    #@d
    .line 195
    .local v6, "s":I
    add-int v5, v6, v4

    #@f
    .line 196
    .local v5, "newSize":I
    array-length v7, v0

    #@10
    if-le v5, v7, :cond_1

    #@12
    .line 197
    add-int/lit8 v7, v5, -0x1

    #@14
    invoke-static {v7}, Ljava/util/ArrayList;->newCapacity(I)I

    #@17
    move-result v2

    #@18
    .line 198
    .local v2, "newCapacity":I
    new-array v1, v2, [Ljava/lang/Object;

    #@1a
    .line 199
    .local v1, "newArray":[Ljava/lang/Object;
    invoke-static {v0, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 200
    move-object v0, v1

    #@1e
    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@20
    .line 202
    .end local v1    # "newArray":[Ljava/lang/Object;
    .end local v2    # "newCapacity":I
    :cond_1
    invoke-static {v3, v8, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 203
    iput v5, p0, Ljava/util/ArrayList;->size:I

    #@25
    .line 204
    iget v7, p0, Ljava/util/ArrayList;->modCount:I

    #@27
    add-int/lit8 v7, v7, 0x1

    #@29
    iput v7, p0, Ljava/util/ArrayList;->modCount:I

    #@2b
    .line 205
    const/4 v7, 0x1

    #@2c
    return v7
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 265
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 266
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@7
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@d
    .line 267
    iput v3, p0, Ljava/util/ArrayList;->size:I

    #@f
    .line 268
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    #@15
    .line 264
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 281
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/ArrayList;

    #@6
    .line 282
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@8
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [Ljava/lang/Object;

    #@e
    iput-object v2, v1, Ljava/util/ArrayList;->array:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 283
    return-object v1

    #@11
    .line 284
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :catch_0
    move-exception v0

    #@12
    .line 285
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v4, 0x1

    #@1
    .line 335
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@3
    .line 336
    .local v0, "a":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@5
    .line 337
    .local v2, "s":I
    if-eqz p1, :cond_1

    #@7
    .line 338
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@a
    .line 339
    aget-object v3, v0, v1

    #@c
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 340
    return v4

    #@13
    .line 338
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 344
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@17
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    #@19
    .line 345
    aget-object v3, v0, v1

    #@1b
    if-nez v3, :cond_2

    #@1d
    .line 346
    return v4

    #@1e
    .line 344
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_1

    #@21
    .line 350
    :cond_3
    const/4 v3, 0x0

    #@22
    return v3
.end method

.method public ensureCapacity(I)V
    .locals 4
    .param p1, "minimumCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 297
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@3
    .line 298
    .local v0, "a":[Ljava/lang/Object;
    array-length v2, v0

    #@4
    if-ge v2, p1, :cond_0

    #@6
    .line 299
    new-array v1, p1, [Ljava/lang/Object;

    #@8
    .line 300
    .local v1, "newArray":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@a
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@d
    .line 301
    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@f
    .line 302
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    #@11
    add-int/lit8 v2, v2, 0x1

    #@13
    iput v2, p0, Ljava/util/ArrayList;->modCount:I

    #@15
    .line 296
    .end local v1    # "newArray":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 609
    if-ne p1, p0, :cond_0

    #@4
    .line 610
    return v10

    #@5
    .line 612
    :cond_0
    instance-of v8, p1, Ljava/util/List;

    #@7
    if-nez v8, :cond_1

    #@9
    .line 613
    return v9

    #@a
    :cond_1
    move-object v7, p1

    #@b
    .line 615
    check-cast v7, Ljava/util/List;

    #@d
    .line 616
    .local v7, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    iget v6, p0, Ljava/util/ArrayList;->size:I

    #@f
    .line 617
    .local v6, "s":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@12
    move-result v8

    #@13
    if-eq v8, v6, :cond_2

    #@15
    .line 618
    return v9

    #@16
    .line 620
    :cond_2
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@18
    .line 621
    .local v0, "a":[Ljava/lang/Object;
    instance-of v8, v7, Ljava/util/RandomAccess;

    #@1a
    if-eqz v8, :cond_6

    #@1c
    .line 622
    const/4 v4, 0x0

    #@1d
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_a

    #@1f
    .line 623
    aget-object v2, v0, v4

    #@21
    .line 624
    .local v2, "eThis":Ljava/lang/Object;
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    .line 625
    .local v3, "ethat":Ljava/lang/Object;
    if-nez v2, :cond_4

    #@27
    if-eqz v3, :cond_5

    #@29
    .line 626
    :cond_3
    return v9

    #@2a
    .line 625
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v8

    #@2e
    if-eqz v8, :cond_3

    #@30
    .line 622
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 630
    .end local v2    # "eThis":Ljava/lang/Object;
    .end local v3    # "ethat":Ljava/lang/Object;
    .end local v4    # "i":I
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v5

    #@37
    .line 631
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v4, 0x0

    #@38
    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v6, :cond_a

    #@3a
    .line 632
    aget-object v2, v0, v4

    #@3c
    .line 633
    .restart local v2    # "eThis":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    .line 634
    .local v1, "eThat":Ljava/lang/Object;
    if-nez v2, :cond_8

    #@42
    if-eqz v1, :cond_9

    #@44
    .line 635
    :cond_7
    return v9

    #@45
    .line 634
    :cond_8
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v8

    #@49
    if-eqz v8, :cond_7

    #@4b
    .line 631
    :cond_9
    add-int/lit8 v4, v4, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 639
    .end local v1    # "eThat":Ljava/lang/Object;
    .end local v2    # "eThis":Ljava/lang/Object;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_a
    return v10
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 307
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 308
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@6
    invoke-static {p1, v0}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    #@9
    .line 310
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@b
    aget-object v0, v0, p1

    #@d
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    .line 599
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@2
    .line 600
    .local v0, "a":[Ljava/lang/Object;
    const/4 v2, 0x1

    #@3
    .line 601
    .local v2, "hashCode":I
    const/4 v3, 0x0

    #@4
    .local v3, "i":I
    iget v4, p0, Ljava/util/ArrayList;->size:I

    #@6
    .local v4, "s":I
    :goto_0
    if-ge v3, v4, :cond_1

    #@8
    .line 602
    aget-object v1, v0, v3

    #@a
    .line 603
    .local v1, "e":Ljava/lang/Object;
    mul-int/lit8 v6, v2, 0x1f

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v5, 0x0

    #@f
    :goto_1
    add-int v2, v6, v5

    #@11
    .line 601
    add-int/lit8 v3, v3, 0x1

    #@13
    goto :goto_0

    #@14
    .line 603
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@17
    move-result v5

    #@18
    goto :goto_1

    #@19
    .line 605
    .end local v1    # "e":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 354
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@2
    .line 355
    .local v0, "a":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@4
    .line 356
    .local v2, "s":I
    if-eqz p1, :cond_1

    #@6
    .line 357
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@9
    .line 358
    aget-object v3, v0, v1

    #@b
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 359
    return v1

    #@12
    .line 357
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 363
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@16
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    #@18
    .line 364
    aget-object v3, v0, v1

    #@1a
    if-nez v3, :cond_2

    #@1c
    .line 365
    return v1

    #@1d
    .line 363
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 369
    :cond_3
    const/4 v3, -0x1

    #@21
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 323
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 552
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$ArrayListIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$ArrayListIterator;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$ArrayListIterator;)V

    #@6
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 373
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@2
    .line 374
    .local v0, "a":[Ljava/lang/Object;
    if-eqz p1, :cond_1

    #@4
    .line 375
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@a
    .line 376
    aget-object v2, v0, v1

    #@c
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 377
    return v1

    #@13
    .line 375
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@15
    goto :goto_0

    #@16
    .line 381
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@18
    add-int/lit8 v1, v2, -0x1

    #@1a
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    #@1c
    .line 382
    aget-object v2, v0, v1

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 383
    return v1

    #@21
    .line 381
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_1

    #@24
    .line 387
    :cond_3
    const/4 v2, -0x1

    #@25
    return v2
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 400
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@2
    .line 401
    .local v0, "a":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@4
    .line 402
    .local v2, "s":I
    if-lt p1, v2, :cond_0

    #@6
    .line 403
    invoke-static {p1, v2}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    #@9
    .line 405
    :cond_0
    aget-object v1, v0, p1

    #@b
    .line 406
    .local v1, "result":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, p1, 0x1

    #@d
    add-int/lit8 v2, v2, -0x1

    #@f
    sub-int v4, v2, p1

    #@11
    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 407
    const/4 v3, 0x0

    #@15
    aput-object v3, v0, v2

    #@17
    .line 408
    iput v2, p0, Ljava/util/ArrayList;->size:I

    #@19
    .line 409
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    #@1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    #@1f
    .line 410
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 414
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@4
    .line 415
    .local v0, "a":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@6
    .line 416
    .local v2, "s":I
    if-eqz p1, :cond_1

    #@8
    .line 417
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@b
    .line 418
    aget-object v3, v0, v1

    #@d
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 419
    add-int/lit8 v3, v1, 0x1

    #@15
    add-int/lit8 v2, v2, -0x1

    #@17
    sub-int v4, v2, v1

    #@19
    invoke-static {v0, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 420
    aput-object v5, v0, v2

    #@1e
    .line 421
    iput v2, p0, Ljava/util/ArrayList;->size:I

    #@20
    .line 422
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    #@22
    add-int/lit8 v3, v3, 0x1

    #@24
    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    #@26
    .line 423
    return v6

    #@27
    .line 417
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 427
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@2b
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    #@2d
    .line 428
    aget-object v3, v0, v1

    #@2f
    if-nez v3, :cond_2

    #@31
    .line 429
    add-int/lit8 v3, v1, 0x1

    #@33
    add-int/lit8 v2, v2, -0x1

    #@35
    sub-int v4, v2, v1

    #@37
    invoke-static {v0, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    .line 430
    aput-object v5, v0, v2

    #@3c
    .line 431
    iput v2, p0, Ljava/util/ArrayList;->size:I

    #@3e
    .line 432
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    #@40
    add-int/lit8 v3, v3, 0x1

    #@42
    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    #@44
    .line 433
    return v6

    #@45
    .line 427
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_1

    #@48
    .line 437
    :cond_3
    const/4 v3, 0x0

    #@49
    return v3
.end method

.method protected removeRange(II)V
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 441
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-ne p1, p2, :cond_0

    #@2
    .line 442
    return-void

    #@3
    .line 444
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@5
    .line 445
    .local v0, "a":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@7
    .line 446
    .local v2, "s":I
    if-lt p1, v2, :cond_1

    #@9
    .line 447
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "fromIndex "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    .line 448
    const-string/jumbo v5, " >= size "

    #@1e
    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 448
    iget v5, p0, Ljava/util/ArrayList;->size:I

    #@24
    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v3

    #@30
    .line 450
    :cond_1
    if-le p2, v2, :cond_2

    #@32
    .line 451
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v5, "toIndex "

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 452
    const-string/jumbo v5, " > size "

    #@47
    .line 451
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 452
    iget v5, p0, Ljava/util/ArrayList;->size:I

    #@4d
    .line 451
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@58
    throw v3

    #@59
    .line 454
    :cond_2
    if-le p1, p2, :cond_3

    #@5b
    .line 455
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@5d
    new-instance v4, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v5, "fromIndex "

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    .line 456
    const-string/jumbo v5, " > toIndex "

    #@70
    .line 455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v3

    #@80
    .line 459
    :cond_3
    sub-int v3, v2, p2

    #@82
    invoke-static {v0, p2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@85
    .line 460
    sub-int v1, p2, p1

    #@87
    .line 461
    .local v1, "rangeSize":I
    sub-int v3, v2, v1

    #@89
    const/4 v4, 0x0

    #@8a
    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@8d
    .line 462
    sub-int v3, v2, v1

    #@8f
    iput v3, p0, Ljava/util/ArrayList;->size:I

    #@91
    .line 463
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    #@93
    add-int/lit8 v3, v3, 0x1

    #@95
    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    #@97
    .line 440
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 479
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@2
    .line 480
    .local v0, "a":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@4
    if-lt p1, v2, :cond_0

    #@6
    .line 481
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@8
    invoke-static {p1, v2}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    #@b
    .line 483
    :cond_0
    aget-object v1, v0, p1

    #@d
    .line 484
    .local v1, "result":Ljava/lang/Object;, "TE;"
    aput-object p2, v0, p1

    #@f
    .line 485
    return-object v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 319
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@2
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 495
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@3
    .line 496
    .local v1, "s":I
    new-array v0, v1, [Ljava/lang/Object;

    #@5
    .line 497
    .local v0, "result":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@7
    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a
    .line 498
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    #@1
    .line 517
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@3
    .line 518
    .local v1, "s":I
    array-length v2, p1

    #@4
    if-ge v2, v1, :cond_0

    #@6
    .line 520
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/lang/Object;

    #@14
    .line 521
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    #@15
    .line 523
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@17
    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a
    .line 524
    array-length v2, p1

    #@1b
    if-le v2, v1, :cond_1

    #@1d
    .line 525
    const/4 v2, 0x0

    #@1e
    aput-object v2, p1, v1

    #@20
    .line 527
    :cond_1
    return-object p1
.end method

.method public trimToSize()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 537
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@3
    .line 538
    .local v1, "s":I
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@5
    array-length v2, v2

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 539
    return-void

    #@9
    .line 541
    :cond_0
    if-nez v1, :cond_1

    #@b
    .line 542
    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@d
    iput-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@f
    .line 548
    :goto_0
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    #@11
    add-int/lit8 v2, v2, 0x1

    #@13
    iput v2, p0, Ljava/util/ArrayList;->modCount:I

    #@15
    .line 536
    return-void

    #@16
    .line 544
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    #@18
    .line 545
    .local v0, "newArray":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@1a
    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 546
    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@1f
    goto :goto_0
.end method

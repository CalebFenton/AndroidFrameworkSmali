.class final Ljava/io/SerializationHandleMap;
.super Ljava/lang/Object;
.source "SerializationHandleMap.java"


# static fields
.field private static final LOAD_FACTOR:I = 0x1d4c


# instance fields
.field private keys:[Ljava/lang/Object;

.field private size:I

.field private threshold:I

.field private values:[I


# direct methods
.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    const/4 v1, 0x0

    #@4
    iput v1, p0, Ljava/io/SerializationHandleMap;->size:I

    #@6
    .line 39
    const/16 v1, 0x15

    #@8
    iput v1, p0, Ljava/io/SerializationHandleMap;->threshold:I

    #@a
    .line 40
    iget v1, p0, Ljava/io/SerializationHandleMap;->threshold:I

    #@c
    int-to-long v2, v1

    #@d
    const-wide/16 v4, 0x2710

    #@f
    mul-long/2addr v2, v4

    #@10
    const-wide/16 v4, 0x1d4c

    #@12
    div-long/2addr v2, v4

    #@13
    long-to-int v0, v2

    #@14
    .line 41
    .local v0, "arraySize":I
    invoke-direct {p0, v0}, Ljava/io/SerializationHandleMap;->resizeArrays(I)V

    #@17
    .line 37
    return-void
.end method

.method private findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "array"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 75
    array-length v2, p2

    #@1
    .line 76
    .local v2, "length":I
    invoke-direct {p0, p1, v2}, Ljava/io/SerializationHandleMap;->getModuloHash(Ljava/lang/Object;I)I

    #@4
    move-result v0

    #@5
    .line 77
    .local v0, "index":I
    add-int v3, v0, v2

    #@7
    add-int/lit8 v3, v3, -0x1

    #@9
    rem-int v1, v3, v2

    #@b
    .line 78
    .local v1, "last":I
    :goto_0
    if-eq v0, v1, :cond_0

    #@d
    .line 79
    aget-object v3, p2, v0

    #@f
    if-eq v3, p1, :cond_0

    #@11
    aget-object v3, p2, v0

    #@13
    if-nez v3, :cond_1

    #@15
    .line 88
    :cond_0
    return v0

    #@16
    .line 86
    :cond_1
    add-int/lit8 v3, v0, 0x1

    #@18
    rem-int v0, v3, v2

    #@1a
    goto :goto_0
.end method

.method private getModuloHash(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 92
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    const v1, 0x7fffffff

    #@7
    and-int/2addr v0, v1

    #@8
    rem-int/2addr v0, p2

    #@9
    return v0
.end method

.method private rehash()V
    .locals 6

    #@0
    .prologue
    .line 119
    iget-object v1, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@2
    array-length v1, v1

    #@3
    mul-int/lit8 v0, v1, 0x2

    #@5
    .line 120
    .local v0, "newSize":I
    invoke-direct {p0, v0}, Ljava/io/SerializationHandleMap;->resizeArrays(I)V

    #@8
    .line 121
    iget-object v1, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@a
    array-length v1, v1

    #@b
    int-to-long v2, v1

    #@c
    const-wide/16 v4, 0x1d4c

    #@e
    mul-long/2addr v2, v4

    #@f
    const-wide/16 v4, 0x2710

    #@11
    div-long/2addr v2, v4

    #@12
    long-to-int v1, v2

    #@13
    iput v1, p0, Ljava/io/SerializationHandleMap;->threshold:I

    #@15
    .line 118
    return-void
.end method

.method private resizeArrays(I)V
    .locals 7
    .param p1, "newSize"    # I

    #@0
    .prologue
    .line 45
    iget-object v3, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@2
    .line 46
    .local v3, "oldKeys":[Ljava/lang/Object;
    iget-object v4, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@4
    .line 48
    .local v4, "oldValues":[I
    new-array v6, p1, [Ljava/lang/Object;

    #@6
    iput-object v6, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@8
    .line 49
    new-array v6, p1, [I

    #@a
    iput-object v6, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@c
    .line 51
    if-eqz v3, :cond_0

    #@e
    .line 52
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v6, v3

    #@10
    if-ge v0, v6, :cond_0

    #@12
    .line 53
    aget-object v2, v3, v0

    #@14
    .line 54
    .local v2, "key":Ljava/lang/Object;
    aget v5, v4, v0

    #@16
    .line 55
    .local v5, "value":I
    iget-object v6, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@18
    invoke-direct {p0, v2, v6}, Ljava/io/SerializationHandleMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@1b
    move-result v1

    #@1c
    .line 56
    .local v1, "index":I
    iget-object v6, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@1e
    aput-object v2, v6, v1

    #@20
    .line 57
    iget-object v6, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@22
    aput v5, v6, v1

    #@24
    .line 52
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 44
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v5    # "value":I
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 63
    iget-object v1, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/SerializationHandleMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 64
    .local v0, "index":I
    iget-object v1, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@8
    aget-object v1, v1, v0

    #@a
    if-ne v1, p1, :cond_0

    #@c
    .line 65
    iget-object v1, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@e
    aget v1, v1, v0

    #@10
    return v1

    #@11
    .line 67
    :cond_0
    const/4 v1, -0x1

    #@12
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 171
    iget v1, p0, Ljava/io/SerializationHandleMap;->size:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public put(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 96
    move-object v0, p1

    #@1
    .line 97
    .local v0, "_key":Ljava/lang/Object;
    move v1, p2

    #@2
    .line 99
    .local v1, "_value":I
    iget-object v4, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@4
    invoke-direct {p0, v0, v4}, Ljava/io/SerializationHandleMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@7
    move-result v2

    #@8
    .line 102
    .local v2, "index":I
    iget-object v4, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@a
    aget-object v4, v4, v2

    #@c
    if-eq v4, v0, :cond_1

    #@e
    .line 103
    iget v4, p0, Ljava/io/SerializationHandleMap;->size:I

    #@10
    add-int/lit8 v4, v4, 0x1

    #@12
    iput v4, p0, Ljava/io/SerializationHandleMap;->size:I

    #@14
    iget v5, p0, Ljava/io/SerializationHandleMap;->threshold:I

    #@16
    if-le v4, v5, :cond_0

    #@18
    .line 104
    invoke-direct {p0}, Ljava/io/SerializationHandleMap;->rehash()V

    #@1b
    .line 105
    iget-object v4, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@1d
    invoke-direct {p0, v0, v4}, Ljava/io/SerializationHandleMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@20
    move-result v2

    #@21
    .line 108
    :cond_0
    iget-object v4, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@23
    aput-object v0, v4, v2

    #@25
    .line 109
    iget-object v4, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@27
    const/4 v5, -0x1

    #@28
    aput v5, v4, v2

    #@2a
    .line 113
    :cond_1
    iget-object v4, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@2c
    aget v3, v4, v2

    #@2e
    .line 114
    .local v3, "result":I
    iget-object v4, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@30
    aput v1, v4, v2

    #@32
    .line 115
    return v3
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 11
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, -0x1

    #@2
    .line 129
    iget-object v7, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@4
    invoke-direct {p0, p1, v7}, Ljava/io/SerializationHandleMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@7
    move-result v4

    #@8
    .local v4, "next":I
    move v2, v4

    #@9
    .line 131
    .local v2, "index":I
    iget-object v7, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@b
    aget-object v7, v7, v2

    #@d
    if-eq v7, p1, :cond_0

    #@f
    .line 132
    return v9

    #@10
    .line 136
    :cond_0
    iget-object v7, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@12
    aget v6, v7, v2

    #@14
    .line 140
    .local v6, "result":I
    iget-object v7, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@16
    array-length v3, v7

    #@17
    .line 142
    .local v3, "length":I
    :cond_1
    :goto_0
    add-int/lit8 v7, v4, 0x2

    #@19
    rem-int v4, v7, v3

    #@1b
    .line 143
    iget-object v7, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@1d
    aget-object v5, v7, v4

    #@1f
    .line 144
    .local v5, "object":Ljava/lang/Object;
    if-nez v5, :cond_2

    #@21
    .line 161
    iget v7, p0, Ljava/io/SerializationHandleMap;->size:I

    #@23
    add-int/lit8 v7, v7, -0x1

    #@25
    iput v7, p0, Ljava/io/SerializationHandleMap;->size:I

    #@27
    .line 164
    iget-object v7, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@29
    aput-object v10, v7, v2

    #@2b
    .line 165
    iget-object v7, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@2d
    aput v9, v7, v2

    #@2f
    .line 167
    return v6

    #@30
    .line 148
    :cond_2
    invoke-direct {p0, v5, v3}, Ljava/io/SerializationHandleMap;->getModuloHash(Ljava/lang/Object;I)I

    #@33
    move-result v0

    #@34
    .line 149
    .local v0, "hash":I
    if-le v0, v2, :cond_4

    #@36
    const/4 v1, 0x1

    #@37
    .line 150
    .local v1, "hashedOk":Z
    :goto_1
    if-ge v4, v2, :cond_6

    #@39
    .line 151
    if-nez v1, :cond_3

    #@3b
    if-gt v0, v4, :cond_5

    #@3d
    :cond_3
    const/4 v1, 0x1

    #@3e
    .line 155
    :goto_2
    if-nez v1, :cond_1

    #@40
    .line 156
    iget-object v7, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    #@42
    aput-object v5, v7, v2

    #@44
    .line 157
    iget-object v7, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@46
    iget-object v8, p0, Ljava/io/SerializationHandleMap;->values:[I

    #@48
    aget v8, v8, v4

    #@4a
    aput v8, v7, v2

    #@4c
    .line 158
    move v2, v4

    #@4d
    goto :goto_0

    #@4e
    .line 149
    .end local v1    # "hashedOk":Z
    :cond_4
    const/4 v1, 0x0

    #@4f
    .restart local v1    # "hashedOk":Z
    goto :goto_1

    #@50
    .line 151
    :cond_5
    const/4 v1, 0x0

    #@51
    goto :goto_2

    #@52
    .line 153
    :cond_6
    if-eqz v1, :cond_7

    #@54
    if-gt v0, v4, :cond_7

    #@56
    const/4 v1, 0x1

    #@57
    goto :goto_2

    #@58
    :cond_7
    const/4 v1, 0x0

    #@59
    goto :goto_2
.end method

.class public Lorg/apache/xml/utils/StringVector;
.super Ljava/lang/Object;
.source "StringVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x4552a3bdbda168c4L


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[Ljava/lang/String;

.field protected m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@6
    .line 51
    const/16 v0, 0x8

    #@8
    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    #@a
    .line 52
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    #@c
    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    #@e
    .line 53
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    #@10
    new-array v0, v0, [Ljava/lang/String;

    #@12
    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@14
    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "blocksize"    # I

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@6
    .line 64
    iput p1, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    #@8
    .line 65
    iput p1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    #@a
    .line 66
    new-array v0, p1, [Ljava/lang/String;

    #@c
    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@e
    .line 61
    return-void
.end method


# virtual methods
.method public final addElement(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 97
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 99
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    #@b
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    #@d
    add-int/2addr v1, v2

    #@e
    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    #@10
    .line 101
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    #@12
    new-array v0, v1, [Ljava/lang/String;

    #@14
    .line 103
    .local v0, "newMap":[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@16
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 105
    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@1f
    .line 108
    .end local v0    # "newMap":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@21
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@23
    aput-object p1, v1, v2

    #@25
    .line 110
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@2b
    .line 94
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 135
    if-nez p1, :cond_0

    #@3
    .line 136
    return v2

    #@4
    .line 138
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@7
    if-ge v0, v1, :cond_2

    #@9
    .line 140
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@b
    aget-object v1, v1, v0

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 141
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 138
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 144
    :cond_2
    return v2
.end method

.method public final containsIgnoreCase(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 157
    if-nez p1, :cond_0

    #@3
    .line 158
    return v2

    #@4
    .line 160
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@7
    if-ge v0, v1, :cond_2

    #@9
    .line 162
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@b
    aget-object v1, v1, v0

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 163
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 166
    :cond_2
    return v2
.end method

.method public final elementAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@2
    return v0
.end method

.method public final peek()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 221
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@2
    if-gtz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@8
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@a
    add-int/lit8 v1, v1, -0x1

    #@c
    aget-object v0, v0, v1

    #@e
    goto :goto_0
.end method

.method public final pop()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 202
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@3
    if-gtz v1, :cond_0

    #@5
    .line 203
    return-object v3

    #@6
    .line 205
    :cond_0
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@c
    .line 207
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@e
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@10
    aget-object v0, v1, v2

    #@12
    .line 209
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@14
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@16
    aput-object v3, v1, v2

    #@18
    .line 211
    return-object v0
.end method

.method public final push(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 177
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 179
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    #@b
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    #@d
    add-int/2addr v1, v2

    #@e
    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    #@10
    .line 181
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    #@12
    new-array v0, v1, [Ljava/lang/String;

    #@14
    .line 183
    .local v0, "newMap":[Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@16
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 185
    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@1f
    .line 188
    .end local v0    # "newMap":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    #@21
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@23
    aput-object p1, v1, v2

    #@25
    .line 190
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@2b
    .line 174
    return-void
.end method

.method public final size()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    #@2
    return v0
.end method

.class public Lorg/apache/xml/utils/ObjectStack;
.super Lorg/apache/xml/utils/ObjectVector;
.source "ObjectStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/xml/utils/ObjectVector;-><init>()V

    #@3
    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "blocksize"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/ObjectVector;-><init>(I)V

    #@3
    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/ObjectStack;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/ObjectStack;

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/ObjectVector;-><init>(Lorg/apache/xml/utils/ObjectVector;)V

    #@3
    .line 61
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-super {p0}, Lorg/apache/xml/utils/ObjectVector;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xml/utils/ObjectStack;

    #@6
    return-object v0
.end method

.method public empty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 179
    iget v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    #@2
    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@4
    add-int/lit8 v2, v2, -0x1

    #@6
    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 129
    :catch_0
    move-exception v0

    #@a
    .line 130
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    #@c
    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    #@f
    throw v1
.end method

.method public peek(I)Ljava/lang/Object;
    .locals 4
    .param p1, "n"    # I

    #@0
    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    #@2
    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@4
    add-int/lit8 v3, p1, 0x1

    #@6
    sub-int/2addr v2, v3

    #@7
    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    return-object v1

    #@a
    .line 147
    :catch_0
    move-exception v0

    #@b
    .line 148
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    #@d
    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    #@10
    throw v1
.end method

.method public pop()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 101
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    #@2
    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@4
    add-int/lit8 v2, v2, -0x1

    #@6
    iput v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@8
    aget-object v0, v1, v2

    #@a
    .line 102
    .local v0, "val":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    #@c
    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v3, v1, v2

    #@11
    .line 104
    return-object v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "i"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 75
    iget v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_mapSize:I

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 77
    iget v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_mapSize:I

    #@b
    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_blocksize:I

    #@d
    add-int/2addr v1, v2

    #@e
    iput v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_mapSize:I

    #@10
    .line 79
    iget v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_mapSize:I

    #@12
    new-array v0, v1, [Ljava/lang/Object;

    #@14
    .line 81
    .local v0, "newMap":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    #@16
    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 83
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    #@1f
    .line 86
    .end local v0    # "newMap":[Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    #@21
    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@23
    aput-object p1, v1, v2

    #@25
    .line 88
    iget v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    iput v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@2b
    .line 90
    return-object p1
.end method

.method public quickPop(I)V
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 113
    iget v0, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@2
    sub-int/2addr v0, p1

    #@3
    iput v0, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@5
    .line 111
    return-void
.end method

.method public search(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectStack;->lastIndexOf(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 196
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@6
    .line 198
    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->size()I

    #@9
    move-result v1

    #@a
    sub-int/2addr v1, v0

    #@b
    return v1

    #@c
    .line 201
    :cond_0
    const/4 v1, -0x1

    #@d
    return v1
.end method

.method public setTop(Ljava/lang/Object;)V
    .locals 3
    .param p1, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectStack;->m_map:[Ljava/lang/Object;

    #@2
    iget v2, p0, Lorg/apache/xml/utils/ObjectStack;->m_firstFree:I

    #@4
    add-int/lit8 v2, v2, -0x1

    #@6
    aput-object p1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 159
    return-void

    #@9
    .line 165
    :catch_0
    move-exception v0

    #@a
    .line 166
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    #@c
    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    #@f
    throw v1
.end method

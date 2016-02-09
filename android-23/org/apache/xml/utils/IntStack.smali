.class public Lorg/apache/xml/utils/IntStack;
.super Lorg/apache/xml/utils/IntVector;
.source "IntStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/xml/utils/IntVector;-><init>()V

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
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/IntVector;-><init>(I)V

    #@3
    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/IntStack;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/IntStack;

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/IntVector;-><init>(Lorg/apache/xml/utils/IntVector;)V

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
    .line 209
    invoke-super {p0}, Lorg/apache/xml/utils/IntVector;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xml/utils/IntStack;

    #@6
    return-object v0
.end method

.method public empty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 176
    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public final peek()I
    .locals 3

    #@0
    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    #@2
    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@4
    add-int/lit8 v2, v2, -0x1

    #@6
    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return v1

    #@9
    .line 126
    :catch_0
    move-exception v0

    #@a
    .line 127
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    #@c
    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    #@f
    throw v1
.end method

.method public peek(I)I
    .locals 4
    .param p1, "n"    # I

    #@0
    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    #@2
    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@4
    add-int/lit8 v3, p1, 0x1

    #@6
    sub-int/2addr v2, v3

    #@7
    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    return v1

    #@a
    .line 144
    :catch_0
    move-exception v0

    #@b
    .line 145
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    #@d
    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    #@10
    throw v1
.end method

.method public final pop()I
    .locals 2

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    #@2
    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@8
    aget v0, v0, v1

    #@a
    return v0
.end method

.method public push(I)I
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 75
    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_mapSize:I

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 77
    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_mapSize:I

    #@b
    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_blocksize:I

    #@d
    add-int/2addr v1, v2

    #@e
    iput v1, p0, Lorg/apache/xml/utils/IntStack;->m_mapSize:I

    #@10
    .line 79
    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_mapSize:I

    #@12
    new-array v0, v1, [I

    #@14
    .line 81
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    #@16
    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@1d
    .line 83
    iput-object v0, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    #@1f
    .line 86
    .end local v0    # "newMap":[I
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    #@21
    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@23
    aput p1, v1, v2

    #@25
    .line 88
    iget v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    iput v1, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@2b
    .line 90
    return p1
.end method

.method public final quickPop(I)V
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 110
    iget v0, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@2
    sub-int/2addr v0, p1

    #@3
    iput v0, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@5
    .line 108
    return-void
.end method

.method public search(I)I
    .locals 2
    .param p1, "o"    # I

    #@0
    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/IntStack;->lastIndexOf(I)I

    #@3
    move-result v0

    #@4
    .line 193
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@6
    .line 195
    invoke-virtual {p0}, Lorg/apache/xml/utils/IntStack;->size()I

    #@9
    move-result v1

    #@a
    sub-int/2addr v1, v0

    #@b
    return v1

    #@c
    .line 198
    :cond_0
    const/4 v1, -0x1

    #@d
    return v1
.end method

.method public setTop(I)V
    .locals 3
    .param p1, "val"    # I

    #@0
    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntStack;->m_map:[I

    #@2
    iget v2, p0, Lorg/apache/xml/utils/IntStack;->m_firstFree:I

    #@4
    add-int/lit8 v2, v2, -0x1

    #@6
    aput p1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 156
    return-void

    #@9
    .line 162
    :catch_0
    move-exception v0

    #@a
    .line 163
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/EmptyStackException;

    #@c
    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    #@f
    throw v1
.end method

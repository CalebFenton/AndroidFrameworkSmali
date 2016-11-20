.class public Lorg/apache/xpath/compiler/OpMapVector;
.super Ljava/lang/Object;
.source "OpMapVector.java"


# instance fields
.field protected m_blocksize:I

.field protected m_lengthPos:I

.field protected m_map:[I

.field protected m_mapSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "blocksize"    # I
    .param p2, "increaseSize"    # I
    .param p3, "lengthPos"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    #@6
    .line 53
    iput p2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_blocksize:I

    #@8
    .line 54
    iput p1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    #@a
    .line 55
    iput p3, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    #@c
    .line 56
    new-array v0, p1, [I

    #@e
    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    #@10
    .line 50
    return-void
.end method


# virtual methods
.method public final elementAt(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public final setElementAt(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 83
    iget v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    #@3
    if-lt p2, v2, :cond_0

    #@5
    .line 85
    iget v1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    #@7
    .line 87
    .local v1, "oldSize":I
    iget v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    #@9
    iget v3, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_blocksize:I

    #@b
    add-int/2addr v2, v3

    #@c
    iput v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    #@e
    .line 89
    iget v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    #@10
    new-array v0, v2, [I

    #@12
    .line 91
    .local v0, "newMap":[I
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    #@14
    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@17
    .line 93
    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    #@19
    .line 96
    .end local v0    # "newMap":[I
    .end local v1    # "oldSize":I
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    #@1b
    aput p1, v2, p2

    #@1d
    .line 81
    return-void
.end method

.method public final setToSize(I)V
    .locals 5
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 107
    new-array v0, p1, [I

    #@3
    .line 109
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    #@5
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    #@7
    iget v3, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    #@9
    aget v2, v2, v3

    #@b
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@e
    .line 111
    iput p1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    #@10
    .line 112
    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    #@12
    .line 105
    return-void
.end method

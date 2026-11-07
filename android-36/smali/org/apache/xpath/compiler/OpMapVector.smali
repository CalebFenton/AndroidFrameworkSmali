.class public Lorg/apache/xpath/compiler/OpMapVector;
.super Ljava/lang/Object;
.source "OpMapVector.java"


# instance fields
.field protected greylist m_blocksize:I

.field protected greylist m_lengthPos:I

.field protected greylist m_map:[I

.field protected greylist m_mapSize:I


# direct methods
.method public constructor greylist <init>(III)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_blocksize:I

    .line 54
    iput p1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    .line 55
    iput p3, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    .line 56
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    return-void
.end method


# virtual methods
.method public final greylist elementAt(I)I
    .registers 2

    .line 68
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    aget p0, p0, p1

    return p0
.end method

.method public final greylist setElementAt(II)V
    .registers 7

    .line 83
    iget v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    if-lt p2, v0, :cond_13

    .line 87
    iget v1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_blocksize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    .line 89
    new-array v1, v1, [I

    .line 91
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput-object v1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    .line 96
    :cond_13
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    aput p1, p0, p2

    return-void
.end method

.method public final greylist setToSize(I)V
    .registers 6

    .line 107
    new-array v0, p1, [I

    .line 109
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    iget v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    aget v2, v1, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput p1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    .line 112
    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    return-void
.end method

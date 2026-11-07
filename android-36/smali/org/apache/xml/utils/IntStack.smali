.class public Lorg/apache/xml/utils/IntStack;
.super Lorg/apache/xml/utils/IntVector;
.source "IntStack.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/IntVector;-><init>(I)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/utils/IntStack;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/IntVector;-><init>(Lorg/apache/xml/utils/IntVector;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 209
    invoke-super {p0}, Lorg/apache/xml/utils/IntVector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/IntStack;

    return-object p0
.end method

.method public greylist empty()Z
    .registers 1

    .line 176
    iget p0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final greylist peek()I
    .registers 2

    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget p0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 127
    :catch_9
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public greylist peek(I)I
    .registers 3

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget p0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    aget p0, v0, p0
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    .line 145
    :catch_a
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public final greylist pop()I
    .registers 3

    .line 101
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    aget p0, v0, v1

    return p0
.end method

.method public greylist push(I)I
    .registers 6

    .line 75
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_19

    .line 77
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 79
    new-array v1, v2, [I

    .line 81
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 86
    :cond_19
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 88
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return p1
.end method

.method public final greylist quickPop(I)V
    .registers 3

    .line 110
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public greylist search(I)I
    .registers 2

    .line 191
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/IntVector;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_c

    .line 195
    invoke-virtual {p0}, Lorg/apache/xml/utils/IntVector;->size()I

    move-result p0

    sub-int/2addr p0, p1

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public greylist setTop(I)V
    .registers 3

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget p0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aput p1, v0, p0
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    .line 163
    :catch_9
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

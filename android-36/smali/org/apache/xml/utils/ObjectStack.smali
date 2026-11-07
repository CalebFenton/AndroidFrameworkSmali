.class public Lorg/apache/xml/utils/ObjectStack;
.super Lorg/apache/xml/utils/ObjectVector;
.source "ObjectStack.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lorg/apache/xml/utils/ObjectVector;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/ObjectVector;-><init>(I)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/utils/ObjectStack;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/ObjectVector;-><init>(Lorg/apache/xml/utils/ObjectVector;)V

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

    .line 212
    invoke-super {p0}, Lorg/apache/xml/utils/ObjectVector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/ObjectStack;

    return-object p0
.end method

.method public greylist empty()Z
    .registers 1

    .line 179
    iget p0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist peek()Ljava/lang/Object;
    .registers 2

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget p0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 130
    :catch_9
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public greylist peek(I)Ljava/lang/Object;
    .registers 3

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget p0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    aget-object p0, v0, p0
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    .line 148
    :catch_a
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public greylist pop()Ljava/lang/Object;
    .registers 4

    .line 101
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    aget-object p0, v0, v1

    const/4 v2, 0x0

    .line 102
    aput-object v2, v0, v1

    return-object p0
.end method

.method public greylist push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 75
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    if-lt v1, v2, :cond_19

    .line 77
    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_mapSize:I

    .line 79
    new-array v1, v2, [Ljava/lang/Object;

    .line 81
    iget-object v2, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    .line 86
    :cond_19
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 88
    iput v1, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    return-object p1
.end method

.method public greylist quickPop(I)V
    .registers 3

    .line 113
    iget v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    return-void
.end method

.method public greylist search(Ljava/lang/Object;)I
    .registers 2

    .line 194
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectVector;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_c

    .line 198
    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectVector;->size()I

    move-result p0

    sub-int/2addr p0, p1

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public greylist setTop(Ljava/lang/Object;)V
    .registers 3

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget p0, p0, Lorg/apache/xml/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aput-object p1, v0, p0
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    .line 166
    :catch_9
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

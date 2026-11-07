.class public Lorg/apache/xml/utils/IntVector;
.super Ljava/lang/Object;
.source "IntVector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected greylist m_blocksize:I

.field protected greylist m_firstFree:I

.field protected greylist m_map:[I

.field protected greylist m_mapSize:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    const/16 v0, 0x20

    .line 55
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    .line 56
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 57
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 68
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    .line 69
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 70
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    return-void
.end method

.method public constructor greylist <init>(II)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 81
    iput p2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    .line 82
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 83
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/utils/IntVector;)V
    .registers 6

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 93
    iget v1, p1, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 94
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 95
    iget v1, p1, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    .line 96
    iget v3, p1, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    iput v3, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    .line 97
    iget-object p0, p1, Lorg/apache/xml/utils/IntVector;->m_map:[I

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final greylist addElement(I)V
    .registers 6

    .line 129
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_19

    .line 131
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 133
    new-array v1, v2, [I

    .line 135
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iput-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 140
    :cond_19
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 142
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final greylist addElements(I)V
    .registers 6

    .line 179
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int v1, v0, p1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_1a

    .line 181
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 183
    new-array v1, v2, [I

    .line 185
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iput-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 190
    :cond_1a
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final greylist addElements(II)V
    .registers 7

    .line 153
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int v1, v0, p2

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1a

    .line 155
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v1, p2

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 157
    new-array v1, v2, [I

    .line 159
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    :cond_1a
    :goto_1a
    if-ge v3, p2, :cond_29

    .line 166
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 167
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_29
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 416
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/IntVector;-><init>(Lorg/apache/xml/utils/IntVector;)V

    return-object v0
.end method

.method public final greylist contains(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 332
    :goto_2
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v1, v2, :cond_11

    .line 334
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method

.method public final greylist elementAt(I)I
    .registers 2

    .line 319
    iget-object p0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget p0, p0, p1

    return p0
.end method

.method public final greylist indexOf(I)I
    .registers 4

    const/4 v0, 0x0

    .line 377
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_f

    .line 379
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final greylist indexOf(II)I
    .registers 4

    .line 355
    :goto_0
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge p2, v0, :cond_e

    .line 357
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v0, v0, p2

    if-ne v0, p1, :cond_b

    return p2

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_e
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final greylist insertElementAt(II)V
    .registers 7

    .line 206
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_19

    .line 208
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    .line 210
    new-array v1, v2, [I

    .line 212
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iput-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    .line 217
    :cond_19
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v0, -0x1

    if-gt p2, v1, :cond_27

    .line 219
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_27
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aput p1, v0, p2

    .line 224
    iget p1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final greylist lastIndexOf(I)I
    .registers 4

    .line 399
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_10

    .line 401
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_10
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final greylist removeAllElements()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 236
    :goto_2
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v1, v2, :cond_f

    .line 238
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 241
    :cond_f
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final greylist removeElement(I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 258
    :goto_2
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v1, v2, :cond_25

    .line 260
    iget-object v3, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v4, v3, v1

    if-ne v4, p1, :cond_22

    add-int/lit8 p1, v1, 0x1

    if-ge p1, v2, :cond_17

    add-int/lit8 v0, v1, -0x1

    sub-int/2addr v2, v1

    .line 263
    invoke-static {v3, p1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1b

    :cond_17
    const/high16 p1, -0x80000000

    .line 265
    aput p1, v3, v1

    .line 267
    :goto_1b
    iget p1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return v0

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_25
    return v0
.end method

.method public final greylist removeElementAt(I)V
    .registers 5

    .line 287
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-le p1, v0, :cond_c

    .line 288
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12

    .line 290
    :cond_c
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    const/high16 v1, -0x80000000

    aput v1, v0, p1

    .line 292
    :goto_12
    iget p1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final greylist setElementAt(II)V
    .registers 3

    .line 307
    iget-object p0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aput p1, p0, p2

    return-void
.end method

.method public final greylist setSize(I)V
    .registers 2

    .line 117
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final greylist size()I
    .registers 1

    .line 107
    iget p0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return p0
.end method

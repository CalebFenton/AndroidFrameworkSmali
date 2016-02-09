.class public Lorg/apache/xml/utils/IntVector;
.super Ljava/lang/Object;
.source "IntVector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[I

.field protected m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@6
    .line 55
    const/16 v0, 0x20

    #@8
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@a
    .line 56
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@c
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@e
    .line 57
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@10
    new-array v0, v0, [I

    #@12
    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@14
    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "blocksize"    # I

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@6
    .line 68
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@8
    .line 69
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@a
    .line 70
    new-array v0, p1, [I

    #@c
    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@e
    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "blocksize"    # I
    .param p2, "increaseSize"    # I

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@6
    .line 81
    iput p2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@8
    .line 82
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@a
    .line 83
    new-array v0, p1, [I

    #@c
    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@e
    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/IntVector;)V
    .locals 4
    .param p1, "v"    # Lorg/apache/xml/utils/IntVector;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    iput v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@6
    .line 93
    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@8
    new-array v0, v0, [I

    #@a
    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@c
    .line 94
    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@e
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@10
    .line 95
    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@12
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@14
    .line 96
    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@16
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@18
    .line 97
    iget-object v0, p1, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@1a
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@1c
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@1e
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@21
    .line 91
    return-void
.end method


# virtual methods
.method public final addElement(I)V
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 129
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 131
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@b
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@d
    add-int/2addr v1, v2

    #@e
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@10
    .line 133
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@12
    new-array v0, v1, [I

    #@14
    .line 135
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@16
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@1d
    .line 137
    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@1f
    .line 140
    .end local v0    # "newMap":[I
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@21
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@23
    aput p1, v1, v2

    #@25
    .line 142
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@2b
    .line 126
    return-void
.end method

.method public final addElements(I)V
    .locals 4
    .param p1, "numberOfElements"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 179
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@3
    add-int/2addr v1, p1

    #@4
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@6
    if-lt v1, v2, :cond_0

    #@8
    .line 181
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@a
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@c
    add-int/2addr v2, p1

    #@d
    add-int/2addr v1, v2

    #@e
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@10
    .line 183
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@12
    new-array v0, v1, [I

    #@14
    .line 185
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@16
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@1d
    .line 187
    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@1f
    .line 190
    .end local v0    # "newMap":[I
    :cond_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@21
    add-int/2addr v1, p1

    #@22
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@24
    .line 176
    return-void
.end method

.method public final addElements(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "numberOfElements"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 153
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@3
    add-int/2addr v2, p2

    #@4
    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@6
    if-lt v2, v3, :cond_0

    #@8
    .line 155
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@a
    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@c
    add-int/2addr v3, p2

    #@d
    add-int/2addr v2, v3

    #@e
    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@10
    .line 157
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@12
    new-array v1, v2, [I

    #@14
    .line 159
    .local v1, "newMap":[I
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@16
    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@18
    add-int/lit8 v3, v3, 0x1

    #@1a
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@1d
    .line 161
    iput-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@1f
    .line 164
    .end local v1    # "newMap":[I
    :cond_0
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@22
    .line 166
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@24
    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@26
    aput p1, v2, v3

    #@28
    .line 167
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@2a
    add-int/lit8 v2, v2, 0x1

    #@2c
    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@2e
    .line 164
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 150
    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 416
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/xml/utils/IntVector;-><init>(Lorg/apache/xml/utils/IntVector;)V

    #@5
    return-object v0
.end method

.method public final contains(I)Z
    .locals 2
    .param p1, "s"    # I

    #@0
    .prologue
    .line 332
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 334
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ne v1, p1, :cond_0

    #@b
    .line 335
    const/4 v1, 0x1

    #@c
    return v1

    #@d
    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 338
    :cond_1
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public final elementAt(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public final indexOf(I)I
    .locals 2
    .param p1, "elem"    # I

    #@0
    .prologue
    .line 377
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 379
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ne v1, p1, :cond_0

    #@b
    .line 380
    return v0

    #@c
    .line 377
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 383
    :cond_1
    const/high16 v1, -0x80000000

    #@11
    return v1
.end method

.method public final indexOf(II)I
    .locals 2
    .param p1, "elem"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 355
    move v0, p2

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 357
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ne v1, p1, :cond_0

    #@b
    .line 358
    return v0

    #@c
    .line 355
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 361
    :cond_1
    const/high16 v1, -0x80000000

    #@11
    return v1
.end method

.method public final insertElementAt(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "at"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 206
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 208
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@b
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    #@d
    add-int/2addr v1, v2

    #@e
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@10
    .line 210
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    #@12
    new-array v0, v1, [I

    #@14
    .line 212
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@16
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@1d
    .line 214
    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@1f
    .line 217
    .end local v0    # "newMap":[I
    :cond_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    if-gt p2, v1, :cond_1

    #@25
    .line 219
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@27
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@29
    add-int/lit8 v3, p2, 0x1

    #@2b
    iget v4, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@2d
    sub-int/2addr v4, p2

    #@2e
    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@31
    .line 222
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@33
    aput p1, v1, p2

    #@35
    .line 224
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@37
    add-int/lit8 v1, v1, 0x1

    #@39
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@3b
    .line 203
    return-void
.end method

.method public final lastIndexOf(I)I
    .locals 2
    .param p1, "elem"    # I

    #@0
    .prologue
    .line 399
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@2
    add-int/lit8 v0, v1, -0x1

    #@4
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@6
    .line 401
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@8
    aget v1, v1, v0

    #@a
    if-ne v1, p1, :cond_0

    #@c
    .line 402
    return v0

    #@d
    .line 399
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_0

    #@10
    .line 405
    :cond_1
    const/high16 v1, -0x80000000

    #@12
    return v1
.end method

.method public final removeAllElements()V
    .locals 3

    #@0
    .prologue
    .line 236
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 238
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@7
    const/high16 v2, -0x80000000

    #@9
    aput v2, v1, v0

    #@b
    .line 236
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 241
    :cond_0
    const/4 v1, 0x0

    #@f
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@11
    .line 233
    return-void
.end method

.method public final removeElement(I)Z
    .locals 6
    .param p1, "s"    # I

    #@0
    .prologue
    .line 258
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@3
    if-ge v0, v1, :cond_2

    #@5
    .line 260
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ne v1, p1, :cond_1

    #@b
    .line 262
    add-int/lit8 v1, v0, 0x1

    #@d
    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@f
    if-ge v1, v2, :cond_0

    #@11
    .line 263
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@13
    add-int/lit8 v2, v0, 0x1

    #@15
    iget-object v3, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@17
    add-int/lit8 v4, v0, -0x1

    #@19
    iget v5, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@1b
    sub-int/2addr v5, v0

    #@1c
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@1f
    .line 267
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@25
    .line 269
    const/4 v1, 0x1

    #@26
    return v1

    #@27
    .line 265
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@29
    const/high16 v2, -0x80000000

    #@2b
    aput v2, v1, v0

    #@2d
    goto :goto_1

    #@2e
    .line 258
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 273
    :cond_2
    const/4 v1, 0x0

    #@32
    return v1
.end method

.method public final removeElementAt(I)V
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 287
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 288
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@6
    add-int/lit8 v1, p1, 0x1

    #@8
    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@a
    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@c
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@f
    .line 292
    :goto_0
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@15
    .line 284
    return-void

    #@16
    .line 290
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@18
    const/high16 v1, -0x80000000

    #@1a
    aput v1, v0, p1

    #@1c
    goto :goto_0
.end method

.method public final setElementAt(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    #@2
    aput p1, v0, p2

    #@4
    .line 305
    return-void
.end method

.method public final setSize(I)V
    .locals 0
    .param p1, "sz"    # I

    #@0
    .prologue
    .line 117
    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@2
    .line 115
    return-void
.end method

.method public final size()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    #@2
    return v0
.end method

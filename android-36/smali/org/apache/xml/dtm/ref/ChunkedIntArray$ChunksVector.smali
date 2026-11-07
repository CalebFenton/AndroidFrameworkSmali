.class Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;
.super Ljava/lang/Object;
.source "ChunkedIntArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/ChunkedIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChunksVector"
.end annotation


# instance fields
.field final greylist BLOCKSIZE:I

.field greylist m_map:[[I

.field greylist m_mapSize:I

.field greylist pos:I


# direct methods
.method constructor greylist <init>(Lorg/apache/xml/dtm/ref/ChunkedIntArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x40

    .line 270
    iput p1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->BLOCKSIZE:I

    .line 271
    new-array v0, p1, [[I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    .line 272
    iput p1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    const/4 p1, 0x0

    .line 273
    iput p1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    return-void
.end method


# virtual methods
.method greylist addElement([I)V
    .registers 6

    .line 286
    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    if-lt v0, v1, :cond_1b

    .line 289
    :goto_6
    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    if-lt v0, v2, :cond_11

    add-int/lit8 v2, v2, 0x40

    .line 290
    iput v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    goto :goto_6

    .line 291
    :cond_11
    new-array v0, v2, [[I

    .line 292
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    .line 297
    :cond_1b
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 298
    iput v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    return-void
.end method

.method final greylist elementAt(I)[I
    .registers 2

    .line 303
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    aget-object p0, p0, p1

    return-object p0
.end method

.method final greylist size()I
    .registers 1

    .line 281
    iget p0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    return p0
.end method

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
.field final BLOCKSIZE:I

.field m_map:[[I

.field m_mapSize:I

.field pos:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/ChunkedIntArray;


# direct methods
.method constructor <init>(Lorg/apache/xml/dtm/ref/ChunkedIntArray;)V
    .locals 2
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@0
    .prologue
    const/16 v1, 0x40

    #@2
    .line 275
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->this$0:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 270
    iput v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->BLOCKSIZE:I

    #@9
    .line 271
    new-array v0, v1, [[I

    #@b
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    #@d
    .line 272
    iput v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    #@f
    .line 273
    const/4 v0, 0x0

    #@10
    iput v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    #@12
    .line 275
    return-void
.end method


# virtual methods
.method addElement([I)V
    .locals 5
    .param p1, "value"    # [I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 286
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    #@3
    iget v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    #@5
    if-lt v2, v3, :cond_1

    #@7
    .line 288
    iget v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    #@9
    .line 289
    .local v1, "orgMapSize":I
    :goto_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    #@b
    iget v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    #@d
    if-lt v2, v3, :cond_0

    #@f
    .line 290
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    #@11
    add-int/lit8 v2, v2, 0x40

    #@13
    iput v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    #@15
    goto :goto_0

    #@16
    .line 291
    :cond_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    #@18
    new-array v0, v2, [[I

    #@1a
    .line 292
    .local v0, "newMap":[[I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    #@1c
    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 293
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    #@21
    .line 297
    .end local v0    # "newMap":[[I
    .end local v1    # "orgMapSize":I
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    #@23
    iget v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    #@25
    aput-object p1, v2, v3

    #@27
    .line 298
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    #@29
    add-int/lit8 v2, v2, 0x1

    #@2b
    iput v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    #@2d
    .line 284
    return-void
.end method

.method final elementAt(I)[I
    .locals 1
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method final size()I
    .locals 1

    #@0
    .prologue
    .line 281
    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    #@2
    return v0
.end method

.class public Lcom/android/server/wifi/util/ByteArrayRingBuffer;
.super Ljava/lang/Object;
.source "ByteArrayRingBuffer.java"


# instance fields
.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mBytesUsed:I

.field private mMaxBytes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxBytes"    # I

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x1

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 38
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    #@13
    .line 39
    iput p1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    #@15
    .line 40
    const/4 v0, 0x0

    #@16
    iput v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    #@18
    .line 34
    return-void
.end method

.method private pruneToSize(I)V
    .locals 4
    .param p1, "sizeBytes"    # I

    #@0
    .prologue
    .line 90
    iget v1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    #@2
    .line 91
    .local v1, "newBytesUsed":I
    const/4 v0, 0x0

    #@3
    .line 92
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    if-le v1, p1, :cond_0

    #@d
    .line 93
    iget-object v2, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, [B

    #@15
    array-length v2, v2

    #@16
    sub-int/2addr v1, v2

    #@17
    .line 94
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    #@1c
    const/4 v3, 0x0

    #@1d
    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@24
    .line 97
    iput v1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    #@26
    .line 89
    return-void
.end method


# virtual methods
.method public appendBuffer([B)Z
    .locals 2
    .param p1, "newData"    # [B

    #@0
    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    #@2
    array-length v1, p1

    #@3
    sub-int/2addr v0, v1

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->pruneToSize(I)V

    #@7
    .line 54
    iget v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    #@9
    array-length v1, p1

    #@a
    add-int/2addr v0, v1

    #@b
    iget v1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    #@d
    if-le v0, v1, :cond_0

    #@f
    .line 55
    const/4 v0, 0x0

    #@10
    return v0

    #@11
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 59
    iget v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    #@18
    array-length v1, p1

    #@19
    add-int/2addr v0, v1

    #@1a
    iput v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mBytesUsed:I

    #@1c
    .line 60
    const/4 v0, 0x1

    #@1d
    return v0
.end method

.method public getBuffer(I)[B
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getNumBuffers()I
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mArrayList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public resize(I)V
    .locals 0
    .param p1, "maxBytes"    # I

    #@0
    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->pruneToSize(I)V

    #@3
    .line 86
    iput p1, p0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->mMaxBytes:I

    #@5
    .line 84
    return-void
.end method

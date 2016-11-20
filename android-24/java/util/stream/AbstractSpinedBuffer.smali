.class abstract Ljava/util/stream/AbstractSpinedBuffer;
.super Ljava/lang/Object;
.source "AbstractSpinedBuffer.java"


# static fields
.field public static final MAX_CHUNK_POWER:I = 0x1e

.field public static final MIN_CHUNK_POWER:I = 0x4

.field public static final MIN_CHUNK_SIZE:I = 0x10

.field public static final MIN_SPINE_SIZE:I = 0x8


# instance fields
.field protected elementIndex:I

.field protected final initialChunkPower:I

.field protected priorElementCount:[J

.field protected spineIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    const/4 v0, 0x4

    #@4
    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    #@6
    .line 80
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    if-gez p1, :cond_0

    #@5
    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Illegal Capacity: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 94
    :cond_0
    add-int/lit8 v0, p1, -0x1

    #@21
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@24
    move-result v0

    #@25
    rsub-int/lit8 v0, v0, 0x20

    #@27
    .line 93
    const/4 v1, 0x4

    #@28
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    #@2e
    .line 89
    return-void
.end method


# virtual methods
.method protected chunkSize(I)I
    .locals 4
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 117
    if-eqz p1, :cond_0

    #@3
    if-ne p1, v3, :cond_1

    #@5
    .line 118
    :cond_0
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    #@7
    .line 120
    .local v0, "power":I
    :goto_0
    shl-int v1, v3, v0

    #@9
    return v1

    #@a
    .line 119
    .end local v0    # "power":I
    :cond_1
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    #@c
    add-int/2addr v1, p1

    #@d
    add-int/lit8 v1, v1, -0x1

    #@f
    const/16 v2, 0x1e

    #@11
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v0

    #@15
    goto :goto_0
.end method

.method public abstract clear()V
.end method

.method public count()J
    .locals 4

    #@0
    .prologue
    .line 108
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 109
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@6
    int-to-long v0, v0

    #@7
    .line 108
    :goto_0
    return-wide v0

    #@8
    .line 110
    :cond_0
    iget-object v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@a
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@c
    aget-wide v0, v0, v1

    #@e
    iget v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@10
    int-to-long v2, v2

    #@11
    add-long/2addr v0, v2

    #@12
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 101
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@3
    if-nez v1, :cond_0

    #@5
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.class Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;
.super Landroid/media/internal/guava_common/collect/CompactHashMap;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist accessOrder:Z

.field private transient blacklist firstEntry:I

.field private transient blacklist lastEntry:I

.field transient blacklist links:[J
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;-><init>(IZ)V

    return-void
.end method

.method constructor blacklist <init>(IZ)V
    .registers 3

    .line 108
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;-><init>(I)V

    .line 109
    iput-boolean p2, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public static blacklist createWithExpectedSize(I)Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/media/internal/guava_common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private blacklist getPredecessor(I)I
    .registers 3

    .line 146
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->link(I)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private blacklist link(I)J
    .registers 2

    .line 250
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->requireLinks()[J

    move-result-object p0

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method private blacklist requireLinks()[J
    .registers 1

    .line 246
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->links:[J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private blacklist setLink(IJ)V
    .registers 4

    .line 254
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->requireLinks()[J

    move-result-object p0

    aput-wide p2, p0, p1

    return-void
.end method

.method private blacklist setPredecessor(II)V
    .registers 7

    .line 161
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->link(I)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    int-to-long v2, p2

    const/16 p2, 0x20

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setLink(IJ)V

    return-void
.end method

.method private blacklist setSucceeds(II)V
    .registers 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 166
    iput p2, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->firstEntry:I

    goto :goto_9

    .line 168
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setSuccessor(II)V

    :goto_9
    if-ne p2, v0, :cond_e

    .line 172
    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->lastEntry:I

    return-void

    .line 174
    :cond_e
    invoke-direct {p0, p2, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setPredecessor(II)V

    return-void
.end method

.method private blacklist setSuccessor(II)V
    .registers 9

    .line 156
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->link(I)J

    move-result-wide v0

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setLink(IJ)V

    return-void
.end method


# virtual methods
.method blacklist accessEntry(I)V
    .registers 4

    .line 188
    iget-boolean v0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_1b

    .line 190
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 192
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    const/4 v0, -0x2

    .line 193
    invoke-direct {p0, p1, v0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 194
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->incrementModCount()V

    :cond_1b
    return-void
.end method

.method blacklist adjustAfterRemove(II)I
    .registers 3

    .line 224
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result p0

    if-lt p1, p0, :cond_7

    return p2

    :cond_7
    return p1
.end method

.method blacklist allocArrays()I
    .registers 3

    .line 121
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->allocArrays()I

    move-result v0

    .line 122
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->links:[J

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 6

    .line 229
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, -0x2

    .line 232
    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 233
    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 234
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->links:[J

    if-eqz v0, :cond_1a

    .line 235
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 237
    :cond_1a
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->clear()V

    return-void
.end method

.method blacklist convertToHashFloodingResistantImplementation()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 134
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->convertToHashFloodingResistantImplementation()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->links:[J

    return-object v0
.end method

.method blacklist createHashFloodingResistantDelegate(I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean p0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->accessOrder:Z

    invoke-direct {v0, p1, v1, p0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method

.method blacklist firstEntryIndex()I
    .registers 1

    .line 219
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->firstEntry:I

    return p0
.end method

.method blacklist getSuccessor(I)I
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->link(I)J

    move-result-wide p0

    long-to-int p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method blacklist init(I)V
    .registers 2

    .line 114
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->init(I)V

    const/4 p1, -0x2

    .line 115
    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 116
    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->lastEntry:I

    return-void
.end method

.method blacklist insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 181
    invoke-super/range {p0 .. p5}, Landroid/media/internal/guava_common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 182
    iget p2, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, p2, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    const/4 p2, -0x2

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    return-void
.end method

.method blacklist moveLastEntry(II)V
    .registers 5

    .line 200
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 201
    invoke-super {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactHashMap;->moveLastEntry(II)V

    .line 203
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result p2

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p2, v1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    if-ge p1, v0, :cond_24

    .line 205
    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result p2

    invoke-direct {p0, p2, p1}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 206
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    :cond_24
    const-wide/16 p1, 0x0

    .line 208
    invoke-direct {p0, v0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->setLink(IJ)V

    return-void
.end method

.method blacklist resizeEntries(I)V
    .registers 3

    .line 213
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->resizeEntries(I)V

    .line 214
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->requireLinks()[J

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->links:[J

    return-void
.end method

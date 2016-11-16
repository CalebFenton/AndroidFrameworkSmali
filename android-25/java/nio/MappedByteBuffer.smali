.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# static fields
.field private static unused:B


# instance fields
.field private final fd:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(IIII)V
    .locals 1
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    #@0
    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;-><init>(IIII)V

    #@3
    .line 94
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    #@6
    .line 92
    return-void
.end method

.method constructor <init>(IIIILjava/io/FileDescriptor;)V
    .locals 0
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;-><init>(IIII)V

    #@3
    .line 84
    iput-object p5, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    #@5
    .line 82
    return-void
.end method

.method constructor <init>(IIII[BI)V
    .locals 1
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "buf"    # [B
    .param p6, "offset"    # I

    #@0
    .prologue
    .line 88
    invoke-direct/range {p0 .. p6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    #@3
    .line 89
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    #@6
    .line 87
    return-void
.end method

.method private checkMapped()V
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 97
    :cond_0
    return-void
.end method

.method private native force0(Ljava/io/FileDescriptor;JJ)V
.end method

.method private native isLoaded0(JJI)Z
.end method

.method private native load0(JJ)V
.end method

.method private mappingAddress(J)J
    .locals 3
    .param p1, "mappingOffset"    # J

    #@0
    .prologue
    .line 112
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    #@2
    sub-long/2addr v0, p1

    #@3
    return-wide v0
.end method

.method private mappingLength(J)J
    .locals 3
    .param p1, "mappingOffset"    # J

    #@0
    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    add-long/2addr v0, p1

    #@6
    return-wide v0
.end method

.method private mappingOffset()J
    .locals 8

    #@0
    .prologue
    .line 106
    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    #@3
    move-result v2

    #@4
    .line 107
    .local v2, "ps":I
    iget-wide v4, p0, Ljava/nio/MappedByteBuffer;->address:J

    #@6
    int-to-long v6, v2

    #@7
    rem-long v0, v4, v6

    #@9
    .line 108
    .local v0, "offset":J
    const-wide/16 v4, 0x0

    #@b
    cmp-long v3, v0, v4

    #@d
    if-ltz v3, :cond_0

    #@f
    .end local v0    # "offset":J
    :goto_0
    return-wide v0

    #@10
    .restart local v0    # "offset":J
    :cond_0
    int-to-long v4, v2

    #@11
    add-long/2addr v0, v4

    #@12
    goto :goto_0
.end method


# virtual methods
.method public final force()Ljava/nio/MappedByteBuffer;
    .locals 8

    #@0
    .prologue
    .line 204
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    #@3
    .line 205
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 206
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    #@14
    move-result-wide v6

    #@15
    .line 207
    .local v6, "offset":J
    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    #@17
    invoke-direct {p0, v6, v7}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    #@1a
    move-result-wide v2

    #@1b
    invoke-direct {p0, v6, v7}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    #@1e
    move-result-wide v4

    #@1f
    move-object v0, p0

    #@20
    invoke-direct/range {v0 .. v5}, Ljava/nio/MappedByteBuffer;->force0(Ljava/io/FileDescriptor;JJ)V

    #@23
    .line 209
    .end local v6    # "offset":J
    :cond_0
    return-object p0
.end method

.method public final isLoaded()Z
    .locals 10

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    #@3
    .line 139
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 140
    :cond_0
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 141
    :cond_1
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    #@16
    move-result-wide v8

    #@17
    .line 142
    .local v8, "offset":J
    invoke-direct {p0, v8, v9}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    #@1a
    move-result-wide v4

    #@1b
    .line 143
    .local v4, "length":J
    invoke-direct {p0, v8, v9}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    #@1e
    move-result-wide v2

    #@1f
    invoke-static {v4, v5}, Ljava/nio/Bits;->pageCount(J)I

    #@22
    move-result v6

    #@23
    move-object v1, p0

    #@24
    invoke-direct/range {v1 .. v6}, Ljava/nio/MappedByteBuffer;->isLoaded0(JJI)Z

    #@27
    move-result v0

    #@28
    return v0
.end method

.method public final load()Ljava/nio/MappedByteBuffer;
    .locals 18

    #@0
    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    #@3
    .line 161
    move-object/from16 v0, p0

    #@5
    iget-wide v14, v0, Ljava/nio/MappedByteBuffer;->address:J

    #@7
    const-wide/16 v16, 0x0

    #@9
    cmp-long v13, v14, v16

    #@b
    if-eqz v13, :cond_0

    #@d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    #@10
    move-result v13

    #@11
    if-nez v13, :cond_1

    #@13
    .line 162
    :cond_0
    return-object p0

    #@14
    .line 163
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    #@17
    move-result-wide v8

    #@18
    .line 164
    .local v8, "offset":J
    move-object/from16 v0, p0

    #@1a
    invoke-direct {v0, v8, v9}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    #@1d
    move-result-wide v6

    #@1e
    .line 165
    .local v6, "length":J
    move-object/from16 v0, p0

    #@20
    invoke-direct {v0, v8, v9}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    #@23
    move-result-wide v14

    #@24
    move-object/from16 v0, p0

    #@26
    invoke-direct {v0, v14, v15, v6, v7}, Ljava/nio/MappedByteBuffer;->load0(JJ)V

    #@29
    .line 170
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@2c
    move-result-object v11

    #@2d
    .line 171
    .local v11, "unsafe":Lsun/misc/Unsafe;
    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    #@30
    move-result v10

    #@31
    .line 172
    .local v10, "ps":I
    invoke-static {v6, v7}, Ljava/nio/Bits;->pageCount(J)I

    #@34
    move-result v4

    #@35
    .line 173
    .local v4, "count":I
    move-object/from16 v0, p0

    #@37
    invoke-direct {v0, v8, v9}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    #@3a
    move-result-wide v2

    #@3b
    .line 174
    .local v2, "a":J
    const/4 v12, 0x0

    #@3c
    .line 175
    .local v12, "x":B
    const/4 v5, 0x0

    #@3d
    .end local v12    # "x":B
    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    #@3f
    .line 176
    invoke-virtual {v11, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    #@42
    move-result v13

    #@43
    xor-int/2addr v13, v12

    #@44
    int-to-byte v12, v13

    #@45
    .line 177
    .local v12, "x":B
    int-to-long v14, v10

    #@46
    add-long/2addr v2, v14

    #@47
    .line 175
    add-int/lit8 v5, v5, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 179
    .end local v12    # "x":B
    :cond_2
    sget-byte v13, Ljava/nio/MappedByteBuffer;->unused:B

    #@4c
    if-eqz v13, :cond_3

    #@4e
    .line 180
    sput-byte v12, Ljava/nio/MappedByteBuffer;->unused:B

    #@50
    .line 182
    :cond_3
    return-object p0
.end method

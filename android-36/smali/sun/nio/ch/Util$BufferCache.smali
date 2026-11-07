.class Lsun/nio/ch/Util$BufferCache;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferCache"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist buffers:[Ljava/nio/ByteBuffer;

.field private blacklist count:I

.field private blacklist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    const-class v0, Lsun/nio/ch/Util;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {}, Lsun/nio/ch/Util;->-$$Nest$sfgetTEMP_BUF_POOL_SIZE()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    .line 123
    return-void
.end method

.method private blacklist next(I)I
    .registers 4
    .param p1, "i"    # I

    .line 118
    add-int/lit8 v0, p1, 0x1

    invoke-static {}, Lsun/nio/ch/Util;->-$$Nest$sfgetTEMP_BUF_POOL_SIZE()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method blacklist get(I)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "size"    # I

    .line 131
    nop

    .line 133
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 134
    return-object v1

    .line 136
    :cond_7
    iget-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    .line 139
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v2, v0, v2

    .line 140
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, p1, :cond_36

    .line 141
    const/4 v2, 0x0

    .line 142
    iget v3, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 143
    .local v3, "i":I
    :goto_16
    invoke-direct {p0, v3}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v4

    move v3, v4

    iget v5, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    if-eq v4, v5, :cond_2d

    .line 144
    aget-object v4, v0, v3

    .line 145
    .local v4, "bb":Ljava/nio/ByteBuffer;
    if-nez v4, :cond_24

    .line 146
    goto :goto_2d

    .line 147
    :cond_24
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-lt v5, p1, :cond_2c

    .line 148
    move-object v2, v4

    .line 149
    goto :goto_2d

    .line 151
    .end local v4    # "bb":Ljava/nio/ByteBuffer;
    :cond_2c
    goto :goto_16

    .line 152
    :cond_2d
    :goto_2d
    if-nez v2, :cond_30

    .line 153
    return-object v1

    .line 155
    :cond_30
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v4, v0, v4

    aput-object v4, v0, v3

    .line 159
    .end local v3    # "i":I
    :cond_36
    iget v3, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aput-object v1, v0, v3

    .line 160
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-direct {p0, v1}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 161
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 164
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 165
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    return-object v2
.end method

.method blacklist isEmpty()Z
    .registers 2

    .line 198
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist offerFirst(Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 171
    nop

    .line 173
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    invoke-static {}, Lsun/nio/ch/Util;->-$$Nest$sfgetTEMP_BUF_POOL_SIZE()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 174
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_b
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-static {}, Lsun/nio/ch/Util;->-$$Nest$sfgetTEMP_BUF_POOL_SIZE()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {}, Lsun/nio/ch/Util;->-$$Nest$sfgetTEMP_BUF_POOL_SIZE()I

    move-result v2

    rem-int/2addr v0, v2

    iput v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 177
    iget-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aput-object p1, v0, v2

    .line 178
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 179
    return v1
.end method

.method blacklist offerLast(Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 185
    nop

    .line 187
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    invoke-static {}, Lsun/nio/ch/Util;->-$$Nest$sfgetTEMP_BUF_POOL_SIZE()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 188
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_b
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/2addr v0, v1

    invoke-static {}, Lsun/nio/ch/Util;->-$$Nest$sfgetTEMP_BUF_POOL_SIZE()I

    move-result v1

    rem-int/2addr v0, v1

    .line 191
    .local v0, "next":I
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    aput-object p1, v1, v0

    .line 192
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 193
    return v2
.end method

.method blacklist removeFirst()Ljava/nio/ByteBuffer;
    .registers 5

    .line 202
    nop

    .line 203
    iget-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v0, v0, v1

    .line 204
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 205
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-direct {p0, v1}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 206
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 207
    return-object v0
.end method

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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private buffers:[Ljava/nio/ByteBuffer;

.field private count:I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/Util$BufferCache;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/nio/ch/Util$BufferCache;->-assertionsDisabled:Z

    #@b
    .line 64
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    #@6
    move-result v0

    #@7
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    #@9
    iput-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    #@b
    .line 78
    return-void
.end method

.method private next(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 75
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    #@5
    move-result v1

    #@6
    rem-int/2addr v0, v1

    #@7
    return v0
.end method


# virtual methods
.method get(I)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 87
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@3
    if-nez v4, :cond_0

    #@5
    .line 88
    return-object v5

    #@6
    .line 90
    :cond_0
    iget-object v2, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    #@8
    .line 93
    .local v2, "buffers":[Ljava/nio/ByteBuffer;
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@a
    aget-object v1, v2, v4

    #@c
    .line 94
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    #@f
    move-result v4

    #@10
    if-ge v4, p1, :cond_5

    #@12
    .line 95
    const/4 v1, 0x0

    #@13
    .line 96
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget v3, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@15
    .line 97
    .local v3, "i":I
    :cond_1
    invoke-direct {p0, v3}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    #@18
    move-result v3

    #@19
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@1b
    if-eq v3, v4, :cond_2

    #@1d
    .line 98
    aget-object v0, v2, v3

    #@1f
    .line 99
    .local v0, "bb":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_3

    #@21
    .line 106
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    if-nez v1, :cond_4

    #@23
    .line 107
    return-object v5

    #@24
    .line 101
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@27
    move-result v4

    #@28
    if-lt v4, p1, :cond_1

    #@2a
    .line 102
    move-object v1, v0

    #@2b
    .line 103
    .local v1, "buf":Ljava/nio/ByteBuffer;
    goto :goto_0

    #@2c
    .line 109
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_4
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@2e
    aget-object v4, v2, v4

    #@30
    aput-object v4, v2, v3

    #@32
    .line 113
    .end local v3    # "i":I
    :cond_5
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@34
    aput-object v5, v2, v4

    #@36
    .line 114
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@38
    invoke-direct {p0, v4}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    #@3b
    move-result v4

    #@3c
    iput v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@3e
    .line 115
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@40
    add-int/lit8 v4, v4, -0x1

    #@42
    iput v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@44
    .line 118
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@47
    .line 119
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@4a
    .line 120
    return-object v1
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 146
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method offerFirst(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 124
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@2
    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    #@5
    move-result v1

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 125
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 127
    :cond_0
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@c
    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    #@f
    move-result v1

    #@10
    add-int/2addr v0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    #@16
    move-result v1

    #@17
    rem-int/2addr v0, v1

    #@18
    iput v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@1a
    .line 128
    iget-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    #@1c
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@1e
    aput-object p1, v0, v1

    #@20
    .line 129
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    iput v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@26
    .line 130
    const/4 v0, 0x1

    #@27
    return v0
.end method

.method offerLast(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 135
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@2
    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    #@5
    move-result v2

    #@6
    if-lt v1, v2, :cond_0

    #@8
    .line 136
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 138
    :cond_0
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@c
    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@e
    add-int/2addr v1, v2

    #@f
    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    #@12
    move-result v2

    #@13
    rem-int v0, v1, v2

    #@15
    .line 139
    .local v0, "next":I
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    #@17
    aput-object p1, v1, v0

    #@19
    .line 140
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@1f
    .line 141
    const/4 v1, 0x1

    #@20
    return v1
.end method

.method removeFirst()Ljava/nio/ByteBuffer;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 150
    sget-boolean v2, Lsun/nio/ch/Util$BufferCache;->-assertionsDisabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@7
    if-lez v2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :cond_0
    if-nez v1, :cond_1

    #@c
    new-instance v1, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v1

    #@12
    .line 151
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    #@14
    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@16
    aget-object v0, v1, v2

    #@18
    .line 152
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    #@1a
    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@1c
    const/4 v3, 0x0

    #@1d
    aput-object v3, v1, v2

    #@1f
    .line 153
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@21
    invoke-direct {p0, v1}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    #@24
    move-result v1

    #@25
    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    #@27
    .line 154
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@29
    add-int/lit8 v1, v1, -0x1

    #@2b
    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    #@2d
    .line 155
    return-object v0
.end method

.class Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;
.super Ljava/io/InputStream;
.source "SerializedFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/SerializedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectByteInputStream"
.end annotation


# instance fields
.field private greylist-max-o mBuffer:[B

.field private greylist-max-o mPos:I

.field private greylist-max-o mSize:I


# direct methods
.method public constructor blacklist <init>(Landroid/filterfw/core/SerializedFrame;[BI)V
    .registers 4
    .param p2, "buffer"    # [B
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 121
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    .line 125
    iput-object p2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    .line 126
    iput p3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    .line 127
    return-void
.end method


# virtual methods
.method public final whitelist test-api available()I
    .registers 3

    .line 131
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist test-api read()I
    .registers 4

    .line 136
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_14

    :cond_13
    const/4 v0, -0x1

    :goto_14
    return v0
.end method

.method public final whitelist test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 141
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-lt v0, v1, :cond_8

    .line 142
    const/4 v0, -0x1

    return v0

    .line 144
    :cond_8
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/2addr v0, p3

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-le v0, v1, :cond_15

    .line 145
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int p3, v0, v1

    .line 147
    :cond_15
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    .line 149
    return p3
.end method

.method public final whitelist test-api skip(J)J
    .registers 7
    .param p1, "n"    # J

    .line 154
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 155
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 157
    :cond_11
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_18

    .line 158
    return-wide v0

    .line 160
    :cond_18
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    .line 161
    return-wide p1
.end method

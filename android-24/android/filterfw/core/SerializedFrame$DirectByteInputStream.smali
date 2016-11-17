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
.field private mBuffer:[B

.field private mPos:I

.field private mSize:I

.field final synthetic this$0:Landroid/filterfw/core/SerializedFrame;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/SerializedFrame;[BI)V
    .locals 1
    .param p1, "this$0"    # Landroid/filterfw/core/SerializedFrame;
    .param p2, "buffer"    # [B
    .param p3, "size"    # I

    #@0
    .prologue
    .line 124
    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    #@2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@5
    .line 121
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@8
    .line 125
    iput-object p2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    #@a
    .line 126
    iput p3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    #@c
    .line 124
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    #@0
    .prologue
    .line 131
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    #@2
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public final read()I
    .locals 3

    #@0
    .prologue
    .line 136
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@2
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    #@8
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@a
    add-int/lit8 v2, v1, 0x1

    #@c
    iput v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@e
    aget-byte v0, v0, v1

    #@10
    and-int/lit16 v0, v0, 0xff

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, -0x1

    #@14
    goto :goto_0
.end method

.method public final read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 141
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@2
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 142
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 144
    :cond_0
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@a
    add-int/2addr v0, p3

    #@b
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    #@d
    if-le v0, v1, :cond_1

    #@f
    .line 145
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    #@11
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@13
    sub-int p3, v0, v1

    #@15
    .line 147
    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    #@17
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@19
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 148
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@1e
    add-int/2addr v0, p3

    #@1f
    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@21
    .line 149
    return p3
.end method

.method public final skip(J)J
    .locals 7
    .param p1, "n"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 154
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@4
    int-to-long v0, v0

    #@5
    add-long/2addr v0, p1

    #@6
    iget v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    #@8
    int-to-long v2, v2

    #@9
    cmp-long v0, v0, v2

    #@b
    if-lez v0, :cond_0

    #@d
    .line 155
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    #@f
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@11
    sub-int/2addr v0, v1

    #@12
    int-to-long p1, v0

    #@13
    .line 157
    :cond_0
    cmp-long v0, p1, v4

    #@15
    if-gez v0, :cond_1

    #@17
    .line 158
    return-wide v4

    #@18
    .line 160
    :cond_1
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@1a
    int-to-long v0, v0

    #@1b
    add-long/2addr v0, p1

    #@1c
    long-to-int v0, v0

    #@1d
    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    #@1f
    .line 161
    return-wide p1
.end method

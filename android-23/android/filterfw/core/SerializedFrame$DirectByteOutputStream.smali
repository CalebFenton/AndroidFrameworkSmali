.class Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;
.super Ljava/io/OutputStream;
.source "SerializedFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/SerializedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectByteOutputStream"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mDataOffset:I

.field private mOffset:I

.field final synthetic this$0:Landroid/filterfw/core/SerializedFrame;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/SerializedFrame;I)V
    .locals 2
    .param p1, "this$0"    # Landroid/filterfw/core/SerializedFrame;
    .param p2, "size"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    #@3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@6
    .line 58
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@9
    .line 59
    iput v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@b
    .line 60
    iput v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mDataOffset:I

    #@d
    .line 63
    new-array v0, p2, [B

    #@f
    iput-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@11
    .line 62
    return-void
.end method

.method private final ensureFit(I)V
    .locals 4
    .param p1, "bytesToWrite"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 67
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@3
    add-int/2addr v1, p1

    #@4
    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@6
    array-length v2, v2

    #@7
    if-le v1, v2, :cond_0

    #@9
    .line 68
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@b
    .line 69
    .local v0, "oldBuffer":[B
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@d
    add-int/2addr v1, p1

    #@e
    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@10
    array-length v2, v2

    #@11
    mul-int/lit8 v2, v2, 0x2

    #@13
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v1

    #@17
    new-array v1, v1, [B

    #@19
    iput-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@1b
    .line 70
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@1d
    iget v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@1f
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@22
    .line 71
    const/4 v0, 0x0

    #@23
    .line 66
    .end local v0    # "oldBuffer":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@2
    return-object v0
.end method

.method public final getInputStream()Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;
    .locals 4

    #@0
    .prologue
    .line 110
    new-instance v0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;

    #@2
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    #@4
    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@6
    iget v3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@8
    invoke-direct {v0, v1, v2, v3}, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;-><init>(Landroid/filterfw/core/SerializedFrame;[BI)V

    #@b
    return-object v0
.end method

.method public final getSize()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@2
    return v0
.end method

.method public final markHeaderEnd()V
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@2
    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mDataOffset:I

    #@4
    .line 75
    return-void
.end method

.method public final reset()V
    .locals 1

    #@0
    .prologue
    .line 106
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mDataOffset:I

    #@2
    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@4
    .line 105
    return-void
.end method

.method public final write(I)V
    .locals 3
    .param p1, "b"    # I

    #@0
    .prologue
    .line 101
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->ensureFit(I)V

    #@4
    .line 102
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@6
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@8
    add-int/lit8 v2, v1, 0x1

    #@a
    iput v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@c
    int-to-byte v2, p1

    #@d
    aput-byte v2, v0, v1

    #@f
    .line 100
    return-void
.end method

.method public final write([B)V
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    .line 89
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->write([BII)V

    #@5
    .line 88
    return-void
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 94
    invoke-direct {p0, p3}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->ensureFit(I)V

    #@3
    .line 95
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    #@5
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@7
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@a
    .line 96
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@c
    add-int/2addr v0, p3

    #@d
    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    #@f
    .line 93
    return-void
.end method

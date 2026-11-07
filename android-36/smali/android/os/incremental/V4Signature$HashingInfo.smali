.class public Landroid/os/incremental/V4Signature$HashingInfo;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashingInfo"
.end annotation


# instance fields
.field public final blacklist hashAlgorithm:I

.field public final blacklist log2BlockSize:B

.field public final blacklist rawRootHash:[B

.field public final blacklist salt:[B


# direct methods
.method constructor blacklist <init>(IB[B[B)V
    .registers 5
    .param p1, "hashAlgorithm"    # I
    .param p2, "log2BlockSize"    # B
    .param p3, "salt"    # [B
    .param p4, "rawRootHash"    # [B

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    .line 58
    iput-byte p2, p0, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    .line 59
    iput-object p3, p0, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    .line 60
    iput-object p4, p0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    .line 61
    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;
    .registers 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 70
    .local v1, "hashAlgorithm":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 71
    .local v2, "log2BlockSize":B
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 72
    .local v3, "salt":[B
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 73
    .local v4, "rawRootHash":[B
    new-instance v5, Landroid/os/incremental/V4Signature$HashingInfo;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/os/incremental/V4Signature$HashingInfo;-><init>(IB[B[B)V

    return-object v5
.end method

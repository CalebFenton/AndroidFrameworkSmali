.class public Landroid/os/incremental/V4Signature$SigningInfo;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningInfo"
.end annotation


# instance fields
.field public final blacklist additionalData:[B

.field public final blacklist apkDigest:[B

.field public final blacklist certificate:[B

.field public final blacklist publicKey:[B

.field public final blacklist signature:[B

.field public final blacklist signatureAlgorithmId:I


# direct methods
.method constructor blacklist <init>([B[B[B[BI[B)V
    .registers 7
    .param p1, "apkDigest"    # [B
    .param p2, "certificate"    # [B
    .param p3, "additionalData"    # [B
    .param p4, "publicKey"    # [B
    .param p5, "signatureAlgorithmId"    # I
    .param p6, "signature"    # [B

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    .line 91
    iput-object p2, p0, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    .line 92
    iput-object p3, p0, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    .line 93
    iput-object p4, p0, Landroid/os/incremental/V4Signature$SigningInfo;->publicKey:[B

    .line 94
    iput p5, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signatureAlgorithmId:I

    .line 95
    iput-object p6, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signature:[B

    .line 96
    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfo;
    .registers 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/V4Signature$SigningInfo;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/os/incremental/V4Signature$SigningInfo;
    .registers 8
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 110
    .local v1, "apkDigest":[B
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 111
    .local v2, "certificate":[B
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 112
    .local v3, "additionalData":[B
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 113
    .local v4, "publicKey":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 114
    .local v5, "signatureAlgorithmId":I
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    .line 115
    .local v6, "signature":[B
    new-instance v0, Landroid/os/incremental/V4Signature$SigningInfo;

    invoke-direct/range {v0 .. v6}, Landroid/os/incremental/V4Signature$SigningInfo;-><init>([B[B[B[BI[B)V

    return-object v0
.end method

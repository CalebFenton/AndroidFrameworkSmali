.class public Landroid/os/incremental/V4Signature$SigningInfoBlock;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningInfoBlock"
.end annotation


# instance fields
.field public final blacklist blockId:I

.field public final blacklist signingInfo:[B


# direct methods
.method public constructor blacklist <init>(I[B)V
    .registers 3
    .param p1, "blockId"    # I
    .param p2, "signingInfo"    # [B

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Landroid/os/incremental/V4Signature$SigningInfoBlock;->blockId:I

    .line 129
    iput-object p2, p0, Landroid/os/incremental/V4Signature$SigningInfoBlock;->signingInfo:[B

    .line 130
    return-void
.end method

.method static blacklist fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/os/incremental/V4Signature$SigningInfoBlock;
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 134
    .local v0, "blockId":I
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 135
    .local v1, "signingInfo":[B
    new-instance v2, Landroid/os/incremental/V4Signature$SigningInfoBlock;

    invoke-direct {v2, v0, v1}, Landroid/os/incremental/V4Signature$SigningInfoBlock;-><init>(I[B)V

    return-object v2
.end method

.class public final Landroid/media/MediaCodec$CryptoInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CryptoInfo$Pattern;
    }
.end annotation


# instance fields
.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field private pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public set(I[I[I[B[BI)V
    .locals 2
    .param p1, "newNumSubSamples"    # I
    .param p2, "newNumBytesOfClearData"    # [I
    .param p3, "newNumBytesOfEncryptedData"    # [I
    .param p4, "newKey"    # [B
    .param p5, "newIV"    # [B
    .param p6, "newMode"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2407
    iput p1, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    #@3
    .line 2408
    iput-object p2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    #@5
    .line 2409
    iput-object p3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    #@7
    .line 2410
    iput-object p4, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    #@9
    .line 2411
    iput-object p5, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    #@b
    .line 2412
    iput p6, p0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    #@d
    .line 2413
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    #@f
    invoke-direct {v0, v1, v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    #@12
    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    #@14
    .line 2406
    return-void
.end method

.method public setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V
    .locals 0
    .param p1, "newPattern"    # Landroid/media/MediaCodec$CryptoInfo$Pattern;

    #@0
    .prologue
    .line 2421
    iput-object p1, p0, Landroid/media/MediaCodec$CryptoInfo;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    #@2
    .line 2420
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 2426
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2427
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    #@7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a
    move-result-object v3

    #@b
    const-string/jumbo v4, " subsamples, key ["

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 2428
    const-string/jumbo v1, "0123456789abcdef"

    #@14
    .line 2429
    .local v1, "hexdigits":Ljava/lang/String;
    const/4 v2, 0x0

    #@15
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    #@17
    array-length v3, v3

    #@18
    if-ge v2, v3, :cond_0

    #@1a
    .line 2430
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    #@1c
    aget-byte v3, v3, v2

    #@1e
    and-int/lit16 v3, v3, 0xf0

    #@20
    shr-int/lit8 v3, v3, 0x4

    #@22
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v3

    #@26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 2431
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    #@2b
    aget-byte v3, v3, v2

    #@2d
    and-int/lit8 v3, v3, 0xf

    #@2f
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v3

    #@33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    .line 2429
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 2433
    :cond_0
    const-string/jumbo v3, "], iv ["

    #@3c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 2434
    const/4 v2, 0x0

    #@40
    :goto_1
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    #@42
    array-length v3, v3

    #@43
    if-ge v2, v3, :cond_1

    #@45
    .line 2435
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    #@47
    aget-byte v3, v3, v2

    #@49
    and-int/lit16 v3, v3, 0xf0

    #@4b
    shr-int/lit8 v3, v3, 0x4

    #@4d
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v3

    #@51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    .line 2436
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    #@56
    aget-byte v3, v3, v2

    #@58
    and-int/lit8 v3, v3, 0xf

    #@5a
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@5d
    move-result v3

    #@5e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@61
    .line 2434
    add-int/lit8 v2, v2, 0x1

    #@63
    goto :goto_1

    #@64
    .line 2438
    :cond_1
    const-string/jumbo v3, "], clear "

    #@67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 2439
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    #@6c
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 2440
    const-string/jumbo v3, ", encrypted "

    #@76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 2441
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    #@7b
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    .line 2442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    return-object v3
.end method

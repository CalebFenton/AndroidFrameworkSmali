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


# static fields
.field private static final blacklist ZERO_PATTERN:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# instance fields
.field public whitelist iv:[B

.field public whitelist key:[B

.field private blacklist mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

.field public whitelist mode:I

.field public whitelist numBytesOfClearData:[I

.field public whitelist numBytesOfEncryptedData:[I

.field public whitelist numSubSamples:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 3391
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    sput-object v0, Landroid/media/MediaCodec$CryptoInfo;->ZERO_PATTERN:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 3311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3396
    sget-object v0, Landroid/media/MediaCodec$CryptoInfo;->ZERO_PATTERN:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method private greylist-max-o setPattern(II)V
    .registers 4
    .param p1, "blocksToEncrypt"    # I
    .param p2, "blocksToSkip"    # I

    .line 3438
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 3439
    return-void
.end method


# virtual methods
.method public whitelist getPattern()Landroid/media/MediaCodec$CryptoInfo$Pattern;
    .registers 4

    .line 3422
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget-object v1, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->getEncryptBlocks()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->getSkipBlocks()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    return-object v0
.end method

.method public whitelist set(I[I[I[B[BI)V
    .registers 8
    .param p1, "newNumSubSamples"    # I
    .param p2, "newNumBytesOfClearData"    # [I
    .param p3, "newNumBytesOfEncryptedData"    # [I
    .param p4, "newKey"    # [B
    .param p5, "newIV"    # [B
    .param p6, "newMode"    # I

    .line 3409
    iput p1, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 3410
    iput-object p2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 3411
    iput-object p3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 3412
    iput-object p4, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 3413
    iput-object p5, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 3414
    iput p6, p0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 3415
    sget-object v0, Landroid/media/MediaCodec$CryptoInfo;->ZERO_PATTERN:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 3416
    return-void
.end method

.method public whitelist setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V
    .registers 4
    .param p1, "newPattern"    # Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 3430
    if-nez p1, :cond_4

    .line 3431
    sget-object p1, Landroid/media/MediaCodec$CryptoInfo;->ZERO_PATTERN:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 3433
    :cond_4
    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->getEncryptBlocks()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->getSkipBlocks()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(II)V

    .line 3434
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 3443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3444
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subsamples, key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3445
    const-string v1, "0123456789abcdef"

    .line 3446
    .local v1, "hexdigits":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    array-length v3, v3

    if-ge v2, v3, :cond_44

    .line 3447
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3448
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3446
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 3450
    .end local v2    # "i":I
    :cond_44
    const-string v2, "], iv ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3451
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4a
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    array-length v3, v3

    if-ge v2, v3, :cond_6e

    .line 3452
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3453
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3451
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 3455
    .end local v2    # "i":I
    :cond_6e
    const-string v2, "], clear "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3456
    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3457
    const-string v2, ", encrypted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3458
    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3459
    const-string v2, ", pattern (encrypt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3460
    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-static {v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->-$$Nest$fgetmEncryptBlocks(Landroid/media/MediaCodec$CryptoInfo$Pattern;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3461
    const-string v2, ", skip: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3462
    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-static {v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->-$$Nest$fgetmSkipBlocks(Landroid/media/MediaCodec$CryptoInfo$Pattern;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3463
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

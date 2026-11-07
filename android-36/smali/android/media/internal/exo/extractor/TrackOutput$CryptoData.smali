.class public final Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/TrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoData"
.end annotation


# instance fields
.field public final blacklist clearBlocks:I

.field public final blacklist cryptoMode:I

.field public final blacklist encryptedBlocks:I

.field public final blacklist encryptionKey:[B


# direct methods
.method public constructor blacklist <init>(I[BII)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->cryptoMode:I

    .line 63
    iput-object p2, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 64
    iput p3, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    .line 65
    iput p4, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->clearBlocks:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    if-eq v3, v2, :cond_10

    goto :goto_2f

    .line 76
    :cond_10
    check-cast p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    .line 77
    iget v2, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v3, p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->cryptoMode:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v3, p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->clearBlocks:I

    iget v3, p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->clearBlocks:I

    if-ne v2, v3, :cond_2f

    iget-object p0, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object p1, p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 80
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2f

    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 85
    iget v0, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->cryptoMode:I

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v1, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget v1, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget p0, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->clearBlocks:I

    add-int/2addr v0, p0

    return v0
.end method

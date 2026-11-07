.class public final Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;
.super Ljava/lang/Object;
.source "TrackEncryptionBox.java"


# instance fields
.field public final blacklist cryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

.field public final blacklist defaultInitializationVector:[B

.field public final blacklist isEncrypted:Z

.field public final blacklist perSampleIvSize:I

.field public final blacklist schemeType:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ZLjava/lang/String;I[BII[B)V
    .registers 11

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    :goto_a
    if-nez p7, :cond_d

    move v0, v1

    :cond_d
    xor-int/2addr v0, v2

    .line 70
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    .line 71
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    .line 72
    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 73
    iput p3, p0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    .line 74
    iput-object p7, p0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    .line 75
    new-instance p1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    .line 77
    invoke-static {p2}, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->schemeToCryptoMode(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2, p4, p5, p6}, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->cryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    return-void
.end method

.method private static blacklist schemeToCryptoMode(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 v2, -0x1

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5a

    goto :goto_39

    :sswitch_e
    const-string v3, "cens"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_39

    :cond_17
    const/4 v2, 0x3

    goto :goto_39

    :sswitch_19
    const-string v3, "cenc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_39

    :cond_22
    move v2, v0

    goto :goto_39

    :sswitch_24
    const-string v3, "cbcs"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_39

    :cond_2d
    move v2, v1

    goto :goto_39

    :sswitch_2f
    const-string v3, "cbc1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    packed-switch v2, :pswitch_data_6c

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported protection scheme type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. Assuming AES-CTR crypto mode."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TrackEncryptionBox"

    invoke-static {v0, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_57
    return v1

    :pswitch_58
    return v0

    nop

    :sswitch_data_5a
    .sparse-switch
        0x2e7ccd -> :sswitch_2f
        0x2e7d0f -> :sswitch_24
        0x2e8997 -> :sswitch_19
        0x2e89a7 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_58
        :pswitch_58
        :pswitch_57
        :pswitch_57
    .end packed-switch
.end method

.class final Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# instance fields
.field public blacklist currentSampleInTrackRun:I

.field public blacklist currentSampleIndex:I

.field public blacklist currentTrackRunIndex:I

.field private blacklist currentlyInFragment:Z

.field private final blacklist defaultInitializationVector:Landroid/media/internal/exo/util/ParsableByteArray;

.field public blacklist defaultSampleValues:Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

.field private final blacklist encryptionSignalByte:Landroid/media/internal/exo/util/ParsableByteArray;

.field public blacklist firstSampleToOutputIndex:I

.field public final blacklist fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

.field public blacklist moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

.field public final blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field public final blacklist scratch:Landroid/media/internal/exo/util/ParsableByteArray;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;)V
    .registers 5

    .line 1608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1609
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 1610
    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    .line 1611
    iput-object p3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    .line 1612
    new-instance p1, Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    .line 1613
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1614
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1615
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1616
    invoke-virtual {p0, p2, p3}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;)V

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z
    .registers 1

    .line 1585
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p0
.end method

.method static synthetic blacklist access$002(Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z
    .registers 2

    .line 1585
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p1
.end method


# virtual methods
.method public blacklist getCurrentSampleFlags()I
    .registers 3

    .line 1690
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1691
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->flags:[I

    iget v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_1a

    .line 1692
    :cond_d
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1693
    :goto_1a
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_24

    const/high16 p0, 0x40000000    # 2.0f

    or-int/2addr p0, v0

    return p0

    :cond_24
    return v0
.end method

.method public blacklist getCurrentSampleOffset()J
    .registers 3

    .line 1674
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1675
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->offsets:[J

    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v0, v0, p0

    return-wide v0

    .line 1676
    :cond_d
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v0, v0, p0

    return-wide v0
.end method

.method public blacklist getCurrentSamplePresentationTimeUs()J
    .registers 3

    .line 1667
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1668
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v0, v0, p0

    return-wide v0

    .line 1669
    :cond_d
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v0, p0}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCurrentSampleSize()I
    .registers 2

    .line 1681
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1682
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->sizes:[I

    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget p0, v0, p0

    return p0

    .line 1683
    :cond_d
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget p0, v0, p0

    return p0
.end method

.method public blacklist getEncryptionBoxIfEncrypted()Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;
    .registers 4

    .line 1843
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1847
    :cond_6
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->header:Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1850
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    if-eqz v2, :cond_19

    goto :goto_21

    .line 1852
    :cond_19
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    move-result-object v2

    :goto_21
    if-eqz v2, :cond_28

    .line 1853
    iget-boolean p0, v2, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    if-eqz p0, :cond_28

    return-object v2

    :cond_28
    return-object v1
.end method

.method public blacklist next()Z
    .registers 6

    .line 1713
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1714
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    .line 1717
    :cond_c
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1718
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object v3, v3, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->trunLength:[I

    iget v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_21

    add-int/2addr v4, v1

    .line 1719
    iput v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1720
    iput v2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    return v2

    :cond_21
    return v1
.end method

.method public blacklist outputSampleEncryptionData(II)I
    .registers 13

    .line 1738
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1745
    :cond_8
    iget v2, v0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_11

    .line 1746
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    goto :goto_25

    .line 1750
    :cond_11
    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1751
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroid/media/internal/exo/util/ParsableByteArray;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    .line 1752
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1753
    array-length v0, v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 1756
    :goto_25
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget v4, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1757
    invoke-virtual {v3, v4}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_35

    if-eqz p2, :cond_33

    goto :goto_35

    :cond_33
    move v5, v1

    goto :goto_36

    :cond_35
    :goto_35
    move v5, v4

    .line 1761
    :goto_36
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v6

    if-eqz v5, :cond_41

    const/16 v7, 0x80

    goto :goto_42

    :cond_41
    move v7, v1

    :goto_42
    or-int/2addr v7, v2

    int-to-byte v7, v7

    .line 1762
    aput-byte v7, v6, v1

    .line 1763
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1764
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v7, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v6, v7, v4, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V

    .line 1766
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v6, v0, v2, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V

    if-nez v5, :cond_5b

    add-int/2addr v2, v4

    return v2

    :cond_5b
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_a4

    .line 1777
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 1779
    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 1780
    aput-byte v1, v3, v1

    .line 1781
    aput-byte v4, v3, v4

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1783
    aput-byte v1, v3, v6

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1784
    aput-byte p2, v3, v5

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x4

    .line 1786
    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x5

    .line 1787
    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1788
    aput-byte p2, v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    .line 1789
    aput-byte p1, v3, p2

    .line 1790
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {p1, p0, v7, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V

    add-int/lit8 v2, v2, 0x9

    return v2

    .line 1797
    :cond_a4
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1798
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    const/4 v8, -0x2

    .line 1799
    invoke-virtual {p1, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    mul-int/2addr v3, v0

    add-int/2addr v3, v6

    if-eqz p2, :cond_db

    .line 1805
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 1806
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 1807
    invoke-virtual {p1, v0, v1, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 1809
    aget-byte p1, v0, v6

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1811
    aput-byte p2, v0, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1812
    aput-byte p1, v0, v5

    .line 1813
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1816
    :cond_db
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {p0, p1, v3, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    return v2
.end method

.method public blacklist reset(Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;)V
    .registers 3

    .line 1620
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    .line 1621
    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    .line 1622
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    iget-object p1, p1, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    invoke-interface {p2, p1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 1623
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    return-void
.end method

.method public blacklist resetFragmentInfo()V
    .registers 2

    .line 1640
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->reset()V

    const/4 v0, 0x0

    .line 1641
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1642
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1643
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1644
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    .line 1645
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return-void
.end method

.method public blacklist seek(J)V
    .registers 6

    .line 1655
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1656
    :goto_2
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget v2, v1, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v0, v2, :cond_1d

    .line 1657
    invoke-virtual {v1, v0}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1d

    .line 1658
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1a

    .line 1659
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1d
    return-void
.end method

.method public blacklist skipSampleEncryptionData()V
    .registers 3

    .line 1827
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_25

    .line 1832
    :cond_7
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1833
    iget v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v0, :cond_12

    .line 1834
    invoke-virtual {v1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1836
    :cond_12
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v0, p0}, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 1837
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    mul-int/lit8 p0, p0, 0x6

    invoke-virtual {v1, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public blacklist updateDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)V
    .registers 4

    .line 1628
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroid/media/internal/exo/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroid/media/internal/exo/extractor/mp4/TrackFragment;->header:Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    .line 1630
    invoke-static {v1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;

    iget v1, v1, Landroid/media/internal/exo/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1629
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1631
    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1632
    :goto_1a
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroid/media/internal/exo/drm/DrmInitData;

    move-result-object p1

    .line 1633
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    .line 1634
    invoke-virtual {v0}, Landroid/media/internal/exo/Format;->buildUpon()Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/internal/exo/Format$Builder;->setDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    .line 1635
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {p0, p1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    return-void
.end method

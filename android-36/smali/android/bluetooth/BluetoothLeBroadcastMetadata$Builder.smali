.class public final Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastMetadata.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioConfigQuality:I

.field private blacklist mBroadcastCode:[B

.field private blacklist mBroadcastId:I

.field private blacklist mBroadcastName:Ljava/lang/String;

.field private blacklist mIsEncrypted:Z

.field private blacklist mIsPublicBroadcast:Z

.field private blacklist mPaSyncInterval:I

.field private blacklist mPresentationDelayMicros:I

.field private blacklist mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

.field private blacklist mRssi:I

.field private blacklist mSourceAddressType:I

.field private blacklist mSourceAdvertisingSid:I

.field private blacklist mSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private final blacklist mSubgroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 510
    const/4 v2, -0x1

    iput v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    .line 511
    iput v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    .line 512
    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    .line 514
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsPublicBroadcast:Z

    .line 515
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastName:Ljava/lang/String;

    .line 516
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    .line 517
    iput v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    .line 518
    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mAudioConfigQuality:I

    .line 519
    const/16 v0, 0x7f

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mRssi:I

    .line 520
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    .line 529
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 6
    .param p1, "original"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 510
    const/4 v2, -0x1

    iput v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    .line 511
    iput v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    .line 512
    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    .line 514
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsPublicBroadcast:Z

    .line 515
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastName:Ljava/lang/String;

    .line 516
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    .line 517
    iput v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    .line 518
    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mAudioConfigQuality:I

    .line 519
    const/16 v0, 0x7f

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mRssi:I

    .line 520
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    .line 539
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAddressType()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    .line 540
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 541
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAdvertisingSid()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    .line 542
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    .line 543
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPaSyncInterval()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    .line 544
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    .line 545
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isPublicBroadcast()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsPublicBroadcast:Z

    .line 546
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastName:Ljava/lang/String;

    .line 547
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    .line 548
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPresentationDelayMicros()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    .line 549
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getAudioConfigQuality()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mAudioConfigQuality:I

    .line 550
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getRssi()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mRssi:I

    .line 551
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 552
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    .line 553
    .local v1, "subgroup":Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    new-instance v3, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    invoke-direct {v3, v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;-><init>(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    .end local v1    # "subgroup":Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    goto :goto_82

    .line 555
    :cond_9d
    return-void
.end method


# virtual methods
.method public whitelist addSubgroup(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 3
    .param p1, "subgroup"    # Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 790
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    return-object p0
.end method

.method public whitelist build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .registers 19
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 818
    move-object/from16 v0, p0

    iget v1, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    const v2, 0xffff

    if-eq v1, v2, :cond_6f

    .line 821
    iget v1, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_34

    iget v1, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    if-nez v1, :cond_13

    goto :goto_34

    .line 823
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceAddressType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 826
    :cond_34
    :goto_34
    iget-object v1, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v1, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_67

    .line 830
    new-instance v2, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iget v3, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    iget-object v4, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    iget v6, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    iget v7, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    iget-boolean v8, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    iget-boolean v9, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsPublicBroadcast:Z

    iget-object v10, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastName:Ljava/lang/String;

    iget-object v11, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    iget v12, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    iget v13, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mAudioConfigQuality:I

    iget v14, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mRssi:I

    iget-object v15, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iget-object v1, v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    const/16 v17, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v17}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;-><init>(ILandroid/bluetooth/BluetoothDevice;IIIZZLjava/lang/String;[BIIILandroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastMetadata-IA;)V

    return-object v2

    .line 828
    :cond_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must contain at least one subgroup"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 819
    :cond_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SourceAddressTyp cannot be unknown"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist clearSubgroup()Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 804
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSubgroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 805
    return-object p0
.end method

.method public whitelist setAudioConfigQuality(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .param p1, "audioConfigQuality"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 737
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mAudioConfigQuality:I

    .line 738
    return-object p0
.end method

.method public whitelist setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .param p1, "broadcastCode"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 697
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastCode:[B

    .line 698
    return-object p0
.end method

.method public whitelist setBroadcastId(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .param p1, "broadcastId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 617
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastId:I

    .line 618
    return-object p0
.end method

.method public whitelist setBroadcastName(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .param p1, "broadcastName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 676
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mBroadcastName:Ljava/lang/String;

    .line 677
    return-object p0
.end method

.method public whitelist setEncrypted(Z)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .param p1, "isEncrypted"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 648
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsEncrypted:Z

    .line 649
    return-object p0
.end method

.method public whitelist setPaSyncInterval(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .param p1, "paSyncInterval"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 631
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPaSyncInterval:I

    .line 632
    return-object p0
.end method

.method public whitelist setPresentationDelayMicros(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 5
    .param p1, "presentationDelayMicros"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 717
    if-ltz p1, :cond_a

    const v0, 0xffffff

    if-ge p1, v0, :cond_a

    .line 723
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPresentationDelayMicros:I

    .line 724
    return-object p0

    .line 718
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presentationDelayMicros "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fall in [0, 0xFFFFFF]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPublicBroadcast(Z)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .param p1, "isPublicBroadcast"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 662
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mIsPublicBroadcast:Z

    .line 663
    return-object p0
.end method

.method public whitelist setPublicBroadcastMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .param p1, "publicBroadcastMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 776
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 777
    return-object p0
.end method

.method public whitelist setRssi(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 5
    .param p1, "rssi"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 756
    const/16 v0, -0x7f

    if-lt p1, v0, :cond_b

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_b

    .line 759
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mRssi:I

    .line 760
    return-object p0

    .line 757
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal rssi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSourceAdvertisingSid(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 2
    .param p1, "sourceAdvertisingSid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 604
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAdvertisingSid:I

    .line 605
    return-object p0
.end method

.method public whitelist setSourceDevice(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    .registers 6
    .param p1, "sourceDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceAddressType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 578
    const v0, 0xffff

    if-eq p2, v0, :cond_32

    .line 582
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2a

    if-nez p2, :cond_b

    goto :goto_2a

    .line 584
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourceAddressType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_2a
    :goto_2a
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iput p2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceAddressType:I

    .line 589
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 590
    return-object p0

    .line 579
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sourceAddressType cannot be ADDRESS_TYPE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

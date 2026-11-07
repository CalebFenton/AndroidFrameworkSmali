.class public final Landroid/bluetooth/BluetoothLeBroadcastMetadata;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;,
        Landroid/bluetooth/BluetoothLeBroadcastMetadata$AudioConfigQuality;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CONFIG_QUALITY_HIGH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_CONFIG_QUALITY_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_CONFIG_QUALITY_STANDARD:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PA_SYNC_INTERVAL_UNKNOWN:I = 0xffff
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RSSI_UNKNOWN:I = 0x7f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist UNKNOWN_VALUE_PLACEHOLDER:I = -0x1


# instance fields
.field private final blacklist mAudioConfigQuality:I

.field private final blacklist mBroadcastCode:[B

.field private final blacklist mBroadcastId:I

.field private final blacklist mBroadcastName:Ljava/lang/String;

.field private final blacklist mIsEncrypted:Z

.field private final blacklist mIsPublicBroadcast:Z

.field private final blacklist mPaSyncInterval:I

.field private final blacklist mPresentationDelayMicros:I

.field private final blacklist mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

.field private final blacklist mRssi:I

.field private final blacklist mSourceAddressType:I

.field private final blacklist mSourceAdvertisingSid:I

.field private final blacklist mSourceDevice:Landroid/bluetooth/BluetoothDevice;

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
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 454
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/bluetooth/BluetoothDevice;IIIZZLjava/lang/String;[BIIILandroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;)V
    .registers 15
    .param p1, "sourceAddressType"    # I
    .param p2, "sourceDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "sourceAdvertisingSid"    # I
    .param p4, "broadcastId"    # I
    .param p5, "paSyncInterval"    # I
    .param p6, "isEncrypted"    # Z
    .param p7, "isPublicBroadcast"    # Z
    .param p8, "broadcastName"    # Ljava/lang/String;
    .param p9, "broadcastCode"    # [B
    .param p10, "presentationDelay"    # I
    .param p11, "audioConfigQuality"    # I
    .param p12, "rssi"    # I
    .param p13, "publicBroadcastMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/BluetoothDevice;",
            "IIIZZ",
            "Ljava/lang/String;",
            "[BIII",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p14, "subgroups":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastSubgroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    .line 135
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 136
    iput p3, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    .line 137
    iput p4, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    .line 138
    iput p5, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    .line 139
    iput-boolean p6, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    .line 140
    iput-boolean p7, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsPublicBroadcast:Z

    .line 141
    iput-object p8, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastName:Ljava/lang/String;

    .line 142
    iput-object p9, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    .line 143
    iput p10, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    .line 144
    iput p11, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mAudioConfigQuality:I

    .line 145
    iput p12, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mRssi:I

    .line 146
    iput-object p13, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 147
    iput-object p14, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    .line 148
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/bluetooth/BluetoothDevice;IIIZZLjava/lang/String;[BIIILandroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastMetadata-IA;)V
    .registers 16

    invoke-direct/range {p0 .. p14}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;-><init>(ILandroid/bluetooth/BluetoothDevice;IIIZZLjava/lang/String;[BIIILandroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 152
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 153
    return v1

    .line 155
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 156
    .local v0, "other":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAddressType()I

    move-result v3

    if-ne v2, v3, :cond_8f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 157
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    .line 158
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAdvertisingSid()I

    move-result v3

    if-ne v2, v3, :cond_8f

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    .line 159
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v3

    if-ne v2, v3, :cond_8f

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    .line 160
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPaSyncInterval()I

    move-result v3

    if-ne v2, v3, :cond_8f

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    .line 161
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result v3

    if-ne v2, v3, :cond_8f

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsPublicBroadcast:Z

    .line 162
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isPublicBroadcast()Z

    move-result v3

    if-ne v2, v3, :cond_8f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastName:Ljava/lang/String;

    .line 163
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    .line 164
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8f

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    .line 165
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPresentationDelayMicros()I

    move-result v3

    if-ne v2, v3, :cond_8f

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mAudioConfigQuality:I

    .line 166
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getAudioConfigQuality()I

    move-result v3

    if-ne v2, v3, :cond_8f

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mRssi:I

    .line 167
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getRssi()I

    move-result v3

    if-ne v2, v3, :cond_8f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 168
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    .line 169
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    const/4 v1, 0x1

    goto :goto_90

    :cond_8f
    nop

    .line 156
    :goto_90
    return v1
.end method

.method public whitelist getAudioConfigQuality()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 353
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mAudioConfigQuality:I

    return v0
.end method

.method public whitelist getBroadcastCode()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    return-object v0
.end method

.method public whitelist getBroadcastId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 258
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    return v0
.end method

.method public whitelist getBroadcastName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 310
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPaSyncInterval()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 277
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    return v0
.end method

.method public whitelist getPresentationDelayMicros()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 342
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    return v0
.end method

.method public whitelist getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 388
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    return-object v0
.end method

.method public whitelist getRssi()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 376
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mRssi:I

    return v0
.end method

.method public whitelist getSourceAddressType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 222
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    return v0
.end method

.method public whitelist getSourceAdvertisingSid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 247
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    return v0
.end method

.method public whitelist getSourceDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 234
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getSubgroups()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 16

    .line 174
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    .line 180
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsPublicBroadcast:Z

    .line 181
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastName:Ljava/lang/String;

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    .line 183
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mAudioConfigQuality:I

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mRssi:I

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iget-object v14, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 174
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEncrypted()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 288
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    return v0
.end method

.method public whitelist isPublicBroadcast()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 299
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsPublicBroadcast:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeBroadcastMetadata{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sourceAddressType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceAdvertisingSid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", broadcastId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paSyncInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPublicBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsPublicBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", broadcastName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", broadcastCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    .line 202
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationDelayMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioConfigQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mAudioConfigQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publicBroadcastMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subgroups="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 420
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 422
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_17

    .line 426
    :cond_14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    :goto_17
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 432
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    if-eqz v0, :cond_3b

    .line 433
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_3f

    .line 437
    :cond_3b
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    :goto_3f
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 441
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsPublicBroadcast:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 442
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 443
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mAudioConfigQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 445
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    return-void
.end method

.class public final Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBroadcastCode:[B

.field private blacklist mBroadcastName:Ljava/lang/String;

.field private blacklist mIsPublicBroadcast:Z

.field private blacklist mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

.field private blacklist mSubgroupSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mIsPublicBroadcast:Z

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mBroadcastName:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mBroadcastCode:[B

    .line 213
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mSubgroupSettings:Ljava/util/List;

    .line 222
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeBroadcastSettings;)V
    .registers 3
    .param p1, "original"    # Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mIsPublicBroadcast:Z

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mBroadcastName:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mBroadcastCode:[B

    .line 213
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mSubgroupSettings:Ljava/util/List;

    .line 232
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSettings;->isPublicBroadcast()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mIsPublicBroadcast:Z

    .line 233
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSettings;->getBroadcastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mBroadcastName:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSettings;->getBroadcastCode()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mBroadcastCode:[B

    .line 235
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSettings;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 236
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSettings;->getSubgroupSettings()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mSubgroupSettings:Ljava/util/List;

    .line 237
    return-void
.end method


# virtual methods
.method public whitelist addSubgroupSettings(Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;
    .registers 3
    .param p1, "subgroupSettings"    # Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 331
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mSubgroupSettings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    return-object p0
.end method

.method public whitelist build()Landroid/bluetooth/BluetoothLeBroadcastSettings;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 359
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mSubgroupSettings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 362
    new-instance v1, Landroid/bluetooth/BluetoothLeBroadcastSettings;

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mIsPublicBroadcast:Z

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mBroadcastName:Ljava/lang/String;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mBroadcastCode:[B

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iget-object v6, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mSubgroupSettings:Ljava/util/List;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothLeBroadcastSettings;-><init>(ZLjava/lang/String;[BLandroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastSettings-IA;)V

    return-object v1

    .line 360
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must contain at least one subgroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearSubgroupSettings()Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 345
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mSubgroupSettings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 346
    return-object p0
.end method

.method public whitelist setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;
    .registers 4
    .param p1, "broadcastCode"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 295
    if-eqz p1, :cond_14

    array-length v0, p1

    const/16 v1, 0x10

    if-gt v0, v1, :cond_c

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_c

    goto :goto_14

    .line 297
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid broadcast code length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_14
    :goto_14
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mBroadcastCode:[B

    .line 300
    return-object p0
.end method

.method public whitelist setBroadcastName(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;
    .registers 4
    .param p1, "broadcastName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 269
    if-eqz p1, :cond_1a

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_12

    goto :goto_1a

    .line 271
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid broadcast name length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1a
    :goto_1a
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mBroadcastName:Ljava/lang/String;

    .line 274
    return-object p0
.end method

.method public whitelist setPublicBroadcast(Z)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;
    .registers 2
    .param p1, "isPublicBroadcast"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 249
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mIsPublicBroadcast:Z

    .line 250
    return-object p0
.end method

.method public whitelist setPublicBroadcastMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;
    .registers 2
    .param p1, "publicBroadcastMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 316
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 317
    return-object p0
.end method

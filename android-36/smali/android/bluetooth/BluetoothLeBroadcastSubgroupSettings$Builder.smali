.class public final Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSubgroupSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

.field private blacklist mPreferredQuality:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mPreferredQuality:I

    .line 176
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;)V
    .registers 3
    .param p1, "original"    # Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mPreferredQuality:I

    .line 186
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->getPreferredQuality()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mPreferredQuality:I

    .line 187
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 188
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mPreferredQuality:I

    if-eqz v0, :cond_17

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mPreferredQuality:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_17

    .line 234
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set audio quality to either Standard or High"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_17
    :goto_17
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mPreferredQuality:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;-><init>(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings-IA;)V

    return-object v0
.end method

.method public whitelist setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;
    .registers 2
    .param p1, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 216
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 218
    return-object p0
.end method

.method public whitelist setPreferredQuality(I)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;
    .registers 2
    .param p1, "preferredQuality"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 200
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->mPreferredQuality:I

    .line 201
    return-object p0
.end method

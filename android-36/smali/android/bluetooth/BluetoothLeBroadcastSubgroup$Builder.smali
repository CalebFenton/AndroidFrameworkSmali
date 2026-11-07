.class public final Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSubgroup.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCodecId:J

.field private blacklist mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private blacklist mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 212
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    .line 221
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)V
    .registers 6
    .param p1, "original"    # Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 212
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    .line 231
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    .line 232
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecSpecificConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 233
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 234
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    .line 235
    .local v1, "channel":Landroid/bluetooth/BluetoothLeBroadcastChannel;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    new-instance v3, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    invoke-direct {v3, v1}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;-><init>(Landroid/bluetooth/BluetoothLeBroadcastChannel;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastChannel;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v1    # "channel":Landroid/bluetooth/BluetoothLeBroadcastChannel;
    goto :goto_2d

    .line 237
    :cond_48
    return-void
.end method


# virtual methods
.method public whitelist addChannel(Landroid/bluetooth/BluetoothLeBroadcastChannel;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .registers 3
    .param p1, "channel"    # Landroid/bluetooth/BluetoothLeBroadcastChannel;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 305
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-object p0
.end method

.method public whitelist build()Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 333
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 338
    new-instance v1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    iget-wide v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iget-object v6, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;-><init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastSubgroup-IA;)V

    return-object v1

    .line 336
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have at least one channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearChannel()Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 319
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    return-object p0
.end method

.method public whitelist setCodecId(J)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .registers 3
    .param p1, "codecId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 253
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    .line 254
    return-object p0
.end method

.method public whitelist setCodecSpecificConfig(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .registers 2
    .param p1, "codecSpecificConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 271
    return-object p0
.end method

.method public whitelist setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .registers 2
    .param p1, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 286
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 288
    return-object p0
.end method
